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
	<24.519659, 34.745621, 34.903645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.313086, 35.078396, 34.984818>,  <24.189142, 35.278061, 35.033524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.313086, 35.078396, 34.984818>,  <24.519659, 34.745621, 34.903645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.313086, 35.078396, 34.984818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.828196, 0.424993, 0.365339,
		0.217692, 0.356743, -0.908485,
		-0.516432, 0.831935, 0.202936,
		24.158155, 35.327976, 35.045700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.024942, 35.198956, 34.896454>,  <24.519659, 34.745621, 34.903645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.024942, 35.198956, 34.896454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.741854, 35.424850, 35.066254>,  <24.572001, 35.560387, 35.168133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.741854, 35.424850, 35.066254>,  <25.024942, 35.198956, 34.896454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.741854, 35.424850, 35.066254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705786, 0.538358, 0.460475,
		0.031518, 0.625492, -0.779594,
		-0.707723, 0.564740, 0.424495,
		24.529537, 35.594273, 35.193604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.721966, 35.468616, 35.219585>,  <25.024942, 35.198956, 34.896454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.721966, 35.468616, 35.219585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.031363, 35.528229, 35.466000>,  <26.217001, 35.563995, 35.613850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.031363, 35.528229, 35.466000>,  <25.721966, 35.468616, 35.219585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.031363, 35.528229, 35.466000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138252, -0.988230, 0.065477,
		0.618542, 0.034522, -0.784993,
		0.773493, 0.149027, 0.616035,
		26.263411, 35.572937, 35.650810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.409128, 35.327469, 34.970577>,  <25.721966, 35.468616, 35.219585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.409128, 35.327469, 34.970577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.426142, 35.275673, 35.366844>,  <26.436350, 35.244595, 35.604603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.426142, 35.275673, 35.366844>,  <26.409128, 35.327469, 34.970577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.426142, 35.275673, 35.366844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301715, -0.943607, -0.136288,
		0.952449, 0.304697, -0.001066,
		0.042532, -0.129486, 0.990669,
		26.438902, 35.236828, 35.664043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.077391, 35.158184, 35.064518>,  <26.409128, 35.327469, 34.970577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.077391, 35.158184, 35.064518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.876575, 35.033390, 35.387161>,  <26.756086, 34.958511, 35.580750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.876575, 35.033390, 35.387161>,  <27.077391, 35.158184, 35.064518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.876575, 35.033390, 35.387161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226416, -0.947550, -0.225578,
		0.834681, 0.069380, 0.546346,
		-0.502040, -0.311987, 0.806610,
		26.725964, 34.939793, 35.629143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.527428, 34.770317, 35.584518>,  <27.077391, 35.158184, 35.064518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.527428, 34.770317, 35.584518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.155369, 34.627327, 35.618073>,  <26.932133, 34.541534, 35.638206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.155369, 34.627327, 35.618073>,  <27.527428, 34.770317, 35.584518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.155369, 34.627327, 35.618073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364050, -0.927611, 0.083701,
		0.047891, 0.108392, 0.992954,
		-0.930147, -0.357476, 0.083884,
		26.876324, 34.520084, 35.643238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.434532, 34.341122, 36.260555>,  <27.527428, 34.770317, 35.584518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.434532, 34.341122, 36.260555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.212008, 34.210098, 35.955078>,  <27.078493, 34.131485, 35.771793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.212008, 34.210098, 35.955078>,  <27.434532, 34.341122, 36.260555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.212008, 34.210098, 35.955078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541838, -0.839774, -0.034516,
		-0.630022, -0.432998, 0.644659,
		-0.556313, -0.327555, -0.763691,
		27.045115, 34.111832, 35.725971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.156172, 33.627155, 36.422962>,  <27.434532, 34.341122, 36.260555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.156172, 33.627155, 36.422962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.211254, 33.745003, 36.044704>,  <27.244303, 33.815712, 35.817749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.211254, 33.745003, 36.044704>,  <27.156172, 33.627155, 36.422962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.211254, 33.745003, 36.044704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674763, -0.726817, -0.128187,
		-0.725074, -0.620431, -0.298886,
		0.137704, 0.294623, -0.945640,
		27.252565, 33.833389, 35.761013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.238621, 33.038395, 36.036526>,  <27.156172, 33.627155, 36.422962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.238621, 33.038395, 36.036526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.386425, 33.321510, 35.795692>,  <27.475107, 33.491379, 35.651192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.386425, 33.321510, 35.795692>,  <27.238621, 33.038395, 36.036526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.386425, 33.321510, 35.795692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704400, -0.635938, -0.315283,
		-0.606039, -0.307605, -0.733550,
		0.369510, 0.707787, -0.602081,
		27.497278, 33.533848, 35.615067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.394619, 32.636444, 35.430466>,  <27.238621, 33.038395, 36.036526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.394619, 32.636444, 35.430466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.611759, 32.970016, 35.390713>,  <27.742044, 33.170158, 35.366859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.611759, 32.970016, 35.390713>,  <27.394619, 32.636444, 35.430466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.611759, 32.970016, 35.390713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.756548, -0.536963, -0.373238,
		-0.364620, 0.127423, -0.922397,
		0.542852, 0.833927, -0.099386,
		27.774614, 33.220196, 35.360897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.573427, 32.610313, 34.771996>,  <27.394619, 32.636444, 35.430466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.573427, 32.610313, 34.771996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.838062, 32.834545, 34.971214>,  <27.996843, 32.969082, 35.090748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.838062, 32.834545, 34.971214>,  <27.573427, 32.610313, 34.771996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.838062, 32.834545, 34.971214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.749770, -0.483862, -0.451356,
		-0.012032, 0.672035, -0.740421,
		0.661589, 0.560577, 0.498050,
		28.036539, 33.002720, 35.120628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.089952, 32.950245, 34.328072>,  <27.573427, 32.610313, 34.771996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.089952, 32.950245, 34.328072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.265821, 32.901154, 34.683964>,  <28.371344, 32.871700, 34.897499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.265821, 32.901154, 34.683964>,  <28.089952, 32.950245, 34.328072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.265821, 32.901154, 34.683964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.859657, -0.229424, -0.456458,
		0.260146, 0.965558, 0.004632,
		0.439674, -0.122728, 0.889733,
		28.397724, 32.864334, 34.950882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.610682, 33.447819, 34.427334>,  <28.089952, 32.950245, 34.328072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.610682, 33.447819, 34.427334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.701670, 33.090321, 34.581978>,  <28.756262, 32.875820, 34.674767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.701670, 33.090321, 34.581978>,  <28.610682, 33.447819, 34.427334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.701670, 33.090321, 34.581978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.843521, -0.017524, -0.536811,
		0.486549, 0.448224, 0.749910,
		0.227470, -0.893750, 0.386612,
		28.769911, 32.822197, 34.697960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.245426, 33.381008, 34.288322>,  <28.610682, 33.447819, 34.427334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.245426, 33.381008, 34.288322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.214548, 33.025654, 34.469349>,  <29.196020, 32.812443, 34.577965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.214548, 33.025654, 34.469349>,  <29.245426, 33.381008, 34.288322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.214548, 33.025654, 34.469349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.865171, -0.285280, -0.412425,
		0.495499, 0.359708, 0.790626,
		-0.077197, -0.888383, 0.452565,
		29.191389, 32.759140, 34.605118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.814640, 33.169643, 34.581207>,  <29.245426, 33.381008, 34.288322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.814640, 33.169643, 34.581207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.598265, 32.856030, 34.459435>,  <29.468439, 32.667862, 34.386372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.598265, 32.856030, 34.459435>,  <29.814640, 33.169643, 34.581207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.598265, 32.856030, 34.459435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.757467, -0.296820, -0.581500,
		0.365554, -0.545151, 0.754441,
		-0.540938, -0.784033, -0.304430,
		29.435984, 32.620819, 34.368107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.426538, 33.448635, 35.225277>,  <29.814640, 33.169643, 34.581207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.426538, 33.448635, 35.225277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.085979, 33.246094, 35.170532>,  <28.881643, 33.124569, 35.137684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.085979, 33.246094, 35.170532>,  <29.426538, 33.448635, 35.225277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.085979, 33.246094, 35.170532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464207, 0.605911, 0.646052,
		-0.244201, 0.613581, -0.750922,
		-0.851397, -0.506350, -0.136865,
		28.830561, 33.094189, 35.129475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.863792, 33.807640, 35.646690>,  <29.426538, 33.448635, 35.225277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.863792, 33.807640, 35.646690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.610991, 33.548687, 35.476295>,  <28.459309, 33.393314, 35.374058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.610991, 33.548687, 35.476295>,  <28.863792, 33.807640, 35.646690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.610991, 33.548687, 35.476295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.766390, 0.603662, 0.219632,
		0.114964, 0.465279, -0.877667,
		-0.632005, -0.647385, -0.425984,
		28.421389, 33.354473, 35.348499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.522837, 34.192543, 35.148888>,  <28.863792, 33.807640, 35.646690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.522837, 34.192543, 35.148888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.273867, 33.884449, 35.204498>,  <28.124485, 33.699593, 35.237865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.273867, 33.884449, 35.204498>,  <28.522837, 34.192543, 35.148888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.273867, 33.884449, 35.204498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.772189, 0.633303, 0.051483,
		-0.127701, -0.075312, -0.988949,
		-0.622427, -0.770231, 0.139029,
		28.087139, 33.653381, 35.246208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.989815, 34.284473, 34.687660>,  <28.522837, 34.192543, 35.148888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.989815, 34.284473, 34.687660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.839645, 34.048176, 34.973339>,  <27.749544, 33.906399, 35.144745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.839645, 34.048176, 34.973339>,  <27.989815, 34.284473, 34.687660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.839645, 34.048176, 34.973339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.824746, 0.564517, 0.033400,
		-0.422907, -0.576492, -0.699147,
		-0.375425, -0.590743, 0.714198,
		27.727018, 33.870953, 35.187599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.393003, 34.051189, 34.464985>,  <27.989815, 34.284473, 34.687660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.393003, 34.051189, 34.464985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.368607, 34.033611, 34.863853>,  <27.353968, 34.023064, 35.103176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.368607, 34.033611, 34.863853>,  <27.393003, 34.051189, 34.464985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.368607, 34.033611, 34.863853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.841259, 0.539925, -0.027664,
		-0.537181, -0.840566, -0.069898,
		-0.060993, -0.043942, 0.997171,
		27.350307, 34.020428, 35.163006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.703686, 33.830391, 34.650791>,  <27.393003, 34.051189, 34.464985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.703686, 33.830391, 34.650791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.866280, 34.061176, 34.934166>,  <26.963837, 34.199650, 35.104191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.866280, 34.061176, 34.934166>,  <26.703686, 33.830391, 34.650791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.866280, 34.061176, 34.934166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.822063, 0.569341, 0.007997,
		-0.398727, -0.585630, 0.705730,
		0.406484, 0.576966, 0.708436,
		26.988224, 34.234264, 35.146698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.909506, 33.895000, 34.867027>,  <26.703686, 33.830391, 34.650791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.909506, 33.895000, 34.867027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.008329, 33.749088, 35.226112>,  <26.067623, 33.661541, 35.441563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.008329, 33.749088, 35.226112>,  <25.909506, 33.895000, 34.867027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.008329, 33.749088, 35.226112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243396, 0.920095, 0.306893,
		-0.937934, 0.142681, 0.316104,
		0.247058, -0.364784, 0.897717,
		26.082447, 33.639652, 35.495426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.815603, 34.434708, 35.303913>,  <25.909506, 33.895000, 34.867027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.815603, 34.434708, 35.303913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.062050, 34.200909, 35.515106>,  <26.209917, 34.060631, 35.641823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.062050, 34.200909, 35.515106>,  <25.815603, 34.434708, 35.303913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.062050, 34.200909, 35.515106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283470, 0.789947, 0.543718,
		-0.734879, -0.185326, 0.652386,
		0.616115, -0.584499, 0.527981,
		26.246883, 34.025558, 35.673500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.670975, 34.407974, 36.177673>,  <25.815603, 34.434708, 35.303913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.670975, 34.407974, 36.177673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.046551, 34.359440, 36.048882>,  <26.271896, 34.330318, 35.971607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.046551, 34.359440, 36.048882>,  <25.670975, 34.407974, 36.177673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.046551, 34.359440, 36.048882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272704, 0.833046, 0.481317,
		0.209821, -0.539732, 0.815269,
		0.938939, -0.121337, -0.321978,
		26.328232, 34.323040, 35.952290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.069542, 34.594208, 36.663948>,  <25.670975, 34.407974, 36.177673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.069542, 34.594208, 36.663948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.280628, 34.697906, 36.340389>,  <26.407280, 34.760124, 36.146255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.280628, 34.697906, 36.340389>,  <26.069542, 34.594208, 36.663948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.280628, 34.697906, 36.340389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196560, 0.889171, 0.413206,
		0.826366, -0.377051, 0.418271,
		0.527714, 0.259244, -0.808894,
		26.438942, 34.775681, 36.097721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.512827, 35.058807, 36.921162>,  <26.069542, 34.594208, 36.663948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.512827, 35.058807, 36.921162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.476374, 35.115482, 36.526878>,  <26.454502, 35.149487, 36.290310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.476374, 35.115482, 36.526878>,  <26.512827, 35.058807, 36.921162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.476374, 35.115482, 36.526878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113239, 0.984881, 0.131096,
		0.989380, -0.099674, -0.105798,
		-0.091132, 0.141684, -0.985708,
		26.449034, 35.157990, 36.231167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.038851, 35.659626, 36.750320>,  <26.512827, 35.058807, 36.921162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.038851, 35.659626, 36.750320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.790831, 35.625519, 36.438354>,  <26.642019, 35.605057, 36.251175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.790831, 35.625519, 36.438354>,  <27.038851, 35.659626, 36.750320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.790831, 35.625519, 36.438354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076827, 0.995898, -0.047799,
		0.780793, 0.030281, -0.624056,
		-0.620048, -0.085266, -0.779916,
		26.604816, 35.599937, 36.204380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.250128, 36.254971, 36.255203>,  <27.038851, 35.659626, 36.750320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.250128, 36.254971, 36.255203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.863321, 36.153233, 36.260754>,  <26.631237, 36.092190, 36.264084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.863321, 36.153233, 36.260754>,  <27.250128, 36.254971, 36.255203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.863321, 36.153233, 36.260754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251321, 0.961554, 0.110684,
		-0.041493, 0.103546, -0.993759,
		-0.967014, -0.254345, 0.013875,
		26.573217, 36.076927, 36.264915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.949949, 36.649677, 36.211964>,  <27.250128, 36.254971, 36.255203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.949949, 36.649677, 36.211964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.707783, 36.689377, 36.527843>,  <27.562483, 36.713196, 36.717373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.707783, 36.689377, 36.527843>,  <27.949949, 36.649677, 36.211964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.707783, 36.689377, 36.527843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476455, 0.749583, -0.459473,
		-0.637545, -0.654428, -0.406523,
		-0.605415, 0.099244, 0.789698,
		27.526157, 36.719151, 36.764751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.976595, 35.895535, 36.417233>,  <27.949949, 36.649677, 36.211964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.976595, 35.895535, 36.417233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.331928, 35.829899, 36.588783>,  <28.545128, 35.790516, 36.691715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.331928, 35.829899, 36.588783>,  <27.976595, 35.895535, 36.417233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.331928, 35.829899, 36.588783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330409, -0.877010, 0.348832,
		0.318892, -0.451584, -0.833294,
		0.888334, -0.164088, 0.428879,
		28.598429, 35.780674, 36.717445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.205210, 35.277115, 36.300724>,  <27.976595, 35.895535, 36.417233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.205210, 35.277115, 36.300724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.443108, 35.325932, 36.618561>,  <28.585846, 35.355221, 36.809265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.443108, 35.325932, 36.618561>,  <28.205210, 35.277115, 36.300724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.443108, 35.325932, 36.618561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164760, -0.948923, 0.269070,
		0.786848, -0.290946, -0.544261,
		0.594747, 0.122044, 0.794595,
		28.621532, 35.362545, 36.856937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.701267, 34.749020, 36.259392>,  <28.205210, 35.277115, 36.300724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.701267, 34.749020, 36.259392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.660517, 34.854885, 36.642971>,  <28.636066, 34.918404, 36.873119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.660517, 34.854885, 36.642971>,  <28.701267, 34.749020, 36.259392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.660517, 34.854885, 36.642971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289466, -0.930135, 0.225960,
		0.951751, -0.254562, 0.171372,
		-0.101878, 0.264664, 0.958944,
		28.629953, 34.934284, 36.930653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.929567, 34.154724, 36.464165>,  <28.701267, 34.749020, 36.259392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.929567, 34.154724, 36.464165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.762737, 34.346729, 36.772877>,  <28.662640, 34.461933, 36.958103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.762737, 34.346729, 36.772877>,  <28.929567, 34.154724, 36.464165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.762737, 34.346729, 36.772877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384322, -0.862647, 0.328841,
		0.823618, -0.159460, 0.544266,
		-0.417073, 0.480013, 0.771775,
		28.637615, 34.490734, 37.004410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.100590, 33.697823, 36.973511>,  <28.929567, 34.154724, 36.464165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.100590, 33.697823, 36.973511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.808083, 33.920494, 37.131172>,  <28.632578, 34.054096, 37.225769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.808083, 33.920494, 37.131172>,  <29.100590, 33.697823, 36.973511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.808083, 33.920494, 37.131172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431707, -0.825127, 0.364411,
		0.528087, 0.096323, 0.843710,
		-0.731269, 0.556675, 0.394155,
		28.588701, 34.087498, 37.249420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.985126, 33.556709, 37.783379>,  <29.100590, 33.697823, 36.973511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.985126, 33.556709, 37.783379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.665367, 33.653225, 37.563290>,  <28.473513, 33.711136, 37.431236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.665367, 33.653225, 37.563290>,  <28.985126, 33.556709, 37.783379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.665367, 33.653225, 37.563290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430495, -0.868868, 0.244424,
		-0.419092, 0.432260, 0.798444,
		-0.799397, 0.241290, -0.550221,
		28.425549, 33.725613, 37.398224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.301218, 34.171589, 37.547729>,  <28.985126, 33.556709, 37.783379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.301218, 34.171589, 37.547729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.914492, 34.273075, 37.535778>,  <28.682455, 34.333965, 37.528606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.914492, 34.273075, 37.535778>,  <29.301218, 34.171589, 37.547729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.914492, 34.273075, 37.535778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238213, -0.853081, 0.464227,
		0.092291, 0.455940, 0.885212,
		-0.966818, 0.253713, -0.029879,
		28.624447, 34.349190, 37.526814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.113710, 34.125534, 38.241482>,  <29.301218, 34.171589, 37.547729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.113710, 34.125534, 38.241482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.782267, 34.106007, 38.018406>,  <28.583401, 34.094292, 37.884560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.782267, 34.106007, 38.018406>,  <29.113710, 34.125534, 38.241482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.782267, 34.106007, 38.018406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363059, -0.711437, 0.601703,
		-0.426139, 0.701053, 0.571779,
		-0.828610, -0.048819, -0.557694,
		28.533684, 34.091362, 37.851097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.440445, 34.167141, 38.731583>,  <29.113710, 34.125534, 38.241482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.440445, 34.167141, 38.731583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.291546, 33.994137, 38.403103>,  <28.202208, 33.890335, 38.206017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.291546, 33.994137, 38.403103>,  <28.440445, 34.167141, 38.731583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.291546, 33.994137, 38.403103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357822, -0.749512, 0.556952,
		-0.856385, 0.501167, 0.124242,
		-0.372246, -0.432509, -0.821200,
		28.179873, 33.864384, 38.156742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.786745, 33.986523, 38.890228>,  <28.440445, 34.167141, 38.731583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.786745, 33.986523, 38.890228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.912956, 33.761402, 38.584629>,  <27.988684, 33.626331, 38.401268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.912956, 33.761402, 38.584629>,  <27.786745, 33.986523, 38.890228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.912956, 33.761402, 38.584629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134939, -0.823559, 0.550947,
		-0.939272, -0.070747, -0.335802,
		0.315530, -0.562802, -0.763999,
		28.007616, 33.592560, 38.355431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.360306, 33.461075, 38.926460>,  <27.786745, 33.986523, 38.890228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.360306, 33.461075, 38.926460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.687794, 33.338741, 38.732075>,  <27.884287, 33.265339, 38.615444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.687794, 33.338741, 38.732075>,  <27.360306, 33.461075, 38.926460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.687794, 33.338741, 38.732075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158468, -0.933824, 0.320718,
		-0.551890, -0.185570, -0.813008,
		0.818722, -0.305837, -0.485961,
		27.933411, 33.246990, 38.586285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.130842, 32.950436, 38.345463>,  <27.360306, 33.461075, 38.926460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.130842, 32.950436, 38.345463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.515720, 32.912987, 38.447773>,  <27.746647, 32.890518, 38.509159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.515720, 32.912987, 38.447773>,  <27.130842, 32.950436, 38.345463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.515720, 32.912987, 38.447773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164333, -0.948437, 0.271040,
		0.217208, -0.302825, -0.927965,
		0.962193, -0.093624, 0.255772,
		27.804379, 32.884899, 38.524506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.446253, 32.507675, 37.921173>,  <27.130842, 32.950436, 38.345463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.446253, 32.507675, 37.921173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.585436, 32.519695, 38.295986>,  <27.668945, 32.526905, 38.520874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.585436, 32.519695, 38.295986>,  <27.446253, 32.507675, 37.921173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.585436, 32.519695, 38.295986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289775, -0.947097, 0.137974,
		0.891603, -0.319537, -0.320842,
		0.347957, 0.030046, 0.937029,
		27.689823, 32.528709, 38.577095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.513227, 32.804150, 37.217228>,  <27.446253, 32.507675, 37.921173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.513227, 32.804150, 37.217228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.864531, 32.751873, 37.033237>,  <28.075314, 32.720505, 36.922844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.864531, 32.751873, 37.033237>,  <27.513227, 32.804150, 37.217228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.864531, 32.751873, 37.033237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451088, 0.545649, 0.706248,
		0.158684, -0.827759, 0.538176,
		0.878259, -0.130695, -0.459978,
		28.128008, 32.712666, 36.895245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.302382, 32.972294, 37.295555>,  <27.513227, 32.804150, 37.217228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.302382, 32.972294, 37.295555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.145174, 33.140793, 37.622501>,  <28.050850, 33.241890, 37.818668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.145174, 33.140793, 37.622501>,  <28.302382, 32.972294, 37.295555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.145174, 33.140793, 37.622501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134873, 0.905691, -0.401911,
		-0.909585, -0.047719, -0.412769,
		-0.393020, 0.421243, 0.817367,
		28.027267, 33.267166, 37.867710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.772833, 33.435352, 37.037720>,  <28.302382, 32.972294, 37.295555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.772833, 33.435352, 37.037720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.888582, 33.582413, 37.391239>,  <27.958031, 33.670650, 37.603352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.888582, 33.582413, 37.391239>,  <27.772833, 33.435352, 37.037720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.888582, 33.582413, 37.391239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191381, 0.882434, -0.429748,
		-0.937890, 0.293499, 0.184990,
		0.289372, 0.367653, 0.883796,
		27.975393, 33.692707, 37.656380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.389977, 34.035759, 37.194050>,  <27.772833, 33.435352, 37.037720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.389977, 34.035759, 37.194050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.731934, 34.046761, 37.401279>,  <27.937107, 34.053360, 37.525620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.731934, 34.046761, 37.401279>,  <27.389977, 34.035759, 37.194050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.731934, 34.046761, 37.401279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186896, 0.915223, -0.356984,
		-0.483973, 0.402009, 0.777276,
		0.854892, 0.027501, 0.518077,
		27.988401, 34.055012, 37.556702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.451694, 34.652908, 37.524044>,  <27.389977, 34.035759, 37.194050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.451694, 34.652908, 37.524044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.815670, 34.501575, 37.456078>,  <28.034056, 34.410774, 37.415298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.815670, 34.501575, 37.456078>,  <27.451694, 34.652908, 37.524044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.815670, 34.501575, 37.456078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330559, 0.909021, -0.253795,
		0.250478, 0.174770, 0.952216,
		0.909940, -0.378334, -0.169918,
		28.088652, 34.388077, 37.405102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.003448, 35.016895, 37.984661>,  <27.451694, 34.652908, 37.524044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.003448, 35.016895, 37.984661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.220079, 34.862904, 37.685734>,  <28.350058, 34.770508, 37.506378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.220079, 34.862904, 37.685734>,  <28.003448, 35.016895, 37.984661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.220079, 34.862904, 37.685734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474548, 0.873796, -0.106231,
		0.693899, -0.297105, 0.655921,
		0.541579, -0.384979, -0.747317,
		28.382553, 34.747410, 37.461540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.721788, 35.241814, 38.170891>,  <28.003448, 35.016895, 37.984661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.721788, 35.241814, 38.170891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.687519, 35.146965, 37.783813>,  <28.666958, 35.090057, 37.551567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.687519, 35.146965, 37.783813>,  <28.721788, 35.241814, 38.170891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.687519, 35.146965, 37.783813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574001, 0.782133, -0.242469,
		0.814361, -0.576231, 0.069098,
		-0.085675, -0.237119, -0.967695,
		28.661818, 35.075829, 37.493504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.336061, 35.161743, 37.963665>,  <28.721788, 35.241814, 38.170891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.336061, 35.161743, 37.963665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.110739, 35.273342, 37.652576>,  <28.975544, 35.340302, 37.465923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.110739, 35.273342, 37.652576>,  <29.336061, 35.161743, 37.963665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.110739, 35.273342, 37.652576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590708, 0.794116, -0.142979,
		0.577708, -0.539946, -0.612137,
		-0.563309, 0.278995, -0.777718,
		28.941746, 35.357040, 37.419262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.739952, 35.683048, 37.544720>,  <29.336061, 35.161743, 37.963665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.739952, 35.683048, 37.544720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.372179, 35.741211, 37.398567>,  <29.151516, 35.776108, 37.310875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.372179, 35.741211, 37.398567>,  <29.739952, 35.683048, 37.544720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.372179, 35.741211, 37.398567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286767, 0.883689, -0.369945,
		0.269093, -0.444918, -0.854188,
		-0.919431, 0.145403, -0.365382,
		29.096350, 35.784832, 37.288952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.790478, 35.905960, 36.841946>,  <29.739952, 35.683048, 37.544720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.790478, 35.905960, 36.841946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.435442, 36.042233, 36.965958>,  <29.222420, 36.123997, 37.040367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.435442, 36.042233, 36.965958>,  <29.790478, 35.905960, 36.841946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.435442, 36.042233, 36.965958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240390, 0.916717, -0.319128,
		-0.392934, -0.208726, -0.895565,
		-0.887590, 0.340681, 0.310033,
		29.169165, 36.144436, 37.058968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.426559, 36.321522, 36.286285>,  <29.790478, 35.905960, 36.841946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.426559, 36.321522, 36.286285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.317364, 36.455448, 36.647034>,  <29.251846, 36.535805, 36.863483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.317364, 36.455448, 36.647034>,  <29.426559, 36.321522, 36.286285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.317364, 36.455448, 36.647034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192457, 0.937537, -0.289802,
		-0.942569, 0.094458, -0.320377,
		-0.272992, 0.334817, 0.901872,
		29.235466, 36.555893, 36.917595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.997969, 36.898750, 36.151947>,  <29.426559, 36.321522, 36.286285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.997969, 36.898750, 36.151947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.175488, 36.955154, 36.505932>,  <29.282000, 36.988998, 36.718323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.175488, 36.955154, 36.505932>,  <28.997969, 36.898750, 36.151947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.175488, 36.955154, 36.505932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153883, 0.960880, -0.230282,
		-0.882816, 0.238379, 0.404735,
		0.443796, 0.141014, 0.884963,
		29.308626, 36.997459, 36.771420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.695637, 37.520023, 36.622982>,  <28.997969, 36.898750, 36.151947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.695637, 37.520023, 36.622982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.081997, 37.428829, 36.672070>,  <29.313812, 37.374111, 36.701523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.081997, 37.428829, 36.672070>,  <28.695637, 37.520023, 36.622982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.081997, 37.428829, 36.672070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224064, 0.973531, 0.045083,
		-0.129748, -0.016049, 0.991417,
		0.965899, -0.227990, 0.122718,
		29.371767, 37.360432, 36.708885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.898272, 37.910328, 37.176128>,  <28.695637, 37.520023, 36.622982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.898272, 37.910328, 37.176128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.225872, 37.803143, 36.973179>,  <29.422432, 37.738831, 36.851410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.225872, 37.803143, 36.973179>,  <28.898272, 37.910328, 37.176128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.225872, 37.803143, 36.973179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307073, 0.951661, -0.006927,
		0.484706, -0.150128, 0.861697,
		0.819004, -0.267961, -0.507376,
		29.471573, 37.722755, 36.820965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.431269, 38.295910, 37.487732>,  <28.898272, 37.910328, 37.176128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.431269, 38.295910, 37.487732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.544247, 38.213013, 37.113079>,  <29.612034, 38.163273, 36.888287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.544247, 38.213013, 37.113079>,  <29.431269, 38.295910, 37.487732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.544247, 38.213013, 37.113079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416799, 0.905919, -0.074762,
		0.864004, -0.369270, 0.342253,
		0.282446, -0.207246, -0.936629,
		29.628981, 38.150841, 36.832092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.161411, 38.337025, 37.367256>,  <29.431269, 38.295910, 37.487732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.161411, 38.337025, 37.367256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.966688, 38.451969, 37.037300>,  <29.849854, 38.520935, 36.839325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.966688, 38.451969, 37.037300>,  <30.161411, 38.337025, 37.367256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.966688, 38.451969, 37.037300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708037, 0.682858, -0.179968,
		0.511567, -0.671663, -0.535881,
		-0.486809, 0.287358, -0.824890,
		29.820646, 38.538177, 36.789833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.236973, 38.903858, 36.861900>,  <30.161411, 38.337025, 37.367256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.236973, 38.903858, 36.861900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.465973, 38.925640, 36.534664>,  <30.603373, 38.938709, 36.338322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.465973, 38.925640, 36.534664>,  <30.236973, 38.903858, 36.861900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.465973, 38.925640, 36.534664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.813242, -0.089237, -0.575043,
		-0.104320, 0.994521, -0.006800,
		0.572499, 0.054458, -0.818095,
		30.637722, 38.941978, 36.289234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.983690, 39.433109, 36.466293>,  <30.236973, 38.903858, 36.861900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.983690, 39.433109, 36.466293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.163219, 39.173901, 36.220161>,  <30.270937, 39.018375, 36.072483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.163219, 39.173901, 36.220161>,  <29.983690, 39.433109, 36.466293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.163219, 39.173901, 36.220161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.845925, -0.086146, -0.526298,
		0.288044, 0.756735, -0.586842,
		0.448822, -0.648021, -0.615327,
		30.297867, 38.979496, 36.035564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.480627, 38.866459, 36.179562>,  <29.983690, 39.433109, 36.466293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.480627, 38.866459, 36.179562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.210049, 38.759228, 36.453949>,  <29.047701, 38.694889, 36.618580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.210049, 38.759228, 36.453949>,  <29.480627, 38.866459, 36.179562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.210049, 38.759228, 36.453949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580635, -0.767104, 0.272789,
		0.453081, 0.582825, 0.674561,
		-0.676447, -0.268078, 0.685969,
		29.007114, 38.678802, 36.659740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.232922, 38.153893, 36.042477>,  <29.480627, 38.866459, 36.179562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.232922, 38.153893, 36.042477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.109261, 37.923664, 35.739651>,  <29.035065, 37.785526, 35.557957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.109261, 37.923664, 35.739651>,  <29.232922, 38.153893, 36.042477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.109261, 37.923664, 35.739651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.741951, -0.352019, 0.570606,
		-0.594924, 0.738109, -0.318215,
		-0.309152, -0.575567, -0.757065,
		29.016516, 37.750996, 35.512531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.767347, 38.476833, 35.639248>,  <29.232922, 38.153893, 36.042477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.767347, 38.476833, 35.639248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.887886, 38.460186, 36.020290>,  <29.960209, 38.450195, 36.248917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.887886, 38.460186, 36.020290>,  <29.767347, 38.476833, 35.639248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.887886, 38.460186, 36.020290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060636, -0.996188, -0.062707,
		0.951585, 0.076658, -0.297674,
		0.301346, -0.041621, 0.952606,
		29.978291, 38.447701, 36.306072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.143660, 37.872158, 35.671459>,  <29.767347, 38.476833, 35.639248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.143660, 37.872158, 35.671459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.989796, 37.944977, 36.033432>,  <29.897478, 37.988667, 36.250614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.989796, 37.944977, 36.033432>,  <30.143660, 37.872158, 35.671459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.989796, 37.944977, 36.033432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115882, -0.982127, 0.148320,
		0.915756, -0.047813, 0.398879,
		-0.384658, 0.182048, 0.904929,
		29.874397, 37.999592, 36.304913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.490744, 37.344124, 36.099201>,  <30.143660, 37.872158, 35.671459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.490744, 37.344124, 36.099201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.180878, 37.479492, 36.312878>,  <29.994959, 37.560715, 36.441086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.180878, 37.479492, 36.312878>,  <30.490744, 37.344124, 36.099201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.180878, 37.479492, 36.312878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225345, -0.937025, 0.266840,
		0.590859, 0.086333, 0.802142,
		-0.774665, 0.338424, 0.534195,
		29.948479, 37.581020, 36.473137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.585894, 37.002674, 36.602245>,  <30.490744, 37.344124, 36.099201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.585894, 37.002674, 36.602245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.204004, 37.118851, 36.627995>,  <29.974871, 37.188557, 36.643444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.204004, 37.118851, 36.627995>,  <30.585894, 37.002674, 36.602245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.204004, 37.118851, 36.627995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267351, -0.932576, 0.242538,
		0.130474, 0.214347, 0.968004,
		-0.954725, 0.290442, 0.064371,
		29.917587, 37.205982, 36.647305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.870806, 36.365063, 36.779816>,  <30.585894, 37.002674, 36.602245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.870806, 36.365063, 36.779816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.208649, 36.545994, 36.894386>,  <31.411354, 36.654552, 36.963131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.208649, 36.545994, 36.894386>,  <30.870806, 36.365063, 36.779816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.208649, 36.545994, 36.894386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514305, -0.536811, -0.668823,
		-0.148770, 0.712203, -0.686028,
		0.844605, 0.452328, 0.286429,
		31.462030, 36.681694, 36.980316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.194132, 36.815323, 36.204487>,  <30.870806, 36.365063, 36.779816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.194132, 36.815323, 36.204487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.461981, 36.664532, 36.460453>,  <31.622690, 36.574055, 36.614033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.461981, 36.664532, 36.460453>,  <31.194132, 36.815323, 36.204487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.461981, 36.664532, 36.460453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483752, -0.432394, -0.760933,
		0.563554, 0.819098, -0.107175,
		0.669620, -0.376981, 0.639917,
		31.662867, 36.551437, 36.652428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.827791, 36.979050, 35.937004>,  <31.194132, 36.815323, 36.204487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.827791, 36.979050, 35.937004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.924538, 36.688881, 36.194767>,  <31.982586, 36.514778, 36.349426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.924538, 36.688881, 36.194767>,  <31.827791, 36.979050, 35.937004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.924538, 36.688881, 36.194767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706198, -0.323840, -0.629612,
		0.665421, 0.607362, 0.433966,
		0.241867, -0.725423, 0.644408,
		31.997097, 36.471252, 36.388088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.584625, 36.969234, 35.953712>,  <31.827791, 36.979050, 35.937004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.584625, 36.969234, 35.953712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.486801, 36.607922, 36.094719>,  <32.428108, 36.391132, 36.179321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.486801, 36.607922, 36.094719>,  <32.584625, 36.969234, 35.953712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.486801, 36.607922, 36.094719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707509, -0.414835, -0.572139,
		0.663041, 0.109487, 0.740533,
		-0.244557, -0.903286, 0.352515,
		32.413433, 36.336937, 36.200474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.296951, 36.631287, 36.263420>,  <32.584625, 36.969234, 35.953712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.296951, 36.631287, 36.263420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.023075, 36.350224, 36.185982>,  <32.858749, 36.181587, 36.139519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.023075, 36.350224, 36.185982>,  <33.296951, 36.631287, 36.263420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.023075, 36.350224, 36.185982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697031, -0.553682, -0.455614,
		0.212951, -0.446893, 0.868872,
		-0.684689, -0.702655, -0.193591,
		32.817669, 36.139427, 36.127903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.673801, 36.062939, 36.283192>,  <33.296951, 36.631287, 36.263420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.673801, 36.062939, 36.283192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.346539, 35.968792, 36.073349>,  <33.150181, 35.912304, 35.947441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.346539, 35.968792, 36.073349>,  <33.673801, 36.062939, 36.283192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.346539, 35.968792, 36.073349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563444, -0.510093, -0.649873,
		-0.114641, -0.827289, 0.549954,
		-0.818161, -0.235366, -0.524609,
		33.101089, 35.898182, 35.915966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.783749, 35.325558, 36.130203>,  <33.673801, 36.062939, 36.283192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.783749, 35.325558, 36.130203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.499340, 35.456627, 35.881340>,  <33.328693, 35.535267, 35.732021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.499340, 35.456627, 35.881340>,  <33.783749, 35.325558, 36.130203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.499340, 35.456627, 35.881340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443989, -0.476904, -0.758575,
		-0.545272, -0.815595, 0.193607,
		-0.711022, 0.327670, -0.622158,
		33.286034, 35.554928, 35.694695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.755428, 34.802162, 35.675095>,  <33.783749, 35.325558, 36.130203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.755428, 34.802162, 35.675095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.555794, 35.096733, 35.492409>,  <33.436012, 35.273476, 35.382797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.555794, 35.096733, 35.492409>,  <33.755428, 34.802162, 35.675095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.555794, 35.096733, 35.492409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183116, -0.425517, -0.886230,
		-0.846986, -0.525934, 0.077516,
		-0.499082, 0.736430, -0.456713,
		33.406071, 35.317661, 35.355396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.356873, 34.365780, 35.220421>,  <33.755428, 34.802162, 35.675095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.356873, 34.365780, 35.220421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.394234, 34.744839, 35.098286>,  <33.416649, 34.972275, 35.025005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.394234, 34.744839, 35.098286>,  <33.356873, 34.365780, 35.220421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.394234, 34.744839, 35.098286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236048, -0.319014, -0.917884,
		-0.967242, 0.013657, -0.253487,
		0.093402, 0.947652, -0.305340,
		33.422253, 35.029133, 35.006683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.969589, 34.459984, 34.583878>,  <33.356873, 34.365780, 35.220421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.969589, 34.459984, 34.583878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.251766, 34.742744, 34.604389>,  <33.421074, 34.912403, 34.616695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.251766, 34.742744, 34.604389>,  <32.969589, 34.459984, 34.583878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.251766, 34.742744, 34.604389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159996, -0.088347, -0.983156,
		-0.690469, 0.701768, -0.175426,
		0.705446, 0.706906, 0.051279,
		33.463402, 34.954815, 34.619774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.899078, 34.936317, 33.907211>,  <32.969589, 34.459984, 34.583878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.899078, 34.936317, 33.907211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.269360, 34.986412, 34.049980>,  <33.491528, 35.016468, 34.135643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.269360, 34.986412, 34.049980>,  <32.899078, 34.936317, 33.907211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.269360, 34.986412, 34.049980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353440, 0.049781, -0.934132,
		-0.134755, 0.990877, 0.001819,
		0.925700, 0.125236, 0.356924,
		33.547070, 35.023983, 34.157059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.105469, 35.469887, 33.423302>,  <32.899078, 34.936317, 33.907211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.105469, 35.469887, 33.423302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.425934, 35.332973, 33.619663>,  <33.618214, 35.250824, 33.737480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.425934, 35.332973, 33.619663>,  <33.105469, 35.469887, 33.423302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.425934, 35.332973, 33.619663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585086, 0.275609, -0.762702,
		0.125763, 0.898266, 0.421072,
		0.801161, -0.342283, 0.490901,
		33.666283, 35.230289, 33.766933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.536434, 35.995213, 33.469067>,  <33.105469, 35.469887, 33.423302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.536434, 35.995213, 33.469067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.752960, 35.660061, 33.497173>,  <33.882877, 35.458969, 33.514038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.752960, 35.660061, 33.497173>,  <33.536434, 35.995213, 33.469067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.752960, 35.660061, 33.497173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498881, 0.252784, -0.828986,
		0.676826, 0.483799, 0.554838,
		0.541317, -0.837878, 0.070267,
		33.915356, 35.408699, 33.518253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.151810, 36.245384, 33.266945>,  <33.536434, 35.995213, 33.469067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.151810, 36.245384, 33.266945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.146244, 35.849255, 33.211712>,  <34.142902, 35.611576, 33.178574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.146244, 35.849255, 33.211712>,  <34.151810, 36.245384, 33.266945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.146244, 35.849255, 33.211712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592351, 0.103090, -0.799058,
		0.805560, -0.092915, 0.585184,
		-0.013918, -0.990323, -0.138083,
		34.142067, 35.552158, 33.170288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.700684, 36.168266, 32.657574>,  <34.151810, 36.245384, 33.266945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.700684, 36.168266, 32.657574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.074478, 36.032585, 32.614334>,  <34.298756, 35.951176, 32.588390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.074478, 36.032585, 32.614334>,  <33.700684, 36.168266, 32.657574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.074478, 36.032585, 32.614334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124000, 0.594754, -0.794287,
		0.333717, 0.728842, 0.597848,
		0.934482, -0.339200, -0.108104,
		34.354824, 35.930824, 32.581902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.110935, 36.732365, 32.630077>,  <33.700684, 36.168266, 32.657574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.110935, 36.732365, 32.630077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.263939, 36.434666, 32.411064>,  <34.355740, 36.256046, 32.279655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.263939, 36.434666, 32.411064>,  <34.110935, 36.732365, 32.630077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.263939, 36.434666, 32.411064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133200, 0.630824, -0.764407,
		0.914301, 0.219460, 0.340428,
		0.382507, -0.744243, -0.547531,
		34.378693, 36.211391, 32.246803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.697540, 36.989697, 32.351742>,  <34.110935, 36.732365, 32.630077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.697540, 36.989697, 32.351742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.632732, 36.670467, 32.119595>,  <34.593845, 36.478931, 31.980307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.632732, 36.670467, 32.119595>,  <34.697540, 36.989697, 32.351742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.632732, 36.670467, 32.119595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029810, 0.583911, -0.811270,
		0.986337, -0.148746, -0.070817,
		-0.162024, -0.798074, -0.580367,
		34.584126, 36.431046, 31.945484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.139114, 37.066757, 31.838770>,  <34.697540, 36.989697, 32.351742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.139114, 37.066757, 31.838770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.845299, 36.835739, 31.696280>,  <34.669010, 36.697128, 31.610785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.845299, 36.835739, 31.696280>,  <35.139114, 37.066757, 31.838770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.845299, 36.835739, 31.696280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035017, 0.556529, -0.830090,
		0.677665, -0.597258, -0.429015,
		-0.734537, -0.577546, -0.356226,
		34.624939, 36.662476, 31.589413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.436584, 36.820705, 31.299786>,  <35.139114, 37.066757, 31.838770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.436584, 36.820705, 31.299786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.037815, 36.799599, 31.276596>,  <34.798553, 36.786934, 31.262682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.037815, 36.799599, 31.276596>,  <35.436584, 36.820705, 31.299786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.037815, 36.799599, 31.276596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011058, 0.637476, -0.770391,
		0.077608, -0.768661, -0.634931,
		-0.996922, -0.052767, -0.057973,
		34.738739, 36.783768, 31.259205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.275261, 36.701420, 30.593727>,  <35.436584, 36.820705, 31.299786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.275261, 36.701420, 30.593727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.951401, 36.875412, 30.751337>,  <34.757084, 36.979809, 30.845903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.951401, 36.875412, 30.751337>,  <35.275261, 36.701420, 30.593727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.951401, 36.875412, 30.751337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089437, 0.572070, -0.815314,
		-0.580059, -0.695359, -0.424273,
		-0.809650, 0.434985, 0.394025,
		34.708508, 37.005909, 30.869545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.974850, 36.951603, 29.987789>,  <35.275261, 36.701420, 30.593727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.974850, 36.951603, 29.987789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.723446, 37.129227, 30.243223>,  <34.572605, 37.235802, 30.396484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.723446, 37.129227, 30.243223>,  <34.974850, 36.951603, 29.987789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.723446, 37.129227, 30.243223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382272, 0.538658, -0.750810,
		-0.677381, -0.716003, -0.168801,
		-0.628508, 0.444057, 0.638585,
		34.534893, 37.262444, 30.434799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.268490, 36.976440, 29.648853>,  <34.974850, 36.951603, 29.987789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.268490, 36.976440, 29.648853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.274620, 37.261341, 29.929558>,  <34.278297, 37.432281, 30.097980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.274620, 37.261341, 29.929558>,  <34.268490, 36.976440, 29.648853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.274620, 37.261341, 29.929558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438101, 0.635670, -0.635603,
		-0.898795, -0.297702, 0.321777,
		0.015324, 0.712248, 0.701761,
		34.279217, 37.475014, 30.140085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.676514, 37.346592, 29.483889>,  <34.268490, 36.976440, 29.648853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.676514, 37.346592, 29.483889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.887428, 37.601536, 29.708651>,  <34.013977, 37.754501, 29.843508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.887428, 37.601536, 29.708651>,  <33.676514, 37.346592, 29.483889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.887428, 37.601536, 29.708651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198896, 0.735520, -0.647650,
		-0.826082, 0.229735, 0.514597,
		0.527285, 0.637364, 0.561907,
		34.045612, 37.792744, 29.877222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.254219, 37.970470, 29.517412>,  <33.676514, 37.346592, 29.483889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.254219, 37.970470, 29.517412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.629555, 38.084404, 29.595778>,  <33.854759, 38.152763, 29.642797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.629555, 38.084404, 29.595778>,  <33.254219, 37.970470, 29.517412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.629555, 38.084404, 29.595778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098179, 0.762939, -0.638972,
		-0.331469, 0.580341, 0.743863,
		0.938344, 0.284831, 0.195913,
		33.911057, 38.169853, 29.654551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.236225, 38.682175, 29.497000>,  <33.254219, 37.970470, 29.517412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.236225, 38.682175, 29.497000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.623260, 38.597950, 29.441246>,  <33.855484, 38.547413, 29.407795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.623260, 38.597950, 29.441246>,  <33.236225, 38.682175, 29.497000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.623260, 38.597950, 29.441246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091695, 0.807275, -0.583008,
		0.235281, 0.551334, 0.800421,
		0.967592, -0.210566, -0.139382,
		33.913540, 38.534779, 29.399431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.695240, 39.310577, 29.588259>,  <33.236225, 38.682175, 29.497000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.695240, 39.310577, 29.588259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.886806, 39.071888, 29.330711>,  <34.001747, 38.928677, 29.176184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.886806, 39.071888, 29.330711>,  <33.695240, 39.310577, 29.588259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.886806, 39.071888, 29.330711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081203, 0.700193, -0.709320,
		0.874097, 0.391988, 0.286878,
		0.478916, -0.596720, -0.643867,
		34.030479, 38.892872, 29.137550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.193634, 39.772732, 29.290852>,  <33.695240, 39.310577, 29.588259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.193634, 39.772732, 29.290852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.169853, 39.450966, 29.054417>,  <34.155586, 39.257908, 28.912556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.169853, 39.450966, 29.054417>,  <34.193634, 39.772732, 29.290852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.169853, 39.450966, 29.054417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120492, 0.582023, -0.804196,
		0.990932, -0.119032, 0.062324,
		-0.059451, -0.804414, -0.591087,
		34.152020, 39.209641, 28.877090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.705032, 39.807587, 28.761740>,  <34.193634, 39.772732, 29.290852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.705032, 39.807587, 28.761740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.463875, 39.525768, 28.611998>,  <34.319180, 39.356678, 28.522152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.463875, 39.525768, 28.611998>,  <34.705032, 39.807587, 28.761740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.463875, 39.525768, 28.611998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129146, 0.376852, -0.917226,
		0.787301, -0.601335, -0.136213,
		-0.602892, -0.704542, -0.374356,
		34.283009, 39.314407, 28.499691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.096565, 39.526672, 28.195461>,  <34.705032, 39.807587, 28.761740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.096565, 39.526672, 28.195461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.714596, 39.424828, 28.134409>,  <34.485416, 39.363720, 28.097778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.714596, 39.424828, 28.134409>,  <35.096565, 39.526672, 28.195461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.714596, 39.424828, 28.134409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090336, 0.240528, -0.966429,
		0.282784, -0.936651, -0.206684,
		-0.954920, -0.254620, -0.152631,
		34.428120, 39.348442, 28.088619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.085552, 39.172134, 27.541576>,  <35.096565, 39.526672, 28.195461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.085552, 39.172134, 27.541576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.703892, 39.282356, 27.588339>,  <34.474895, 39.348488, 27.616396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.703892, 39.282356, 27.588339>,  <35.085552, 39.172134, 27.541576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.703892, 39.282356, 27.588339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036170, 0.493848, -0.868795,
		-0.297132, -0.824733, -0.481172,
		-0.954151, 0.275551, 0.116908,
		34.417648, 39.365021, 27.623411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.656200, 38.827843, 27.007730>,  <35.085552, 39.172134, 27.541576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.656200, 38.827843, 27.007730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.489658, 39.172810, 27.122892>,  <34.389732, 39.379787, 27.191990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.489658, 39.172810, 27.122892>,  <34.656200, 38.827843, 27.007730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.489658, 39.172810, 27.122892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062592, 0.288715, -0.955367,
		-0.907043, -0.415796, -0.066229,
		-0.416359, 0.862414, 0.287903,
		34.364750, 39.431534, 27.209263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.976082, 38.949818, 26.629637>,  <34.656200, 38.827843, 27.007730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.976082, 38.949818, 26.629637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.075951, 39.314983, 26.758789>,  <34.135872, 39.534084, 26.836281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.075951, 39.314983, 26.758789>,  <33.976082, 38.949818, 26.629637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.075951, 39.314983, 26.758789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065405, 0.348579, -0.934995,
		-0.966120, 0.212321, 0.146738,
		0.249669, 0.912914, 0.322883,
		34.150852, 39.588860, 26.855654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.686108, 39.288639, 26.191830>,  <33.976082, 38.949818, 26.629637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.686108, 39.288639, 26.191830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.906738, 39.581646, 26.351418>,  <34.039116, 39.757450, 26.447170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.906738, 39.581646, 26.351418>,  <33.686108, 39.288639, 26.191830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.906738, 39.581646, 26.351418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017609, 0.467978, -0.883565,
		-0.833937, 0.494381, 0.245228,
		0.551579, 0.732519, 0.398969,
		34.072212, 39.801403, 26.471107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.428432, 39.908237, 25.918598>,  <33.686108, 39.288639, 26.191830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.428432, 39.908237, 25.918598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.801479, 39.987297, 26.039364>,  <34.025307, 40.034733, 26.111824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.801479, 39.987297, 26.039364>,  <33.428432, 39.908237, 25.918598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.801479, 39.987297, 26.039364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134574, 0.585815, -0.799194,
		-0.334823, 0.785976, 0.519746,
		0.932622, 0.197645, 0.301916,
		34.081264, 40.046589, 26.129938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.518616, 40.577858, 25.778078>,  <33.428432, 39.908237, 25.918598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.518616, 40.577858, 25.778078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.894478, 40.445171, 25.811558>,  <34.119995, 40.365559, 25.831646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.894478, 40.445171, 25.811558>,  <33.518616, 40.577858, 25.778078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.894478, 40.445171, 25.811558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245347, 0.482895, -0.840606,
		0.238425, 0.810418, 0.535142,
		0.939659, -0.331717, 0.083699,
		34.176376, 40.345657, 25.836668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.022305, 41.174667, 25.988386>,  <33.518616, 40.577858, 25.778078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.022305, 41.174667, 25.988386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.252411, 40.899868, 25.810797>,  <34.390472, 40.734989, 25.704243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.252411, 40.899868, 25.810797>,  <34.022305, 41.174667, 25.988386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.252411, 40.899868, 25.810797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226291, 0.655253, -0.720718,
		0.786045, 0.314134, 0.532403,
		0.575261, -0.686995, -0.443973,
		34.424988, 40.693768, 25.677605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.663750, 41.475143, 25.955978>,  <34.022305, 41.174667, 25.988386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.663750, 41.475143, 25.955978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.675980, 41.175415, 25.691376>,  <34.683319, 40.995579, 25.532614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.675980, 41.175415, 25.691376>,  <34.663750, 41.475143, 25.955978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.675980, 41.175415, 25.691376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269481, 0.643489, -0.716451,
		0.962520, -0.156356, 0.221603,
		0.030577, -0.749316, -0.661506,
		34.685154, 40.950619, 25.492924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.269806, 41.600609, 25.661516>,  <34.663750, 41.475143, 25.955978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.269806, 41.600609, 25.661516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.094372, 41.339058, 25.414915>,  <34.989109, 41.182125, 25.266954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.094372, 41.339058, 25.414915>,  <35.269806, 41.600609, 25.661516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.094372, 41.339058, 25.414915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273054, 0.556615, -0.784615,
		0.856201, -0.512463, -0.065581,
		-0.438589, -0.653881, -0.616505,
		34.962795, 41.142895, 25.229963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.757252, 41.306824, 25.199121>,  <35.269806, 41.600609, 25.661516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.757252, 41.306824, 25.199121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.403603, 41.257080, 25.018961>,  <35.191414, 41.227234, 24.910864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.403603, 41.257080, 25.018961>,  <35.757252, 41.306824, 25.199121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.403603, 41.257080, 25.018961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257261, 0.675113, -0.691404,
		0.390058, -0.727156, -0.564888,
		-0.884122, -0.124363, -0.450402,
		35.138367, 41.219772, 24.883841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.953346, 41.214371, 24.591288>,  <35.757252, 41.306824, 25.199121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.953346, 41.214371, 24.591288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.563992, 41.291134, 24.541201>,  <35.330379, 41.337193, 24.511148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.563992, 41.291134, 24.541201>,  <35.953346, 41.214371, 24.591288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.563992, 41.291134, 24.541201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228816, 0.784525, -0.576336,
		-0.012369, -0.589652, -0.807563,
		-0.973391, 0.191912, -0.125218,
		35.271973, 41.348709, 24.503635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.995689, 41.580837, 23.978134>,  <35.953346, 41.214371, 24.591288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.995689, 41.580837, 23.978134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.639835, 41.674152, 24.135168>,  <35.426323, 41.730141, 24.229389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.639835, 41.674152, 24.135168>,  <35.995689, 41.580837, 23.978134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.639835, 41.674152, 24.135168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001463, 0.861120, -0.508400,
		-0.456669, -0.451716, -0.766424,
		-0.889636, 0.233292, 0.392585,
		35.372944, 41.744141, 24.252943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.510441, 41.802502, 23.335714>,  <35.995689, 41.580837, 23.978134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.510441, 41.802502, 23.335714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.369247, 41.953945, 23.677956>,  <35.284531, 42.044811, 23.883301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.369247, 41.953945, 23.677956>,  <35.510441, 41.802502, 23.335714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.369247, 41.953945, 23.677956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229218, 0.851607, -0.471408,
		-0.907117, -0.362519, -0.213818,
		-0.352983, 0.378611, 0.855603,
		35.263351, 42.067528, 23.934637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.970928, 42.083317, 23.165123>,  <35.510441, 41.802502, 23.335714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.970928, 42.083317, 23.165123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.048332, 42.270824, 23.509869>,  <35.094776, 42.383327, 23.716717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.048332, 42.270824, 23.509869>,  <34.970928, 42.083317, 23.165123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.048332, 42.270824, 23.509869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236030, 0.874913, -0.422867,
		-0.952283, -0.121595, 0.279950,
		0.193513, 0.468766, 0.861865,
		35.106388, 42.411453, 23.768429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.452000, 42.598206, 23.246717>,  <34.970928, 42.083317, 23.165123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.452000, 42.598206, 23.246717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.753536, 42.727028, 23.475805>,  <34.934456, 42.804321, 23.613258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.753536, 42.727028, 23.475805>,  <34.452000, 42.598206, 23.246717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.753536, 42.727028, 23.475805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150465, 0.933090, -0.326655,
		-0.639598, 0.160071, 0.751859,
		0.753840, 0.322057, 0.572718,
		34.979687, 42.823647, 23.647621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.187302, 43.210323, 23.652145>,  <34.452000, 42.598206, 23.246717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.187302, 43.210323, 23.652145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.583992, 43.261036, 23.644022>,  <34.822006, 43.291462, 23.639149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.583992, 43.261036, 23.644022>,  <34.187302, 43.210323, 23.652145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.583992, 43.261036, 23.644022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126599, 0.991905, 0.009878,
		0.021397, -0.007225, 0.999745,
		0.991723, 0.126779, -0.020309,
		34.881508, 43.299068, 23.637930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.275780, 43.759361, 23.990091>,  <34.187302, 43.210323, 23.652145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.275780, 43.759361, 23.990091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.631996, 43.753319, 23.808228>,  <34.845726, 43.749695, 23.699110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.631996, 43.753319, 23.808228>,  <34.275780, 43.759361, 23.990091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.631996, 43.753319, 23.808228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009646, 0.998597, -0.052067,
		0.454806, 0.050753, 0.889143,
		0.890538, -0.015104, -0.454658,
		34.899158, 43.748787, 23.671829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.396206, 44.529961, 23.959532>,  <34.275780, 43.759361, 23.990091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.396206, 44.529961, 23.959532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.688007, 44.355465, 23.748808>,  <34.863087, 44.250767, 23.622374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.688007, 44.355465, 23.748808>,  <34.396206, 44.529961, 23.959532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.688007, 44.355465, 23.748808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428711, 0.891765, -0.144786,
		0.532951, -0.120227, 0.837561,
		0.729500, -0.436235, -0.526810,
		34.906857, 44.224594, 23.590765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.105091, 44.692131, 24.307100>,  <34.396206, 44.529961, 23.959532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.105091, 44.692131, 24.307100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.125267, 44.652088, 23.909622>,  <35.137375, 44.628063, 23.671135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.125267, 44.652088, 23.909622>,  <35.105091, 44.692131, 24.307100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.125267, 44.652088, 23.909622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454754, 0.888139, -0.066392,
		0.889187, -0.448539, 0.090328,
		0.050445, -0.100112, -0.993697,
		35.140400, 44.622055, 23.611513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.622616, 45.027241, 24.017820>,  <35.105091, 44.692131, 24.307100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.622616, 45.027241, 24.017820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.441959, 44.978516, 23.664282>,  <35.333565, 44.949280, 23.452158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.441959, 44.978516, 23.664282>,  <35.622616, 45.027241, 24.017820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.441959, 44.978516, 23.664282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387000, 0.865845, -0.317085,
		0.803898, -0.485257, -0.343910,
		-0.451641, -0.121811, -0.883845,
		35.306469, 44.941971, 23.399128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.029671, 45.000656, 23.293039>,  <35.622616, 45.027241, 24.017820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.029671, 45.000656, 23.293039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.676907, 45.189224, 23.292883>,  <35.465248, 45.302364, 23.292789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.676907, 45.189224, 23.292883>,  <36.029671, 45.000656, 23.293039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.676907, 45.189224, 23.292883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454136, 0.849342, -0.269031,
		-0.126495, -0.237438, -0.963132,
		-0.881907, 0.471424, -0.000392,
		35.412334, 45.330650, 23.292765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.646255, 45.283737, 22.956020>,  <36.029671, 45.000656, 23.293039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.646255, 45.283737, 22.956020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.042946, 45.241882, 22.926264>,  <37.280960, 45.216770, 22.908411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.042946, 45.241882, 22.926264>,  <36.646255, 45.283737, 22.956020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.042946, 45.241882, 22.926264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056319, -0.166134, 0.984494,
		-0.115376, -0.980536, -0.158866,
		0.991724, -0.104640, -0.074391,
		37.340462, 45.210491, 22.903946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.943600, 44.663570, 23.236727>,  <36.646255, 45.283737, 22.956020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.943600, 44.663570, 23.236727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.277073, 44.882893, 23.263042>,  <37.477158, 45.014488, 23.278831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.277073, 44.882893, 23.263042>,  <36.943600, 44.663570, 23.236727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.277073, 44.882893, 23.263042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123942, -0.301870, 0.945258,
		0.538154, -0.779892, -0.319623,
		0.833683, 0.548309, 0.065791,
		37.527180, 45.047386, 23.282780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.638393, 44.389545, 23.528202>,  <36.943600, 44.663570, 23.236727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.638393, 44.389545, 23.528202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.497997, 44.748859, 23.633944>,  <37.413761, 44.964447, 23.697388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.497997, 44.748859, 23.633944>,  <37.638393, 44.389545, 23.528202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.497997, 44.748859, 23.633944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213174, -0.351558, 0.911572,
		0.911790, 0.263601, 0.314886,
		-0.350992, 0.898288, 0.264354,
		37.392700, 45.018345, 23.713249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.971821, 44.766506, 24.240154>,  <37.638393, 44.389545, 23.528202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.971821, 44.766506, 24.240154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.581566, 44.769180, 24.152433>,  <37.347412, 44.770786, 24.099802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.581566, 44.769180, 24.152433>,  <37.971821, 44.766506, 24.240154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.581566, 44.769180, 24.152433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203378, -0.402543, 0.892523,
		-0.082307, 0.915377, 0.394095,
		-0.975635, 0.006689, -0.219300,
		37.288876, 44.771187, 24.086643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.612751, 45.138485, 24.767244>,  <37.971821, 44.766506, 24.240154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.612751, 45.138485, 24.767244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.402988, 44.838993, 24.605062>,  <37.277130, 44.659298, 24.507753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.402988, 44.838993, 24.605062>,  <37.612751, 45.138485, 24.767244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.402988, 44.838993, 24.605062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108509, -0.413537, 0.903998,
		-0.844523, 0.518062, 0.135620,
		-0.524411, -0.748731, -0.405456,
		37.245667, 44.614372, 24.483425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.989506, 45.109680, 25.111517>,  <37.612751, 45.138485, 24.767244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.989506, 45.109680, 25.111517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.076977, 44.749908, 24.960142>,  <37.129459, 44.534046, 24.869316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.076977, 44.749908, 24.960142>,  <36.989506, 45.109680, 25.111517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.076977, 44.749908, 24.960142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272844, -0.428715, 0.861255,
		-0.936876, -0.085081, -0.339152,
		0.218676, -0.899425, -0.378439,
		37.142578, 44.480080, 24.846611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.377102, 44.773369, 25.269272>,  <36.989506, 45.109680, 25.111517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.377102, 44.773369, 25.269272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.682304, 44.519138, 25.222178>,  <36.865425, 44.366600, 25.193920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.682304, 44.519138, 25.222178>,  <36.377102, 44.773369, 25.269272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.682304, 44.519138, 25.222178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115727, -0.313527, 0.942501,
		-0.635943, -0.705512, -0.312777,
		0.763009, -0.635574, -0.117738,
		36.911209, 44.328465, 25.186855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.046368, 44.122387, 25.263475>,  <36.377102, 44.773369, 25.269272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.046368, 44.122387, 25.263475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.434280, 44.062469, 25.340504>,  <36.667030, 44.026520, 25.386721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.434280, 44.062469, 25.340504>,  <36.046368, 44.122387, 25.263475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.434280, 44.062469, 25.340504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243892, -0.614874, 0.749964,
		0.006069, -0.774269, -0.632827,
		0.969784, -0.149790, 0.192570,
		36.725216, 44.017532, 25.398275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.243912, 43.365391, 25.309427>,  <36.046368, 44.122387, 25.263475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.243912, 43.365391, 25.309427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.519226, 43.528275, 25.549574>,  <36.684414, 43.626007, 25.693663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.519226, 43.528275, 25.549574>,  <36.243912, 43.365391, 25.309427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.519226, 43.528275, 25.549574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222153, -0.669517, 0.708799,
		0.690587, -0.621229, -0.370355,
		0.688285, 0.407212, 0.600368,
		36.725712, 43.650436, 25.729685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.423737, 42.848919, 25.698311>,  <36.243912, 43.365391, 25.309427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.423737, 42.848919, 25.698311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.584076, 43.139198, 25.921984>,  <36.680279, 43.313366, 26.056189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.584076, 43.139198, 25.921984>,  <36.423737, 42.848919, 25.698311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.584076, 43.139198, 25.921984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292491, -0.477052, 0.828777,
		0.868200, -0.495769, 0.021035,
		0.400847, 0.725696, 0.559184,
		36.704330, 43.356907, 26.089739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.907677, 42.594513, 26.108559>,  <36.423737, 42.848919, 25.698311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.907677, 42.594513, 26.108559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.761215, 42.916523, 26.295263>,  <36.673340, 43.109730, 26.407286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.761215, 42.916523, 26.295263>,  <36.907677, 42.594513, 26.108559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.761215, 42.916523, 26.295263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202290, -0.558456, 0.804491,
		0.908302, 0.200144, 0.367328,
		-0.366151, 0.805027, 0.466760,
		36.651371, 43.158031, 26.435291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.247082, 42.527420, 26.729128>,  <36.907677, 42.594513, 26.108559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.247082, 42.527420, 26.729128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.951809, 42.790134, 26.790733>,  <36.774647, 42.947762, 26.827698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.951809, 42.790134, 26.790733>,  <37.247082, 42.527420, 26.729128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.951809, 42.790134, 26.790733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228853, -0.458575, 0.858683,
		0.634597, 0.598617, 0.488819,
		-0.738182, 0.656786, 0.154015,
		36.730354, 42.987171, 26.836937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.327824, 42.655945, 27.445499>,  <37.247082, 42.527420, 26.729128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.327824, 42.655945, 27.445499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.958660, 42.761036, 27.332916>,  <36.737164, 42.824089, 27.265366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.958660, 42.761036, 27.332916>,  <37.327824, 42.655945, 27.445499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.958660, 42.761036, 27.332916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372043, -0.420292, 0.827610,
		0.099140, 0.868521, 0.485635,
		-0.922906, 0.262727, -0.281460,
		36.681789, 42.839855, 27.248478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.173820, 43.056271, 28.078176>,  <37.327824, 42.655945, 27.445499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.173820, 43.056271, 28.078176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.836208, 42.944523, 27.895061>,  <36.633640, 42.877476, 27.785192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.836208, 42.944523, 27.895061>,  <37.173820, 43.056271, 28.078176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.836208, 42.944523, 27.895061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297302, -0.466704, 0.832946,
		-0.446350, 0.839131, 0.310854,
		-0.844028, -0.279368, -0.457789,
		36.583000, 42.860714, 27.757725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.586037, 43.091930, 28.535576>,  <37.173820, 43.056271, 28.078176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.586037, 43.091930, 28.535576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.422150, 42.854801, 28.258249>,  <36.323818, 42.712524, 28.091854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.422150, 42.854801, 28.258249>,  <36.586037, 43.091930, 28.535576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.422150, 42.854801, 28.258249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402080, -0.564861, 0.720599,
		-0.818817, 0.574014, -0.006927,
		-0.409721, -0.592824, -0.693317,
		36.299232, 42.676952, 28.050255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.880558, 43.090111, 28.618324>,  <36.586037, 43.091930, 28.535576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.880558, 43.090111, 28.618324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.929211, 42.753586, 28.407646>,  <35.958405, 42.551670, 28.281240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.929211, 42.753586, 28.407646>,  <35.880558, 43.090111, 28.618324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.929211, 42.753586, 28.407646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517647, -0.506525, 0.689546,
		-0.846904, 0.188767, -0.497112,
		0.121636, -0.841308, -0.526693,
		35.965702, 42.501194, 28.249638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.279507, 42.734623, 28.742384>,  <35.880558, 43.090111, 28.618324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.279507, 42.734623, 28.742384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.502457, 42.445469, 28.579035>,  <35.636227, 42.271976, 28.481026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.502457, 42.445469, 28.579035>,  <35.279507, 42.734623, 28.742384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.502457, 42.445469, 28.579035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555220, -0.690232, 0.464017,
		-0.617301, -0.031898, -0.786080,
		0.557379, -0.722885, -0.408370,
		35.669670, 42.228603, 28.456524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.990707, 42.113262, 28.937243>,  <35.279507, 42.734623, 28.742384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.990707, 42.113262, 28.937243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.295971, 41.935177, 28.749891>,  <35.479130, 41.828327, 28.637480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.295971, 41.935177, 28.749891>,  <34.990707, 42.113262, 28.937243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.295971, 41.935177, 28.749891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212013, -0.857187, 0.469340,
		-0.610446, -0.258877, -0.748558,
		0.763156, -0.445211, -0.468381,
		35.524918, 41.801613, 28.609377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.768364, 41.455662, 28.345024>,  <34.990707, 42.113262, 28.937243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.768364, 41.455662, 28.345024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.115200, 41.448765, 28.544165>,  <35.323303, 41.444626, 28.663649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.115200, 41.448765, 28.544165>,  <34.768364, 41.455662, 28.345024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.115200, 41.448765, 28.544165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371518, -0.688164, 0.623222,
		0.331857, -0.725350, -0.603107,
		0.867090, -0.017245, 0.497852,
		35.375328, 41.443592, 28.693520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.007370, 40.700233, 28.441992>,  <34.768364, 41.455662, 28.345024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.007370, 40.700233, 28.441992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.154465, 40.955540, 28.712513>,  <35.242722, 41.108723, 28.874826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.154465, 40.955540, 28.712513>,  <35.007370, 40.700233, 28.441992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.154465, 40.955540, 28.712513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089695, -0.699529, 0.708953,
		0.925594, -0.321368, -0.199993,
		0.367736, 0.638265, 0.676305,
		35.264786, 41.147018, 28.915405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.419231, 40.277443, 28.814154>,  <35.007370, 40.700233, 28.441992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.419231, 40.277443, 28.814154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.355450, 40.602047, 29.039019>,  <35.317181, 40.796810, 29.173937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.355450, 40.602047, 29.039019>,  <35.419231, 40.277443, 28.814154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.355450, 40.602047, 29.039019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218878, -0.584335, 0.781438,
		0.962636, 0.001558, 0.270796,
		-0.159452, 0.811511, 0.562160,
		35.307613, 40.845501, 29.207666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.684811, 40.145462, 29.523693>,  <35.419231, 40.277443, 28.814154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.684811, 40.145462, 29.523693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.435169, 40.450642, 29.591101>,  <35.285385, 40.633751, 29.631544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.435169, 40.450642, 29.591101>,  <35.684811, 40.145462, 29.523693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.435169, 40.450642, 29.591101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053535, -0.256925, 0.964947,
		0.779505, 0.593206, 0.201193,
		-0.624104, 0.762952, 0.168517,
		35.247936, 40.679527, 29.641657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.927433, 40.389881, 30.187820>,  <35.684811, 40.145462, 29.523693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.927433, 40.389881, 30.187820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.563805, 40.553719, 30.157299>,  <35.345627, 40.652020, 30.138987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.563805, 40.553719, 30.157299>,  <35.927433, 40.389881, 30.187820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.563805, 40.553719, 30.157299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156276, -0.165438, 0.973760,
		0.386223, 0.897142, 0.214404,
		-0.909071, 0.409594, -0.076306,
		35.291084, 40.676598, 30.134407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.881176, 40.922890, 30.618904>,  <35.927433, 40.389881, 30.187820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.881176, 40.922890, 30.618904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.497791, 40.815670, 30.579918>,  <35.267761, 40.751339, 30.556526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.497791, 40.815670, 30.579918>,  <35.881176, 40.922890, 30.618904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.497791, 40.815670, 30.579918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119667, 0.067726, 0.990501,
		-0.258906, 0.961021, -0.096990,
		-0.958461, -0.268053, -0.097468,
		35.210255, 40.735252, 30.550678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.541348, 41.244846, 31.226030>,  <35.881176, 40.922890, 30.618904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.541348, 41.244846, 31.226030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.270672, 40.987511, 31.082806>,  <35.108265, 40.833111, 30.996872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.270672, 40.987511, 31.082806>,  <35.541348, 41.244846, 31.226030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.270672, 40.987511, 31.082806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242236, -0.264709, 0.933408,
		-0.695276, 0.718366, 0.023288,
		-0.676693, -0.643335, -0.358060,
		35.067665, 40.794510, 30.975388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.858265, 41.456837, 31.537125>,  <35.541348, 41.244846, 31.226030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.858265, 41.456837, 31.537125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.815052, 41.075974, 31.422779>,  <34.789124, 40.847454, 31.354172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.815052, 41.075974, 31.422779>,  <34.858265, 41.456837, 31.537125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.815052, 41.075974, 31.422779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032025, -0.284063, 0.958271,
		-0.993631, 0.112681, 0.000196,
		-0.108034, -0.952161, -0.285863,
		34.782642, 40.790325, 31.337021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.272175, 41.176605, 31.883888>,  <34.858265, 41.456837, 31.537125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.272175, 41.176605, 31.883888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.462994, 40.844025, 31.769960>,  <34.577484, 40.644478, 31.701603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.462994, 40.844025, 31.769960>,  <34.272175, 41.176605, 31.883888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.462994, 40.844025, 31.769960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079769, -0.363696, 0.928096,
		-0.875252, -0.420022, -0.239823,
		0.477043, -0.831449, -0.284821,
		34.606106, 40.594589, 31.684513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.816143, 40.636959, 32.096909>,  <34.272175, 41.176605, 31.883888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.816143, 40.636959, 32.096909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.182934, 40.484005, 32.051422>,  <34.403008, 40.392231, 32.024132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.182934, 40.484005, 32.051422>,  <33.816143, 40.636959, 32.096909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.182934, 40.484005, 32.051422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045507, -0.383440, 0.922444,
		-0.396324, -0.840690, -0.369009,
		0.916982, -0.382379, -0.113709,
		34.458027, 40.369289, 32.017307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.705597, 40.026142, 32.439129>,  <33.816143, 40.636959, 32.096909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.705597, 40.026142, 32.439129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.102089, 40.028934, 32.386337>,  <34.339985, 40.030609, 32.354664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.102089, 40.028934, 32.386337>,  <33.705597, 40.026142, 32.439129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.102089, 40.028934, 32.386337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111105, -0.584797, 0.803535,
		-0.071576, -0.811150, -0.580442,
		0.991228, 0.006977, -0.131980,
		34.399456, 40.031029, 32.346745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.873306, 39.357216, 32.501236>,  <33.705597, 40.026142, 32.439129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.873306, 39.357216, 32.501236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.188488, 39.591152, 32.578281>,  <34.377598, 39.731514, 32.624508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.188488, 39.591152, 32.578281>,  <33.873306, 39.357216, 32.501236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.188488, 39.591152, 32.578281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176502, -0.514218, 0.839301,
		0.589898, -0.627333, -0.508404,
		0.787952, 0.584836, 0.192611,
		34.424873, 39.766602, 32.636066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.484386, 38.955261, 32.627430>,  <33.873306, 39.357216, 32.501236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.484386, 38.955261, 32.627430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.554207, 39.306885, 32.804874>,  <34.596100, 39.517857, 32.911343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.554207, 39.306885, 32.804874>,  <34.484386, 38.955261, 32.627430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.554207, 39.306885, 32.804874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174949, -0.471050, 0.864583,
		0.968982, -0.073300, -0.236010,
		0.174546, 0.879056, 0.443616,
		34.606571, 39.570602, 32.937958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.021664, 38.789783, 33.040791>,  <34.484386, 38.955261, 32.627430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.021664, 38.789783, 33.040791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.857731, 39.124695, 33.185570>,  <34.759373, 39.325642, 33.272438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.857731, 39.124695, 33.185570>,  <35.021664, 38.789783, 33.040791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.857731, 39.124695, 33.185570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104318, -0.351182, 0.930478,
		0.906178, 0.419094, 0.056581,
		-0.409828, 0.837276, 0.361953,
		34.734783, 39.375877, 33.294155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.455578, 38.942497, 33.619606>,  <35.021664, 38.789783, 33.040791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.455578, 38.942497, 33.619606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.108330, 39.131950, 33.679001>,  <34.899982, 39.245621, 33.714638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.108330, 39.131950, 33.679001>,  <35.455578, 38.942497, 33.619606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.108330, 39.131950, 33.679001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022287, -0.336051, 0.941580,
		0.495860, 0.814092, 0.302287,
		-0.868116, 0.473629, 0.148491,
		34.847897, 39.274040, 33.723549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.534451, 39.072536, 34.337234>,  <35.455578, 38.942497, 33.619606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.534451, 39.072536, 34.337234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.151867, 39.149632, 34.249557>,  <34.922318, 39.195889, 34.196949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.151867, 39.149632, 34.249557>,  <35.534451, 39.072536, 34.337234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.151867, 39.149632, 34.249557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279723, -0.390803, 0.876942,
		0.083355, 0.900070, 0.427698,
		-0.956455, 0.192734, -0.219195,
		34.864929, 39.207451, 34.183800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.234879, 39.559185, 34.871597>,  <35.534451, 39.072536, 34.337234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.234879, 39.559185, 34.871597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.951252, 39.334320, 34.701332>,  <34.781075, 39.199402, 34.599171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.951252, 39.334320, 34.701332>,  <35.234879, 39.559185, 34.871597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.951252, 39.334320, 34.701332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253160, -0.360461, 0.897763,
		-0.658127, 0.744337, 0.113273,
		-0.709069, -0.562166, -0.425666,
		34.738533, 39.165668, 34.573631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.765137, 39.592728, 35.337769>,  <35.234879, 39.559185, 34.871597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.765137, 39.592728, 35.337769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.625454, 39.273342, 35.141605>,  <34.541645, 39.081711, 35.023907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.625454, 39.273342, 35.141605>,  <34.765137, 39.592728, 35.337769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.625454, 39.273342, 35.141605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271532, -0.414678, 0.868511,
		-0.896840, 0.436456, -0.071999,
		-0.349211, -0.798466, -0.490412,
		34.520691, 39.033802, 34.994480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.074551, 39.371906, 35.658474>,  <34.765137, 39.592728, 35.337769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.074551, 39.371906, 35.658474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.206203, 39.048286, 35.463699>,  <34.285194, 38.854115, 35.346836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.206203, 39.048286, 35.463699>,  <34.074551, 39.371906, 35.658474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.206203, 39.048286, 35.463699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216819, -0.566636, 0.794930,
		-0.919055, -0.156061, -0.361916,
		0.329133, -0.809054, -0.486933,
		34.304943, 38.805569, 35.317619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.561474, 38.926113, 35.847706>,  <34.074551, 39.371906, 35.658474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.561474, 38.926113, 35.847706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.859818, 38.675644, 35.756840>,  <34.038822, 38.525364, 35.702320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.859818, 38.675644, 35.756840>,  <33.561474, 38.926113, 35.847706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.859818, 38.675644, 35.756840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202483, -0.538029, 0.818245,
		-0.634583, -0.564298, -0.528083,
		0.745858, -0.626173, -0.227163,
		34.083576, 38.487793, 35.688690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.333576, 38.123940, 35.768524>,  <33.561474, 38.926113, 35.847706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.333576, 38.123940, 35.768524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.729084, 38.093479, 35.819958>,  <33.966389, 38.075203, 35.850819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.729084, 38.093479, 35.819958>,  <33.333576, 38.123940, 35.768524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.729084, 38.093479, 35.819958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149426, -0.514499, 0.844371,
		0.001860, -0.854104, -0.520099,
		0.988771, -0.076146, 0.128582,
		34.025715, 38.070637, 35.858532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.485146, 37.454620, 35.892262>,  <33.333576, 38.123940, 35.768524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.485146, 37.454620, 35.892262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.790844, 37.654835, 36.054935>,  <33.974262, 37.774963, 36.152538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.790844, 37.654835, 36.054935>,  <33.485146, 37.454620, 35.892262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.790844, 37.654835, 36.054935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153946, -0.470775, 0.868718,
		0.626276, -0.726525, -0.282735,
		0.764250, 0.500532, 0.406681,
		34.020119, 37.804993, 36.176941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.993652, 36.832058, 36.030621>,  <33.485146, 37.454620, 35.892262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.993652, 36.832058, 36.030621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.068962, 37.155060, 36.254223>,  <34.114147, 37.348862, 36.388382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.068962, 37.155060, 36.254223>,  <33.993652, 36.832058, 36.030621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.068962, 37.155060, 36.254223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290319, -0.497986, 0.817144,
		0.938226, -0.316135, 0.140677,
		0.188272, 0.807507, 0.559004,
		34.125443, 37.397312, 36.421925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.274223, 36.557018, 36.633030>,  <33.993652, 36.832058, 36.030621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.274223, 36.557018, 36.633030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.227940, 36.935513, 36.753864>,  <34.200169, 37.162609, 36.826366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.227940, 36.935513, 36.753864>,  <34.274223, 36.557018, 36.633030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.227940, 36.935513, 36.753864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295182, -0.323149, 0.899134,
		0.948409, 0.014863, 0.316701,
		-0.115705, 0.946231, 0.302090,
		34.193230, 37.219383, 36.844490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.591442, 36.626251, 37.171497>,  <34.274223, 36.557018, 36.633030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.591442, 36.626251, 37.171497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.261158, 36.851887, 37.170349>,  <34.062988, 36.987267, 37.169662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.261158, 36.851887, 37.170349>,  <34.591442, 36.626251, 37.171497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.261158, 36.851887, 37.170349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291760, -0.422716, 0.858014,
		0.482785, 0.709306, 0.513619,
		-0.825709, 0.564090, -0.002867,
		34.013447, 37.021114, 37.169491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.210247, 36.261776, 36.853165>,  <34.591442, 36.626251, 37.171497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.210247, 36.261776, 36.853165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.580868, 36.118080, 36.897808>,  <35.803238, 36.031864, 36.924595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.580868, 36.118080, 36.897808>,  <35.210247, 36.261776, 36.853165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.580868, 36.118080, 36.897808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346431, 0.699234, -0.625346,
		0.146604, 0.618079, 0.772325,
		0.926549, -0.359236, 0.111611,
		35.858833, 36.010311, 36.931290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.611221, 36.725239, 36.737900>,  <35.210247, 36.261776, 36.853165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.611221, 36.725239, 36.737900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.879868, 36.429577, 36.717579>,  <36.041054, 36.252178, 36.705387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.879868, 36.429577, 36.717579>,  <35.611221, 36.725239, 36.737900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.879868, 36.429577, 36.717579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532828, 0.529503, -0.660092,
		0.514810, 0.416260, 0.749465,
		0.671614, -0.739158, -0.050799,
		36.081352, 36.207829, 36.702339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.344498, 37.043556, 36.737476>,  <35.611221, 36.725239, 36.737900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.344498, 37.043556, 36.737476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.362747, 36.673203, 36.587456>,  <36.373695, 36.450993, 36.497444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.362747, 36.673203, 36.587456>,  <36.344498, 37.043556, 36.737476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.362747, 36.673203, 36.587456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571417, 0.332144, -0.750443,
		0.819391, -0.180074, 0.544216,
		0.045622, -0.925880, -0.375053,
		36.376434, 36.395439, 36.474941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.013706, 37.019493, 36.518505>,  <36.344498, 37.043556, 36.737476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.013706, 37.019493, 36.518505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.801750, 36.745018, 36.319160>,  <36.674576, 36.580334, 36.199554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.801750, 36.745018, 36.319160>,  <37.013706, 37.019493, 36.518505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.801750, 36.745018, 36.319160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490628, 0.231275, -0.840117,
		0.691735, -0.689681, 0.214111,
		-0.529894, -0.686187, -0.498357,
		36.642780, 36.539162, 36.169655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.539684, 36.722908, 36.097977>,  <37.013706, 37.019493, 36.518505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.539684, 36.722908, 36.097977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.188625, 36.628838, 35.930920>,  <36.977989, 36.572395, 35.830685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.188625, 36.628838, 35.930920>,  <37.539684, 36.722908, 36.097977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.188625, 36.628838, 35.930920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332638, 0.328500, -0.883991,
		0.345099, -0.914754, -0.210074,
		-0.877644, -0.235186, -0.417647,
		36.925331, 36.558285, 35.805626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.729897, 36.619862, 35.496120>,  <37.539684, 36.722908, 36.097977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.729897, 36.619862, 35.496120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.335110, 36.648663, 35.438553>,  <37.098236, 36.665943, 35.404011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.335110, 36.648663, 35.438553>,  <37.729897, 36.619862, 35.496120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.335110, 36.648663, 35.438553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160842, 0.412901, -0.896461,
		-0.005121, -0.907926, -0.419101,
		-0.986967, 0.072000, -0.143918,
		37.039021, 36.670261, 35.395378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.661987, 36.602085, 34.804195>,  <37.729897, 36.619862, 35.496120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.661987, 36.602085, 34.804195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.294308, 36.727547, 34.899441>,  <37.073700, 36.802826, 34.956589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.294308, 36.727547, 34.899441>,  <37.661987, 36.602085, 34.804195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.294308, 36.727547, 34.899441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089614, 0.422180, -0.902072,
		-0.383466, -0.850520, -0.359959,
		-0.919197, 0.313656, 0.238109,
		37.018547, 36.821644, 34.970875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.268913, 36.342503, 34.238159>,  <37.661987, 36.602085, 34.804195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.268913, 36.342503, 34.238159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.063648, 36.641258, 34.407307>,  <36.940491, 36.820511, 34.508797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.063648, 36.641258, 34.407307>,  <37.268913, 36.342503, 34.238159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.063648, 36.641258, 34.407307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065152, 0.457370, -0.886887,
		-0.855817, -0.482664, -0.186042,
		-0.513159, 0.746892, 0.422872,
		36.909702, 36.865326, 34.534168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.686214, 36.587425, 33.722702>,  <37.268913, 36.342503, 34.238159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.686214, 36.587425, 33.722702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.716026, 36.898067, 33.972927>,  <36.733913, 37.084454, 34.123062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.716026, 36.898067, 33.972927>,  <36.686214, 36.587425, 33.722702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.716026, 36.898067, 33.972927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145086, 0.629077, -0.763684,
		-0.986608, -0.033840, 0.159562,
		0.074533, 0.776606, 0.625562,
		36.738388, 37.131050, 34.160595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.092361, 37.172836, 33.518768>,  <36.686214, 36.587425, 33.722702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.092361, 37.172836, 33.518768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.401073, 37.349503, 33.701763>,  <36.586300, 37.455502, 33.811562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.401073, 37.349503, 33.701763>,  <36.092361, 37.172836, 33.518768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.401073, 37.349503, 33.701763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099184, 0.627023, -0.772661,
		-0.628111, 0.641697, 0.440116,
		0.771777, 0.441664, 0.457486,
		36.632607, 37.482002, 33.839008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.031891, 37.883217, 33.383106>,  <36.092361, 37.172836, 33.518768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.031891, 37.883217, 33.383106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.410809, 37.852242, 33.507450>,  <36.638161, 37.833656, 33.582054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.410809, 37.852242, 33.507450>,  <36.031891, 37.883217, 33.383106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.410809, 37.852242, 33.507450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276824, 0.686253, -0.672626,
		-0.161239, 0.723229, 0.671522,
		0.947296, -0.077440, 0.310858,
		36.694996, 37.829010, 33.600708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.241825, 38.597736, 33.516716>,  <36.031891, 37.883217, 33.383106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.241825, 38.597736, 33.516716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.563984, 38.368221, 33.457237>,  <36.757278, 38.230515, 33.421551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.563984, 38.368221, 33.457237>,  <36.241825, 38.597736, 33.516716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.563984, 38.368221, 33.457237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379578, 0.691939, -0.614118,
		0.455259, 0.438167, 0.775080,
		0.805394, -0.573786, -0.148693,
		36.805603, 38.196087, 33.412628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.815323, 39.031536, 33.506824>,  <36.241825, 38.597736, 33.516716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.815323, 39.031536, 33.506824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.921642, 38.699539, 33.310677>,  <36.985435, 38.500343, 33.192986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.921642, 38.699539, 33.310677>,  <36.815323, 39.031536, 33.506824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.921642, 38.699539, 33.310677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484743, 0.554759, -0.676215,
		0.833291, -0.057966, 0.549788,
		0.265803, -0.829989, -0.490374,
		37.001385, 38.450542, 33.163563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.512974, 39.027596, 33.461136>,  <36.815323, 39.031536, 33.506824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.512974, 39.027596, 33.461136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.396118, 38.812405, 33.144848>,  <37.326004, 38.683292, 32.955074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.396118, 38.812405, 33.144848>,  <37.512974, 39.027596, 33.461136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.396118, 38.812405, 33.144848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593974, 0.545939, -0.590885,
		0.749566, -0.642288, 0.160052,
		-0.292140, -0.537974, -0.790720,
		37.308475, 38.651012, 32.907631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.094738, 39.089973, 33.085918>,  <37.512974, 39.027596, 33.461136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.094738, 39.089973, 33.085918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.822659, 38.935024, 32.836994>,  <37.659412, 38.842052, 32.687637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.822659, 38.935024, 32.836994>,  <38.094738, 39.089973, 33.085918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.822659, 38.935024, 32.836994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439840, 0.463466, -0.769246,
		0.586410, -0.796956, -0.144863,
		-0.680194, -0.387377, -0.622314,
		37.618599, 38.818813, 32.650299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.443935, 39.072121, 32.517883>,  <38.094738, 39.089973, 33.085918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.443935, 39.072121, 32.517883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.064030, 39.021217, 32.403519>,  <37.836086, 38.990677, 32.334900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.064030, 39.021217, 32.403519>,  <38.443935, 39.072121, 32.517883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.064030, 39.021217, 32.403519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195862, 0.470848, -0.860198,
		0.244087, -0.872988, -0.422272,
		-0.949768, -0.127256, -0.285913,
		37.779099, 38.983040, 32.317745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.399853, 38.768753, 31.862936>,  <38.443935, 39.072121, 32.517883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.399853, 38.768753, 31.862936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.046852, 38.955791, 31.883106>,  <37.835052, 39.068012, 31.895208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.046852, 38.955791, 31.883106>,  <38.399853, 38.768753, 31.862936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.046852, 38.955791, 31.883106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171405, 0.419627, -0.891366,
		-0.437957, -0.777991, -0.450471,
		-0.882504, 0.467593, 0.050427,
		37.782101, 39.096069, 31.898233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.970055, 38.588116, 31.211468>,  <38.399853, 38.768753, 31.862936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.970055, 38.588116, 31.211468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.815567, 38.927940, 31.355175>,  <37.722874, 39.131836, 31.441401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.815567, 38.927940, 31.355175>,  <37.970055, 38.588116, 31.211468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.815567, 38.927940, 31.355175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123141, 0.433494, -0.892704,
		-0.914150, -0.300540, -0.272040,
		-0.386221, 0.849564, 0.359269,
		37.699699, 39.182808, 31.462955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.518036, 38.781017, 30.653460>,  <37.970055, 38.588116, 31.211468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.518036, 38.781017, 30.653460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.559887, 39.097645, 30.894281>,  <37.584999, 39.287621, 31.038774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.559887, 39.097645, 30.894281>,  <37.518036, 38.781017, 30.653460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.559887, 39.097645, 30.894281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150347, 0.585832, -0.796365,
		-0.983081, 0.173838, -0.057716,
		0.104626, 0.791569, 0.602056,
		37.591274, 39.335117, 31.074898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.065186, 39.410976, 30.330507>,  <37.518036, 38.781017, 30.653460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.065186, 39.410976, 30.330507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.334629, 39.590755, 30.565197>,  <37.496296, 39.698624, 30.706011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.334629, 39.590755, 30.565197>,  <37.065186, 39.410976, 30.330507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.334629, 39.590755, 30.565197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099107, 0.731750, -0.674329,
		-0.732411, 0.512384, 0.448371,
		0.673611, 0.449450, 0.586723,
		37.536713, 39.725590, 30.741215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.908863, 40.087662, 30.265921>,  <37.065186, 39.410976, 30.330507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.908863, 40.087662, 30.265921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.284435, 40.077713, 30.403208>,  <37.509777, 40.071743, 30.485580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.284435, 40.077713, 30.403208>,  <36.908863, 40.087662, 30.265921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.284435, 40.077713, 30.403208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287536, 0.604648, -0.742781,
		-0.189048, 0.796104, 0.574873,
		0.938927, -0.024876, 0.343216,
		37.566113, 40.070251, 30.506172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.172161, 40.772785, 30.360806>,  <36.908863, 40.087662, 30.265921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.172161, 40.772785, 30.360806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.473846, 40.517780, 30.297895>,  <37.654858, 40.364777, 30.260149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.473846, 40.517780, 30.297895>,  <37.172161, 40.772785, 30.360806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.473846, 40.517780, 30.297895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252796, 0.502972, -0.826507,
		0.606016, 0.583604, 0.540510,
		0.754214, -0.637515, -0.157276,
		37.700111, 40.326527, 30.250713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.731747, 41.170330, 30.225647>,  <37.172161, 40.772785, 30.360806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.731747, 41.170330, 30.225647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.842247, 40.824673, 30.057390>,  <37.908546, 40.617279, 29.956436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.842247, 40.824673, 30.057390>,  <37.731747, 41.170330, 30.225647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.842247, 40.824673, 30.057390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286535, 0.491824, -0.822196,
		0.917377, 0.106607, 0.383476,
		0.276255, -0.864143, -0.420642,
		37.925125, 40.565430, 29.931198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.318817, 41.362957, 29.868820>,  <37.731747, 41.170330, 30.225647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.318817, 41.362957, 29.868820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.221161, 41.006870, 29.714987>,  <38.162567, 40.793217, 29.622686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.221161, 41.006870, 29.714987>,  <38.318817, 41.362957, 29.868820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.221161, 41.006870, 29.714987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208634, 0.339079, -0.917332,
		0.947030, -0.304197, 0.102946,
		-0.244143, -0.890219, -0.384584,
		38.147919, 40.739803, 29.599611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.815777, 41.243961, 29.405439>,  <38.318817, 41.362957, 29.868820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.815777, 41.243961, 29.405439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.511272, 41.005646, 29.303057>,  <38.328571, 40.862656, 29.241627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.511272, 41.005646, 29.303057>,  <38.815777, 41.243961, 29.405439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.511272, 41.005646, 29.303057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157899, 0.212527, -0.964313,
		0.628928, -0.774509, -0.067714,
		-0.761261, -0.595792, -0.255959,
		38.282894, 40.826908, 29.226269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.120625, 40.725800, 29.031605>,  <38.815777, 41.243961, 29.405439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.120625, 40.725800, 29.031605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.738571, 40.743839, 28.914513>,  <38.509338, 40.754665, 28.844257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.738571, 40.743839, 28.914513>,  <39.120625, 40.725800, 29.031605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.738571, 40.743839, 28.914513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295360, 0.071371, -0.952716,
		-0.022077, -0.996430, -0.081490,
		-0.955131, 0.045102, -0.292730,
		38.452030, 40.757370, 28.826694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.974148, 40.217415, 28.492161>,  <39.120625, 40.725800, 29.031605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.974148, 40.217415, 28.492161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.687767, 40.485611, 28.414339>,  <38.515938, 40.646530, 28.367647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.687767, 40.485611, 28.414339>,  <38.974148, 40.217415, 28.492161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.687767, 40.485611, 28.414339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147078, -0.127561, -0.980865,
		-0.682481, -0.730867, -0.007287,
		-0.715952, 0.670493, -0.194553,
		38.472980, 40.686760, 28.355972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.533382, 39.815281, 27.950146>,  <38.974148, 40.217415, 28.492161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.533382, 39.815281, 27.950146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.411304, 40.194717, 27.916630>,  <38.338058, 40.422379, 27.896521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.411304, 40.194717, 27.916630>,  <38.533382, 39.815281, 27.950146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.411304, 40.194717, 27.916630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159042, -0.137525, -0.977646,
		-0.938915, -0.285049, 0.192839,
		-0.305197, 0.948596, -0.083789,
		38.319744, 40.479298, 27.891493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.938587, 39.831097, 27.525564>,  <38.533382, 39.815281, 27.950146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.938587, 39.831097, 27.525564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.058689, 40.210976, 27.489964>,  <38.130749, 40.438904, 27.468603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.058689, 40.210976, 27.489964>,  <37.938587, 39.831097, 27.525564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.058689, 40.210976, 27.489964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205138, -0.026834, -0.978365,
		-0.931541, 0.312012, 0.186762,
		0.300250, 0.949699, -0.089003,
		38.148766, 40.495884, 27.463263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.455559, 40.171268, 27.032797>,  <37.938587, 39.831097, 27.525564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.455559, 40.171268, 27.032797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.750648, 40.440014, 27.059217>,  <37.927704, 40.601261, 27.075069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.750648, 40.440014, 27.059217>,  <37.455559, 40.171268, 27.032797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.750648, 40.440014, 27.059217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176500, 0.286388, -0.941716,
		-0.651618, 0.683071, 0.329859,
		0.737727, 0.671860, 0.066053,
		37.971966, 40.641571, 27.079033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.164959, 40.947544, 26.936148>,  <37.455559, 40.171268, 27.032797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.164959, 40.947544, 26.936148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.546593, 40.883629, 26.834806>,  <37.775574, 40.845280, 26.774002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.546593, 40.883629, 26.834806>,  <37.164959, 40.947544, 26.936148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.546593, 40.883629, 26.834806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193307, 0.317633, -0.928300,
		0.228808, 0.934653, 0.272160,
		0.954086, -0.159792, -0.253352,
		37.832817, 40.835690, 26.758801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.274784, 41.453274, 26.543003>,  <37.164959, 40.947544, 26.936148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.274784, 41.453274, 26.543003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.573208, 41.203396, 26.450779>,  <37.752262, 41.053471, 26.395445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.573208, 41.203396, 26.450779>,  <37.274784, 41.453274, 26.543003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.573208, 41.203396, 26.450779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011577, 0.334023, -0.942494,
		0.665783, 0.705822, 0.241967,
		0.746056, -0.624695, -0.230558,
		37.797024, 41.015987, 26.381611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.823868, 41.906559, 26.322206>,  <37.274784, 41.453274, 26.543003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.823868, 41.906559, 26.322206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.905014, 41.542576, 26.177526>,  <37.953701, 41.324188, 26.090717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.905014, 41.542576, 26.177526>,  <37.823868, 41.906559, 26.322206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.905014, 41.542576, 26.177526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156633, 0.394782, -0.905325,
		0.966597, 0.127009, 0.222618,
		0.202870, -0.909954, -0.361702,
		37.965874, 41.269588, 26.069016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.495327, 41.951046, 25.885872>,  <37.823868, 41.906559, 26.322206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.495327, 41.951046, 25.885872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.347282, 41.596470, 25.774710>,  <38.258453, 41.383724, 25.708012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.347282, 41.596470, 25.774710>,  <38.495327, 41.951046, 25.885872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.347282, 41.596470, 25.774710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308818, 0.164735, -0.936746,
		0.876154, -0.432526, 0.212779,
		-0.370115, -0.886444, -0.277905,
		38.236248, 41.330536, 25.691338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.041737, 41.623520, 25.540487>,  <38.495327, 41.951046, 25.885872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.041737, 41.623520, 25.540487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.710918, 41.450371, 25.397039>,  <38.512428, 41.346481, 25.310970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.710918, 41.450371, 25.397039>,  <39.041737, 41.623520, 25.540487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.710918, 41.450371, 25.397039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341943, 0.118949, -0.932162,
		0.446169, -0.893571, 0.049643,
		-0.827048, -0.432877, -0.358621,
		38.462803, 41.320507, 25.289454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.274876, 41.206833, 25.050270>,  <39.041737, 41.623520, 25.540487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.274876, 41.206833, 25.050270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.886662, 41.222961, 24.955238>,  <38.653732, 41.232639, 24.898220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.886662, 41.222961, 24.955238>,  <39.274876, 41.206833, 25.050270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.886662, 41.222961, 24.955238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238520, 0.020300, -0.970926,
		-0.034334, -0.998980, -0.029321,
		-0.970531, 0.040330, -0.237580,
		38.595501, 41.235058, 24.883965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.243229, 40.743790, 24.540012>,  <39.274876, 41.206833, 25.050270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.243229, 40.743790, 24.540012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.912346, 40.963306, 24.491753>,  <38.713814, 41.095016, 24.462797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.912346, 40.963306, 24.491753>,  <39.243229, 40.743790, 24.540012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.912346, 40.963306, 24.491753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167492, 0.035867, -0.985221,
		-0.536349, -0.835192, -0.121587,
		-0.827210, 0.548787, -0.120651,
		38.664185, 41.127941, 24.455557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.820133, 40.421864, 23.983759>,  <39.243229, 40.743790, 24.540012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.820133, 40.421864, 23.983759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.706211, 40.804707, 24.005022>,  <38.637859, 41.034412, 24.017780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.706211, 40.804707, 24.005022>,  <38.820133, 40.421864, 23.983759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.706211, 40.804707, 24.005022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056902, 0.072237, -0.995763,
		-0.956896, -0.280569, -0.075035,
		-0.284801, 0.957112, 0.053159,
		38.620770, 41.091839, 24.020969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.313564, 40.596432, 23.553553>,  <38.820133, 40.421864, 23.983759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.313564, 40.596432, 23.553553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.380039, 40.329762, 23.262920>,  <38.419926, 40.169758, 23.088541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.380039, 40.329762, 23.262920>,  <38.313564, 40.596432, 23.553553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.380039, 40.329762, 23.262920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014689, -0.738419, 0.674183,
		-0.985985, -0.101368, -0.132510,
		0.166188, -0.666680, -0.726580,
		38.429897, 40.129757, 23.044947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.880718, 40.056419, 23.716848>,  <38.313564, 40.596432, 23.553553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.880718, 40.056419, 23.716848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.173611, 39.916092, 23.483349>,  <38.349346, 39.831894, 23.343250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.173611, 39.916092, 23.483349>,  <37.880718, 40.056419, 23.716848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.173611, 39.916092, 23.483349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062782, -0.818702, 0.570777,
		-0.678155, -0.454590, -0.577454,
		0.732232, -0.350822, -0.583747,
		38.393280, 39.810844, 23.308226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.599495, 39.381081, 23.483276>,  <37.880718, 40.056419, 23.716848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.599495, 39.381081, 23.483276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.999207, 39.394859, 23.476984>,  <38.239033, 39.403126, 23.473209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.999207, 39.394859, 23.476984>,  <37.599495, 39.381081, 23.483276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.999207, 39.394859, 23.476984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035206, -0.691933, 0.721103,
		0.013959, -0.721139, -0.692650,
		0.999282, 0.034451, -0.015729,
		38.298992, 39.405193, 23.472265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.829628, 38.643806, 23.421715>,  <37.599495, 39.381081, 23.483276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.829628, 38.643806, 23.421715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.096180, 38.897030, 23.579281>,  <38.256111, 39.048965, 23.673820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.096180, 38.897030, 23.579281>,  <37.829628, 38.643806, 23.421715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.096180, 38.897030, 23.579281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005277, -0.532305, 0.846536,
		0.745591, -0.562038, -0.358060,
		0.666383, 0.633059, 0.393916,
		38.296093, 39.086948, 23.697456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.428585, 38.093815, 23.665489>,  <37.829628, 38.643806, 23.421715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.428585, 38.093815, 23.665489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.478436, 38.453659, 23.832899>,  <38.508347, 38.669567, 23.933346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.478436, 38.453659, 23.832899>,  <38.428585, 38.093815, 23.665489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.478436, 38.453659, 23.832899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293028, -0.436370, 0.850715,
		0.947947, 0.016620, -0.317994,
		0.124624, 0.899614, 0.418526,
		38.515823, 38.723545, 23.958456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.037914, 37.989063, 23.904444>,  <38.428585, 38.093815, 23.665489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.037914, 37.989063, 23.904444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.876183, 38.286285, 24.117752>,  <38.779144, 38.464619, 24.245737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.876183, 38.286285, 24.117752>,  <39.037914, 37.989063, 23.904444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.876183, 38.286285, 24.117752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401054, -0.379972, 0.833533,
		0.821992, 0.550897, -0.144370,
		-0.404334, 0.743057, 0.533273,
		38.754883, 38.509201, 24.277735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.539749, 38.069492, 24.559214>,  <39.037914, 37.989063, 23.904444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.539749, 38.069492, 24.559214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.208122, 38.264652, 24.668472>,  <39.009148, 38.381748, 24.734028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.208122, 38.264652, 24.668472>,  <39.539749, 38.069492, 24.559214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.208122, 38.264652, 24.668472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216794, -0.169809, 0.961335,
		0.515414, 0.856226, 0.035010,
		-0.829065, 0.487896, 0.273146,
		38.959404, 38.411022, 24.750416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.693573, 38.467472, 25.220982>,  <39.539749, 38.069492, 24.559214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.693573, 38.467472, 25.220982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.295025, 38.439167, 25.202045>,  <39.055897, 38.422184, 25.190683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.295025, 38.439167, 25.202045>,  <39.693573, 38.467472, 25.220982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.295025, 38.439167, 25.202045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024361, -0.295819, 0.954933,
		-0.081580, 0.952619, 0.293021,
		-0.996369, -0.070765, -0.047340,
		38.996113, 38.417938, 25.187843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.421474, 38.858093, 25.751276>,  <39.693573, 38.467472, 25.220982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.421474, 38.858093, 25.751276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.175537, 38.561050, 25.645067>,  <39.027973, 38.382824, 25.581341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.175537, 38.561050, 25.645067>,  <39.421474, 38.858093, 25.751276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.175537, 38.561050, 25.645067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102638, -0.258471, 0.960551,
		-0.781938, 0.617846, 0.082701,
		-0.614848, -0.742603, -0.265523,
		38.991081, 38.338268, 25.565411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.027393, 38.915466, 26.283787>,  <39.421474, 38.858093, 25.751276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.027393, 38.915466, 26.283787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.941811, 38.565376, 26.110260>,  <38.890461, 38.355320, 26.006144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.941811, 38.565376, 26.110260>,  <39.027393, 38.915466, 26.283787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.941811, 38.565376, 26.110260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305612, -0.361832, 0.880726,
		-0.927806, 0.321016, -0.190065,
		-0.213956, -0.875229, -0.433816,
		38.877625, 38.302807, 25.980116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.277916, 38.814854, 26.485479>,  <39.027393, 38.915466, 26.283787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.277916, 38.814854, 26.485479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.444378, 38.468166, 26.375483>,  <38.544254, 38.260155, 26.309484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.444378, 38.468166, 26.375483>,  <38.277916, 38.814854, 26.485479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.444378, 38.468166, 26.375483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246223, -0.398536, 0.883484,
		-0.875325, -0.299952, -0.379256,
		0.416150, -0.866717, -0.274993,
		38.569221, 38.208153, 26.292984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.776226, 38.303848, 26.614216>,  <38.277916, 38.814854, 26.485479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.776226, 38.303848, 26.614216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.130058, 38.117783, 26.600748>,  <38.342358, 38.006142, 26.592667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.130058, 38.117783, 26.600748>,  <37.776226, 38.303848, 26.614216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.130058, 38.117783, 26.600748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176981, -0.401597, 0.898553,
		-0.431496, -0.788887, -0.437571,
		0.884584, -0.465164, -0.033670,
		38.395435, 37.978233, 26.590647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.624920, 37.585739, 26.808142>,  <37.776226, 38.303848, 26.614216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.624920, 37.585739, 26.808142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.007950, 37.671406, 26.885273>,  <38.237766, 37.722805, 26.931551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.007950, 37.671406, 26.885273>,  <37.624920, 37.585739, 26.808142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.007950, 37.671406, 26.885273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111845, -0.340483, 0.933575,
		0.265595, -0.915535, -0.302084,
		0.957575, 0.214166, 0.192829,
		38.295223, 37.735657, 26.943121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.854820, 37.058407, 27.133041>,  <37.624920, 37.585739, 26.808142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.854820, 37.058407, 27.133041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.117908, 37.337181, 27.247368>,  <38.275761, 37.504444, 27.315964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.117908, 37.337181, 27.247368>,  <37.854820, 37.058407, 27.133041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.117908, 37.337181, 27.247368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158275, -0.243100, 0.957001,
		0.736445, -0.674677, -0.049586,
		0.657721, 0.696931, 0.285814,
		38.315224, 37.546261, 27.333113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.284554, 36.645012, 27.642256>,  <37.854820, 37.058407, 27.133041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.284554, 36.645012, 27.642256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.390026, 37.028374, 27.685957>,  <38.453308, 37.258392, 27.712177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.390026, 37.028374, 27.685957>,  <38.284554, 36.645012, 27.642256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.390026, 37.028374, 27.685957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245190, -0.176135, 0.953341,
		0.932929, -0.224587, -0.281434,
		0.263678, 0.958403, 0.109255,
		38.469128, 37.315895, 27.718733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.802299, 36.555275, 28.107357>,  <38.284554, 36.645012, 27.642256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.802299, 36.555275, 28.107357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.704414, 36.938847, 28.164722>,  <38.645683, 37.168991, 28.199142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.704414, 36.938847, 28.164722>,  <38.802299, 36.555275, 28.107357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.704414, 36.938847, 28.164722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054105, -0.134176, 0.989479,
		0.968086, 0.249894, -0.019049,
		-0.244709, 0.958932, 0.143415,
		38.631001, 37.226524, 28.207747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.335194, 36.854393, 28.564934>,  <38.802299, 36.555275, 28.107357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.335194, 36.854393, 28.564934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.993164, 37.061371, 28.578272>,  <38.787949, 37.185558, 28.586275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.993164, 37.061371, 28.578272>,  <39.335194, 36.854393, 28.564934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.993164, 37.061371, 28.578272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042166, 0.005298, 0.999097,
		0.516796, 0.855703, -0.026348,
		-0.855069, 0.517440, 0.033344,
		38.736645, 37.216602, 28.588274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.516277, 37.325348, 29.056225>,  <39.335194, 36.854393, 28.564934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.516277, 37.325348, 29.056225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.116592, 37.337845, 29.046417>,  <38.876781, 37.345345, 29.040533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.116592, 37.337845, 29.046417>,  <39.516277, 37.325348, 29.056225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.116592, 37.337845, 29.046417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027506, -0.099136, 0.994694,
		0.028647, 0.994583, 0.099918,
		-0.999211, 0.031243, -0.024517,
		38.816830, 37.347218, 29.039062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.347107, 37.795601, 29.542257>,  <39.516277, 37.325348, 29.056225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.347107, 37.795601, 29.542257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.995087, 37.610764, 29.498482>,  <38.783875, 37.499863, 29.472216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.995087, 37.610764, 29.498482>,  <39.347107, 37.795601, 29.542257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.995087, 37.610764, 29.498482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107914, -0.029822, 0.993713,
		-0.462450, 0.886331, -0.023621,
		-0.880054, -0.462092, -0.109438,
		38.731071, 37.472137, 29.465651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.901573, 38.120556, 29.998541>,  <39.347107, 37.795601, 29.542257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.901573, 38.120556, 29.998541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.717144, 37.772747, 29.927719>,  <38.606487, 37.564064, 29.885225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.717144, 37.772747, 29.927719>,  <38.901573, 38.120556, 29.998541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.717144, 37.772747, 29.927719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169193, -0.109724, 0.979456,
		-0.871083, 0.481557, -0.096526,
		-0.461073, -0.869519, -0.177054,
		38.578823, 37.511890, 29.874603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.200691, 38.113804, 30.384186>,  <38.901573, 38.120556, 29.998541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.200691, 38.113804, 30.384186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.263878, 37.726826, 30.305092>,  <38.301788, 37.494640, 30.257635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.263878, 37.726826, 30.305092>,  <38.200691, 38.113804, 30.384186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.263878, 37.726826, 30.305092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108602, -0.216057, 0.970322,
		-0.981454, -0.131805, -0.139196,
		0.157967, -0.967444, -0.197736,
		38.311268, 37.436592, 30.245771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.637161, 37.719074, 30.731812>,  <38.200691, 38.113804, 30.384186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.637161, 37.719074, 30.731812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.933941, 37.460400, 30.661041>,  <38.112011, 37.305195, 30.618580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.933941, 37.460400, 30.661041>,  <37.637161, 37.719074, 30.731812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.933941, 37.460400, 30.661041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032037, -0.297785, 0.954095,
		-0.669686, -0.702226, -0.241661,
		0.741953, -0.646686, -0.176925,
		38.156528, 37.266396, 30.607964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.417168, 37.152851, 31.086006>,  <37.637161, 37.719074, 30.731812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.417168, 37.152851, 31.086006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.808228, 37.088509, 31.031853>,  <38.042862, 37.049904, 30.999361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.808228, 37.088509, 31.031853>,  <37.417168, 37.152851, 31.086006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.808228, 37.088509, 31.031853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074164, -0.338688, 0.937971,
		-0.196731, -0.927047, -0.319188,
		0.977648, -0.160855, -0.135384,
		38.101521, 37.040253, 30.991238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.521912, 36.526466, 31.198719>,  <37.417168, 37.152851, 31.086006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.521912, 36.526466, 31.198719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.876511, 36.696575, 31.271683>,  <38.089268, 36.798641, 31.315460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.876511, 36.696575, 31.271683>,  <37.521912, 36.526466, 31.198719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.876511, 36.696575, 31.271683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045014, -0.471572, 0.880678,
		0.460545, -0.772505, -0.437189,
		0.886494, 0.425271, 0.182407,
		38.142460, 36.824158, 31.326405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.934219, 35.951130, 31.548714>,  <37.521912, 36.526466, 31.198719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.934219, 35.951130, 31.548714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.117519, 36.296577, 31.632788>,  <38.227497, 36.503845, 31.683231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.117519, 36.296577, 31.632788>,  <37.934219, 35.951130, 31.548714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.117519, 36.296577, 31.632788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115749, -0.292442, 0.949252,
		0.881257, -0.410662, -0.233973,
		0.458245, 0.863617, 0.210183,
		38.254993, 36.555664, 31.695843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.723476, 35.808060, 31.688074>,  <37.934219, 35.951130, 31.548714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.723476, 35.808060, 31.688074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.619835, 36.150490, 31.866962>,  <38.557652, 36.355946, 31.974295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.619835, 36.150490, 31.866962>,  <38.723476, 35.808060, 31.688074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.619835, 36.150490, 31.866962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129390, -0.428094, 0.894424,
		0.957144, 0.289614, 0.000153,
		-0.259103, 0.856072, 0.447220,
		38.542103, 36.407310, 32.001129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.214039, 35.863667, 32.276272>,  <38.723476, 35.808060, 31.688074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.214039, 35.863667, 32.276272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.906094, 36.099857, 32.373142>,  <38.721325, 36.241573, 32.431263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.906094, 36.099857, 32.373142>,  <39.214039, 35.863667, 32.276272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.906094, 36.099857, 32.373142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028764, -0.346971, 0.937435,
		0.637562, 0.728661, 0.250136,
		-0.769862, 0.590478, 0.242174,
		38.675137, 36.277000, 32.445793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.396778, 36.312634, 32.792831>,  <39.214039, 35.863667, 32.276272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.396778, 36.312634, 32.792831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.006737, 36.223953, 32.790852>,  <38.772713, 36.170746, 32.789665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.006737, 36.223953, 32.790852>,  <39.396778, 36.312634, 32.792831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.006737, 36.223953, 32.790852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111056, -0.507514, 0.854457,
		-0.191944, 0.832633, 0.519499,
		-0.975102, -0.221701, -0.004946,
		38.714207, 36.157444, 32.789368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.274773, 36.173000, 33.476131>,  <39.396778, 36.312634, 32.792831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.274773, 36.173000, 33.476131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.919174, 36.062222, 33.330265>,  <38.705814, 35.995754, 33.242744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.919174, 36.062222, 33.330265>,  <39.274773, 36.173000, 33.476131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.919174, 36.062222, 33.330265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198939, -0.483705, 0.852322,
		-0.412439, 0.830259, 0.374917,
		-0.888998, -0.276946, -0.364670,
		38.652473, 35.979137, 33.220863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.768940, 36.432213, 33.942451>,  <39.274773, 36.173000, 33.476131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.768940, 36.432213, 33.942451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.587685, 36.140198, 33.737820>,  <38.478931, 35.964989, 33.615040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.587685, 36.140198, 33.737820>,  <38.768940, 36.432213, 33.942451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.587685, 36.140198, 33.737820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003942, -0.572233, 0.820082,
		-0.891430, 0.373630, 0.256424,
		-0.453142, -0.730034, -0.511578,
		38.451740, 35.921188, 33.584347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.011833, 36.229298, 34.256897>,  <38.768940, 36.432213, 33.942451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.011833, 36.229298, 34.256897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.179131, 35.921520, 34.063805>,  <38.279507, 35.736855, 33.947948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.179131, 35.921520, 34.063805>,  <38.011833, 36.229298, 34.256897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.179131, 35.921520, 34.063805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131240, -0.577061, 0.806087,
		-0.898805, -0.273784, -0.342332,
		0.418240, -0.769443, -0.482734,
		38.304604, 35.690689, 33.918983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.628685, 35.732430, 34.451550>,  <38.011833, 36.229298, 34.256897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.628685, 35.732430, 34.451550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.964043, 35.559589, 34.318657>,  <38.165257, 35.455883, 34.238922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.964043, 35.559589, 34.318657>,  <37.628685, 35.732430, 34.451550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.964043, 35.559589, 34.318657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088329, -0.709181, 0.699471,
		-0.537855, -0.557089, -0.632743,
		0.838397, -0.432104, -0.332230,
		38.215561, 35.429958, 34.218987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.487988, 35.009136, 34.467754>,  <37.628685, 35.732430, 34.451550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.487988, 35.009136, 34.467754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.886620, 34.980282, 34.451599>,  <38.125797, 34.962967, 34.441906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.886620, 34.980282, 34.451599>,  <37.487988, 35.009136, 34.467754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.886620, 34.980282, 34.451599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022818, -0.709526, 0.704310,
		-0.079462, -0.700977, -0.708743,
		0.996577, -0.072138, -0.040385,
		38.185593, 34.958641, 34.439484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.680992, 34.377129, 34.703598>,  <37.487988, 35.009136, 34.467754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.680992, 34.377129, 34.703598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.057236, 34.509346, 34.734554>,  <38.282982, 34.588676, 34.753128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.057236, 34.509346, 34.734554>,  <37.680992, 34.377129, 34.703598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.057236, 34.509346, 34.734554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214487, -0.755346, 0.619232,
		0.263141, -0.565858, -0.781384,
		0.940613, 0.330542, 0.077394,
		38.339420, 34.608509, 34.757771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.145195, 33.828064, 34.529224>,  <37.680992, 34.377129, 34.703598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.145195, 33.828064, 34.529224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.328045, 34.086395, 34.773827>,  <38.437756, 34.241394, 34.920586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.328045, 34.086395, 34.773827>,  <38.145195, 33.828064, 34.529224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.328045, 34.086395, 34.773827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312384, -0.760327, 0.569490,
		0.832737, -0.069305, -0.549314,
		0.457127, 0.645832, 0.611503,
		38.465183, 34.280144, 34.957279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.811531, 33.521816, 34.776859>,  <38.145195, 33.828064, 34.529224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.811531, 33.521816, 34.776859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.728973, 33.802692, 35.049427>,  <38.679440, 33.971218, 35.212967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.728973, 33.802692, 35.049427>,  <38.811531, 33.521816, 34.776859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.728973, 33.802692, 35.049427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149180, -0.665689, 0.731165,
		0.967029, 0.252565, 0.032644,
		-0.206398, 0.702188, 0.681419,
		38.667053, 34.013348, 35.253853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.127159, 33.279427, 35.301739>,  <38.811531, 33.521816, 34.776859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.127159, 33.279427, 35.301739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.927086, 33.573925, 35.484058>,  <38.807041, 33.750626, 35.593452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.927086, 33.573925, 35.484058>,  <39.127159, 33.279427, 35.301739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.927086, 33.573925, 35.484058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068261, -0.491215, 0.868360,
		0.863225, 0.465452, 0.195440,
		-0.500183, 0.736249, 0.455802,
		38.777031, 33.794800, 35.620800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.465782, 33.483345, 35.932884>,  <39.127159, 33.279427, 35.301739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.465782, 33.483345, 35.932884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.085766, 33.601524, 35.973148>,  <38.857758, 33.672432, 35.997307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.085766, 33.601524, 35.973148>,  <39.465782, 33.483345, 35.932884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.085766, 33.601524, 35.973148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042262, -0.441307, 0.896360,
		0.309251, 0.847325, 0.431746,
		-0.950041, 0.295447, 0.100665,
		38.800755, 33.690159, 36.003349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.397678, 33.866982, 36.576145>,  <39.465782, 33.483345, 35.932884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.397678, 33.866982, 36.576145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.045349, 33.712677, 36.466354>,  <38.833950, 33.620094, 36.400478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.045349, 33.712677, 36.466354>,  <39.397678, 33.866982, 36.576145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.045349, 33.712677, 36.466354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112438, -0.392710, 0.912763,
		-0.459901, 0.834845, 0.302533,
		-0.880823, -0.385764, -0.274476,
		38.781101, 33.596947, 36.384010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.986347, 33.801323, 37.136398>,  <39.397678, 33.866982, 36.576145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.986347, 33.801323, 37.136398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.786964, 33.556602, 36.890717>,  <38.667336, 33.409771, 36.743309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.786964, 33.556602, 36.890717>,  <38.986347, 33.801323, 37.136398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.786964, 33.556602, 36.890717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163980, -0.629163, 0.759780,
		-0.851263, 0.479436, 0.213290,
		-0.498460, -0.611797, -0.614201,
		38.637424, 33.373062, 36.706455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.634281, 34.076141, 37.488094>,  <38.986347, 33.801323, 37.136398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.634281, 34.076141, 37.488094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.936466, 34.336136, 37.455109>,  <40.117775, 34.492130, 37.435318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.936466, 34.336136, 37.455109>,  <39.634281, 34.076141, 37.488094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.936466, 34.336136, 37.455109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298905, 0.453912, 0.839416,
		0.583041, -0.609495, 0.537196,
		0.755459, 0.649984, -0.082468,
		40.163105, 34.531132, 37.430367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.947914, 34.014912, 38.109818>,  <39.634281, 34.076141, 37.488094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.947914, 34.014912, 38.109818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.071136, 34.366783, 37.964897>,  <40.145069, 34.577908, 37.877945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.071136, 34.366783, 37.964897>,  <39.947914, 34.014912, 38.109818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.071136, 34.366783, 37.964897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220206, 0.436410, 0.872385,
		0.925532, -0.188966, 0.328151,
		0.308059, 0.879681, -0.362300,
		40.163555, 34.630688, 37.856209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.345638, 34.299179, 38.656261>,  <39.947914, 34.014912, 38.109818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.345638, 34.299179, 38.656261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.272720, 34.623611, 38.433937>,  <40.228970, 34.818272, 38.300545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.272720, 34.623611, 38.433937>,  <40.345638, 34.299179, 38.656261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.272720, 34.623611, 38.433937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194557, 0.524347, 0.828980,
		0.963802, 0.259259, 0.062213,
		-0.182299, 0.811077, -0.555807,
		40.218029, 34.866936, 38.267197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.739239, 34.939529, 38.822201>,  <40.345638, 34.299179, 38.656261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.739239, 34.939529, 38.822201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.403660, 35.073570, 38.650673>,  <40.202312, 35.153996, 38.547756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.403660, 35.073570, 38.650673>,  <40.739239, 34.939529, 38.822201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.403660, 35.073570, 38.650673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183789, 0.567201, 0.802810,
		0.512246, 0.752324, -0.414262,
		-0.838943, 0.335100, -0.428816,
		40.151978, 35.174099, 38.522030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.799999, 35.487717, 39.031185>,  <40.739239, 34.939529, 38.822201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.799999, 35.487717, 39.031185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.411514, 35.475426, 38.936695>,  <40.178425, 35.468052, 38.880001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.411514, 35.475426, 38.936695>,  <40.799999, 35.487717, 39.031185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.411514, 35.475426, 38.936695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233169, 0.325732, 0.916259,
		0.048794, 0.944962, -0.323520,
		-0.971211, -0.030727, -0.236229,
		40.120152, 35.466209, 38.865826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.643322, 36.161900, 39.111130>,  <40.799999, 35.487717, 39.031185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.643322, 36.161900, 39.111130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.284897, 35.990524, 39.157639>,  <40.069843, 35.887699, 39.185543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.284897, 35.990524, 39.157639>,  <40.643322, 36.161900, 39.111130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.284897, 35.990524, 39.157639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098536, 0.447325, 0.888927,
		-0.432862, 0.785074, -0.443046,
		-0.896059, -0.428438, 0.116272,
		40.016079, 35.861992, 39.192520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.298744, 36.644184, 39.409691>,  <40.643322, 36.161900, 39.111130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.298744, 36.644184, 39.409691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.070919, 36.321026, 39.470215>,  <39.934223, 36.127129, 39.506531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.070919, 36.321026, 39.470215>,  <40.298744, 36.644184, 39.409691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.070919, 36.321026, 39.470215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418704, 0.443597, 0.792407,
		-0.707307, 0.387971, -0.590928,
		-0.569564, -0.807899, 0.151314,
		39.900051, 36.078655, 39.515610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.536781, 36.944328, 39.503555>,  <40.298744, 36.644184, 39.409691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.536781, 36.944328, 39.503555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.563457, 36.570408, 39.643093>,  <39.579464, 36.346054, 39.726818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.563457, 36.570408, 39.643093>,  <39.536781, 36.944328, 39.503555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.563457, 36.570408, 39.643093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451903, 0.283413, 0.845849,
		-0.889571, -0.214053, -0.403540,
		0.066688, -0.934804, 0.348848,
		39.583466, 36.289967, 39.747746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.880505, 36.848610, 39.704800>,  <39.536781, 36.944328, 39.503555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.880505, 36.848610, 39.704800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.137630, 36.607841, 39.894318>,  <39.291904, 36.463383, 40.008030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.137630, 36.607841, 39.894318>,  <38.880505, 36.848610, 39.704800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.137630, 36.607841, 39.894318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383384, 0.282678, 0.879267,
		-0.663179, -0.746851, -0.049057,
		0.642814, -0.601919, 0.473797,
		39.330475, 36.427265, 40.036457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.556404, 36.569962, 40.284500>,  <38.880505, 36.848610, 39.704800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.556404, 36.569962, 40.284500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.922775, 36.472195, 40.411839>,  <39.142597, 36.413532, 40.488239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.922775, 36.472195, 40.411839>,  <38.556404, 36.569962, 40.284500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.922775, 36.472195, 40.411839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204812, 0.397479, 0.894462,
		-0.345160, -0.884460, 0.313999,
		0.915923, -0.244422, 0.318342,
		39.197552, 36.398869, 40.507339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.591007, 36.155289, 40.976997>,  <38.556404, 36.569962, 40.284500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.591007, 36.155289, 40.976997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.911610, 36.384460, 40.908482>,  <39.103970, 36.521965, 40.867371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.911610, 36.384460, 40.908482>,  <38.591007, 36.155289, 40.976997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.911610, 36.384460, 40.908482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304403, 0.637457, 0.707804,
		0.514714, -0.515167, 0.685327,
		0.801504, 0.572933, -0.171290,
		39.152061, 36.556339, 40.857094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.102417, 36.212067, 41.561443>,  <38.591007, 36.155289, 40.976997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.102417, 36.212067, 41.561443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.116798, 36.541584, 41.335144>,  <39.125427, 36.739296, 41.199364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.116798, 36.541584, 41.335144>,  <39.102417, 36.212067, 41.561443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.116798, 36.541584, 41.335144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111385, 0.565889, 0.816923,
		0.993127, 0.033646, 0.112103,
		0.035951, 0.823795, -0.565747,
		39.127583, 36.788723, 41.165421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.626869, 36.624229, 41.883106>,  <39.102417, 36.212067, 41.561443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.626869, 36.624229, 41.883106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.377060, 36.851295, 41.668545>,  <39.227173, 36.987534, 41.539810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.377060, 36.851295, 41.668545>,  <39.626869, 36.624229, 41.883106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.377060, 36.851295, 41.668545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161930, 0.577768, 0.799977,
		0.764033, 0.586465, -0.268909,
		-0.624525, 0.567664, -0.536401,
		39.189701, 37.021595, 41.507626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.406078, 36.924564, 42.572384>,  <39.626869, 36.624229, 41.883106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.406078, 36.924564, 42.572384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.374363, 37.168575, 42.257023>,  <39.355335, 37.314983, 42.067806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.374363, 37.168575, 42.257023>,  <39.406078, 36.924564, 42.572384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.374363, 37.168575, 42.257023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226975, 0.759071, 0.610158,
		0.970668, 0.227324, 0.078278,
		-0.079285, 0.610028, -0.788403,
		39.350578, 37.351585, 42.020500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.613380, 37.528545, 42.769894>,  <39.406078, 36.924564, 42.572384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.613380, 37.528545, 42.769894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.436501, 37.657158, 42.434971>,  <39.330372, 37.734325, 42.234016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.436501, 37.657158, 42.434971>,  <39.613380, 37.528545, 42.769894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.436501, 37.657158, 42.434971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314886, 0.818462, 0.480591,
		0.839826, 0.476172, -0.260677,
		-0.442198, 0.321530, -0.837305,
		39.303841, 37.753616, 42.183781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.864113, 38.301273, 42.616913>,  <39.613380, 37.528545, 42.769894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.864113, 38.301273, 42.616913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.521126, 38.235367, 42.421932>,  <39.315334, 38.195824, 42.304943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.521126, 38.235367, 42.421932>,  <39.864113, 38.301273, 42.616913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.521126, 38.235367, 42.421932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339670, 0.892847, 0.295716,
		0.386494, 0.419138, -0.821551,
		-0.857465, -0.164764, -0.487449,
		39.263885, 38.185936, 42.275696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.607506, 39.002430, 42.467220>,  <39.864113, 38.301273, 42.616913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.607506, 39.002430, 42.467220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.278000, 38.780266, 42.421745>,  <39.080296, 38.646969, 42.394463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.278000, 38.780266, 42.421745>,  <39.607506, 39.002430, 42.467220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.278000, 38.780266, 42.421745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539022, 0.705176, 0.460631,
		-0.175672, 0.440732, -0.880281,
		-0.823768, -0.555411, -0.113685,
		39.030869, 38.613644, 42.387638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.057739, 39.360062, 42.069530>,  <39.607506, 39.002430, 42.467220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.057739, 39.360062, 42.069530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.868664, 39.079628, 42.283089>,  <38.755219, 38.911366, 42.411224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.868664, 39.079628, 42.283089>,  <39.057739, 39.360062, 42.069530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.868664, 39.079628, 42.283089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634918, 0.691085, 0.345371,
		-0.611101, -0.175726, -0.771800,
		-0.472689, -0.701087, 0.533895,
		38.726856, 38.869301, 42.443256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.337154, 39.590622, 42.113060>,  <39.057739, 39.360062, 42.069530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.337154, 39.590622, 42.113060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.362389, 39.327389, 42.413177>,  <38.377529, 39.169449, 42.593250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.362389, 39.327389, 42.413177>,  <38.337154, 39.590622, 42.113060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.362389, 39.327389, 42.413177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462047, 0.647112, 0.606431,
		-0.884609, -0.384926, -0.263246,
		0.063081, -0.658086, 0.750296,
		38.381313, 39.129963, 42.638268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.719131, 39.541229, 42.298618>,  <38.337154, 39.590622, 42.113060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.719131, 39.541229, 42.298618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.979141, 39.459335, 42.591347>,  <38.135147, 39.410198, 42.766983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.979141, 39.459335, 42.591347>,  <37.719131, 39.541229, 42.298618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.979141, 39.459335, 42.591347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340888, 0.782133, 0.521597,
		-0.679169, -0.588516, 0.438610,
		0.650020, -0.204735, 0.731818,
		38.174149, 39.397915, 42.810894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.522556, 40.111263, 42.711403>,  <37.719131, 39.541229, 42.298618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.522556, 40.111263, 42.711403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.557526, 40.335896, 43.040520>,  <37.578506, 40.470673, 43.237991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.557526, 40.335896, 43.040520>,  <37.522556, 40.111263, 42.711403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.557526, 40.335896, 43.040520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373195, -0.747342, 0.549733,
		0.923624, -0.355124, 0.144239,
		0.087427, 0.561576, 0.822793,
		37.583755, 40.504368, 43.287357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.996349, 40.573402, 42.865692>,  <37.522556, 40.111263, 42.711403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.996349, 40.573402, 42.865692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.255051, 40.300419, 43.001904>,  <38.410271, 40.136627, 43.083630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.255051, 40.300419, 43.001904>,  <37.996349, 40.573402, 42.865692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.255051, 40.300419, 43.001904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721783, 0.691937, 0.015882,
		-0.246462, 0.235515, 0.940100,
		0.646750, -0.682463, 0.340527,
		38.449078, 40.095680, 43.104061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.210468, 40.861168, 43.514347>,  <37.996349, 40.573402, 42.865692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.210468, 40.861168, 43.514347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.486530, 40.621311, 43.352299>,  <38.652168, 40.477398, 43.255070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.486530, 40.621311, 43.352299>,  <38.210468, 40.861168, 43.514347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.486530, 40.621311, 43.352299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686897, 0.718985, 0.105983,
		0.227722, -0.351419, 0.908101,
		0.690156, -0.599637, -0.405118,
		38.693577, 40.441422, 43.230762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.275951, 40.290421, 43.838764>,  <38.210468, 40.861168, 43.514347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.275951, 40.290421, 43.838764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.004177, 40.002041, 43.784222>,  <37.841110, 39.829014, 43.751495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.004177, 40.002041, 43.784222>,  <38.275951, 40.290421, 43.838764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.004177, 40.002041, 43.784222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632418, -0.481186, -0.607048,
		0.372038, -0.498688, 0.782878,
		-0.679438, -0.720951, -0.136360,
		37.800346, 39.785755, 43.743313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.422497, 39.639668, 44.072086>,  <38.275951, 40.290421, 43.838764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.422497, 39.639668, 44.072086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.173855, 39.550350, 43.771755>,  <38.024670, 39.496758, 43.591557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.173855, 39.550350, 43.771755>,  <38.422497, 39.639668, 44.072086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.173855, 39.550350, 43.771755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613469, -0.734796, -0.289361,
		-0.487093, -0.640479, 0.593740,
		-0.621608, -0.223296, -0.750828,
		37.987373, 39.483360, 43.546505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.634926, 38.950245, 43.889984>,  <38.422497, 39.639668, 44.072086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.634926, 38.950245, 43.889984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.395779, 39.015560, 43.576069>,  <38.252289, 39.054749, 43.387718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.395779, 39.015560, 43.576069>,  <38.634926, 38.950245, 43.889984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.395779, 39.015560, 43.576069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423764, -0.766656, -0.482351,
		-0.680426, -0.620946, 0.389162,
		-0.597867, 0.163291, -0.784787,
		38.216419, 39.064548, 43.340633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.430874, 38.274639, 43.611904>,  <38.634926, 38.950245, 43.889984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.430874, 38.274639, 43.611904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.418957, 38.537220, 43.310390>,  <38.411804, 38.694767, 43.129482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.418957, 38.537220, 43.310390>,  <38.430874, 38.274639, 43.611904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.418957, 38.537220, 43.310390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342754, -0.701685, -0.624627,
		-0.938953, -0.276972, -0.204094,
		-0.029795, 0.656449, -0.753782,
		38.410019, 38.734154, 43.084255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.043869, 37.978855, 43.110401>,  <38.430874, 38.274639, 43.611904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.043869, 37.978855, 43.110401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.276161, 38.242729, 42.919582>,  <38.415539, 38.401054, 42.805092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.276161, 38.242729, 42.919582>,  <38.043869, 37.978855, 43.110401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.276161, 38.242729, 42.919582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247586, -0.701338, -0.668450,
		-0.775533, 0.270082, -0.570618,
		0.580732, 0.659682, -0.477042,
		38.450382, 38.440636, 42.776470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.992188, 37.820530, 42.326458>,  <38.043869, 37.978855, 43.110401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.992188, 37.820530, 42.326458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.312748, 38.058582, 42.350357>,  <38.505085, 38.201412, 42.364697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.312748, 38.058582, 42.350357>,  <37.992188, 37.820530, 42.326458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.312748, 38.058582, 42.350357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455738, -0.542880, -0.705397,
		-0.387366, 0.592539, -0.706290,
		0.801406, 0.595129, 0.059749,
		38.553169, 38.237122, 42.368282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.082672, 38.101532, 41.654675>,  <37.992188, 37.820530, 42.326458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.082672, 38.101532, 41.654675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.420265, 38.098724, 41.869202>,  <38.622822, 38.097038, 41.997917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.420265, 38.098724, 41.869202>,  <38.082672, 38.101532, 41.654675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.420265, 38.098724, 41.869202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477519, -0.445525, -0.757287,
		0.244261, 0.895242, -0.372663,
		0.843986, -0.007022, 0.536319,
		38.673462, 38.096619, 42.030098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.554497, 38.028347, 41.164474>,  <38.082672, 38.101532, 41.654675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.554497, 38.028347, 41.164474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.780518, 37.931057, 41.479832>,  <38.916130, 37.872681, 41.669044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.780518, 37.931057, 41.479832>,  <38.554497, 38.028347, 41.164474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.780518, 37.931057, 41.479832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655982, -0.447114, -0.608093,
		0.500404, 0.860773, -0.093090,
		0.565052, -0.243227, 0.788389,
		38.950031, 37.858089, 41.716347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.219246, 38.098415, 40.969368>,  <38.554497, 38.028347, 41.164474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.219246, 38.098415, 40.969368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.257015, 37.860008, 41.288326>,  <39.279678, 37.716965, 41.479702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.257015, 37.860008, 41.288326>,  <39.219246, 38.098415, 40.969368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.257015, 37.860008, 41.288326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535697, -0.644708, -0.545326,
		0.839114, 0.478657, 0.258408,
		0.094426, -0.596019, 0.797399,
		39.285343, 37.681202, 41.527546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.864346, 37.832352, 41.013294>,  <39.219246, 38.098415, 40.969368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.864346, 37.832352, 41.013294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.647449, 37.558777, 41.208519>,  <39.517311, 37.394630, 41.325653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.647449, 37.558777, 41.208519>,  <39.864346, 37.832352, 41.013294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.647449, 37.558777, 41.208519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368250, -0.715557, -0.593608,
		0.755225, -0.142152, 0.639866,
		-0.542243, -0.683938, 0.488059,
		39.484776, 37.353596, 41.354935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.320091, 37.307701, 41.215656>,  <39.864346, 37.832352, 41.013294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.320091, 37.307701, 41.215656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.955002, 37.147522, 41.183208>,  <39.735950, 37.051414, 41.163738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.955002, 37.147522, 41.183208>,  <40.320091, 37.307701, 41.215656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.955002, 37.147522, 41.183208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390639, -0.797071, -0.460520,
		0.119754, -0.452016, 0.883935,
		-0.912721, -0.400449, -0.081123,
		39.681187, 37.027386, 41.158871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.269978, 36.615791, 41.368507>,  <40.320091, 37.307701, 41.215656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.269978, 36.615791, 41.368507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.951244, 36.659985, 41.130905>,  <39.760002, 36.686501, 40.988342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.951244, 36.659985, 41.130905>,  <40.269978, 36.615791, 41.368507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.951244, 36.659985, 41.130905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276642, -0.807316, -0.521258,
		-0.537142, -0.579685, 0.612735,
		-0.796836, 0.110481, -0.594009,
		39.712193, 36.693130, 40.952702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.414555, 36.200703, 40.860306>,  <40.269978, 36.615791, 41.368507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.414555, 36.200703, 40.860306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.036213, 36.260265, 40.744934>,  <39.809208, 36.296005, 40.675713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.036213, 36.260265, 40.744934>,  <40.414555, 36.200703, 40.860306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.036213, 36.260265, 40.744934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143377, -0.605526, -0.782803,
		-0.291218, -0.781769, 0.551388,
		-0.945851, 0.148910, -0.288428,
		39.752457, 36.304939, 40.658405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.077381, 35.561493, 40.735291>,  <40.414555, 36.200703, 40.860306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.077381, 35.561493, 40.735291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.891293, 35.841606, 40.518707>,  <39.779640, 36.009674, 40.388756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.891293, 35.841606, 40.518707>,  <40.077381, 35.561493, 40.735291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.891293, 35.841606, 40.518707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013556, -0.617246, -0.786653,
		-0.885093, -0.358625, 0.296646,
		-0.465217, 0.700283, -0.541459,
		39.751728, 36.051689, 40.356270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.388790, 34.917110, 40.680965>,  <40.077381, 35.561493, 40.735291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.388790, 34.917110, 40.680965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.432442, 34.535728, 40.793404>,  <40.458633, 34.306900, 40.860867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.432442, 34.535728, 40.793404>,  <40.388790, 34.917110, 40.680965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.432442, 34.535728, 40.793404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.739637, 0.111037, 0.663784,
		-0.664100, -0.280345, -0.693093,
		0.109130, -0.953456, 0.281093,
		40.465179, 34.249691, 40.877731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.668400, 35.107159, 40.291718>,  <40.388790, 34.917110, 40.680965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.668400, 35.107159, 40.291718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.639957, 35.469139, 40.123909>,  <39.622890, 35.686329, 40.023224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.639957, 35.469139, 40.123909>,  <39.668400, 35.107159, 40.291718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.639957, 35.469139, 40.123909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107510, -0.411184, -0.905191,
		-0.991658, -0.109471, -0.068052,
		-0.071110, 0.904956, -0.419523,
		39.618626, 35.740627, 39.998051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.177036, 35.057747, 39.703926>,  <39.668400, 35.107159, 40.291718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.177036, 35.057747, 39.703926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.387512, 35.394356, 39.654991>,  <39.513798, 35.596321, 39.625629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.387512, 35.394356, 39.654991>,  <39.177036, 35.057747, 39.703926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.387512, 35.394356, 39.654991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001289, -0.144658, -0.989481,
		-0.850367, 0.520495, -0.077202,
		0.526188, 0.841522, -0.122341,
		39.545368, 35.646812, 39.618290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.765774, 35.517036, 39.197353>,  <39.177036, 35.057747, 39.703926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.765774, 35.517036, 39.197353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.164795, 35.544655, 39.201900>,  <39.404205, 35.561226, 39.204628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.164795, 35.544655, 39.201900>,  <38.765774, 35.517036, 39.197353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.164795, 35.544655, 39.201900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025795, -0.211845, -0.976963,
		-0.065045, 0.974861, -0.213106,
		0.997549, 0.069044, 0.011367,
		39.464058, 35.565369, 39.205311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.894642, 35.377796, 38.501259>,  <38.765774, 35.517036, 39.197353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.894642, 35.377796, 38.501259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.277325, 35.409119, 38.613388>,  <39.506935, 35.427914, 38.680664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.277325, 35.409119, 38.613388>,  <38.894642, 35.377796, 38.501259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.277325, 35.409119, 38.613388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288196, -0.389556, -0.874751,
		0.040700, 0.917667, -0.395260,
		0.956706, 0.078310, 0.280323,
		39.564335, 35.432613, 38.697483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.162262, 35.586956, 37.912022>,  <38.894642, 35.377796, 38.501259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.162262, 35.586956, 37.912022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.506031, 35.487003, 38.090435>,  <39.712292, 35.427032, 38.197483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.506031, 35.487003, 38.090435>,  <39.162262, 35.586956, 37.912022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.506031, 35.487003, 38.090435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376881, -0.279868, -0.882969,
		0.345473, 0.926947, -0.146348,
		0.859424, -0.249886, 0.446035,
		39.763859, 35.412037, 38.224247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.824532, 35.859131, 37.513447>,  <39.162262, 35.586956, 37.912022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.824532, 35.859131, 37.513447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.950714, 35.552601, 37.737316>,  <40.026424, 35.368683, 37.871639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.950714, 35.552601, 37.737316>,  <39.824532, 35.859131, 37.513447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.950714, 35.552601, 37.737316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486211, -0.375962, -0.788829,
		0.814914, 0.520964, 0.253994,
		0.315459, -0.766322, 0.559675,
		40.045353, 35.322704, 37.905220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.510265, 35.726807, 37.279114>,  <39.824532, 35.859131, 37.513447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.510265, 35.726807, 37.279114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.397507, 35.391205, 37.465279>,  <40.329853, 35.189846, 37.576977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.397507, 35.391205, 37.465279>,  <40.510265, 35.726807, 37.279114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.397507, 35.391205, 37.465279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329828, -0.540267, -0.774161,
		0.900971, -0.064724, 0.429024,
		-0.281894, -0.839001, 0.465417,
		40.312939, 35.139503, 37.604904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.176067, 35.382717, 37.397949>,  <40.510265, 35.726807, 37.279114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.176067, 35.382717, 37.397949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.860588, 35.137009, 37.387978>,  <40.671299, 34.989582, 37.381996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.860588, 35.137009, 37.387978>,  <41.176067, 35.382717, 37.397949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.860588, 35.137009, 37.387978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423084, -0.512907, -0.746945,
		0.446046, -0.599659, 0.664419,
		-0.788698, -0.614276, -0.024926,
		40.623978, 34.952724, 37.380501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.371288, 34.658012, 37.344532>,  <41.176067, 35.382717, 37.397949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.371288, 34.658012, 37.344532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.013039, 34.690441, 37.169590>,  <40.798088, 34.709900, 37.064625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.013039, 34.690441, 37.169590>,  <41.371288, 34.658012, 37.344532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.013039, 34.690441, 37.169590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263974, -0.694510, -0.669308,
		-0.358012, -0.714901, 0.600619,
		-0.895625, 0.081072, -0.437359,
		40.744350, 34.714764, 37.038383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.859051, 34.054306, 37.376415>,  <41.371288, 34.658012, 37.344532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.859051, 34.054306, 37.376415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.910522, 34.286385, 37.054718>,  <40.941406, 34.425632, 36.861698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.910522, 34.286385, 37.054718>,  <40.859051, 34.054306, 37.376415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.910522, 34.286385, 37.054718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423435, -0.765487, -0.484492,
		-0.896742, -0.278204, -0.344176,
		0.128675, 0.580200, -0.804245,
		40.949123, 34.460445, 36.813446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.536404, 33.618317, 36.851059>,  <40.859051, 34.054306, 37.376415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.536404, 33.618317, 36.851059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.824360, 33.869972, 36.733791>,  <40.997131, 34.020966, 36.663433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.824360, 33.869972, 36.733791>,  <40.536404, 33.618317, 36.851059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.824360, 33.869972, 36.733791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466226, -0.751205, -0.467252,
		-0.514193, 0.199688, -0.834104,
		0.719888, 0.629139, -0.293165,
		41.040325, 34.058716, 36.645844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.690639, 33.708179, 35.996796>,  <40.536404, 33.618317, 36.851059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.690639, 33.708179, 35.996796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.984322, 33.727982, 36.267643>,  <41.160530, 33.739864, 36.430149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.984322, 33.727982, 36.267643>,  <40.690639, 33.708179, 35.996796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.984322, 33.727982, 36.267643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511647, -0.695915, -0.503904,
		0.446269, 0.716415, -0.536278,
		0.734208, 0.049508, 0.677117,
		41.204586, 33.742832, 36.470779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.314041, 34.111629, 35.769592>,  <40.690639, 33.708179, 35.996796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.314041, 34.111629, 35.769592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.344395, 33.788906, 36.003963>,  <41.362606, 33.595272, 36.144585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.344395, 33.788906, 36.003963>,  <41.314041, 34.111629, 35.769592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.344395, 33.788906, 36.003963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420361, -0.506963, -0.752519,
		0.904178, 0.303404, 0.300679,
		0.075885, -0.806805, 0.585924,
		41.367161, 33.546864, 36.179741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.032879, 33.914055, 36.091667>,  <41.314041, 34.111629, 35.769592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.032879, 33.914055, 36.091667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.787373, 33.614075, 35.992989>,  <41.640068, 33.434086, 35.933781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.787373, 33.614075, 35.992989>,  <42.032879, 33.914055, 36.091667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.787373, 33.614075, 35.992989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480505, -0.106913, -0.870450,
		0.626419, -0.652797, 0.425975,
		-0.613770, -0.749950, -0.246700,
		41.603241, 33.389091, 35.918980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.533810, 33.568714, 36.292995>,  <42.032879, 33.914055, 36.091667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.533810, 33.568714, 36.292995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.706825, 33.319336, 36.553524>,  <42.810635, 33.169708, 36.709843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.706825, 33.319336, 36.553524>,  <42.533810, 33.568714, 36.292995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.706825, 33.319336, 36.553524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.894130, -0.203728, 0.398782,
		-0.115925, -0.754860, -0.645560,
		0.432543, -0.623443, 0.651326,
		42.836590, 33.132301, 36.748920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.652733, 34.136101, 36.779408>,  <42.533810, 33.568714, 36.292995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.652733, 34.136101, 36.779408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.739525, 34.265232, 37.147907>,  <42.791599, 34.342709, 37.369007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.739525, 34.265232, 37.147907>,  <42.652733, 34.136101, 36.779408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.739525, 34.265232, 37.147907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.970701, 0.028465, -0.238598,
		-0.103249, 0.946030, -0.307191,
		0.216977, 0.322826, 0.921252,
		42.804619, 34.362080, 37.424282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.040363, 34.777424, 36.642326>,  <42.652733, 34.136101, 36.779408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.040363, 34.777424, 36.642326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.136768, 34.571274, 36.971275>,  <43.194611, 34.447582, 37.168644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.136768, 34.571274, 36.971275>,  <43.040363, 34.777424, 36.642326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.136768, 34.571274, 36.971275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.923450, -0.138919, -0.357690,
		0.298589, 0.845630, 0.442443,
		0.241010, -0.515376, 0.822376,
		43.209072, 34.416660, 37.217987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.548691, 35.065022, 37.082176>,  <43.040363, 34.777424, 36.642326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.548691, 35.065022, 37.082176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.538994, 34.665459, 37.098148>,  <43.533176, 34.425720, 37.107731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.538994, 34.665459, 37.098148>,  <43.548691, 35.065022, 37.082176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.538994, 34.665459, 37.098148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.906818, -0.038788, -0.419733,
		0.420824, 0.026036, 0.906769,
		-0.024244, -0.998908, 0.039933,
		43.531719, 34.365788, 37.110126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.101540, 34.794418, 37.527035>,  <43.548691, 35.065022, 37.082176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.101540, 34.794418, 37.527035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.997410, 34.558575, 37.221199>,  <43.934933, 34.417068, 37.037697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.997410, 34.558575, 37.221199>,  <44.101540, 34.794418, 37.527035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.997410, 34.558575, 37.221199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.923048, 0.080310, -0.376208,
		0.283220, -0.803686, 0.523331,
		-0.260324, -0.589609, -0.764586,
		43.919312, 34.381691, 36.991821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.734089, 34.324249, 37.333096>,  <44.101540, 34.794418, 37.527035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.734089, 34.324249, 37.333096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.497944, 34.333290, 37.010365>,  <44.356258, 34.338715, 36.816727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.497944, 34.333290, 37.010365>,  <44.734089, 34.324249, 37.333096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.497944, 34.333290, 37.010365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.799089, 0.157214, -0.580293,
		0.113728, -0.987306, -0.110875,
		-0.590358, 0.022604, -0.806825,
		44.320835, 34.340073, 36.768318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.688389, 33.719486, 36.982170>,  <44.734089, 34.324249, 37.333096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.688389, 33.719486, 36.982170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.679790, 34.065983, 36.782501>,  <44.674633, 34.273880, 36.662701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.679790, 34.065983, 36.782501>,  <44.688389, 33.719486, 36.982170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.679790, 34.065983, 36.782501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.883052, -0.217663, -0.415744,
		-0.468784, -0.449728, -0.760254,
		-0.021493, 0.866238, -0.499169,
		44.673344, 34.325855, 36.632751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.658798, 33.644028, 36.195290>,  <44.688389, 33.719486, 36.982170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.658798, 33.644028, 36.195290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.847553, 33.966064, 36.339039>,  <44.960808, 34.159286, 36.425289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.847553, 33.966064, 36.339039>,  <44.658798, 33.644028, 36.195290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.847553, 33.966064, 36.339039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.831180, -0.270299, -0.485880,
		-0.294040, 0.527983, -0.796727,
		0.471891, 0.805092, 0.359370,
		44.989120, 34.207592, 36.446850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.923519, 34.001846, 35.599480>,  <44.658798, 33.644028, 36.195290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.923519, 34.001846, 35.599480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.128544, 34.057697, 35.938370>,  <45.251556, 34.091206, 36.141705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.128544, 34.057697, 35.938370>,  <44.923519, 34.001846, 35.599480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.128544, 34.057697, 35.938370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.832876, -0.320787, -0.451013,
		0.208806, 0.936804, -0.280712,
		0.512560, 0.139624, 0.847224,
		45.282310, 34.099583, 36.192535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.436916, 34.539955, 35.686760>,  <44.923519, 34.001846, 35.599480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.436916, 34.539955, 35.686760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.561741, 34.209763, 35.874889>,  <45.636635, 34.011646, 35.987766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.561741, 34.209763, 35.874889>,  <45.436916, 34.539955, 35.686760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.561741, 34.209763, 35.874889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.861385, 0.036991, -0.506604,
		0.400792, 0.563221, 0.722597,
		0.312060, -0.825478, 0.470325,
		45.655357, 33.962120, 36.015987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.098133, 34.613148, 36.134178>,  <45.436916, 34.539955, 35.686760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.098133, 34.613148, 36.134178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.057835, 34.252502, 35.965919>,  <46.033657, 34.036114, 35.864964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.057835, 34.252502, 35.965919>,  <46.098133, 34.613148, 36.134178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.057835, 34.252502, 35.965919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.896839, 0.100748, -0.430732,
		0.430733, -0.420649, 0.798451,
		-0.100745, -0.901612, -0.420649,
		46.027611, 33.982018, 35.839725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.197830, 35.115437, 35.576645>,  <46.098133, 34.613148, 36.134178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.197830, 35.115437, 35.576645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.489994, 35.235054, 35.822269>,  <46.665291, 35.306824, 35.969646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.489994, 35.235054, 35.822269>,  <46.197830, 35.115437, 35.576645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.489994, 35.235054, 35.822269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675612, -0.448287, -0.585310,
		0.100246, 0.842386, -0.529468,
		0.730410, 0.299040, 0.614065,
		46.709118, 35.324764, 36.006489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.655220, 35.724506, 35.436550>,  <46.197830, 35.115437, 35.576645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.655220, 35.724506, 35.436550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.816559, 35.397930, 35.601837>,  <46.913361, 35.201984, 35.701008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.816559, 35.397930, 35.601837>,  <46.655220, 35.724506, 35.436550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.816559, 35.397930, 35.601837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406040, -0.244992, -0.880404,
		0.820027, 0.522887, 0.232689,
		0.403345, -0.816436, 0.413213,
		46.937561, 35.153000, 35.725800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.401066, 35.634716, 35.449745>,  <46.655220, 35.724506, 35.436550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.401066, 35.634716, 35.449745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.257088, 35.261768, 35.436371>,  <47.170700, 35.037998, 35.428345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.257088, 35.261768, 35.436371>,  <47.401066, 35.634716, 35.449745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.257088, 35.261768, 35.436371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290537, -0.077960, -0.953683,
		0.886582, -0.352990, 0.298951,
		-0.359946, -0.932374, -0.033439,
		47.149105, 34.982056, 35.426338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.982201, 35.220734, 35.164288>,  <47.401066, 35.634716, 35.449745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.982201, 35.220734, 35.164288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.610096, 35.081142, 35.118977>,  <47.386833, 34.997387, 35.091789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.610096, 35.081142, 35.118977>,  <47.982201, 35.220734, 35.164288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.610096, 35.081142, 35.118977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148363, -0.075430, -0.986052,
		0.335566, -0.934090, 0.121945,
		-0.930260, -0.348977, -0.113273,
		47.331017, 34.976448, 35.084995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<34.441048, 34.923859, 27.581095> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.301304, 35.277466, 27.705328>,  <34.217457, 35.489628, 27.779869>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.301304, 35.277466, 27.705328>,  <34.441048, 34.923859, 27.581095>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.301304, 35.277466, 27.705328> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097240, -0.295475, 0.950389,
		0.931929, 0.362229, 0.017265,
		-0.349360, 0.884016, 0.310585,
		34.196495, 35.542671, 27.798504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.782749, 35.093681, 28.248779>,  <34.441048, 34.923859, 27.581095>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.782749, 35.093681, 28.248779> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.443253, 35.303986, 28.226112>,  <34.239555, 35.430168, 28.212513>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.443253, 35.303986, 28.226112>,  <34.782749, 35.093681, 28.248779>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.443253, 35.303986, 28.226112> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179360, -0.185411, 0.966154,
		0.497458, 0.830180, 0.251666,
		-0.848743, 0.525760, -0.056667,
		34.188629, 35.461712, 28.209112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.824608, 35.544445, 28.730850>,  <34.782749, 35.093681, 28.248779>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.824608, 35.544445, 28.730850> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.431091, 35.505863, 28.670372>,  <34.194981, 35.482716, 28.634085>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.431091, 35.505863, 28.670372>,  <34.824608, 35.544445, 28.730850>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.431091, 35.505863, 28.670372> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128899, -0.205886, 0.970050,
		-0.124691, 0.973811, 0.190116,
		-0.983787, -0.096451, -0.151195,
		34.135956, 35.476929, 28.625013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.611519, 35.997726, 29.207808>,  <34.824608, 35.544445, 28.730850>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.611519, 35.997726, 29.207808> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.352180, 35.709465, 29.109575>,  <34.196579, 35.536507, 29.050636>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.352180, 35.709465, 29.109575>,  <34.611519, 35.997726, 29.207808>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.352180, 35.709465, 29.109575> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029984, -0.298141, 0.954051,
		-0.760757, 0.625916, 0.171690,
		-0.648344, -0.720653, -0.245580,
		34.157677, 35.493271, 29.035902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.200890, 35.925819, 29.847801>,  <34.611519, 35.997726, 29.207808>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.200890, 35.925819, 29.847801> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.112396, 35.610268, 29.618460>,  <34.059299, 35.420937, 29.480856>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.112396, 35.610268, 29.618460>,  <34.200890, 35.925819, 29.847801>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.112396, 35.610268, 29.618460> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158619, -0.550983, 0.819303,
		-0.962235, 0.272201, -0.003235,
		-0.221233, -0.788875, -0.573352,
		34.046028, 35.373604, 29.446455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.580238, 35.647842, 30.110844>,  <34.200890, 35.925819, 29.847801>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.580238, 35.647842, 30.110844> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.782566, 35.352676, 29.932125>,  <33.903961, 35.175575, 29.824894>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.782566, 35.352676, 29.932125>,  <33.580238, 35.647842, 30.110844>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.782566, 35.352676, 29.932125> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097282, -0.465839, 0.879506,
		-0.857138, -0.488334, -0.163843,
		0.505818, -0.737919, -0.446794,
		33.934311, 35.131302, 29.798086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.294563, 34.997242, 30.491669>,  <33.580238, 35.647842, 30.110844>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.294563, 34.997242, 30.491669> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.639938, 34.887630, 30.322252>,  <33.847164, 34.821861, 30.220602>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.639938, 34.887630, 30.322252>,  <33.294563, 34.997242, 30.491669>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.639938, 34.887630, 30.322252> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223954, -0.544090, 0.808585,
		-0.452024, -0.793014, -0.408415,
		0.863434, -0.274034, -0.423541,
		33.898968, 34.805420, 30.195190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.370232, 34.268085, 30.566681>,  <33.294563, 34.997242, 30.491669>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.370232, 34.268085, 30.566681> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.745209, 34.369434, 30.471178>,  <33.970196, 34.430244, 30.413877>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.745209, 34.369434, 30.471178>,  <33.370232, 34.268085, 30.566681>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.745209, 34.369434, 30.471178> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345028, -0.584699, 0.734222,
		0.046429, -0.770669, -0.635542,
		0.937443, 0.253370, -0.238755,
		34.026443, 34.445446, 30.399551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.651714, 33.666904, 30.505384>,  <33.370232, 34.268085, 30.566681>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.651714, 33.666904, 30.505384> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.972622, 33.903538, 30.537380>,  <34.165165, 34.045517, 30.556578>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.972622, 33.903538, 30.537380>,  <33.651714, 33.666904, 30.505384>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.972622, 33.903538, 30.537380> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373354, -0.601785, 0.706018,
		0.465801, -0.536553, -0.703662,
		0.802269, 0.591579, 0.079988,
		34.213303, 34.081013, 30.561377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.269318, 33.273537, 30.256456>,  <33.651714, 33.666904, 30.505384>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.269318, 33.273537, 30.256456> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.388515, 33.555576, 30.513838>,  <34.460033, 33.724800, 30.668266>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.388515, 33.555576, 30.513838>,  <34.269318, 33.273537, 30.256456>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.388515, 33.555576, 30.513838> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274733, -0.708911, 0.649590,
		0.914178, -0.016797, -0.404966,
		0.297995, 0.705098, 0.643456,
		34.477913, 33.767105, 30.706875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.038376, 33.229736, 30.503330>,  <34.269318, 33.273537, 30.256456>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.038376, 33.229736, 30.503330> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.784733, 33.391953, 30.766674>,  <34.632545, 33.489285, 30.924681>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.784733, 33.391953, 30.766674>,  <35.038376, 33.229736, 30.503330>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.784733, 33.391953, 30.766674> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392119, -0.565181, 0.725819,
		0.666444, 0.718405, 0.199366,
		-0.634110, 0.405543, 0.658362,
		34.594501, 33.513615, 30.964182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.462856, 33.602261, 31.089296>,  <35.038376, 33.229736, 30.503330>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.462856, 33.602261, 31.089296> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.099030, 33.515663, 31.231176>,  <34.880733, 33.463707, 31.316305>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.099030, 33.515663, 31.231176>,  <35.462856, 33.602261, 31.089296>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.099030, 33.515663, 31.231176> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415023, -0.516214, 0.749185,
		0.020911, 0.828646, 0.559382,
		-0.909571, -0.216490, 0.354702,
		34.826157, 33.450718, 31.337587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.465633, 33.767052, 31.785177>,  <35.462856, 33.602261, 31.089296>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.465633, 33.767052, 31.785177> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.161152, 33.509777, 31.751989>,  <34.978462, 33.355412, 31.732077>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.161152, 33.509777, 31.751989>,  <35.465633, 33.767052, 31.785177>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.161152, 33.509777, 31.751989> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403930, -0.570308, 0.715255,
		-0.507360, 0.510939, 0.693921,
		-0.761201, -0.643187, -0.082968,
		34.932793, 33.316822, 31.727098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.119854, 33.785461, 32.477158>,  <35.465633, 33.767052, 31.785177>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.119854, 33.785461, 32.477158> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.007195, 33.451344, 32.288284>,  <34.939598, 33.250874, 32.174961>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.007195, 33.451344, 32.288284>,  <35.119854, 33.785461, 32.477158>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.007195, 33.451344, 32.288284> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105548, -0.516090, 0.850006,
		-0.953694, 0.189566, 0.233521,
		-0.281650, -0.835294, -0.472184,
		34.922699, 33.200756, 32.146629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.799110, 33.454956, 33.004036>,  <35.119854, 33.785461, 32.477158>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.799110, 33.454956, 33.004036> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.861038, 33.173496, 32.726646>,  <34.898193, 33.004620, 32.560215>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.861038, 33.173496, 32.726646>,  <34.799110, 33.454956, 33.004036>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.861038, 33.173496, 32.726646> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231002, -0.656693, 0.717908,
		-0.960557, -0.271340, 0.060876,
		0.154820, -0.703654, -0.693471,
		34.907486, 32.962399, 32.518604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.409164, 32.926033, 33.269932>,  <34.799110, 33.454956, 33.004036>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.409164, 32.926033, 33.269932> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.659050, 32.755779, 33.008072>,  <34.808983, 32.653625, 32.850956>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.659050, 32.755779, 33.008072>,  <34.409164, 32.926033, 33.269932>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.659050, 32.755779, 33.008072> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234554, -0.697370, 0.677244,
		-0.744794, -0.576634, -0.335821,
		0.624713, -0.425639, -0.654648,
		34.846462, 32.628086, 32.811676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.193550, 32.130360, 33.279465>,  <34.409164, 32.926033, 33.269932>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.193550, 32.130360, 33.279465> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.559639, 32.161060, 33.121235>,  <34.779293, 32.179482, 33.026299>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.559639, 32.161060, 33.121235>,  <34.193550, 32.130360, 33.279465>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.559639, 32.161060, 33.121235> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339597, -0.675324, 0.654684,
		-0.216888, -0.733516, -0.644138,
		0.915223, 0.076755, -0.395570,
		34.834206, 32.184086, 33.002563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.306648, 31.536570, 32.990486>,  <34.193550, 32.130360, 33.279465>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.306648, 31.536570, 32.990486> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.655796, 31.698326, 33.099716>,  <34.865284, 31.795380, 33.165253>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.655796, 31.698326, 33.099716>,  <34.306648, 31.536570, 32.990486>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.655796, 31.698326, 33.099716> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032776, -0.606954, 0.794061,
		0.486853, -0.684160, -0.543046,
		0.872869, 0.404390, 0.273074,
		34.917656, 31.819643, 33.181637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.706688, 30.938524, 33.086060>,  <34.306648, 31.536570, 32.990486>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.706688, 30.938524, 33.086060> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.901821, 31.243761, 33.255630>,  <35.018902, 31.426903, 33.357372>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.901821, 31.243761, 33.255630>,  <34.706688, 30.938524, 33.086060>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.901821, 31.243761, 33.255630> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032881, -0.501350, 0.864619,
		0.872319, -0.407847, -0.269665,
		0.487829, 0.763091, 0.423927,
		35.048168, 31.472689, 33.382809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.440769, 30.817478, 33.246857>,  <34.706688, 30.938524, 33.086060>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.440769, 30.817478, 33.246857> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.274658, 31.077616, 33.501289>,  <35.174992, 31.233698, 33.653950>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.274658, 31.077616, 33.501289>,  <35.440769, 30.817478, 33.246857>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.274658, 31.077616, 33.501289> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272204, -0.578350, 0.769036,
		0.868015, 0.492506, 0.063149,
		-0.415277, 0.650345, 0.636078,
		35.150074, 31.272720, 33.692112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.009315, 31.133190, 33.668831>,  <35.440769, 30.817478, 33.246857>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.009315, 31.133190, 33.668831> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.638546, 31.057371, 33.798370>,  <35.416084, 31.011879, 33.876095>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.638546, 31.057371, 33.798370>,  <36.009315, 31.133190, 33.668831>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.638546, 31.057371, 33.798370> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355788, -0.718227, 0.597967,
		0.119252, 0.669493, 0.733184,
		-0.926927, -0.189549, 0.323848,
		35.360466, 31.000507, 33.895523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.439819, 31.116283, 34.334045>,  <36.009315, 31.133190, 33.668831>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.439819, 31.116283, 34.334045> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.738121, 31.289818, 34.536285>,  <36.917103, 31.393938, 34.657631>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.738121, 31.289818, 34.536285>,  <36.439819, 31.116283, 34.334045>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.738121, 31.289818, 34.536285> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292840, 0.468203, -0.833685,
		-0.598407, 0.769787, 0.222121,
		0.745757, 0.433837, 0.505600,
		36.961849, 31.419970, 34.687965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.318623, 31.854923, 34.383533>,  <36.439819, 31.116283, 34.334045>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.318623, 31.854923, 34.383533> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.709160, 31.768602, 34.388950>,  <36.943481, 31.716810, 34.392200>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.709160, 31.768602, 34.388950>,  <36.318623, 31.854923, 34.383533>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.709160, 31.768602, 34.388950> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154642, 0.653109, -0.741306,
		0.151127, 0.725864, 0.671031,
		0.976343, -0.215801, 0.013547,
		37.002064, 31.703861, 34.393013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.602528, 32.323586, 33.966064>,  <36.318623, 31.854923, 34.383533>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.602528, 32.323586, 33.966064> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.909164, 32.069859, 34.006023>,  <37.093147, 31.917622, 34.029999>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.909164, 32.069859, 34.006023>,  <36.602528, 32.323586, 33.966064>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.909164, 32.069859, 34.006023> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296384, 0.211504, -0.931355,
		0.569649, 0.743574, 0.350139,
		0.766588, -0.634321, 0.099901,
		37.139141, 31.879562, 34.035995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.221519, 32.711285, 33.753777>,  <36.602528, 32.323586, 33.966064>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.221519, 32.711285, 33.753777> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.299168, 32.321815, 33.705997>,  <37.345757, 32.088135, 33.677330>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.299168, 32.321815, 33.705997>,  <37.221519, 32.711285, 33.753777>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.299168, 32.321815, 33.705997> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498065, 0.202734, -0.843108,
		0.845132, 0.104172, 0.524310,
		0.194124, -0.973677, -0.119452,
		37.357407, 32.029713, 33.670162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.935684, 32.738441, 33.535030>,  <37.221519, 32.711285, 33.753777>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.935684, 32.738441, 33.535030> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.804119, 32.372169, 33.442642>,  <37.725182, 32.152405, 33.387211>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.804119, 32.372169, 33.442642>,  <37.935684, 32.738441, 33.535030>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.804119, 32.372169, 33.442642> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326681, 0.119152, -0.937594,
		0.886058, -0.383836, 0.259945,
		-0.328909, -0.915682, -0.230967,
		37.705448, 32.097466, 33.373352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.513557, 32.455219, 33.284073>,  <37.935684, 32.738441, 33.535030>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.513557, 32.455219, 33.284073> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.196831, 32.257118, 33.141102>,  <38.006794, 32.138256, 33.055317>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.196831, 32.257118, 33.141102>,  <38.513557, 32.455219, 33.284073>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.196831, 32.257118, 33.141102> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293658, 0.204428, -0.933796,
		0.535535, -0.844353, -0.016434,
		-0.791813, -0.495254, -0.357430,
		37.959286, 32.108543, 33.033875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.792400, 32.027599, 32.654896>,  <38.513557, 32.455219, 33.284073>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.792400, 32.027599, 32.654896> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.395355, 32.054909, 32.614761>,  <38.157127, 32.071293, 32.590679>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.395355, 32.054909, 32.614761>,  <38.792400, 32.027599, 32.654896>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.395355, 32.054909, 32.614761> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111666, 0.189959, -0.975421,
		-0.047536, -0.979415, -0.196178,
		-0.992608, 0.068275, -0.100338,
		38.097572, 32.075390, 32.584660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.758968, 31.833858, 31.988747>,  <38.792400, 32.027599, 32.654896>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.758968, 31.833858, 31.988747> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.417599, 32.016369, 32.089527>,  <38.212776, 32.125874, 32.149994>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.417599, 32.016369, 32.089527>,  <38.758968, 31.833858, 31.988747>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.417599, 32.016369, 32.089527> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181470, 0.193035, -0.964265,
		-0.488607, -0.868648, -0.081940,
		-0.853424, 0.456277, 0.251952,
		38.161572, 32.153252, 32.165112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.245995, 31.595890, 31.486643>,  <38.758968, 31.833858, 31.988747>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.245995, 31.595890, 31.486643> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.135246, 31.953947, 31.626390>,  <38.068798, 32.168781, 31.710239>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.135246, 31.953947, 31.626390>,  <38.245995, 31.595890, 31.486643>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.135246, 31.953947, 31.626390> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350931, 0.244272, -0.903979,
		-0.894532, -0.372892, 0.246501,
		-0.276874, 0.895144, 0.349368,
		38.052185, 32.222488, 31.731201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.685410, 31.644644, 31.072418>,  <38.245995, 31.595890, 31.486643>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.685410, 31.644644, 31.072418> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.733192, 32.016582, 31.211624>,  <37.761860, 32.239746, 31.295149>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.733192, 32.016582, 31.211624>,  <37.685410, 31.644644, 31.072418>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.733192, 32.016582, 31.211624> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266623, 0.367695, -0.890905,
		-0.956369, 0.013633, 0.291842,
		0.119455, 0.929847, 0.348017,
		37.769028, 32.295536, 31.316029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.016308, 32.029522, 30.961149>,  <37.685410, 31.644644, 31.072418>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.016308, 32.029522, 30.961149> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.292198, 32.318623, 30.978596>,  <37.457733, 32.492085, 30.989063>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.292198, 32.318623, 30.978596>,  <37.016308, 32.029522, 30.961149>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.292198, 32.318623, 30.978596> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312688, 0.351650, -0.882365,
		-0.653070, 0.594954, 0.468540,
		0.689729, 0.722753, 0.043617,
		37.499115, 32.535450, 30.991680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.715431, 32.692066, 30.826780>,  <37.016308, 32.029522, 30.961149>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.715431, 32.692066, 30.826780> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.099838, 32.777020, 30.755962>,  <37.330482, 32.827991, 30.713472>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.099838, 32.777020, 30.755962>,  <36.715431, 32.692066, 30.826780>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.099838, 32.777020, 30.755962> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260935, 0.484836, -0.834774,
		-0.091454, 0.848427, 0.521352,
		0.961015, 0.212382, -0.177044,
		37.388142, 32.840733, 30.702848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.705791, 33.371944, 30.576721>,  <36.715431, 32.692066, 30.826780>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.705791, 33.371944, 30.576721> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.079857, 33.272060, 30.476229>,  <37.304295, 33.212132, 30.415934>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.079857, 33.272060, 30.476229>,  <36.705791, 33.371944, 30.576721>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.079857, 33.272060, 30.476229> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066840, 0.572111, -0.817448,
		0.347855, 0.781239, 0.518327,
		0.935163, -0.249708, -0.251230,
		37.360405, 33.197147, 30.400860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.039574, 33.967953, 30.456512>,  <36.705791, 33.371944, 30.576721>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.039574, 33.967953, 30.456512> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.227959, 33.678726, 30.254377>,  <37.340988, 33.505188, 30.133097>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.227959, 33.678726, 30.254377>,  <37.039574, 33.967953, 30.456512>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.227959, 33.678726, 30.254377> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046708, 0.592480, -0.804230,
		0.880916, 0.355160, 0.312809,
		0.470963, -0.723070, -0.505336,
		37.369247, 33.461803, 30.102777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.637096, 34.310738, 30.098890>,  <37.039574, 33.967953, 30.456512>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.637096, 34.310738, 30.098890> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.529358, 33.977581, 29.905504>,  <37.464714, 33.777687, 29.789473>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.529358, 33.977581, 29.905504>,  <37.637096, 34.310738, 30.098890>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.529358, 33.977581, 29.905504> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069260, 0.483966, -0.872342,
		0.960550, -0.268445, -0.072667,
		-0.269344, -0.832895, -0.483466,
		37.448555, 33.727711, 29.760464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.948895, 34.399578, 29.445139>,  <37.637096, 34.310738, 30.098890>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.948895, 34.399578, 29.445139> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.721737, 34.082043, 29.358135>,  <37.585442, 33.891521, 29.305933>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.721737, 34.082043, 29.358135>,  <37.948895, 34.399578, 29.445139>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.721737, 34.082043, 29.358135> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078620, 0.210731, -0.974377,
		0.819337, -0.570445, -0.057261,
		-0.567895, -0.793842, -0.217508,
		37.551369, 33.843891, 29.292883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.264374, 34.102211, 28.813179>,  <37.948895, 34.399578, 29.445139>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.264374, 34.102211, 28.813179> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.886051, 33.974834, 28.838642>,  <37.659058, 33.898411, 28.853920>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.886051, 33.974834, 28.838642>,  <38.264374, 34.102211, 28.813179>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.886051, 33.974834, 28.838642> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110519, 0.131308, -0.985162,
		0.305357, -0.938804, -0.159385,
		-0.945803, -0.318441, 0.063659,
		37.602310, 33.879303, 28.857740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.119862, 33.783875, 28.122967>,  <38.264374, 34.102211, 28.813179>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.119862, 33.783875, 28.122967> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.759914, 33.860291, 28.279802>,  <37.543945, 33.906139, 28.373903>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.759914, 33.860291, 28.279802>,  <38.119862, 33.783875, 28.122967>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.759914, 33.860291, 28.279802> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307821, 0.358694, -0.881240,
		-0.308995, -0.913696, -0.263972,
		-0.899871, 0.191043, 0.392089,
		37.489952, 33.917603, 28.397429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.655853, 33.592381, 27.575462>,  <38.119862, 33.783875, 28.122967>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.655853, 33.592381, 27.575462> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.443565, 33.827473, 27.819729>,  <37.316193, 33.968529, 27.966290>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.443565, 33.827473, 27.819729>,  <37.655853, 33.592381, 27.575462>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.443565, 33.827473, 27.819729> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330370, 0.520064, -0.787648,
		-0.780509, -0.619764, -0.081838,
		-0.530717, 0.587730, 0.610666,
		37.284351, 34.003792, 28.002930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<36.952255, 33.558472, 27.217772> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.987663, 33.862583, 27.475187>,  <37.008907, 34.045048, 27.629637>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.987663, 33.862583, 27.475187>,  <36.952255, 33.558472, 27.217772>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.987663, 33.862583, 27.475187> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485685, 0.597013, -0.638503,
		-0.869641, -0.256039, 0.422101,
		0.088518, 0.760276, 0.643541,
		37.014217, 34.090668, 27.668249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.179508, 33.855141, 27.184725>,  <36.952255, 33.558472, 27.217772>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.179508, 33.855141, 27.184725> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.412560, 34.144459, 27.332991>,  <36.552391, 34.318050, 27.421949>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.412560, 34.144459, 27.332991>,  <36.179508, 33.855141, 27.184725>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.412560, 34.144459, 27.332991> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452120, 0.667423, -0.591721,
		-0.675379, 0.177167, 0.715874,
		0.582625, 0.723297, 0.370663,
		36.587345, 34.361446, 27.444189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.728374, 34.436337, 27.371601>,  <36.179508, 33.855141, 27.184725>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.728374, 34.436337, 27.371601> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.096954, 34.586140, 27.330276>,  <36.318104, 34.676022, 27.305481>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.096954, 34.586140, 27.330276>,  <35.728374, 34.436337, 27.371601>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.096954, 34.586140, 27.330276> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356949, 0.711161, -0.605671,
		-0.153359, 0.594972, 0.788980,
		0.921449, 0.374511, -0.103312,
		36.373390, 34.698494, 27.299282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.645447, 35.191257, 27.391512>,  <35.728374, 34.436337, 27.371601>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.645447, 35.191257, 27.391512> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.003979, 35.132881, 27.224039>,  <36.219097, 35.097855, 27.123556>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.003979, 35.132881, 27.224039>,  <35.645447, 35.191257, 27.391512>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.003979, 35.132881, 27.224039> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152674, 0.784948, -0.600456,
		0.416270, 0.602129, 0.681292,
		0.896331, -0.145936, -0.418680,
		36.272877, 35.089100, 27.098434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.057743, 35.830128, 27.364222>,  <35.645447, 35.191257, 27.391512>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.057743, 35.830128, 27.364222> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.186382, 35.596516, 27.066101>,  <36.263565, 35.456348, 26.887228>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.186382, 35.596516, 27.066101>,  <36.057743, 35.830128, 27.364222>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.186382, 35.596516, 27.066101> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029363, 0.792891, -0.608656,
		0.946420, 0.173861, 0.272144,
		0.321602, -0.584034, -0.745303,
		36.282864, 35.421307, 26.842510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.449070, 36.286808, 26.938248>,  <36.057743, 35.830128, 27.364222>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.449070, 36.286808, 26.938248> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.429287, 35.961605, 26.706186>,  <36.417416, 35.766483, 26.566950>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.429287, 35.961605, 26.706186>,  <36.449070, 36.286808, 26.938248>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.429287, 35.961605, 26.706186> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029989, 0.579393, -0.814497,
		0.998326, -0.057683, -0.004275,
		-0.049459, -0.813005, -0.580152,
		36.414448, 35.717705, 26.532141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.952732, 36.361610, 26.383469>,  <36.449070, 36.286808, 26.938248>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.952732, 36.361610, 26.383469> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.703136, 36.082870, 26.242025>,  <36.553379, 35.915627, 26.157160>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.703136, 36.082870, 26.242025>,  <36.952732, 36.361610, 26.383469>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.703136, 36.082870, 26.242025> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057215, 0.410557, -0.910038,
		0.779334, -0.588088, -0.216314,
		-0.623991, -0.696847, -0.353609,
		36.515938, 35.873817, 26.135942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.227757, 36.042320, 25.696348>,  <36.952732, 36.361610, 26.383469>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.227757, 36.042320, 25.696348> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.829670, 36.006405, 25.711704>,  <36.590816, 35.984856, 25.720919>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.829670, 36.006405, 25.711704>,  <37.227757, 36.042320, 25.696348>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.829670, 36.006405, 25.711704> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065847, 0.326746, -0.942816,
		0.072105, -0.940838, -0.331097,
		-0.995221, -0.089784, 0.038391,
		36.531105, 35.979469, 25.723221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.995068, 35.873272, 25.026121>,  <37.227757, 36.042320, 25.696348>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.995068, 35.873272, 25.026121> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.638653, 35.982346, 25.171286>,  <36.424805, 36.047791, 25.258385>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.638653, 35.982346, 25.171286>,  <36.995068, 35.873272, 25.026121>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.638653, 35.982346, 25.171286> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218116, 0.443950, -0.869099,
		-0.398104, -0.853553, -0.336097,
		-0.891032, 0.272684, 0.362912,
		36.371342, 36.064152, 25.280159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.448467, 35.563240, 24.615768>,  <36.995068, 35.873272, 25.026121>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.448467, 35.563240, 24.615768> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.309059, 35.903473, 24.773273>,  <36.225414, 36.107613, 24.867777>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.309059, 35.903473, 24.773273>,  <36.448467, 35.563240, 24.615768>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.309059, 35.903473, 24.773273> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285902, 0.303610, -0.908890,
		-0.892635, -0.429340, 0.137370,
		-0.348516, 0.850581, 0.393762,
		36.204506, 36.158646, 24.891401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.972187, 35.704582, 24.008471>,  <36.448467, 35.563240, 24.615768>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.972187, 35.704582, 24.008471> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.937054, 36.024921, 24.245430>,  <35.915974, 36.217125, 24.387606>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.937054, 36.024921, 24.245430>,  <35.972187, 35.704582, 24.008471>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.937054, 36.024921, 24.245430> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087239, 0.586227, -0.805436,
		-0.992308, -0.122422, 0.018377,
		-0.087830, 0.800844, 0.592398,
		35.910706, 36.265175, 24.423149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.425224, 36.029610, 23.736370>,  <35.972187, 35.704582, 24.008471>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.425224, 36.029610, 23.736370> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.645805, 36.307510, 23.921072>,  <35.778152, 36.474251, 24.031893>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.645805, 36.307510, 23.921072>,  <35.425224, 36.029610, 23.736370>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.645805, 36.307510, 23.921072> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060652, 0.518670, -0.852821,
		-0.832000, 0.498294, 0.243882,
		0.551450, 0.694755, 0.461756,
		35.811241, 36.515938, 24.059599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.109692, 36.662403, 23.654522>,  <35.425224, 36.029610, 23.736370>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.109692, 36.662403, 23.654522> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.494541, 36.754345, 23.713158>,  <35.725449, 36.809509, 23.748339>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.494541, 36.754345, 23.713158>,  <35.109692, 36.662403, 23.654522>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.494541, 36.754345, 23.713158> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015363, 0.582558, -0.812644,
		-0.272189, 0.779610, 0.564022,
		0.962121, 0.229858, 0.146589,
		35.783176, 36.823303, 23.757133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.075428, 37.392395, 23.580423>,  <35.109692, 36.662403, 23.654522>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.075428, 37.392395, 23.580423> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.465286, 37.309071, 23.547762>,  <35.699203, 37.259075, 23.528164>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.465286, 37.309071, 23.547762>,  <35.075428, 37.392395, 23.580423>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.465286, 37.309071, 23.547762> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120181, 0.795253, -0.594247,
		0.188723, 0.569368, 0.800127,
		0.974649, -0.208308, -0.081655,
		35.757683, 37.246578, 23.523266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.478924, 37.981682, 23.862350>,  <35.075428, 37.392395, 23.580423>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.478924, 37.981682, 23.862350> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.705647, 37.779408, 23.602190>,  <35.841679, 37.658043, 23.446095>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.705647, 37.779408, 23.602190>,  <35.478924, 37.981682, 23.862350>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.705647, 37.779408, 23.602190> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138876, 0.836809, -0.529588,
		0.812065, 0.209847, 0.544532,
		0.566802, -0.505682, -0.650400,
		35.875687, 37.627705, 23.407070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.013054, 38.404587, 23.767258>,  <35.478924, 37.981682, 23.862350>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.013054, 38.404587, 23.767258> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.039528, 38.166355, 23.447031>,  <36.055412, 38.023418, 23.254894>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.039528, 38.166355, 23.447031>,  <36.013054, 38.404587, 23.767258>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.039528, 38.166355, 23.447031> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346735, 0.766055, -0.541234,
		0.935625, -0.241764, 0.257208,
		0.066184, -0.595575, -0.800568,
		36.059383, 37.987682, 23.206860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.694878, 38.402031, 23.501598>,  <36.013054, 38.404587, 23.767258>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.694878, 38.402031, 23.501598> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.493416, 38.288254, 23.175304>,  <36.372540, 38.219986, 22.979528>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.493416, 38.288254, 23.175304>,  <36.694878, 38.402031, 23.501598>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.493416, 38.288254, 23.175304> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400861, 0.759488, -0.512336,
		0.765276, -0.585035, -0.268491,
		-0.503650, -0.284451, -0.815735,
		36.342319, 38.202919, 22.930584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.176201, 38.501087, 22.917507>,  <36.694878, 38.402031, 23.501598>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.176201, 38.501087, 22.917507> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.817970, 38.502037, 22.739548>,  <36.603031, 38.502609, 22.632772>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.817970, 38.502037, 22.739548>,  <37.176201, 38.501087, 22.917507>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.817970, 38.502037, 22.739548> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330065, 0.674073, -0.660819,
		0.298324, -0.738661, -0.604469,
		-0.895578, 0.002376, -0.444899,
		36.549297, 38.502750, 22.606079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.404861, 38.499775, 22.224009>,  <37.176201, 38.501087, 22.917507>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.404861, 38.499775, 22.224009> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.013649, 38.582798, 22.216232>,  <36.778923, 38.632614, 22.211567>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.013649, 38.582798, 22.216232>,  <37.404861, 38.499775, 22.224009>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.013649, 38.582798, 22.216232> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127541, 0.521994, -0.843360,
		-0.164900, -0.827310, -0.536998,
		-0.978029, 0.207560, -0.019439,
		36.720242, 38.645065, 22.210400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.071468, 38.376011, 21.564890>,  <37.404861, 38.499775, 22.224009>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.071468, 38.376011, 21.564890> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.811176, 38.626858, 21.736134>,  <36.655003, 38.777367, 21.838881>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.811176, 38.626858, 21.736134>,  <37.071468, 38.376011, 21.564890>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.811176, 38.626858, 21.736134> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019043, 0.577115, -0.816441,
		-0.759072, -0.523128, -0.387487,
		-0.650728, 0.627117, 0.428110,
		36.615959, 38.814991, 21.864567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.549988, 38.493679, 21.041368>,  <37.071468, 38.376011, 21.564890>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.549988, 38.493679, 21.041368> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.553280, 38.801163, 21.297186>,  <36.555256, 38.985653, 21.450676>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.553280, 38.801163, 21.297186>,  <36.549988, 38.493679, 21.041368>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.553280, 38.801163, 21.297186> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040969, 0.638769, -0.768307,
		-0.999126, 0.032524, -0.026236,
		0.008229, 0.768711, 0.639543,
		36.555748, 39.031776, 21.489048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.202927, 39.022110, 20.595739>,  <36.549988, 38.493679, 21.041368>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.202927, 39.022110, 20.595739> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.390347, 39.221111, 20.887754>,  <36.502796, 39.340511, 21.062963>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.390347, 39.221111, 20.887754>,  <36.202927, 39.022110, 20.595739>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.390347, 39.221111, 20.887754> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083789, 0.797609, -0.597326,
		-0.879456, 0.341045, 0.332033,
		0.468548, 0.497501, 0.730038,
		36.530910, 39.370361, 21.106766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.896996, 39.721703, 20.526470>,  <36.202927, 39.022110, 20.595739>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.896996, 39.721703, 20.526470> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.265202, 39.719208, 20.682730>,  <36.486126, 39.717709, 20.776485>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.265202, 39.719208, 20.682730>,  <35.896996, 39.721703, 20.526470>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.265202, 39.719208, 20.682730> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184393, 0.888448, -0.420310,
		-0.344449, 0.458936, 0.818983,
		0.920518, -0.006240, 0.390649,
		36.541359, 39.717335, 20.799925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.161636, 39.822239, 20.297285>,  <35.896996, 39.721703, 20.526470>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.161636, 39.822239, 20.297285> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.879162, 39.602692, 20.118382>,  <34.709675, 39.470963, 20.011040>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.879162, 39.602692, 20.118382>,  <35.161636, 39.822239, 20.297285>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.879162, 39.602692, 20.118382> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015288, 0.643376, -0.765397,
		0.707861, -0.533675, -0.462734,
		-0.706186, -0.548869, -0.447263,
		34.667305, 39.438030, 19.984203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.012939, 39.776848, 21.071920>,  <35.161636, 39.822239, 20.297285>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.012939, 39.776848, 21.071920> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.824112, 40.071583, 21.265507>,  <34.710815, 40.248425, 21.381659>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.824112, 40.071583, 21.265507>,  <35.012939, 39.776848, 21.071920>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.824112, 40.071583, 21.265507> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104722, -0.591972, 0.799126,
		0.875321, 0.326558, 0.356613,
		-0.472066, 0.736837, 0.483968,
		34.682491, 40.292633, 21.410698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.456390, 39.945763, 21.708681>,  <35.012939, 39.776848, 21.071920>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.456390, 39.945763, 21.708681> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.077644, 40.051601, 21.781826>,  <34.850395, 40.115105, 21.825714>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.077644, 40.051601, 21.781826>,  <35.456390, 39.945763, 21.708681>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.077644, 40.051601, 21.781826> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044549, -0.455178, 0.889285,
		0.318534, 0.850179, 0.419205,
		-0.946864, 0.264593, 0.182864,
		34.793587, 40.130978, 21.836685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.499950, 40.253685, 22.369114>,  <35.456390, 39.945763, 21.708681>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.499950, 40.253685, 22.369114> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.112953, 40.165573, 22.319431>,  <34.880753, 40.112705, 22.289621>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.112953, 40.165573, 22.319431>,  <35.499950, 40.253685, 22.369114>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.112953, 40.165573, 22.319431> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041200, -0.347292, 0.936851,
		-0.249502, 0.911519, 0.326929,
		-0.967498, -0.220277, -0.124204,
		34.822704, 40.099491, 22.282169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.212143, 40.506813, 22.952829>,  <35.499950, 40.253685, 22.369114>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.212143, 40.506813, 22.952829> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.940216, 40.252907, 22.805901>,  <34.777061, 40.100563, 22.717743>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.940216, 40.252907, 22.805901>,  <35.212143, 40.506813, 22.952829>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.940216, 40.252907, 22.805901> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026006, -0.479681, 0.877057,
		-0.732921, 0.605790, 0.309587,
		-0.679816, -0.634763, -0.367323,
		34.736271, 40.062477, 22.695704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.694897, 40.473728, 23.405365>,  <35.212143, 40.506813, 22.952829>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.694897, 40.473728, 23.405365> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.605457, 40.141716, 23.200989>,  <34.551796, 39.942509, 23.078363>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.605457, 40.141716, 23.200989>,  <34.694897, 40.473728, 23.405365>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.605457, 40.141716, 23.200989> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252933, -0.456842, 0.852831,
		-0.941292, 0.319923, -0.107794,
		-0.223595, -0.830027, -0.510940,
		34.538380, 39.892708, 23.047707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.963879, 40.218731, 23.605312>,  <34.694897, 40.473728, 23.405365>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.963879, 40.218731, 23.605312> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.167904, 39.906826, 23.460094>,  <34.290318, 39.719681, 23.372963>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.167904, 39.906826, 23.460094>,  <33.963879, 40.218731, 23.605312>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.167904, 39.906826, 23.460094> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212250, -0.523130, 0.825400,
		-0.833539, -0.343948, -0.432334,
		0.510061, -0.779766, -0.363046,
		34.320923, 39.672897, 23.351181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.506077, 39.706707, 23.770271>,  <33.963879, 40.218731, 23.605312>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.506077, 39.706707, 23.770271> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.840462, 39.501045, 23.693520>,  <34.041092, 39.377647, 23.647469>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.840462, 39.501045, 23.693520>,  <33.506077, 39.706707, 23.770271>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.840462, 39.501045, 23.693520> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178303, -0.585135, 0.791091,
		-0.519016, -0.627109, -0.580824,
		0.835961, -0.514152, -0.191880,
		34.091251, 39.346798, 23.635956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.332932, 39.072407, 23.838051>,  <33.506077, 39.706707, 23.770271>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.332932, 39.072407, 23.838051> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.730938, 39.046032, 23.867949>,  <33.969742, 39.030209, 23.885887>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.730938, 39.046032, 23.867949>,  <33.332932, 39.072407, 23.838051>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.730938, 39.046032, 23.867949> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099039, -0.738403, 0.667048,
		0.011211, -0.671129, -0.741256,
		0.995020, -0.065935, 0.074746,
		34.029446, 39.026253, 23.890371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.402332, 38.364998, 23.936773>,  <33.332932, 39.072407, 23.838051>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.402332, 38.364998, 23.936773> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.741947, 38.547302, 24.043667>,  <33.945717, 38.656685, 24.107803>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.741947, 38.547302, 24.043667>,  <33.402332, 38.364998, 23.936773>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.741947, 38.547302, 24.043667> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205234, -0.750604, 0.628071,
		0.486835, -0.478412, -0.730830,
		0.849041, 0.455758, 0.267234,
		33.996658, 38.684029, 24.123837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.820808, 37.848560, 24.010693>,  <33.402332, 38.364998, 23.936773>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.820808, 37.848560, 24.010693> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.974262, 38.154591, 24.217569>,  <34.066334, 38.338207, 24.341696>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.974262, 38.154591, 24.217569>,  <33.820808, 37.848560, 24.010693>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.974262, 38.154591, 24.217569> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380068, -0.641217, 0.666625,
		0.841651, -0.059170, -0.536771,
		0.383631, 0.765075, 0.517192,
		34.089352, 38.384113, 24.372726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.565556, 37.651482, 24.099072>,  <33.820808, 37.848560, 24.010693>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.565556, 37.651482, 24.099072> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.457920, 37.919231, 24.376064>,  <34.393341, 38.079880, 24.542259>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.457920, 37.919231, 24.376064>,  <34.565556, 37.651482, 24.099072>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.457920, 37.919231, 24.376064> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272219, -0.636824, 0.721354,
		0.923845, 0.382612, -0.010857,
		-0.269085, 0.669375, 0.692481,
		34.377193, 38.120045, 24.583809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.029415, 37.463932, 24.614075>,  <34.565556, 37.651482, 24.099072>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.029415, 37.463932, 24.614075> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.760212, 37.684334, 24.811443>,  <34.598690, 37.816574, 24.929865>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.760212, 37.684334, 24.811443>,  <35.029415, 37.463932, 24.614075>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.760212, 37.684334, 24.811443> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113340, -0.582404, 0.804960,
		0.730903, 0.597665, 0.329510,
		-0.673004, 0.551001, 0.493420,
		34.558311, 37.849632, 24.959469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.348156, 37.848122, 25.273329>,  <35.029415, 37.463932, 24.614075>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.348156, 37.848122, 25.273329> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.953037, 37.815643, 25.326504>,  <34.715965, 37.796154, 25.358410>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.953037, 37.815643, 25.326504>,  <35.348156, 37.848122, 25.273329>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.953037, 37.815643, 25.326504> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154216, -0.389273, 0.908121,
		-0.021989, 0.917537, 0.397043,
		-0.987793, -0.081199, 0.132939,
		34.656700, 37.791283, 25.366385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.279392, 37.908947, 26.074699>,  <35.348156, 37.848122, 25.273329>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.279392, 37.908947, 26.074699> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.946789, 37.749706, 25.919727>,  <34.747227, 37.654163, 25.826744>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.946789, 37.749706, 25.919727>,  <35.279392, 37.908947, 26.074699>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.946789, 37.749706, 25.919727> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087319, -0.595100, 0.798894,
		-0.548603, 0.698119, 0.460070,
		-0.831511, -0.398103, -0.387432,
		34.697334, 37.630276, 25.803497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.708397, 38.025047, 26.609838>,  <35.279392, 37.908947, 26.074699>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.708397, 38.025047, 26.609838> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.572075, 37.747292, 26.356327>,  <34.490280, 37.580639, 26.204220>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.572075, 37.747292, 26.356327>,  <34.708397, 38.025047, 26.609838>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.572075, 37.747292, 26.356327> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241532, -0.586840, 0.772839,
		-0.908578, 0.416466, 0.032282,
		-0.340806, -0.694388, -0.633780,
		34.469833, 37.538975, 26.166193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.083431, 37.800106, 26.937241>,  <34.708397, 38.025047, 26.609838>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.083431, 37.800106, 26.937241> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.170132, 37.507183, 26.679016>,  <34.222153, 37.331429, 26.524082>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.170132, 37.507183, 26.679016>,  <34.083431, 37.800106, 26.937241>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.170132, 37.507183, 26.679016> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363594, -0.674263, 0.642783,
		-0.905990, 0.095399, -0.412409,
		0.216751, -0.732304, -0.645562,
		34.235157, 37.287491, 26.485348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.424019, 37.280190, 26.842463>,  <34.083431, 37.800106, 26.937241>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.424019, 37.280190, 26.842463> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.761478, 37.079185, 26.766842>,  <33.963955, 36.958584, 26.721470>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.761478, 37.079185, 26.766842>,  <33.424019, 37.280190, 26.842463>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.761478, 37.079185, 26.766842> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351759, -0.783351, 0.512471,
		-0.405618, -0.365844, -0.837635,
		0.843647, -0.502513, -0.189052,
		34.014572, 36.928432, 26.710127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.159676, 36.640316, 26.757751>,  <33.424019, 37.280190, 26.842463>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.159676, 36.640316, 26.757751> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.550755, 36.592400, 26.826748>,  <33.785404, 36.563648, 26.868145>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.550755, 36.592400, 26.826748>,  <33.159676, 36.640316, 26.757751>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.550755, 36.592400, 26.826748> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199786, -0.783689, 0.588147,
		0.064725, -0.609492, -0.790146,
		0.977699, -0.119793, 0.172492,
		33.844063, 36.556461, 26.878496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.313259, 35.873878, 26.704884>,  <33.159676, 36.640316, 26.757751>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.313259, 35.873878, 26.704884> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.598614, 36.046253, 26.925926>,  <33.769825, 36.149677, 27.058552>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.598614, 36.046253, 26.925926>,  <33.313259, 35.873878, 26.704884>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.598614, 36.046253, 26.925926> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195566, -0.634808, 0.747511,
		0.672929, -0.641334, -0.368586,
		0.713386, 0.430939, 0.552605,
		33.812630, 36.175533, 27.091707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.605919, 35.263599, 26.891117>,  <33.313259, 35.873878, 26.704884>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.605919, 35.263599, 26.891117> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.727814, 35.547184, 27.145521>,  <33.800949, 35.717335, 27.298164>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.727814, 35.547184, 27.145521>,  <33.605919, 35.263599, 26.891117>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.727814, 35.547184, 27.145521> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192427, -0.608173, 0.770129,
		0.932797, -0.357068, -0.048907,
		0.304732, 0.708963, 0.636011,
		33.819233, 35.759872, 27.336325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<38.479080, 32.766991, 29.864521> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.148216, 32.892994, 30.050669>,  <37.949696, 32.968597, 30.162357>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.148216, 32.892994, 30.050669>,  <38.479080, 32.766991, 29.864521>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.148216, 32.892994, 30.050669> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350180, -0.358745, 0.865261,
		0.439515, 0.878675, 0.186430,
		-0.827164, 0.315011, 0.465368,
		37.900066, 32.987495, 30.190279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.709961, 32.876522, 30.486038>,  <38.479080, 32.766991, 29.864521>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.709961, 32.876522, 30.486038> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.317650, 32.873310, 30.564032>,  <38.082264, 32.871384, 30.610826>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.317650, 32.873310, 30.564032>,  <38.709961, 32.876522, 30.486038>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.317650, 32.873310, 30.564032> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181629, -0.402970, 0.897010,
		0.071368, 0.915178, 0.396681,
		-0.980774, -0.008030, 0.194982,
		38.023418, 32.870899, 30.622526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.604397, 33.329498, 31.079088>,  <38.709961, 32.876522, 30.486038>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.604397, 33.329498, 31.079088> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.288464, 33.084351, 31.069597>,  <38.098904, 32.937263, 31.063904>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.288464, 33.084351, 31.069597>,  <38.604397, 33.329498, 31.079088>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.288464, 33.084351, 31.069597> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089894, -0.153945, 0.983982,
		-0.606701, 0.775047, 0.176684,
		-0.789831, -0.612865, -0.023726,
		38.051514, 32.900490, 31.062479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.162571, 33.481819, 31.687658>,  <38.604397, 33.329498, 31.079088>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.162571, 33.481819, 31.687658> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.034283, 33.116295, 31.587994>,  <37.957310, 32.896980, 31.528194>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.034283, 33.116295, 31.587994>,  <38.162571, 33.481819, 31.687658>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.034283, 33.116295, 31.587994> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035589, -0.274499, 0.960928,
		-0.946506, 0.299320, 0.120559,
		-0.320718, -0.913815, -0.249163,
		37.938068, 32.842152, 31.513245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.550598, 33.339592, 32.116821>,  <38.162571, 33.481819, 31.687658>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.550598, 33.339592, 32.116821> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.699192, 32.984619, 32.007664>,  <37.788349, 32.771637, 31.942171>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.699192, 32.984619, 32.007664>,  <37.550598, 33.339592, 32.116821>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.699192, 32.984619, 32.007664> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265974, -0.383326, 0.884488,
		-0.889525, -0.255995, -0.378434,
		0.371488, -0.887428, -0.272889,
		37.810638, 32.718391, 31.925797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.141804, 32.863186, 32.343124>,  <37.550598, 33.339592, 32.116821>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.141804, 32.863186, 32.343124> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.434849, 32.600025, 32.273335>,  <37.610676, 32.442131, 32.231461>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.434849, 32.600025, 32.273335>,  <37.141804, 32.863186, 32.343124>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.434849, 32.600025, 32.273335> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164459, -0.419846, 0.892570,
		-0.660475, -0.625217, -0.415784,
		0.732616, -0.657900, -0.174476,
		37.654633, 32.402657, 32.220993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.808018, 32.150539, 32.386257>,  <37.141804, 32.863186, 32.343124>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.808018, 32.150539, 32.386257> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.202133, 32.129471, 32.451298>,  <37.438602, 32.116829, 32.490322>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.202133, 32.129471, 32.451298>,  <36.808018, 32.150539, 32.386257>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.202133, 32.129471, 32.451298> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169570, -0.420720, 0.891202,
		0.021470, -0.905660, -0.423460,
		0.985284, -0.052672, 0.162606,
		37.497719, 32.113670, 32.500080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.000149, 31.414021, 32.517200>,  <36.808018, 32.150539, 32.386257>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.000149, 31.414021, 32.517200> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.287529, 31.642090, 32.676567>,  <37.459957, 31.778931, 32.772186>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.287529, 31.642090, 32.676567>,  <37.000149, 31.414021, 32.517200>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.287529, 31.642090, 32.676567> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255229, -0.316742, 0.913527,
		0.647065, -0.758008, -0.082037,
		0.718446, 0.570174, 0.398419,
		37.503063, 31.813141, 32.796093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.371201, 30.922943, 32.921349>,  <37.000149, 31.414021, 32.517200>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.371201, 30.922943, 32.921349> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.455509, 31.286835, 33.064438>,  <37.506096, 31.505169, 33.150291>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.455509, 31.286835, 33.064438>,  <37.371201, 30.922943, 32.921349>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.455509, 31.286835, 33.064438> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160679, -0.328725, 0.930657,
		0.964239, -0.253638, 0.076887,
		0.210775, 0.909730, 0.357723,
		37.518742, 31.559753, 33.171753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.739712, 30.800194, 33.535839>,  <37.371201, 30.922943, 32.921349>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.739712, 30.800194, 33.535839> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.602673, 31.173573, 33.578365>,  <37.520451, 31.397600, 33.603882>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.602673, 31.173573, 33.578365>,  <37.739712, 30.800194, 33.535839>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.602673, 31.173573, 33.578365> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140987, -0.162963, 0.976507,
		0.928843, 0.319561, 0.187435,
		-0.342599, 0.933447, 0.106313,
		37.499893, 31.453608, 33.610260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.053505, 30.978783, 34.097225>,  <37.739712, 30.800194, 33.535839>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.053505, 30.978783, 34.097225> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.793175, 31.281187, 34.069286>,  <37.636978, 31.462629, 34.052521>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.793175, 31.281187, 34.069286>,  <38.053505, 30.978783, 34.097225>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.793175, 31.281187, 34.069286> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048137, 0.050730, 0.997552,
		0.757702, 0.652592, 0.003376,
		-0.650823, 0.756010, -0.069852,
		37.597927, 31.507990, 34.048332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.271717, 31.404573, 34.598412>,  <38.053505, 30.978783, 34.097225>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.271717, 31.404573, 34.598412> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.892620, 31.508343, 34.524136>,  <37.665161, 31.570604, 34.479568>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.892620, 31.508343, 34.524136>,  <38.271717, 31.404573, 34.598412>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.892620, 31.508343, 34.524136> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171252, 0.077392, 0.982183,
		0.269173, 0.962658, -0.028921,
		-0.947744, 0.259424, -0.185689,
		37.608295, 31.586170, 34.468430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.131947, 31.794239, 35.160980>,  <38.271717, 31.404573, 34.598412>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.131947, 31.794239, 35.160980> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.782448, 31.669470, 35.011703>,  <37.572750, 31.594608, 34.922138>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.782448, 31.669470, 35.011703>,  <38.131947, 31.794239, 35.160980>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.782448, 31.669470, 35.011703> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334717, -0.171085, 0.926658,
		-0.352895, 0.934577, 0.045079,
		-0.873745, -0.311924, -0.373194,
		37.520325, 31.575893, 34.899746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.560085, 32.027065, 35.564865>,  <38.131947, 31.794239, 35.160980>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.560085, 32.027065, 35.564865> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.439861, 31.689896, 35.386360>,  <37.367729, 31.487595, 35.279259>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.439861, 31.689896, 35.386360>,  <37.560085, 32.027065, 35.564865>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.439861, 31.689896, 35.386360> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340371, -0.342287, 0.875778,
		-0.890962, 0.415115, -0.184029,
		-0.300558, -0.842923, -0.446258,
		37.349693, 31.437019, 35.252483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.904396, 32.562531, 36.010094>,  <37.560085, 32.027065, 35.564865>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.904396, 32.562531, 36.010094> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.122124, 32.819199, 36.226234>,  <38.252758, 32.973198, 36.355919>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.122124, 32.819199, 36.226234>,  <37.904396, 32.562531, 36.010094>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.122124, 32.819199, 36.226234> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017947, 0.652894, -0.757237,
		-0.838689, 0.402478, 0.366896,
		0.544315, 0.641671, 0.540352,
		38.285419, 33.011700, 36.388340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.553722, 33.192490, 35.982822>,  <37.904396, 32.562531, 36.010094>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.553722, 33.192490, 35.982822> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.923443, 33.306328, 36.084545>,  <38.145275, 33.374630, 36.145580>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.923443, 33.306328, 36.084545>,  <37.553722, 33.192490, 35.982822>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.923443, 33.306328, 36.084545> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110304, 0.837074, -0.535854,
		-0.365375, 0.467240, 0.805101,
		0.924302, 0.284594, 0.254308,
		38.200733, 33.391705, 36.160839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.475815, 33.914062, 35.995529>,  <37.553722, 33.192490, 35.982822>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.475815, 33.914062, 35.995529> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.869373, 33.850822, 36.028862>,  <38.105511, 33.812878, 36.048862>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.869373, 33.850822, 36.028862>,  <37.475815, 33.914062, 35.995529>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.869373, 33.850822, 36.028862> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172419, 0.717056, -0.675353,
		0.047017, 0.678849, 0.732771,
		0.983901, -0.158097, 0.083333,
		38.164543, 33.803394, 36.053864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.858154, 34.537010, 36.074631>,  <37.475815, 33.914062, 35.995529>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.858154, 34.537010, 36.074631> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.111156, 34.285339, 35.893932>,  <38.262959, 34.134335, 35.785515>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.111156, 34.285339, 35.893932>,  <37.858154, 34.537010, 36.074631>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.111156, 34.285339, 35.893932> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236889, 0.712418, -0.660563,
		0.737444, 0.310794, 0.599652,
		0.632502, -0.629180, -0.451745,
		38.300907, 34.096584, 35.758408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.390697, 35.016243, 35.931404>,  <37.858154, 34.537010, 36.074631>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.390697, 35.016243, 35.931404> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.446899, 34.678215, 35.725056>,  <38.480621, 34.475399, 35.601246>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.446899, 34.678215, 35.725056>,  <38.390697, 35.016243, 35.931404>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.446899, 34.678215, 35.725056> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374109, 0.527722, -0.762596,
		0.916679, -0.085843, 0.390295,
		0.140503, -0.845069, -0.515866,
		38.489052, 34.424694, 35.570297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.113014, 35.126545, 35.720081>,  <38.390697, 35.016243, 35.931404>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.113014, 35.126545, 35.720081> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.920769, 34.870480, 35.480347>,  <38.805424, 34.716839, 35.336506>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.920769, 34.870480, 35.480347>,  <39.113014, 35.126545, 35.720081>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.920769, 34.870480, 35.480347> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203298, 0.583489, -0.786264,
		0.853043, -0.499731, -0.150287,
		-0.480611, -0.640164, -0.599336,
		38.776585, 34.678429, 35.300545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.484886, 34.982311, 35.020699>,  <39.113014, 35.126545, 35.720081>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.484886, 34.982311, 35.020699> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.095531, 34.909191, 34.965424>,  <38.861919, 34.865318, 34.932259>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.095531, 34.909191, 34.965424>,  <39.484886, 34.982311, 35.020699>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.095531, 34.909191, 34.965424> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058843, 0.383421, -0.921697,
		0.221466, -0.905303, -0.362463,
		-0.973391, -0.182796, -0.138185,
		38.803513, 34.854351, 34.923969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.477390, 35.086948, 34.303921>,  <39.484886, 34.982311, 35.020699>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.477390, 35.086948, 34.303921> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.085392, 35.054440, 34.376595>,  <38.850193, 35.034935, 34.420197>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.085392, 35.054440, 34.376595>,  <39.477390, 35.086948, 34.303921>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.085392, 35.054440, 34.376595> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196427, 0.542084, -0.817044,
		-0.032087, -0.836385, -0.547202,
		-0.979993, -0.081268, 0.181682,
		38.791393, 35.030060, 34.431099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.268826, 34.810863, 33.666786>,  <39.477390, 35.086948, 34.303921>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.268826, 34.810863, 33.666786> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.964134, 34.997135, 33.846966>,  <38.781319, 35.108898, 33.955074>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.964134, 34.997135, 33.846966>,  <39.268826, 34.810863, 33.666786>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.964134, 34.997135, 33.846966> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142194, 0.558137, -0.817474,
		-0.632095, -0.686747, -0.358934,
		-0.761733, 0.465684, 0.450447,
		38.735615, 35.136841, 33.982101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.567051, 34.573219, 33.263130>,  <39.268826, 34.810863, 33.666786>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.567051, 34.573219, 33.263130> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.493111, 34.912376, 33.461887>,  <38.448746, 35.115871, 33.581142>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.493111, 34.912376, 33.461887>,  <38.567051, 34.573219, 33.263130>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.493111, 34.912376, 33.461887> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221025, 0.456788, -0.861680,
		-0.957589, -0.269112, 0.102967,
		-0.184854, 0.847894, 0.496896,
		38.437653, 35.166744, 33.610954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.978123, 34.890358, 32.929581>,  <38.567051, 34.573219, 33.263130>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.978123, 34.890358, 32.929581> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.132828, 35.208626, 33.116051>,  <38.225651, 35.399586, 33.227932>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.132828, 35.208626, 33.116051>,  <37.978123, 34.890358, 32.929581>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.132828, 35.208626, 33.116051> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169401, 0.558214, -0.812220,
		-0.906488, 0.235163, 0.350683,
		0.386760, 0.795673, 0.466177,
		38.248856, 35.447327, 33.255905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.622749, 35.434528, 32.738201>,  <37.978123, 34.890358, 32.929581>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.622749, 35.434528, 32.738201> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.951447, 35.613281, 32.879646>,  <38.148663, 35.720535, 32.964512>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.951447, 35.613281, 32.879646>,  <37.622749, 35.434528, 32.738201>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.951447, 35.613281, 32.879646> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037229, 0.661287, -0.749209,
		-0.568648, 0.602489, 0.560042,
		0.821738, 0.446885, 0.353609,
		38.197968, 35.747345, 32.985729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.416729, 36.099953, 32.864922>,  <37.622749, 35.434528, 32.738201>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.416729, 36.099953, 32.864922> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.815788, 36.121731, 32.848228>,  <38.055222, 36.134796, 32.838211>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.815788, 36.121731, 32.848228>,  <37.416729, 36.099953, 32.864922>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.815788, 36.121731, 32.848228> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068180, 0.719492, -0.691146,
		-0.007602, 0.692364, 0.721509,
		0.997644, 0.054447, -0.041736,
		38.115082, 36.138065, 32.835709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.610363, 36.801331, 32.848118>,  <37.416729, 36.099953, 32.864922>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.610363, 36.801331, 32.848118> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.926003, 36.617607, 32.684971>,  <38.115387, 36.507374, 32.587082>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.926003, 36.617607, 32.684971>,  <37.610363, 36.801331, 32.848118>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.926003, 36.617607, 32.684971> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008645, 0.672234, -0.740288,
		0.614200, 0.580638, 0.534432,
		0.789103, -0.459305, -0.407867,
		38.162735, 36.479816, 32.562611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.858959, 37.405949, 33.188591>,  <37.610363, 36.801331, 32.848118>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.858959, 37.405949, 33.188591> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.552120, 37.656345, 33.244732>,  <37.368019, 37.806583, 33.278416>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.552120, 37.656345, 33.244732>,  <37.858959, 37.405949, 33.188591>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.552120, 37.656345, 33.244732> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173467, -0.413019, 0.894050,
		0.617638, 0.661473, 0.425413,
		-0.767094, 0.625995, 0.140352,
		37.321991, 37.844143, 33.286839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.940788, 37.659939, 33.886776>,  <37.858959, 37.405949, 33.188591>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.940788, 37.659939, 33.886776> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.555885, 37.731834, 33.805035>,  <37.324944, 37.774971, 33.755989>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.555885, 37.731834, 33.805035>,  <37.940788, 37.659939, 33.886776>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.555885, 37.731834, 33.805035> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265696, -0.457833, 0.848407,
		0.058936, 0.870679, 0.488308,
		-0.962254, 0.179743, -0.204353,
		37.267208, 37.785759, 33.743729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.638905, 38.094490, 34.426636>,  <37.940788, 37.659939, 33.886776>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.638905, 38.094490, 34.426636> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.347881, 37.887241, 34.246765>,  <37.173267, 37.762890, 34.138844>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.347881, 37.887241, 34.246765>,  <37.638905, 38.094490, 34.426636>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.347881, 37.887241, 34.246765> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285161, -0.367766, 0.885117,
		-0.623977, 0.772202, 0.119821,
		-0.727555, -0.518123, -0.449680,
		37.129616, 37.731804, 34.111862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.032341, 38.277153, 34.781944>,  <37.638905, 38.094490, 34.426636>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.032341, 38.277153, 34.781944> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.945873, 37.927006, 34.608967>,  <36.893993, 37.716919, 34.505180>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.945873, 37.927006, 34.608967>,  <37.032341, 38.277153, 34.781944>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.945873, 37.927006, 34.608967> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390311, -0.328507, 0.860082,
		-0.894945, 0.354713, -0.270651,
		-0.216171, -0.875364, -0.432444,
		36.881023, 37.664398, 34.479233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.472832, 37.962906, 35.209438>,  <37.032341, 38.277153, 34.781944>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.472832, 37.962906, 35.209438> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.587570, 37.638699, 35.005169>,  <36.656414, 37.444176, 34.882607>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.587570, 37.638699, 35.005169>,  <36.472832, 37.962906, 35.209438>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.587570, 37.638699, 35.005169> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461722, -0.584043, 0.667613,
		-0.839364, 0.044287, -0.541762,
		0.286846, -0.810514, -0.510673,
		36.673622, 37.395546, 34.851967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.008404, 37.489166, 35.299397>,  <36.472832, 37.962906, 35.209438>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.008404, 37.489166, 35.299397> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.310287, 37.250523, 35.190235>,  <36.491417, 37.107338, 35.124741>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.310287, 37.250523, 35.190235>,  <36.008404, 37.489166, 35.299397>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.310287, 37.250523, 35.190235> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127749, -0.541646, 0.830843,
		-0.643502, -0.592182, -0.485001,
		0.754709, -0.596607, -0.272900,
		36.536701, 37.071541, 35.108364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.763866, 36.820675, 35.286182>,  <36.008404, 37.489166, 35.299397>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.763866, 36.820675, 35.286182> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.156422, 36.748829, 35.313347>,  <36.391956, 36.705719, 35.329647>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.156422, 36.748829, 35.313347>,  <35.763866, 36.820675, 35.286182>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.156422, 36.748829, 35.313347> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174370, -0.685390, 0.706991,
		-0.080441, -0.705675, -0.703954,
		0.981389, -0.179620, 0.067916,
		36.450840, 36.694942, 35.333721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.787277, 36.156963, 35.243855>,  <35.763866, 36.820675, 35.286182>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.787277, 36.156963, 35.243855> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.128128, 36.270145, 35.419952>,  <36.332638, 36.338055, 35.525612>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.128128, 36.270145, 35.419952>,  <35.787277, 36.156963, 35.243855>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.128128, 36.270145, 35.419952> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157559, -0.663489, 0.731408,
		0.499050, -0.692618, -0.520797,
		0.852129, 0.282953, 0.440243,
		36.383766, 36.355030, 35.552025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.020027, 35.586960, 35.528355>,  <35.787277, 36.156963, 35.243855>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.020027, 35.586960, 35.528355> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.219933, 35.863274, 35.737373>,  <36.339874, 36.029060, 35.862785>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.219933, 35.863274, 35.737373>,  <36.020027, 35.586960, 35.528355>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.219933, 35.863274, 35.737373> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120255, -0.542113, 0.831656,
		0.857774, -0.478469, -0.187857,
		0.499762, 0.690782, 0.522549,
		36.369862, 36.070507, 35.894138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.524727, 35.236217, 36.021999>,  <36.020027, 35.586960, 35.528355>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.524727, 35.236217, 36.021999> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.472530, 35.606384, 36.164310>,  <36.441212, 35.828484, 36.249699>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.472530, 35.606384, 36.164310>,  <36.524727, 35.236217, 36.021999>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.472530, 35.606384, 36.164310> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215194, -0.376730, 0.900981,
		0.967814, 0.041004, 0.248302,
		-0.130487, 0.925415, 0.355781,
		36.433384, 35.884010, 36.271046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.703922, 35.118641, 36.745918>,  <36.524727, 35.236217, 36.021999>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.703922, 35.118641, 36.745918> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.565197, 35.493340, 36.727058>,  <36.481964, 35.718159, 36.715740>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.565197, 35.493340, 36.727058>,  <36.703922, 35.118641, 36.745918>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.565197, 35.493340, 36.727058> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305704, -0.065366, 0.949880,
		0.886717, 0.343843, 0.309038,
		-0.346810, 0.936749, -0.047153,
		36.461155, 35.774364, 36.712914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.030304, 35.526569, 37.305305>,  <36.703922, 35.118641, 36.745918>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.030304, 35.526569, 37.305305> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.673710, 35.644199, 37.167446>,  <36.459755, 35.714779, 37.084732>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.673710, 35.644199, 37.167446>,  <37.030304, 35.526569, 37.305305>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.673710, 35.644199, 37.167446> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392108, -0.119719, 0.912096,
		0.226963, 0.948255, 0.222036,
		-0.891481, 0.294074, -0.344647,
		36.406265, 35.732422, 37.064053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<38.823364, 39.963955, 30.871578> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.438049, 40.010704, 30.774902>,  <38.206860, 40.038754, 30.716898>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.438049, 40.010704, 30.774902>,  <38.823364, 39.963955, 30.871578>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.438049, 40.010704, 30.774902> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265544, -0.547251, 0.793727,
		-0.039496, 0.828768, 0.558197,
		-0.963289, 0.116877, -0.241689,
		38.149063, 40.045769, 30.702396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.482620, 40.046513, 31.534363>,  <38.823364, 39.963955, 30.871578>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.482620, 40.046513, 31.534363> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.194843, 39.967888, 31.267899>,  <38.022179, 39.920712, 31.108019>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.194843, 39.967888, 31.267899>,  <38.482620, 40.046513, 31.534363>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.194843, 39.967888, 31.267899> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560141, -0.402897, 0.723820,
		-0.410670, 0.893889, 0.179758,
		-0.719438, -0.196562, -0.666162,
		37.979012, 39.908920, 31.068050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.851158, 40.370464, 31.846128>,  <38.482620, 40.046513, 31.534363>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.851158, 40.370464, 31.846128> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.773827, 40.060772, 31.605066>,  <37.727428, 39.874958, 31.460428>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.773827, 40.060772, 31.605066>,  <37.851158, 40.370464, 31.846128>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.773827, 40.060772, 31.605066> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528576, -0.435294, 0.728785,
		-0.826578, 0.459444, -0.325084,
		-0.193328, -0.774229, -0.602656,
		37.715828, 39.828503, 31.424269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.126083, 40.280628, 31.890192>,  <37.851158, 40.370464, 31.846128>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.126083, 40.280628, 31.890192> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.305275, 39.946850, 31.761801>,  <37.412788, 39.746582, 31.684767>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.305275, 39.946850, 31.761801>,  <37.126083, 40.280628, 31.890192>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.305275, 39.946850, 31.761801> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465972, -0.524314, 0.712717,
		-0.763013, -0.169713, -0.623706,
		0.447974, -0.834441, -0.320977,
		37.439667, 39.696518, 31.665508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.636856, 39.728275, 31.924688>,  <37.126083, 40.280628, 31.890192>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.636856, 39.728275, 31.924688> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.991398, 39.543095, 31.927784>,  <37.204121, 39.431988, 31.929642>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.991398, 39.543095, 31.927784>,  <36.636856, 39.728275, 31.924688>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.991398, 39.543095, 31.927784> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350244, -0.659447, 0.665176,
		-0.302842, -0.592288, -0.746647,
		0.886350, -0.462952, 0.007737,
		37.257301, 39.404209, 31.930105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.519627, 39.028511, 31.967253>,  <36.636856, 39.728275, 31.924688>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.519627, 39.028511, 31.967253> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.904850, 38.996925, 32.070236>,  <37.135983, 38.977974, 32.132027>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.904850, 38.996925, 32.070236>,  <36.519627, 39.028511, 31.967253>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.904850, 38.996925, 32.070236> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233895, -0.719087, 0.654375,
		0.133467, -0.690419, -0.710991,
		0.963057, -0.078959, 0.257460,
		37.193768, 38.973236, 32.147472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.760342, 38.314766, 31.818233>,  <36.519627, 39.028511, 31.967253>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.760342, 38.314766, 31.818233> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.035458, 38.462894, 32.067970>,  <37.200527, 38.551773, 32.217812>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.035458, 38.462894, 32.067970>,  <36.760342, 38.314766, 31.818233>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.035458, 38.462894, 32.067970> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106623, -0.799217, 0.591510,
		0.718033, -0.473406, -0.510211,
		0.687793, 0.370323, 0.624341,
		37.241795, 38.573990, 32.255272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.086464, 37.765488, 32.009411>,  <36.760342, 38.314766, 31.818233>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.086464, 37.765488, 32.009411> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.165115, 38.040520, 32.289001>,  <37.212307, 38.205540, 32.456757>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.165115, 38.040520, 32.289001>,  <37.086464, 37.765488, 32.009411>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.165115, 38.040520, 32.289001> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185256, -0.673998, 0.715127,
		0.962818, -0.270103, -0.005148,
		0.196628, 0.687584, 0.698975,
		37.224102, 38.246796, 32.498695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.582142, 37.523075, 32.533417>,  <37.086464, 37.765488, 32.009411>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.582142, 37.523075, 32.533417> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.375717, 37.810825, 32.719398>,  <37.251862, 37.983475, 32.830990>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.375717, 37.810825, 32.719398>,  <37.582142, 37.523075, 32.533417>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.375717, 37.810825, 32.719398> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094015, -0.587114, 0.804026,
		0.851378, 0.371211, 0.370617,
		-0.516058, 0.719374, 0.464957,
		37.220901, 38.026638, 32.858887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.386707, 37.480820, 32.605770>,  <37.582142, 37.523075, 32.533417>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.386707, 37.480820, 32.605770> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.461334, 37.143040, 32.404930>,  <38.506111, 36.940372, 32.284428>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.461334, 37.143040, 32.404930>,  <38.386707, 37.480820, 32.605770>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.461334, 37.143040, 32.404930> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167258, 0.476306, -0.863225,
		0.968100, 0.245030, -0.052377,
		0.186568, -0.844448, -0.502095,
		38.517303, 36.889706, 32.254303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.778305, 37.702152, 32.076683>,  <38.386707, 37.480820, 32.605770>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.778305, 37.702152, 32.076683> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.614265, 37.355453, 31.963146>,  <38.515842, 37.147434, 31.895023>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.614265, 37.355453, 31.963146>,  <38.778305, 37.702152, 32.076683>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.614265, 37.355453, 31.963146> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114253, 0.259948, -0.958840,
		0.904855, -0.425653, -0.007577,
		-0.410103, -0.866745, -0.283847,
		38.491234, 37.095428, 31.877993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.227322, 37.420650, 31.666510>,  <38.778305, 37.702152, 32.076683>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.227322, 37.420650, 31.666510> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.887932, 37.238338, 31.558918>,  <38.684296, 37.128952, 31.494364>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.887932, 37.238338, 31.558918>,  <39.227322, 37.420650, 31.666510>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.887932, 37.238338, 31.558918> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230562, 0.139136, -0.963059,
		0.476369, -0.879150, -0.012968,
		-0.848477, -0.455781, -0.268978,
		38.633389, 37.101604, 31.478224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.339535, 36.963760, 31.150383>,  <39.227322, 37.420650, 31.666510>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.339535, 36.963760, 31.150383> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.950085, 36.998714, 31.066084>,  <38.716415, 37.019688, 31.015505>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.950085, 36.998714, 31.066084>,  <39.339535, 36.963760, 31.150383>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.950085, 36.998714, 31.066084> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201073, -0.107802, -0.973626,
		-0.107802, -0.990324, 0.087388,
		0.973626, -0.087388, 0.210749,
		38.657997, 37.024929, 31.002859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.242790, 36.685452, 30.440191>,  <39.339535, 36.963760, 31.150383>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.242790, 36.685452, 30.440191> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.871819, 36.819683, 30.506237>,  <38.649235, 36.900223, 30.545864>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.871819, 36.819683, 30.506237>,  <39.242790, 36.685452, 30.440191>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.871819, 36.819683, 30.506237> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118765, 0.154375, -0.980848,
		-0.354638, -0.929278, -0.103318,
		-0.927430, 0.335576, 0.165113,
		38.593590, 36.920357, 30.555771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.665668, 36.179188, 30.186968>,  <39.242790, 36.685452, 30.440191>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.665668, 36.179188, 30.186968> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.562660, 36.565697, 30.186815>,  <38.500854, 36.797604, 30.186724>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.562660, 36.565697, 30.186815>,  <38.665668, 36.179188, 30.186968>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.562660, 36.565697, 30.186815> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009009, 0.002005, -0.999957,
		-0.966230, -0.257517, -0.009222,
		-0.257524, 0.966272, -0.000382,
		38.485401, 36.855579, 30.186701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.011509, 36.348839, 29.705711>,  <38.665668, 36.179188, 30.186968>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.011509, 36.348839, 29.705711> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.196224, 36.700687, 29.751360>,  <38.307053, 36.911797, 29.778749>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.196224, 36.700687, 29.751360>,  <38.011509, 36.348839, 29.705711>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.196224, 36.700687, 29.751360> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028844, 0.143487, -0.989232,
		-0.886523, 0.453520, 0.091632,
		0.461785, 0.879620, 0.114122,
		38.334759, 36.964573, 29.785597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.668404, 36.747711, 29.263269>,  <38.011509, 36.348839, 29.705711>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.668404, 36.747711, 29.263269> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.004669, 36.952526, 29.333809>,  <38.206429, 37.075417, 29.376133>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.004669, 36.952526, 29.333809>,  <37.668404, 36.747711, 29.263269>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.004669, 36.952526, 29.333809> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009243, 0.312021, -0.950030,
		-0.541474, 0.800289, 0.257573,
		0.840666, 0.512036, 0.176348,
		38.256870, 37.106136, 29.386713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.500809, 37.417381, 28.956955>,  <37.668404, 36.747711, 29.263269>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.500809, 37.417381, 28.956955> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.899563, 37.405640, 28.986242>,  <38.138817, 37.398594, 29.003815>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.899563, 37.405640, 28.986242>,  <37.500809, 37.417381, 28.956955>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.899563, 37.405640, 28.986242> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078419, 0.268504, -0.960081,
		0.008521, 0.962831, 0.269969,
		0.996884, -0.029352, 0.073216,
		38.198627, 37.396835, 29.008207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.731171, 38.067986, 28.665955>,  <37.500809, 37.417381, 28.956955>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.731171, 38.067986, 28.665955> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.047180, 37.823494, 28.646952>,  <38.236786, 37.676800, 28.635550>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.047180, 37.823494, 28.646952>,  <37.731171, 38.067986, 28.665955>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.047180, 37.823494, 28.646952> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188158, 0.315487, -0.930088,
		0.583486, 0.725855, 0.364251,
		0.790026, -0.611230, -0.047507,
		38.284187, 37.640125, 28.632700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.292828, 38.468590, 28.339783>,  <37.731171, 38.067986, 28.665955>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.292828, 38.468590, 28.339783> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.409214, 38.090611, 28.279907>,  <38.479046, 37.863823, 28.243982>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.409214, 38.090611, 28.279907>,  <38.292828, 38.468590, 28.339783>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.409214, 38.090611, 28.279907> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185517, 0.209216, -0.960111,
		0.938574, 0.251590, 0.236179,
		0.290967, -0.944950, -0.149691,
		38.496506, 37.807125, 28.235001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.855717, 38.501713, 27.938511>,  <38.292828, 38.468590, 28.339783>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.855717, 38.501713, 27.938511> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.721516, 38.132183, 27.864775>,  <38.640995, 37.910465, 27.820532>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.721516, 38.132183, 27.864775>,  <38.855717, 38.501713, 27.938511>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.721516, 38.132183, 27.864775> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178911, 0.129636, -0.975287,
		0.924893, -0.360195, 0.121789,
		-0.335505, -0.923826, -0.184342,
		38.620865, 37.855034, 27.809471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.414913, 38.243366, 27.520863>,  <38.855717, 38.501713, 27.938511>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.414913, 38.243366, 27.520863> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.091900, 38.011543, 27.477051>,  <38.898090, 37.872448, 27.450764>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.091900, 38.011543, 27.477051>,  <39.414913, 38.243366, 27.520863>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.091900, 38.011543, 27.477051> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142662, -0.011742, -0.989702,
		0.572306, -0.814845, 0.092163,
		-0.807536, -0.579560, -0.109528,
		38.849640, 37.837677, 27.444193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.651119, 37.754307, 27.108606>,  <39.414913, 38.243366, 27.520863>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.651119, 37.754307, 27.108606> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.253014, 37.771305, 27.073643>,  <39.014149, 37.781506, 27.052664>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.253014, 37.771305, 27.073643>,  <39.651119, 37.754307, 27.108606>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.253014, 37.771305, 27.073643> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089450, 0.048737, -0.994798,
		-0.038018, -0.997907, -0.052308,
		-0.995265, 0.042499, -0.087410,
		38.954433, 37.784054, 27.047421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<33.177204, 39.044781, 27.885113> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.559345, 39.150715, 27.937521>,  <33.788628, 39.214275, 27.968966>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.559345, 39.150715, 27.937521>,  <33.177204, 39.044781, 27.885113>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.559345, 39.150715, 27.937521> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057635, -0.601942, 0.796457,
		0.289798, -0.753345, -0.590330,
		0.955351, 0.264836, 0.131023,
		33.845951, 39.230167, 27.976828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.518864, 38.451408, 27.942551>,  <33.177204, 39.044781, 27.885113>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.518864, 38.451408, 27.942551> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.751137, 38.721573, 28.124374>,  <33.890503, 38.883671, 28.233469>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.751137, 38.721573, 28.124374>,  <33.518864, 38.451408, 27.942551>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.751137, 38.721573, 28.124374> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127639, -0.626965, 0.768520,
		0.804059, -0.388249, -0.450279,
		0.580686, 0.675409, 0.454562,
		33.925343, 38.924194, 28.260742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.192825, 38.142174, 28.130905>,  <33.518864, 38.451408, 27.942551>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.192825, 38.142174, 28.130905> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.154457, 38.458599, 28.372572>,  <34.131435, 38.648457, 28.517572>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.154457, 38.458599, 28.372572>,  <34.192825, 38.142174, 28.130905>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.154457, 38.458599, 28.372572> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268675, -0.563858, 0.780947,
		0.958443, 0.237235, -0.158453,
		-0.095923, 0.791065, 0.604165,
		34.125679, 38.695919, 28.553822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.847649, 38.152920, 28.487577>,  <34.192825, 38.142174, 28.130905>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.847649, 38.152920, 28.487577> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.599098, 38.384956, 28.698246>,  <34.449966, 38.524178, 28.824648>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.599098, 38.384956, 28.698246>,  <34.847649, 38.152920, 28.487577>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.599098, 38.384956, 28.698246> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139132, -0.579817, 0.802779,
		0.771060, 0.572105, 0.279575,
		-0.621376, 0.580094, 0.526672,
		34.412685, 38.558983, 28.856247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.197807, 38.306206, 29.098341>,  <34.847649, 38.152920, 28.487577>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.197807, 38.306206, 29.098341> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.809494, 38.350159, 29.183664>,  <34.576504, 38.376530, 29.234858>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.809494, 38.350159, 29.183664>,  <35.197807, 38.306206, 29.098341>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.809494, 38.350159, 29.183664> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127846, -0.515425, 0.847344,
		0.203050, 0.849861, 0.486320,
		-0.970786, 0.109879, 0.213309,
		34.518257, 38.383121, 29.247658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.136398, 38.452328, 29.876974>,  <35.197807, 38.306206, 29.098341>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.136398, 38.452328, 29.876974> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.750881, 38.381752, 29.797007>,  <34.519569, 38.339405, 29.749025>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.750881, 38.381752, 29.797007>,  <35.136398, 38.452328, 29.876974>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.750881, 38.381752, 29.797007> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115574, -0.399247, 0.909530,
		-0.240297, 0.899706, 0.364400,
		-0.963795, -0.176442, -0.199921,
		34.461742, 38.328819, 29.737030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.810223, 38.541496, 30.567152>,  <35.136398, 38.452328, 29.876974>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.810223, 38.541496, 30.567152> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.595512, 38.300713, 30.330673>,  <34.466686, 38.156242, 30.188786>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.595512, 38.300713, 30.330673>,  <34.810223, 38.541496, 30.567152>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.595512, 38.300713, 30.330673> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098400, -0.651254, 0.752453,
		-0.837970, 0.462069, 0.290341,
		-0.536771, -0.601964, -0.591199,
		34.434483, 38.120125, 30.153313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.349506, 38.382355, 31.069544>,  <34.810223, 38.541496, 30.567152>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.349506, 38.382355, 31.069544> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.343605, 38.106258, 30.780174>,  <34.340065, 37.940601, 30.606552>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.343605, 38.106258, 30.780174>,  <34.349506, 38.382355, 31.069544>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.343605, 38.106258, 30.780174> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060827, -0.722783, 0.688393,
		-0.998039, -0.033850, 0.052646,
		-0.014749, -0.690245, -0.723425,
		34.339180, 37.899185, 30.563147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.966667, 37.893757, 31.365147>,  <34.349506, 38.382355, 31.069544>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.966667, 37.893757, 31.365147> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.136528, 37.696358, 31.061533>,  <34.238445, 37.577919, 30.879364>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.136528, 37.696358, 31.061533>,  <33.966667, 37.893757, 31.365147>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.136528, 37.696358, 31.061533> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091103, -0.857418, 0.506492,
		-0.900762, -0.145932, -0.409062,
		0.424650, -0.493496, -0.759035,
		34.263924, 37.548309, 30.833822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.481422, 37.353455, 31.203274>,  <33.966667, 37.893757, 31.365147>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.481422, 37.353455, 31.203274> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.845943, 37.224815, 31.100433>,  <34.064655, 37.147633, 31.038729>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.845943, 37.224815, 31.100433>,  <33.481422, 37.353455, 31.203274>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.845943, 37.224815, 31.100433> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179127, -0.871911, 0.455725,
		-0.370730, -0.369249, -0.852182,
		0.911302, -0.321600, -0.257101,
		34.119335, 37.128334, 31.023302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.443825, 36.643520, 31.102150>,  <33.481422, 37.353455, 31.203274>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.443825, 36.643520, 31.102150> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.833374, 36.703255, 31.170576>,  <34.067104, 36.739094, 31.211632>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.833374, 36.703255, 31.170576>,  <33.443825, 36.643520, 31.102150>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.833374, 36.703255, 31.170576> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007678, -0.774560, 0.632454,
		0.226947, -0.614619, -0.755473,
		0.973877, 0.149334, 0.171065,
		34.125538, 36.748055, 31.221895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.639130, 35.970047, 31.249588>,  <33.443825, 36.643520, 31.102150>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.639130, 35.970047, 31.249588> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.982483, 36.154625, 31.339258>,  <34.188496, 36.265373, 31.393061>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.982483, 36.154625, 31.339258>,  <33.639130, 35.970047, 31.249588>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.982483, 36.154625, 31.339258> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182757, -0.683358, 0.706840,
		0.479360, -0.565766, -0.670912,
		0.858378, 0.461445, 0.224177,
		34.239998, 36.293056, 31.406511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.211094, 35.467789, 31.147751>,  <33.639130, 35.970047, 31.249588>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.211094, 35.467789, 31.147751> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.342541, 35.757908, 31.389727>,  <34.421410, 35.931980, 31.534912>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.342541, 35.757908, 31.389727>,  <34.211094, 35.467789, 31.147751>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.342541, 35.757908, 31.389727> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137262, -0.670388, 0.729204,
		0.934436, -0.156592, -0.319856,
		0.328615, 0.725299, 0.604941,
		34.441124, 35.975498, 31.571209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.910339, 35.302483, 31.509554>,  <34.211094, 35.467789, 31.147751>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.910339, 35.302483, 31.509554> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.740906, 35.568024, 31.756092>,  <34.639248, 35.727348, 31.904015>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.740906, 35.568024, 31.756092>,  <34.910339, 35.302483, 31.509554>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.740906, 35.568024, 31.756092> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275135, -0.553974, 0.785757,
		0.863064, 0.502411, 0.052005,
		-0.423582, 0.663850, 0.616346,
		34.613831, 35.767178, 31.940996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.181618, 34.666035, 31.312592>,  <34.910339, 35.302483, 31.509554>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.181618, 34.666035, 31.312592> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.984367, 34.381901, 31.111694>,  <34.866016, 34.211418, 30.991156>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.984367, 34.381901, 31.111694>,  <35.181618, 34.666035, 31.312592>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.984367, 34.381901, 31.111694> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207189, 0.656601, -0.725223,
		0.844927, -0.253565, -0.470960,
		-0.493124, -0.710338, -0.502244,
		34.836430, 34.168800, 30.961021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.301243, 34.757317, 30.549576>,  <35.181618, 34.666035, 31.312592>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.301243, 34.757317, 30.549576> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.976875, 34.523315, 30.554958>,  <34.782253, 34.382915, 30.558187>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.976875, 34.523315, 30.554958>,  <35.301243, 34.757317, 30.549576>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.976875, 34.523315, 30.554958> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435590, 0.588134, -0.681440,
		0.390726, -0.558457, -0.731751,
		-0.810922, -0.585000, 0.013459,
		34.733601, 34.347816, 30.558996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.169598, 34.765232, 29.998264>,  <35.301243, 34.757317, 30.549576>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.169598, 34.765232, 29.998264> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.817383, 34.624138, 30.124905>,  <34.606056, 34.539482, 30.200890>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.817383, 34.624138, 30.124905>,  <35.169598, 34.765232, 29.998264>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.817383, 34.624138, 30.124905> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462351, 0.492144, -0.737581,
		0.104356, -0.795847, -0.596437,
		-0.880534, -0.352734, 0.316603,
		34.553223, 34.518318, 30.219885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.933418, 34.383862, 29.469666>,  <35.169598, 34.765232, 29.998264>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.933418, 34.383862, 29.469666> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.621170, 34.489048, 29.696461>,  <34.433819, 34.552158, 29.832539>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.621170, 34.489048, 29.696461>,  <34.933418, 34.383862, 29.469666>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.621170, 34.489048, 29.696461> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422176, 0.447078, -0.788599,
		-0.460860, -0.854969, -0.237984,
		-0.780625, 0.262963, 0.566987,
		34.386982, 34.567936, 29.866556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.395000, 34.012249, 29.202059>,  <34.933418, 34.383862, 29.469666>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.395000, 34.012249, 29.202059> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.270401, 34.356049, 29.364157>,  <34.195641, 34.562328, 29.461416>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.270401, 34.356049, 29.364157>,  <34.395000, 34.012249, 29.202059>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.270401, 34.356049, 29.364157> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167639, 0.370069, -0.913754,
		-0.935342, -0.352570, 0.028809,
		-0.311500, 0.859502, 0.405245,
		34.176952, 34.613899, 29.485731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.800903, 34.321976, 28.799442>,  <34.395000, 34.012249, 29.202059>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.800903, 34.321976, 28.799442> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.866024, 34.659573, 29.003859>,  <33.905098, 34.862133, 29.126509>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.866024, 34.659573, 29.003859>,  <33.800903, 34.321976, 28.799442>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.866024, 34.659573, 29.003859> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080605, 0.527599, -0.845661,
		-0.983361, 0.096484, 0.153925,
		0.162803, 0.843997, 0.511043,
		33.914864, 34.912773, 29.157171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.140884, 34.729744, 28.677896>,  <33.800903, 34.321976, 28.799442>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.140884, 34.729744, 28.677896> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.458076, 34.945591, 28.791027>,  <33.648392, 35.075100, 28.858906>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.458076, 34.945591, 28.791027>,  <33.140884, 34.729744, 28.677896>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.458076, 34.945591, 28.791027> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006435, 0.471613, -0.881782,
		-0.609213, 0.697416, 0.377452,
		0.792981, 0.539622, 0.282825,
		33.695972, 35.107479, 28.875874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.030132, 35.156509, 28.208908>,  <33.140884, 34.729744, 28.677896>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.030132, 35.156509, 28.208908> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.365803, 35.298786, 28.373476>,  <33.567204, 35.384151, 28.472218>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.365803, 35.298786, 28.373476>,  <33.030132, 35.156509, 28.208908>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.365803, 35.298786, 28.373476> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131857, 0.600849, -0.788412,
		-0.527636, 0.715864, 0.457316,
		0.839175, 0.355694, 0.411421,
		33.617554, 35.405495, 28.496902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.035007, 36.030926, 28.211611>,  <33.030132, 35.156509, 28.208908>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.035007, 36.030926, 28.211611> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.397831, 35.862705, 28.219437>,  <33.615524, 35.761772, 28.224133>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.397831, 35.862705, 28.219437>,  <33.035007, 36.030926, 28.211611>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.397831, 35.862705, 28.219437> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315560, 0.648365, -0.692853,
		0.278697, 0.634630, 0.720813,
		0.907056, -0.420556, 0.019566,
		33.669949, 35.736538, 28.225307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.539127, 36.488422, 28.337908>,  <33.035007, 36.030926, 28.211611>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.539127, 36.488422, 28.337908> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.746819, 36.205700, 28.145733>,  <33.871433, 36.036068, 28.030428>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.746819, 36.205700, 28.145733>,  <33.539127, 36.488422, 28.337908>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.746819, 36.205700, 28.145733> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341554, 0.686930, -0.641457,
		0.783415, 0.168969, 0.598089,
		0.519232, -0.706807, -0.480440,
		33.902588, 35.993656, 28.001600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.254711, 36.698185, 28.211521>,  <33.539127, 36.488422, 28.337908>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.254711, 36.698185, 28.211521> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.126270, 36.437115, 27.937031>,  <34.049206, 36.280472, 27.772337>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.126270, 36.437115, 27.937031>,  <34.254711, 36.698185, 28.211521>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.126270, 36.437115, 27.937031> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382413, 0.573538, -0.724441,
		0.866404, -0.495039, 0.065431,
		-0.321099, -0.652680, -0.686225,
		34.029942, 36.241310, 27.731163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.857525, 36.488098, 27.775963>,  <34.254711, 36.698185, 28.211521>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.857525, 36.488098, 27.775963> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.518360, 36.446232, 27.568085>,  <34.314861, 36.421112, 27.443357>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.518360, 36.446232, 27.568085>,  <34.857525, 36.488098, 27.775963>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.518360, 36.446232, 27.568085> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399702, 0.517761, -0.756413,
		0.348246, -0.849099, -0.397185,
		-0.847917, -0.104662, -0.519695,
		34.263985, 36.414833, 27.412176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.072479, 36.349354, 27.177607>,  <34.857525, 36.488098, 27.775963>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.072479, 36.349354, 27.177607> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.687862, 36.417500, 27.091425>,  <34.457092, 36.458389, 27.039717>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.687862, 36.417500, 27.091425>,  <35.072479, 36.349354, 27.177607>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.687862, 36.417500, 27.091425> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273701, 0.528341, -0.803707,
		-0.023092, -0.831764, -0.554649,
		-0.961538, 0.170367, -0.215454,
		34.399403, 36.468609, 27.026789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.057350, 36.278381, 26.407686>,  <35.072479, 36.349354, 27.177607>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.057350, 36.278381, 26.407686> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.725998, 36.479023, 26.507431>,  <34.527187, 36.599407, 26.567278>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.725998, 36.479023, 26.507431>,  <35.057350, 36.278381, 26.407686>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.725998, 36.479023, 26.507431> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163732, 0.642528, -0.748565,
		-0.535708, -0.579265, -0.614385,
		-0.828377, 0.501607, 0.249363,
		34.477486, 36.629505, 26.582239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.228001, 35.807755, 25.769794>,  <35.057350, 36.278381, 26.407686>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.228001, 35.807755, 25.769794> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.626423, 35.835930, 25.748188>,  <35.865475, 35.852833, 25.735224>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.626423, 35.835930, 25.748188>,  <35.228001, 35.807755, 25.769794>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.626423, 35.835930, 25.748188> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087631, -0.683404, 0.724762,
		0.014136, -0.726634, -0.686879,
		0.996053, 0.070437, -0.054015,
		35.925240, 35.857059, 25.731983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.576355, 35.101452, 25.802555>,  <35.228001, 35.807755, 25.769794>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.576355, 35.101452, 25.802555> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.871719, 35.353539, 25.898529>,  <36.048939, 35.504791, 25.956114>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.871719, 35.353539, 25.898529>,  <35.576355, 35.101452, 25.802555>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.871719, 35.353539, 25.898529> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342396, -0.656918, 0.671732,
		0.580956, -0.413864, -0.700862,
		0.738414, 0.630219, 0.239935,
		36.093243, 35.542603, 25.970510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.176746, 34.673592, 25.846312>,  <35.576355, 35.101452, 25.802555>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.176746, 34.673592, 25.846312> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.263401, 35.008202, 26.047623>,  <36.315395, 35.208969, 26.168409>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.263401, 35.008202, 26.047623>,  <36.176746, 34.673592, 25.846312>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.263401, 35.008202, 26.047623> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370473, -0.547405, 0.750398,
		0.903226, 0.023887, -0.428500,
		0.216638, 0.836527, 0.503280,
		36.328392, 35.259159, 26.198606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.904163, 34.600594, 26.032312>,  <36.176746, 34.673592, 25.846312>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.904163, 34.600594, 26.032312> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.718410, 34.858864, 26.274786>,  <36.606960, 35.013824, 26.420269>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.718410, 34.858864, 26.274786>,  <36.904163, 34.600594, 26.032312>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.718410, 34.858864, 26.274786> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409018, -0.450734, 0.793437,
		0.785528, 0.616397, -0.054779,
		-0.464382, 0.645673, 0.606182,
		36.579098, 35.052567, 26.456640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.359344, 34.993179, 26.440180>,  <36.904163, 34.600594, 26.032312>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.359344, 34.993179, 26.440180> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.025005, 35.034485, 26.655846>,  <36.824402, 35.059269, 26.785244>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.025005, 35.034485, 26.655846>,  <37.359344, 34.993179, 26.440180>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.025005, 35.034485, 26.655846> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456769, -0.413964, 0.787398,
		0.304504, 0.904417, 0.298842,
		-0.835846, 0.103264, 0.539163,
		36.774250, 35.065464, 26.817595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.578812, 35.068249, 27.062716>,  <37.359344, 34.993179, 26.440180>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.578812, 35.068249, 27.062716> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.196522, 34.972160, 27.130701>,  <36.967148, 34.914509, 27.171494>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.196522, 34.972160, 27.130701>,  <37.578812, 35.068249, 27.062716>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.196522, 34.972160, 27.130701> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263254, -0.439872, 0.858609,
		-0.131490, 0.865337, 0.483634,
		-0.955723, -0.240218, 0.169965,
		36.909805, 34.900097, 27.181690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.424614, 35.285770, 27.767950>,  <37.578812, 35.068249, 27.062716>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.424614, 35.285770, 27.767950> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.167053, 34.995304, 27.671549>,  <37.012516, 34.821026, 27.613708>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.167053, 34.995304, 27.671549>,  <37.424614, 35.285770, 27.767950>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.167053, 34.995304, 27.671549> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295481, -0.526565, 0.797133,
		-0.705750, 0.442063, 0.553622,
		-0.643901, -0.726161, -0.241002,
		36.973885, 34.777454, 27.599249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.960026, 35.193062, 28.313536>,  <37.424614, 35.285770, 27.767950>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.960026, 35.193062, 28.313536> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.963657, 34.842430, 28.121071>,  <36.965836, 34.632050, 28.005592>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.963657, 34.842430, 28.121071>,  <36.960026, 35.193062, 28.313536>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.963657, 34.842430, 28.121071> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443386, -0.427766, 0.787670,
		-0.896285, -0.220493, 0.384781,
		0.009079, -0.876584, -0.481164,
		36.966381, 34.579456, 27.976721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.506172, 34.741341, 28.720816>,  <36.960026, 35.193062, 28.313536>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.506172, 34.741341, 28.720816> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.756760, 34.523293, 28.497969>,  <36.907112, 34.392464, 28.364260>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.756760, 34.523293, 28.497969>,  <36.506172, 34.741341, 28.720816>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.756760, 34.523293, 28.497969> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201869, -0.576900, 0.791477,
		-0.752851, -0.608301, -0.251367,
		0.626470, -0.545121, -0.557117,
		36.944702, 34.359756, 28.330833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.315872, 34.108959, 28.929272>,  <36.506172, 34.741341, 28.720816>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.315872, 34.108959, 28.929272> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.671780, 34.065205, 28.752031>,  <36.885326, 34.038952, 28.645687>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.671780, 34.065205, 28.752031>,  <36.315872, 34.108959, 28.929272>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.671780, 34.065205, 28.752031> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319011, -0.545250, 0.775199,
		-0.326398, -0.831106, -0.450253,
		0.889773, -0.109387, -0.443101,
		36.938713, 34.032387, 28.619101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.366383, 33.388653, 28.805599>,  <36.315872, 34.108959, 28.929272>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.366383, 33.388653, 28.805599> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.726112, 33.557220, 28.852289>,  <36.941948, 33.658363, 28.880302>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.726112, 33.557220, 28.852289>,  <36.366383, 33.388653, 28.805599>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.726112, 33.557220, 28.852289> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155357, -0.557422, 0.815564,
		0.408761, -0.715320, -0.566773,
		0.899321, 0.421423, 0.116723,
		36.995907, 33.683647, 28.887306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.662354, 32.951683, 29.225597>,  <36.366383, 33.388653, 28.805599>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.662354, 32.951683, 29.225597> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.932426, 33.245064, 29.194172>,  <37.094471, 33.421093, 29.175316>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.932426, 33.245064, 29.194172>,  <36.662354, 32.951683, 29.225597>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.932426, 33.245064, 29.194172> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541364, -0.420353, 0.728167,
		0.501053, -0.534178, -0.680882,
		0.675182, 0.733456, -0.078566,
		37.134979, 33.465099, 29.170603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.251720, 32.509895, 29.193846>,  <36.662354, 32.951683, 29.225597>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.251720, 32.509895, 29.193846> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.327362, 32.873535, 29.342318>,  <37.372749, 33.091721, 29.431400>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.327362, 32.873535, 29.342318>,  <37.251720, 32.509895, 29.193846>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.327362, 32.873535, 29.342318> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377696, -0.416261, 0.827087,
		0.906413, -0.016216, -0.422082,
		0.189108, 0.909101, 0.371180,
		37.384094, 33.146267, 29.453671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.957508, 32.553883, 29.419489>,  <37.251720, 32.509895, 29.193846>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.957508, 32.553883, 29.419489> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.745834, 32.824356, 29.624525>,  <37.618832, 32.986641, 29.747547>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.745834, 32.824356, 29.624525>,  <37.957508, 32.553883, 29.419489>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.745834, 32.824356, 29.624525> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397172, -0.336444, 0.853850,
		0.749813, 0.655428, -0.090519,
		-0.529183, 0.676180, 0.512588,
		37.587078, 33.027210, 29.778301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<39.631851, 37.370365, 26.485107> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.271233, 37.538376, 26.526651>,  <39.054859, 37.639183, 26.551577>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.271233, 37.538376, 26.526651>,  <39.631851, 37.370365, 26.485107>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.271233, 37.538376, 26.526651> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081456, 0.070979, -0.994146,
		-0.424939, -0.904732, -0.029778,
		-0.901550, 0.420026, 0.103858,
		39.000767, 37.664383, 26.557808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.115891, 36.976833, 26.053793>,  <39.631851, 37.370365, 26.485107>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.115891, 36.976833, 26.053793> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.986534, 37.350407, 26.114697>,  <38.908920, 37.574551, 26.151239>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.986534, 37.350407, 26.114697>,  <39.115891, 36.976833, 26.053793>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.986534, 37.350407, 26.114697> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277231, 0.060335, -0.958907,
		-0.904744, -0.352313, 0.239404,
		-0.323391, 0.933936, 0.152260,
		38.889519, 37.630589, 26.160374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.506702, 37.114239, 25.599365>,  <39.115891, 36.976833, 26.053793>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.506702, 37.114239, 25.599365> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.601105, 37.485939, 25.713070>,  <38.657745, 37.708958, 25.781292>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.601105, 37.485939, 25.713070>,  <38.506702, 37.114239, 25.599365>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.601105, 37.485939, 25.713070> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285745, 0.345953, -0.893681,
		-0.928791, 0.129685, 0.347173,
		0.236003, 0.929246, 0.284261,
		38.671906, 37.764713, 25.798347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.973541, 37.546146, 25.384171>,  <38.506702, 37.114239, 25.599365>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.973541, 37.546146, 25.384171> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.267353, 37.810722, 25.444784>,  <38.443642, 37.969467, 25.481152>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.267353, 37.810722, 25.444784>,  <37.973541, 37.546146, 25.384171>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.267353, 37.810722, 25.444784> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346615, 0.557706, -0.754203,
		-0.583368, 0.501465, 0.638918,
		0.734534, 0.661436, 0.151532,
		38.487713, 38.009151, 25.490244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.741299, 38.199879, 25.109976>,  <37.973541, 37.546146, 25.384171>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.741299, 38.199879, 25.109976> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.125889, 38.296505, 25.162441>,  <38.356644, 38.354481, 25.193920>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.125889, 38.296505, 25.162441>,  <37.741299, 38.199879, 25.109976>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.125889, 38.296505, 25.162441> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066134, 0.666444, -0.742616,
		-0.266803, 0.705336, 0.656748,
		0.961479, 0.241566, 0.131163,
		38.414333, 38.368973, 25.201790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.805817, 38.961529, 25.084751>,  <37.741299, 38.199879, 25.109976>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.805817, 38.961529, 25.084751> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.172745, 38.833134, 24.990532>,  <38.392902, 38.756096, 24.934000>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.172745, 38.833134, 24.990532>,  <37.805817, 38.961529, 25.084751>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.172745, 38.833134, 24.990532> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029515, 0.644812, -0.763771,
		0.397048, 0.693672, 0.600975,
		0.917323, -0.320992, -0.235547,
		38.447941, 38.736835, 24.919868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.299843, 39.496231, 25.086025>,  <37.805817, 38.961529, 25.084751>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.299843, 39.496231, 25.086025> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.441647, 39.215717, 24.838633>,  <38.526730, 39.047409, 24.690197>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.441647, 39.215717, 24.838633>,  <38.299843, 39.496231, 25.086025>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.441647, 39.215717, 24.838633> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079457, 0.681643, -0.727358,
		0.931672, 0.208711, 0.297368,
		0.354506, -0.701287, -0.618484,
		38.548000, 39.005333, 24.653088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.638588, 39.840302, 24.502476>,  <38.299843, 39.496231, 25.086025>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.638588, 39.840302, 24.502476> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.623119, 39.469681, 24.352810>,  <38.613838, 39.247307, 24.263010>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.623119, 39.469681, 24.352810>,  <38.638588, 39.840302, 24.502476>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.623119, 39.469681, 24.352810> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092851, 0.369492, -0.924583,
		0.994929, -0.070498, 0.071742,
		-0.038674, -0.926556, -0.374164,
		38.611519, 39.191715, 24.240561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.334503, 39.603863, 24.170885>,  <38.638588, 39.840302, 24.502476>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.334503, 39.603863, 24.170885> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.979824, 39.483124, 24.030796>,  <38.767017, 39.410679, 23.946743>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.979824, 39.483124, 24.030796>,  <39.334503, 39.603863, 24.170885>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.979824, 39.483124, 24.030796> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194974, 0.442712, -0.875209,
		0.419220, -0.844332, -0.333703,
		-0.886702, -0.301842, -0.350217,
		38.713814, 39.392570, 23.925730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.529995, 39.333122, 23.505430>,  <39.334503, 39.603863, 24.170885>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.529995, 39.333122, 23.505430> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.137184, 39.406666, 23.488361>,  <38.901497, 39.450790, 23.478121>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.137184, 39.406666, 23.488361>,  <39.529995, 39.333122, 23.505430>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.137184, 39.406666, 23.488361> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112358, 0.387805, -0.914868,
		-0.151658, -0.903219, -0.401492,
		-0.982026, 0.183858, -0.042670,
		38.842575, 39.461823, 23.475561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.459255, 39.316788, 22.744293>,  <39.529995, 39.333122, 23.505430>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.459255, 39.316788, 22.744293> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.112019, 39.452541, 22.889200>,  <38.903675, 39.533993, 22.976145>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.112019, 39.452541, 22.889200>,  <39.459255, 39.316788, 22.744293>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.112019, 39.452541, 22.889200> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079483, 0.625341, -0.776293,
		-0.490001, -0.702687, -0.515878,
		-0.868091, 0.339381, 0.362270,
		38.851593, 39.554356, 22.997881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.824871, 39.250759, 22.244043>,  <39.459255, 39.316788, 22.744293>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.824871, 39.250759, 22.244043> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.703793, 39.539406, 22.493088>,  <38.631145, 39.712593, 22.642513>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.703793, 39.539406, 22.493088>,  <38.824871, 39.250759, 22.244043>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.703793, 39.539406, 22.493088> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287776, 0.553566, -0.781505,
		-0.908604, -0.415729, 0.040103,
		-0.302695, 0.721619, 0.622609,
		38.612984, 39.755890, 22.679871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.114647, 39.593410, 22.029131>,  <38.824871, 39.250759, 22.244043>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.114647, 39.593410, 22.029131> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.348022, 39.841507, 22.238853>,  <38.488049, 39.990364, 22.364687>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.348022, 39.841507, 22.238853>,  <38.114647, 39.593410, 22.029131>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.348022, 39.841507, 22.238853> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141184, 0.713201, -0.686595,
		-0.799790, 0.326564, 0.503679,
		0.583441, 0.620243, 0.524305,
		38.523056, 40.027580, 22.396145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.791443, 40.185432, 21.995874>,  <38.114647, 39.593410, 22.029131>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.791443, 40.185432, 21.995874> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.169075, 40.270859, 22.096352>,  <38.395657, 40.322117, 22.156637>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.169075, 40.270859, 22.096352>,  <37.791443, 40.185432, 21.995874>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.169075, 40.270859, 22.096352> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003754, 0.768770, -0.639514,
		-0.329688, 0.602811, 0.726584,
		0.944082, 0.213568, 0.251192,
		38.452301, 40.334930, 22.171709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.004990, 40.031235, 22.143253>,  <37.791443, 40.185432, 21.995874>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.004990, 40.031235, 22.143253> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.842480, 39.844532, 21.829035>,  <36.744976, 39.732510, 21.640503>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.842480, 39.844532, 21.829035>,  <37.004990, 40.031235, 22.143253>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.842480, 39.844532, 21.829035> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425354, -0.664263, 0.614678,
		-0.808714, 0.583860, 0.071333,
		-0.406270, -0.466757, -0.785546,
		36.720600, 39.704506, 21.593370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.341888, 40.004734, 22.256491>,  <37.004990, 40.031235, 22.143253>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.341888, 40.004734, 22.256491> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.402565, 39.688240, 22.019533>,  <36.438969, 39.498344, 21.877359>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.402565, 39.688240, 22.019533>,  <36.341888, 40.004734, 22.256491>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.402565, 39.688240, 22.019533> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460670, -0.586851, 0.665874,
		-0.874513, 0.171893, -0.453519,
		0.151689, -0.791239, -0.592395,
		36.448071, 39.450867, 21.841814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.916718, 39.632797, 22.515017>,  <36.341888, 40.004734, 22.256491>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.916718, 39.632797, 22.515017> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.092815, 39.374290, 22.265690>,  <36.198475, 39.219189, 22.116093>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.092815, 39.374290, 22.265690>,  <35.916718, 39.632797, 22.515017>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.092815, 39.374290, 22.265690> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368118, -0.763100, 0.531194,
		-0.818947, -0.004401, -0.573853,
		0.440245, -0.646265, -0.623318,
		36.224888, 39.180412, 22.078693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.408104, 39.080315, 22.221289>,  <35.916718, 39.632797, 22.515017>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.408104, 39.080315, 22.221289> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.791565, 38.966618, 22.215807>,  <36.021641, 38.898399, 22.212517>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.791565, 38.966618, 22.215807>,  <35.408104, 39.080315, 22.221289>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.791565, 38.966618, 22.215807> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259748, -0.893673, 0.365896,
		-0.116253, -0.347207, -0.930555,
		0.958653, -0.284246, -0.013706,
		36.079163, 38.881344, 22.211695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.396202, 38.379456, 22.019766>,  <35.408104, 39.080315, 22.221289>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.396202, 38.379456, 22.019766> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.753380, 38.411400, 22.196978>,  <35.967686, 38.430565, 22.303305>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.753380, 38.411400, 22.196978>,  <35.396202, 38.379456, 22.019766>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.753380, 38.411400, 22.196978> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157745, -0.866229, 0.474093,
		0.421625, -0.493223, -0.760896,
		0.892944, 0.079862, 0.443027,
		36.021263, 38.435360, 22.329885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.656124, 37.761707, 21.935635>,  <35.396202, 38.379456, 22.019766>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.656124, 37.761707, 21.935635> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.835621, 37.938511, 22.246315>,  <35.943317, 38.044594, 22.432722>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.835621, 37.938511, 22.246315>,  <35.656124, 37.761707, 21.935635>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.835621, 37.938511, 22.246315> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082894, -0.844785, 0.528646,
		0.889811, -0.301607, -0.342447,
		0.448738, 0.442008, 0.776700,
		35.970242, 38.071114, 22.479324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.130329, 37.190739, 22.166645>,  <35.656124, 37.761707, 21.935635>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.130329, 37.190739, 22.166645> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.088581, 37.434048, 22.481380>,  <36.063534, 37.580032, 22.670221>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.088581, 37.434048, 22.481380>,  <36.130329, 37.190739, 22.166645>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.088581, 37.434048, 22.481380> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086115, -0.793714, 0.602165,
		0.990803, -0.004909, 0.135222,
		-0.104372, 0.608271, 0.786837,
		36.057270, 37.616528, 22.717432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.667255, 36.957939, 22.620731>,  <36.130329, 37.190739, 22.166645>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.667255, 36.957939, 22.620731> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.401302, 37.152473, 22.847502>,  <36.241730, 37.269196, 22.983564>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.401302, 37.152473, 22.847502>,  <36.667255, 36.957939, 22.620731>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.401302, 37.152473, 22.847502> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038697, -0.735545, 0.676369,
		0.745945, 0.471644, 0.470231,
		-0.664882, 0.486338, 0.566927,
		36.201839, 37.298374, 23.017580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.954071, 36.941425, 23.361662>,  <36.667255, 36.957939, 22.620731>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.954071, 36.941425, 23.361662> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.569656, 37.037670, 23.416101>,  <36.339008, 37.095417, 23.448765>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.569656, 37.037670, 23.416101>,  <36.954071, 36.941425, 23.361662>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.569656, 37.037670, 23.416101> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015844, -0.539468, 0.841857,
		0.275982, 0.806896, 0.522258,
		-0.961032, 0.240612, 0.136099,
		36.281345, 37.109856, 23.456930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.968632, 37.244339, 24.065954>,  <36.954071, 36.941425, 23.361662>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.968632, 37.244339, 24.065954> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.602489, 37.115387, 23.969458>,  <36.382805, 37.038017, 23.911560>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.602489, 37.115387, 23.969458>,  <36.968632, 37.244339, 24.065954>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.602489, 37.115387, 23.969458> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147505, -0.289013, 0.945893,
		-0.374657, 0.901412, 0.216997,
		-0.915355, -0.322378, -0.241243,
		36.327885, 37.018673, 23.897085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.468494, 37.478645, 24.545891>,  <36.968632, 37.244339, 24.065954>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.468494, 37.478645, 24.545891> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.300335, 37.141926, 24.410461>,  <36.199440, 36.939892, 24.329205>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.300335, 37.141926, 24.410461>,  <36.468494, 37.478645, 24.545891>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.300335, 37.141926, 24.410461> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178518, -0.289116, 0.940502,
		-0.889603, 0.455829, -0.028732,
		-0.420401, -0.841803, -0.338572,
		36.174213, 36.889385, 24.308889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.875404, 37.419052, 25.009800>,  <36.468494, 37.478645, 24.545891>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.875404, 37.419052, 25.009800> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.904285, 37.055145, 24.846281>,  <35.921616, 36.836803, 24.748169>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.904285, 37.055145, 24.846281>,  <35.875404, 37.419052, 25.009800>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.904285, 37.055145, 24.846281> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089488, -0.414124, 0.905811,
		-0.993367, -0.028819, -0.111314,
		0.072203, -0.909764, -0.408798,
		35.925945, 36.782215, 24.723642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.518478, 37.067352, 25.466862>,  <35.875404, 37.419052, 25.009800>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.518478, 37.067352, 25.466862> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.746952, 36.794212, 25.284668>,  <35.884037, 36.630329, 25.175352>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.746952, 36.794212, 25.284668>,  <35.518478, 37.067352, 25.466862>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.746952, 36.794212, 25.284668> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163493, -0.449150, 0.878370,
		-0.804375, -0.576180, -0.144906,
		0.571184, -0.682848, -0.455486,
		35.918308, 36.589359, 25.148022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.247189, 36.524570, 25.703308>,  <35.518478, 37.067352, 25.466862>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.247189, 36.524570, 25.703308> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.609501, 36.403973, 25.584202>,  <35.826889, 36.331615, 25.512737>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.609501, 36.403973, 25.584202>,  <35.247189, 36.524570, 25.703308>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.609501, 36.403973, 25.584202> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048945, -0.623556, 0.780245,
		-0.420911, -0.721305, -0.550048,
		0.905781, -0.301492, -0.297766,
		35.881233, 36.313526, 25.494871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.504749, 36.290245, 25.719440>,  <35.247189, 36.524570, 25.703308>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.504749, 36.290245, 25.719440> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.408016, 36.595795, 25.958778>,  <34.349976, 36.779125, 26.102381>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.408016, 36.595795, 25.958778>,  <34.504749, 36.290245, 25.719440>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.408016, 36.595795, 25.958778> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007352, 0.618073, -0.786087,
		-0.970289, -0.185705, -0.155088,
		-0.241836, 0.763872, 0.598344,
		34.335464, 36.824955, 26.138281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.885296, 36.600636, 25.433817>,  <34.504749, 36.290245, 25.719440>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.885296, 36.600636, 25.433817> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.073463, 36.870304, 25.661572>,  <34.186363, 37.032104, 25.798225>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.073463, 36.870304, 25.661572>,  <33.885296, 36.600636, 25.433817>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.073463, 36.870304, 25.661572> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044848, 0.662672, -0.747565,
		-0.881301, 0.326135, 0.341971,
		0.470422, 0.674167, 0.569387,
		34.214592, 37.072556, 25.832388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.528217, 37.156929, 25.398075>,  <33.885296, 36.600636, 25.433817>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.528217, 37.156929, 25.398075> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.873833, 37.302319, 25.537399>,  <34.081203, 37.389553, 25.620995>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.873833, 37.302319, 25.537399>,  <33.528217, 37.156929, 25.398075>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.873833, 37.302319, 25.537399> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081040, 0.783283, -0.616360,
		-0.496860, 0.504332, 0.706243,
		0.864039, 0.363478, 0.348311,
		34.133045, 37.411362, 25.641893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.423252, 37.838223, 25.559702>,  <33.528217, 37.156929, 25.398075>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.423252, 37.838223, 25.559702> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.818027, 37.797344, 25.509903>,  <34.054893, 37.772816, 25.480022>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.818027, 37.797344, 25.509903>,  <33.423252, 37.838223, 25.559702>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.818027, 37.797344, 25.509903> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004644, 0.790678, -0.612215,
		0.161003, 0.603643, 0.780829,
		0.986943, -0.102195, -0.124499,
		34.114109, 37.766685, 25.472553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.717461, 38.505314, 25.694933>,  <33.423252, 37.838223, 25.559702>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.717461, 38.505314, 25.694933> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.990822, 38.313915, 25.474386>,  <34.154839, 38.199078, 25.342058>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.990822, 38.313915, 25.474386>,  <33.717461, 38.505314, 25.694933>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.990822, 38.313915, 25.474386> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067618, 0.793493, -0.604811,
		0.726906, 0.376045, 0.574628,
		0.683400, -0.478496, -0.551368,
		34.195843, 38.170368, 25.308975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.976349, 39.071144, 25.390774>,  <33.717461, 38.505314, 25.694933>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.976349, 39.071144, 25.390774> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.139538, 38.786701, 25.161730>,  <34.237450, 38.616035, 25.024303>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.139538, 38.786701, 25.161730>,  <33.976349, 39.071144, 25.390774>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.139538, 38.786701, 25.161730> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022516, 0.634825, -0.772328,
		0.912718, 0.302193, 0.275001,
		0.407970, -0.711110, -0.572612,
		34.261929, 38.573368, 24.989946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.542332, 39.327499, 25.104158>,  <33.976349, 39.071144, 25.390774>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.542332, 39.327499, 25.104158> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.437840, 39.028206, 24.860222>,  <34.375145, 38.848629, 24.713860>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.437840, 39.028206, 24.860222>,  <34.542332, 39.327499, 25.104158>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.437840, 39.028206, 24.860222> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227858, 0.566125, -0.792201,
		0.937998, -0.345903, 0.022603,
		-0.261228, -0.748234, -0.609841,
		34.359470, 38.803738, 24.677269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.195938, 39.732174, 25.229713>,  <34.542332, 39.327499, 25.104158>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.195938, 39.732174, 25.229713> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.976864, 40.034393, 25.373484>,  <34.845417, 40.215725, 25.459745>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.976864, 40.034393, 25.373484>,  <35.195938, 39.732174, 25.229713>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.976864, 40.034393, 25.373484> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153401, -0.512983, 0.844581,
		0.822499, 0.407431, 0.396857,
		-0.547689, 0.755545, 0.359428,
		34.812557, 40.261055, 25.481312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.356873, 39.851276, 25.901531>,  <35.195938, 39.732174, 25.229713>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.356873, 39.851276, 25.901531> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.989719, 40.007755, 25.874825>,  <34.769428, 40.101643, 25.858801>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.989719, 40.007755, 25.874825>,  <35.356873, 39.851276, 25.901531>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.989719, 40.007755, 25.874825> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221592, -0.365643, 0.903992,
		0.329226, 0.844553, 0.422303,
		-0.917882, 0.391197, -0.066767,
		34.714355, 40.125114, 25.854794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.269524, 40.293129, 26.499485>,  <35.356873, 39.851276, 25.901531>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.269524, 40.293129, 26.499485> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.898643, 40.207062, 26.376850>,  <34.676113, 40.155422, 26.303268>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.898643, 40.207062, 26.376850>,  <35.269524, 40.293129, 26.499485>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.898643, 40.207062, 26.376850> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264830, -0.202229, 0.942851,
		-0.264875, 0.955408, 0.130524,
		-0.927203, -0.215171, -0.306586,
		34.620483, 40.142509, 26.284874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.885437, 40.736172, 26.873152>,  <35.269524, 40.293129, 26.499485>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.885437, 40.736172, 26.873152> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.632923, 40.446041, 26.763323>,  <34.481415, 40.271965, 26.697426>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.632923, 40.446041, 26.763323>,  <34.885437, 40.736172, 26.873152>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.632923, 40.446041, 26.763323> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317988, -0.080834, 0.944642,
		-0.707365, 0.683648, -0.179614,
		-0.631284, -0.725322, -0.274571,
		34.443539, 40.228443, 26.680952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.248615, 40.786720, 27.277729>,  <34.885437, 40.736172, 26.873152>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.248615, 40.786720, 27.277729> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.233582, 40.406574, 27.154184>,  <34.224560, 40.178486, 27.080057>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.233582, 40.406574, 27.154184>,  <34.248615, 40.786720, 27.277729>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.233582, 40.406574, 27.154184> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300319, -0.284051, 0.910562,
		-0.953098, 0.126981, -0.274736,
		-0.037585, -0.950364, -0.308863,
		34.222305, 40.121464, 27.061525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.691715, 40.442078, 27.530972>,  <34.248615, 40.786720, 27.277729>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.691715, 40.442078, 27.530972> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.899574, 40.121204, 27.413349>,  <34.024292, 39.928680, 27.342775>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.899574, 40.121204, 27.413349>,  <33.691715, 40.442078, 27.530972>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.899574, 40.121204, 27.413349> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359393, -0.517477, 0.776566,
		-0.775113, -0.297861, -0.557206,
		0.519650, -0.802182, -0.294054,
		34.055470, 39.880550, 27.325132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.221443, 39.813835, 27.612427>,  <33.691715, 40.442078, 27.530972>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.221443, 39.813835, 27.612427> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.593227, 39.667011, 27.627245>,  <33.816299, 39.578918, 27.636135>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.593227, 39.667011, 27.627245>,  <33.221443, 39.813835, 27.612427>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.593227, 39.667011, 27.627245> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206726, -0.435022, 0.876368,
		-0.305559, -0.822208, -0.480216,
		0.929461, -0.367055, 0.037047,
		33.872066, 39.556892, 27.638359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<38.394142, 42.310555, 24.208450> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.430294, 41.922836, 24.116972>,  <38.451984, 41.690205, 24.062084>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.430294, 41.922836, 24.116972>,  <38.394142, 42.310555, 24.208450>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.430294, 41.922836, 24.116972> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220814, -0.243424, 0.944450,
		-0.971119, -0.034859, -0.236034,
		0.090379, -0.969293, -0.228697,
		38.457409, 41.632050, 24.048363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.719162, 42.011520, 24.275066>,  <38.394142, 42.310555, 24.208450>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.719162, 42.011520, 24.275066> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.001900, 41.737831, 24.346861>,  <38.171543, 41.573616, 24.389938>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.001900, 41.737831, 24.346861>,  <37.719162, 42.011520, 24.275066>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.001900, 41.737831, 24.346861> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415946, -0.196795, 0.887840,
		-0.572157, -0.702219, -0.423703,
		0.706841, -0.684222, 0.179488,
		38.213951, 41.532566, 24.400707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.392296, 41.429276, 24.437588>,  <37.719162, 42.011520, 24.275066>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.392296, 41.429276, 24.437588> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.758636, 41.359280, 24.582138>,  <37.978439, 41.317284, 24.668869>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.758636, 41.359280, 24.582138>,  <37.392296, 41.429276, 24.437588>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.758636, 41.359280, 24.582138> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401337, -0.372193, 0.836900,
		-0.011944, -0.911511, -0.411103,
		0.915853, -0.174987, 0.361378,
		38.033394, 41.306782, 24.690552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.349106, 40.803764, 24.848995>,  <37.392296, 41.429276, 24.437588>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.349106, 40.803764, 24.848995> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.695530, 40.958317, 24.975901>,  <37.903385, 41.051048, 25.052044>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.695530, 40.958317, 24.975901>,  <37.349106, 40.803764, 24.848995>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.695530, 40.958317, 24.975901> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183791, -0.344102, 0.920768,
		0.464939, -0.855747, -0.226998,
		0.866055, 0.386381, 0.317265,
		37.955345, 41.074230, 25.071081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.730038, 40.265762, 25.285978>,  <37.349106, 40.803764, 24.848995>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.730038, 40.265762, 25.285978> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.905449, 40.606342, 25.401026>,  <38.010696, 40.810692, 25.470055>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.905449, 40.606342, 25.401026>,  <37.730038, 40.265762, 25.285978>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.905449, 40.606342, 25.401026> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084454, -0.279573, 0.956403,
		0.894740, -0.443701, -0.050692,
		0.438529, 0.851450, 0.287618,
		38.037006, 40.861778, 25.487310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.220287, 40.079559, 25.689384>,  <37.730038, 40.265762, 25.285978>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.220287, 40.079559, 25.689384> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.141346, 40.459259, 25.787350>,  <38.093979, 40.687077, 25.846128>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.141346, 40.459259, 25.787350>,  <38.220287, 40.079559, 25.689384>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.141346, 40.459259, 25.787350> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166995, -0.213623, 0.962537,
		0.966003, 0.230863, -0.116359,
		-0.197358, 0.949246, 0.244913,
		38.082138, 40.744034, 25.860825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.780724, 40.255646, 26.024748>,  <38.220287, 40.079559, 25.689384>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.780724, 40.255646, 26.024748> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.493969, 40.515312, 26.126459>,  <38.321918, 40.671112, 26.187487>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.493969, 40.515312, 26.126459>,  <38.780724, 40.255646, 26.024748>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.493969, 40.515312, 26.126459> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262133, -0.086986, 0.961103,
		0.646036, 0.755655, -0.107809,
		-0.716885, 0.649168, 0.254279,
		38.278904, 40.710064, 26.202744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.081821, 40.677273, 26.508774>,  <38.780724, 40.255646, 26.024748>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.081821, 40.677273, 26.508774> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.691277, 40.724030, 26.581491>,  <38.456947, 40.752083, 26.625122>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.691277, 40.724030, 26.581491>,  <39.081821, 40.677273, 26.508774>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.691277, 40.724030, 26.581491> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170790, -0.098184, 0.980403,
		0.132454, 0.988279, 0.075899,
		-0.976364, 0.116895, 0.181793,
		38.398369, 40.759098, 26.636030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.054459, 41.255329, 26.945221>,  <39.081821, 40.677273, 26.508774>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.054459, 41.255329, 26.945221> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.708946, 41.060642, 26.997364>,  <38.501640, 40.943829, 27.028650>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.708946, 41.060642, 26.997364>,  <39.054459, 41.255329, 26.945221>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.708946, 41.060642, 26.997364> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040341, 0.191080, 0.980745,
		-0.502253, 0.852406, -0.145417,
		-0.863779, -0.486716, 0.130357,
		38.449814, 40.914627, 27.036470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.467331, 41.715595, 27.302759>,  <39.054459, 41.255329, 26.945221>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.467331, 41.715595, 27.302759> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.380398, 41.333092, 27.381075>,  <38.328239, 41.103588, 27.428064>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.380398, 41.333092, 27.381075>,  <38.467331, 41.715595, 27.302759>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.380398, 41.333092, 27.381075> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028005, 0.194392, 0.980524,
		-0.975696, 0.218580, -0.015467,
		-0.217330, -0.956261, 0.195789,
		38.315201, 41.046215, 27.439812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.983047, 41.731976, 27.841402>,  <38.467331, 41.715595, 27.302759>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.983047, 41.731976, 27.841402> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.076946, 41.343155, 27.843147>,  <38.133286, 41.109863, 27.844194>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.076946, 41.343155, 27.843147>,  <37.983047, 41.731976, 27.841402>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.076946, 41.343155, 27.843147> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291240, -0.066047, 0.954367,
		-0.927402, -0.225302, -0.298604,
		0.234743, -0.972048, 0.004364,
		38.147369, 41.051540, 27.844456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.420769, 41.291920, 27.955847>,  <37.983047, 41.731976, 27.841402>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.420769, 41.291920, 27.955847> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.736290, 41.093697, 28.101292>,  <37.925602, 40.974762, 28.188559>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.736290, 41.093697, 28.101292>,  <37.420769, 41.291920, 27.955847>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.736290, 41.093697, 28.101292> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411596, 0.013478, 0.911267,
		-0.456485, -0.868471, -0.193338,
		0.788803, -0.495557, 0.363611,
		37.972931, 40.945030, 28.210375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.682236, 41.455475, 28.069597>,  <37.420769, 41.291920, 27.955847>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.682236, 41.455475, 28.069597> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.386089, 41.672318, 28.228588>,  <36.208401, 41.802422, 28.323982>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.386089, 41.672318, 28.228588>,  <36.682236, 41.455475, 28.069597>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.386089, 41.672318, 28.228588> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033578, 0.560736, -0.827314,
		-0.671370, -0.625858, -0.396944,
		-0.740361, 0.542105, 0.397476,
		36.163982, 41.834949, 28.347832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.065666, 41.442646, 27.608263>,  <36.682236, 41.455475, 28.069597>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.065666, 41.442646, 27.608263> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.083984, 41.777622, 27.826105>,  <36.094975, 41.978607, 27.956810>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.083984, 41.777622, 27.826105>,  <36.065666, 41.442646, 27.608263>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.083984, 41.777622, 27.826105> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088000, 0.539675, -0.837262,
		-0.995067, 0.086271, -0.048978,
		0.045800, 0.837442, 0.544604,
		36.097725, 42.028854, 27.989487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.642315, 41.890022, 27.290886>,  <36.065666, 41.442646, 27.608263>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.642315, 41.890022, 27.290886> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.848488, 42.139908, 27.525515>,  <35.972191, 42.289837, 27.666292>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.848488, 42.139908, 27.525515>,  <35.642315, 41.890022, 27.290886>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.848488, 42.139908, 27.525515> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035915, 0.668152, -0.743158,
		-0.856177, 0.404115, 0.321951,
		0.515433, 0.624712, 0.586570,
		36.003117, 42.327320, 27.701485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.453869, 42.530094, 27.170298>,  <35.642315, 41.890022, 27.290886>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.453869, 42.530094, 27.170298> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.814930, 42.605801, 27.324902>,  <36.031567, 42.651226, 27.417664>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.814930, 42.605801, 27.324902>,  <35.453869, 42.530094, 27.170298>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.814930, 42.605801, 27.324902> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222632, 0.563239, -0.795737,
		-0.368304, 0.804326, 0.466274,
		0.902656, 0.189265, 0.386512,
		36.085728, 42.662579, 27.440855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.468895, 43.237202, 27.135324>,  <35.453869, 42.530094, 27.170298>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.468895, 43.237202, 27.135324> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.851753, 43.125519, 27.166094>,  <36.081467, 43.058510, 27.184555>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.851753, 43.125519, 27.166094>,  <35.468895, 43.237202, 27.135324>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.851753, 43.125519, 27.166094> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250895, 0.666752, -0.701779,
		0.144652, 0.691004, 0.708230,
		0.957145, -0.279205, 0.076923,
		36.138897, 43.041756, 27.189171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.902504, 43.884586, 27.143002>,  <35.468895, 43.237202, 27.135324>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.902504, 43.884586, 27.143002> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.137424, 43.578144, 27.038570>,  <36.278378, 43.394279, 26.975912>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.137424, 43.578144, 27.038570>,  <35.902504, 43.884586, 27.143002>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.137424, 43.578144, 27.038570> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403097, 0.556581, -0.726451,
		0.701848, 0.321406, 0.635695,
		0.587301, -0.766105, -0.261077,
		36.313614, 43.348312, 26.960247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.452137, 44.316257, 26.911766>,  <35.902504, 43.884586, 27.143002>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.452137, 44.316257, 26.911766> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.511147, 43.946041, 26.772272>,  <36.546555, 43.723911, 26.688576>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.511147, 43.946041, 26.772272>,  <36.452137, 44.316257, 26.911766>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.511147, 43.946041, 26.772272> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515219, 0.372889, -0.771689,
		0.844266, -0.065828, 0.531866,
		0.147528, -0.925538, -0.348733,
		36.555405, 43.668381, 26.667652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.193531, 44.329403, 26.786547>,  <36.452137, 44.316257, 26.911766>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.193531, 44.329403, 26.786547> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.034973, 44.029816, 26.574163>,  <36.939838, 43.850063, 26.446733>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.034973, 44.029816, 26.574163>,  <37.193531, 44.329403, 26.786547>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.034973, 44.029816, 26.574163> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424590, 0.363214, -0.829336,
		0.813998, -0.554186, 0.174028,
		-0.396397, -0.748968, -0.530958,
		36.916054, 43.805126, 26.414877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.767086, 44.205700, 26.195734>,  <37.193531, 44.329403, 26.786547>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.767086, 44.205700, 26.195734> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.451645, 43.994457, 26.069744>,  <37.262383, 43.867710, 25.994150>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.451645, 43.994457, 26.069744>,  <37.767086, 44.205700, 26.195734>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.451645, 43.994457, 26.069744> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264409, 0.171227, -0.949089,
		0.555154, -0.831735, 0.004607,
		-0.788601, -0.528109, -0.314975,
		37.215065, 43.836025, 25.975252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.975849, 43.699055, 25.659105>,  <37.767086, 44.205700, 26.195734>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.975849, 43.699055, 25.659105> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.601566, 43.824234, 25.593971>,  <37.376995, 43.899342, 25.554890>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.601566, 43.824234, 25.593971>,  <37.975849, 43.699055, 25.659105>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.601566, 43.824234, 25.593971> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212144, 0.130360, -0.968505,
		-0.281862, -0.940782, -0.188369,
		-0.935708, 0.312946, -0.162838,
		37.320854, 43.918118, 25.545120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.935364, 43.506794, 25.015003>,  <37.975849, 43.699055, 25.659105>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.935364, 43.506794, 25.015003> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.607571, 43.728539, 25.073143>,  <37.410892, 43.861584, 25.108027>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.607571, 43.728539, 25.073143>,  <37.935364, 43.506794, 25.015003>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.607571, 43.728539, 25.073143> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080752, 0.139400, -0.986938,
		-0.567383, -0.820519, -0.069471,
		-0.819486, 0.554362, 0.145351,
		37.361725, 43.894848, 25.116749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.392559, 43.314636, 24.461056>,  <37.935364, 43.506794, 25.015003>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.392559, 43.314636, 24.461056> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.291668, 43.685680, 24.571270>,  <37.231133, 43.908306, 24.637398>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.291668, 43.685680, 24.571270>,  <37.392559, 43.314636, 24.461056>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.291668, 43.685680, 24.571270> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177780, 0.235474, -0.955482,
		-0.951196, -0.289985, 0.105517,
		-0.252229, 0.927610, 0.275535,
		37.216000, 43.963963, 24.653931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.656277, 43.484180, 24.149837>,  <37.392559, 43.314636, 24.461056>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.656277, 43.484180, 24.149837> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.901730, 43.793682, 24.212786>,  <37.049000, 43.979382, 24.250555>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.901730, 43.793682, 24.212786>,  <36.656277, 43.484180, 24.149837>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.901730, 43.793682, 24.212786> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066415, 0.249178, -0.966178,
		-0.786794, 0.582426, 0.204292,
		0.613632, 0.773751, 0.157370,
		37.085819, 44.025806, 24.259996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.941704, 43.221882, 24.421188>,  <36.656277, 43.484180, 24.149837>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.941704, 43.221882, 24.421188> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.626278, 43.111809, 24.201212>,  <35.437023, 43.045765, 24.069227>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.626278, 43.111809, 24.201212>,  <35.941704, 43.221882, 24.421188>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.626278, 43.111809, 24.201212> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156674, -0.774873, 0.612393,
		-0.594653, 0.569075, 0.567927,
		-0.788569, -0.275182, -0.549940,
		35.389706, 43.029255, 24.036230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.456429, 42.913948, 24.929945>,  <35.941704, 43.221882, 24.421188>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.456429, 42.913948, 24.929945> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.357136, 42.774609, 24.568384>,  <35.297562, 42.691006, 24.351448>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.357136, 42.774609, 24.568384>,  <35.456429, 42.913948, 24.929945>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.357136, 42.774609, 24.568384> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165193, -0.904216, 0.393834,
		-0.954512, 0.247079, 0.166909,
		-0.248230, -0.348347, -0.903901,
		35.282665, 42.670105, 24.297215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.804482, 42.550373, 25.051592>,  <35.456429, 42.913948, 24.929945>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.804482, 42.550373, 25.051592> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.941254, 42.406086, 24.704496>,  <35.023315, 42.319515, 24.496239>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.941254, 42.406086, 24.704496>,  <34.804482, 42.550373, 25.051592>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.941254, 42.406086, 24.704496> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219235, -0.928534, 0.299602,
		-0.913795, 0.087797, -0.396572,
		0.341927, -0.360717, -0.867738,
		35.043831, 42.297871, 24.444176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.300381, 42.248764, 24.791380>,  <34.804482, 42.550373, 25.051592>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.300381, 42.248764, 24.791380> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.598354, 42.072708, 24.590843>,  <34.777138, 41.967075, 24.470520>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.598354, 42.072708, 24.590843>,  <34.300381, 42.248764, 24.791380>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.598354, 42.072708, 24.590843> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407848, -0.895157, 0.179869,
		-0.527949, 0.070481, -0.846346,
		0.744936, -0.440142, -0.501343,
		34.821835, 41.940666, 24.440441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.058449, 41.729122, 24.365345>,  <34.300381, 42.248764, 24.791380>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.058449, 41.729122, 24.365345> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.429333, 41.615852, 24.463396>,  <34.651863, 41.547890, 24.522226>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.429333, 41.615852, 24.463396>,  <34.058449, 41.729122, 24.365345>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.429333, 41.615852, 24.463396> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335209, -0.919374, 0.205880,
		0.167066, -0.273064, -0.947378,
		0.927213, -0.283174, 0.245130,
		34.707497, 41.530899, 24.536936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.046215, 41.056217, 24.217323>,  <34.058449, 41.729122, 24.365345>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.046215, 41.056217, 24.217323> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.388157, 41.093632, 24.421471>,  <34.593323, 41.116081, 24.543959>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.388157, 41.093632, 24.421471>,  <34.046215, 41.056217, 24.217323>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.388157, 41.093632, 24.421471> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186693, -0.862289, 0.470748,
		0.484117, -0.497703, -0.719668,
		0.854855, 0.093540, 0.510367,
		34.644611, 41.121693, 24.574581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.305279, 40.322491, 24.341501>,  <34.046215, 41.056217, 24.217323>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.305279, 40.322491, 24.341501> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.492577, 40.563293, 24.600218>,  <34.604954, 40.707775, 24.755447>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.492577, 40.563293, 24.600218>,  <34.305279, 40.322491, 24.341501>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.492577, 40.563293, 24.600218> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026881, -0.721949, 0.691424,
		0.883192, -0.341140, -0.321863,
		0.468241, 0.602008, 0.646789,
		34.633049, 40.743896, 24.794254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.722069, 39.955006, 24.686106>,  <34.305279, 40.322491, 24.341501>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.722069, 39.955006, 24.686106> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.711098, 40.272419, 24.929270>,  <34.704514, 40.462868, 25.075169>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.711098, 40.272419, 24.929270>,  <34.722069, 39.955006, 24.686106>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.711098, 40.272419, 24.929270> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074378, -0.604833, 0.792871,
		0.996853, 0.066965, -0.042429,
		-0.027432, 0.793532, 0.607910,
		34.702869, 40.510479, 25.111643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.070988, 39.312889, 24.619383>,  <34.722069, 39.955006, 24.686106>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.070988, 39.312889, 24.619383> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.774620, 39.099289, 24.456470>,  <34.596798, 38.971127, 24.358723>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.774620, 39.099289, 24.456470>,  <35.070988, 39.312889, 24.619383>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.774620, 39.099289, 24.456470> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189326, 0.415765, -0.889548,
		0.644355, -0.736192, -0.206948,
		-0.740920, -0.534004, -0.407280,
		34.552345, 38.939087, 24.334286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.342098, 39.072102, 24.051704>,  <35.070988, 39.312889, 24.619383>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.342098, 39.072102, 24.051704> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.946583, 39.047306, 23.997362>,  <34.709274, 39.032429, 23.964758>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.946583, 39.047306, 23.997362>,  <35.342098, 39.072102, 24.051704>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.946583, 39.047306, 23.997362> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111890, 0.294928, -0.948946,
		0.098889, -0.953507, -0.284686,
		-0.988788, -0.061987, -0.135853,
		34.649948, 39.028709, 23.956606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.203869, 38.722767, 23.454632>,  <35.342098, 39.072102, 24.051704>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.203869, 38.722767, 23.454632> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.860607, 38.920738, 23.509212>,  <34.654652, 39.039520, 23.541962>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.860607, 38.920738, 23.509212>,  <35.203869, 38.722767, 23.454632>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.860607, 38.920738, 23.509212> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050381, 0.345687, -0.936996,
		-0.510921, -0.797209, -0.321587,
		-0.858150, 0.494933, 0.136454,
		34.603161, 39.069218, 23.550148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.817169, 38.560497, 22.977558>,  <35.203869, 38.722767, 23.454632>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.817169, 38.560497, 22.977558> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.715263, 38.932007, 23.085245>,  <34.654121, 39.154911, 23.149857>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.715263, 38.932007, 23.085245>,  <34.817169, 38.560497, 22.977558>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.715263, 38.932007, 23.085245> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001742, 0.278844, -0.960335,
		-0.967002, -0.244189, -0.072657,
		-0.254763, 0.928772, 0.269217,
		34.638836, 39.210640, 23.166010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.475346, 38.775784, 22.402536>,  <34.817169, 38.560497, 22.977558>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.475346, 38.775784, 22.402536> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.479450, 39.125057, 22.597448>,  <34.481911, 39.334621, 22.714396>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.479450, 39.125057, 22.597448>,  <34.475346, 38.775784, 22.402536>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.479450, 39.125057, 22.597448> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191089, 0.480038, -0.856183,
		-0.981519, -0.084331, 0.171780,
		0.010258, 0.873185, 0.487281,
		34.482529, 39.387012, 22.743633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.924149, 39.125072, 22.240522>,  <34.475346, 38.775784, 22.402536>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.924149, 39.125072, 22.240522> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.149780, 39.422848, 22.383421>,  <34.285160, 39.601513, 22.469160>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.149780, 39.422848, 22.383421>,  <33.924149, 39.125072, 22.240522>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.149780, 39.422848, 22.383421> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169259, 0.527702, -0.832396,
		-0.808189, 0.409068, 0.423667,
		0.564076, 0.744442, 0.357245,
		34.319004, 39.646179, 22.490595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.537758, 39.876926, 22.243301>,  <33.924149, 39.125072, 22.240522>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.537758, 39.876926, 22.243301> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.934696, 39.926197, 22.247026>,  <34.172859, 39.955757, 22.249262>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.934696, 39.926197, 22.247026>,  <33.537758, 39.876926, 22.243301>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.934696, 39.926197, 22.247026> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061695, 0.559534, -0.826508,
		-0.107014, 0.819603, 0.562848,
		0.992341, 0.123173, 0.009313,
		34.232399, 39.963150, 22.249821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.667660, 40.654903, 22.106234>,  <33.537758, 39.876926, 22.243301>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.667660, 40.654903, 22.106234> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.013161, 40.476337, 22.012732>,  <34.220463, 40.369198, 21.956631>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.013161, 40.476337, 22.012732>,  <33.667660, 40.654903, 22.106234>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.013161, 40.476337, 22.012732> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118684, 0.631050, -0.766610,
		0.489738, 0.634419, 0.598054,
		0.863754, -0.446417, -0.233753,
		34.272285, 40.342411, 21.942606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.063839, 41.168797, 22.145792>,  <33.667660, 40.654903, 22.106234>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.063839, 41.168797, 22.145792> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.216091, 40.890583, 21.902039>,  <34.307442, 40.723656, 21.755787>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.216091, 40.890583, 21.902039>,  <34.063839, 41.168797, 22.145792>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.216091, 40.890583, 21.902039> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088818, 0.628445, -0.772767,
		0.920450, 0.348267, 0.177432,
		0.380635, -0.695534, -0.609384,
		34.330280, 40.681923, 21.719223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<34.835892, 31.838112, 35.029541> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.526917, 31.727774, 34.800716>,  <34.341534, 31.661570, 34.663422>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.526917, 31.727774, 34.800716>,  <34.835892, 31.838112, 35.029541>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.526917, 31.727774, 34.800716> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181024, -0.959013, 0.218003,
		-0.608747, 0.064837, 0.790711,
		-0.772436, -0.275846, -0.572059,
		34.295185, 31.645020, 34.629097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.582386, 32.092133, 34.367886>,  <34.835892, 31.838112, 35.029541>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.582386, 32.092133, 34.367886> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.891891, 31.841038, 34.333855>,  <35.077595, 31.690380, 34.313438>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.891891, 31.841038, 34.333855>,  <34.582386, 32.092133, 34.367886>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.891891, 31.841038, 34.333855> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315195, 0.497998, -0.807867,
		0.549498, 0.598281, 0.583192,
		0.773760, -0.627740, -0.085074,
		35.124020, 31.652716, 34.308334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.268913, 32.361713, 34.349918>,  <34.582386, 32.092133, 34.367886>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.268913, 32.361713, 34.349918> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.284321, 32.019276, 34.143768>,  <35.293564, 31.813812, 34.020077>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.284321, 32.019276, 34.143768>,  <35.268913, 32.361713, 34.349918>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.284321, 32.019276, 34.143768> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132799, 0.515571, -0.846493,
		0.990394, -0.035835, 0.133549,
		0.038519, -0.856097, -0.515378,
		35.295876, 31.762447, 33.989155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.787804, 32.504688, 33.961578>,  <35.268913, 32.361713, 34.349918>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.787804, 32.504688, 33.961578> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.581474, 32.212322, 33.782833>,  <35.457676, 32.036903, 33.675587>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.581474, 32.212322, 33.782833>,  <35.787804, 32.504688, 33.961578>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.581474, 32.212322, 33.782833> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131671, 0.447774, -0.884398,
		0.846516, -0.515032, -0.134731,
		-0.515822, -0.730917, -0.446863,
		35.426727, 31.993048, 33.648773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.075489, 32.384033, 33.344818>,  <35.787804, 32.504688, 33.961578>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.075489, 32.384033, 33.344818> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.718990, 32.211922, 33.287487>,  <35.505093, 32.108654, 33.253090>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.718990, 32.211922, 33.287487>,  <36.075489, 32.384033, 33.344818>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.718990, 32.211922, 33.287487> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037403, 0.384691, -0.922287,
		0.451975, -0.816624, -0.358948,
		-0.891246, -0.430277, -0.143327,
		35.451614, 32.082840, 33.244488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.094482, 32.222965, 32.678787>,  <36.075489, 32.384033, 33.344818>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.094482, 32.222965, 32.678787> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.704609, 32.233253, 32.767624>,  <35.470684, 32.239426, 32.820927>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.704609, 32.233253, 32.767624>,  <36.094482, 32.222965, 32.678787>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.704609, 32.233253, 32.767624> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199187, 0.351258, -0.914845,
		-0.101546, -0.935925, -0.337242,
		-0.974687, 0.025724, 0.222093,
		35.412205, 32.240971, 32.834251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.712585, 32.002598, 32.051617>,  <36.094482, 32.222965, 32.678787>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.712585, 32.002598, 32.051617> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.441681, 32.193623, 32.275494>,  <35.279137, 32.308239, 32.409821>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.441681, 32.193623, 32.275494>,  <35.712585, 32.002598, 32.051617>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.441681, 32.193623, 32.275494> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490039, 0.274628, -0.827310,
		-0.548800, -0.834573, 0.048031,
		-0.677260, 0.477565, 0.559689,
		35.238503, 32.336891, 32.443401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.040199, 31.910982, 31.790792>,  <35.712585, 32.002598, 32.051617>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.040199, 31.910982, 31.790792> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.001606, 32.246922, 32.004463>,  <34.978451, 32.448486, 32.132668>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.001606, 32.246922, 32.004463>,  <35.040199, 31.910982, 31.790792>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.001606, 32.246922, 32.004463> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487871, 0.427885, -0.760852,
		-0.867567, -0.334022, 0.368452,
		-0.096487, 0.839847, 0.534179,
		34.972660, 32.498875, 32.164719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.522930, 32.172665, 31.482000>,  <35.040199, 31.910982, 31.790792>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.522930, 32.172665, 31.482000> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.667843, 32.484261, 31.686716>,  <34.754791, 32.671219, 31.809546>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.667843, 32.484261, 31.686716>,  <34.522930, 32.172665, 31.482000>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.667843, 32.484261, 31.686716> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531379, 0.623737, -0.573226,
		-0.765758, -0.064282, 0.639908,
		0.362287, 0.778986, 0.511790,
		34.776527, 32.717957, 31.840254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.883774, 32.536324, 31.714943>,  <34.522930, 32.172665, 31.482000>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.883774, 32.536324, 31.714943> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.200836, 32.780159, 31.711124>,  <34.391075, 32.926460, 31.708834>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.200836, 32.780159, 31.711124>,  <33.883774, 32.536324, 31.714943>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.200836, 32.780159, 31.711124> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515189, 0.661371, -0.545132,
		-0.325993, 0.437023, 0.838296,
		0.792660, 0.609590, -0.009547,
		34.438633, 32.963036, 31.708260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.594067, 33.160358, 31.690067>,  <33.883774, 32.536324, 31.714943>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.594067, 33.160358, 31.690067> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.972256, 33.229031, 31.579350>,  <34.199169, 33.270233, 31.512918>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.972256, 33.229031, 31.579350>,  <33.594067, 33.160358, 31.690067>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.972256, 33.229031, 31.579350> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277639, 0.869137, -0.409288,
		0.170306, 0.463818, 0.869407,
		0.945469, 0.171677, -0.276793,
		34.255898, 33.280533, 31.496311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.784615, 33.870693, 31.900408>,  <33.594067, 33.160358, 31.690067>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.784615, 33.870693, 31.900408> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.015621, 33.751102, 31.596542>,  <34.154224, 33.679348, 31.414223>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.015621, 33.751102, 31.596542>,  <33.784615, 33.870693, 31.900408>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.015621, 33.751102, 31.596542> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226188, 0.835501, -0.500777,
		0.784418, 0.461034, 0.414892,
		0.577518, -0.298975, -0.759663,
		34.188877, 33.661411, 31.368643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.783401, 34.440777, 32.458515>,  <33.784615, 33.870693, 31.900408>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.783401, 34.440777, 32.458515> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.045349, 34.689140, 32.630848>,  <34.202518, 34.838158, 32.734249>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.045349, 34.689140, 32.630848>,  <33.783401, 34.440777, 32.458515>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.045349, 34.689140, 32.630848> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442096, -0.147619, 0.884737,
		0.612937, -0.769861, 0.177828,
		0.654873, 0.620906, 0.430834,
		34.241810, 34.875412, 32.760098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.132732, 34.227528, 33.106388>,  <33.783401, 34.440777, 32.458515>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.132732, 34.227528, 33.106388> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.174305, 34.624031, 33.138885>,  <34.199249, 34.861935, 33.158382>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.174305, 34.624031, 33.138885>,  <34.132732, 34.227528, 33.106388>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.174305, 34.624031, 33.138885> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296527, -0.047089, 0.953863,
		0.949352, -0.123230, 0.289042,
		0.103934, 0.991260, 0.081245,
		34.205486, 34.921410, 33.163258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.530712, 34.328167, 33.651604>,  <34.132732, 34.227528, 33.106388>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.530712, 34.328167, 33.651604> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.361343, 34.686672, 33.598812>,  <34.259720, 34.901775, 33.567139>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.361343, 34.686672, 33.598812>,  <34.530712, 34.328167, 33.651604>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.361343, 34.686672, 33.598812> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293869, 0.001916, 0.955844,
		0.856944, 0.443512, 0.262573,
		-0.423425, 0.896266, -0.131976,
		34.234314, 34.955551, 33.559219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.794209, 34.778004, 34.145172>,  <34.530712, 34.328167, 33.651604>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.794209, 34.778004, 34.145172> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.438343, 34.927032, 34.039577>,  <34.224823, 35.016449, 33.976219>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.438343, 34.927032, 34.039577>,  <34.794209, 34.778004, 34.145172>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.438343, 34.927032, 34.039577> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252469, 0.080369, 0.964262,
		0.380478, 0.924515, 0.022563,
		-0.889661, 0.372577, -0.263990,
		34.171444, 35.038807, 33.960381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.730534, 35.321918, 34.572792>,  <34.794209, 34.778004, 34.145172>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.730534, 35.321918, 34.572792> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.367630, 35.203495, 34.453308>,  <34.149887, 35.132439, 34.381618>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.367630, 35.203495, 34.453308>,  <34.730534, 35.321918, 34.572792>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.367630, 35.203495, 34.453308> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381243, 0.279039, 0.881357,
		-0.177584, 0.913501, -0.366032,
		-0.907258, -0.296062, -0.298713,
		34.095451, 35.114677, 34.363693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.337154, 35.922512, 34.560547>,  <34.730534, 35.321918, 34.572792>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.337154, 35.922512, 34.560547> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.080101, 35.617683, 34.592216>,  <33.925869, 35.434788, 34.611217>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.080101, 35.617683, 34.592216>,  <34.337154, 35.922512, 34.560547>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.080101, 35.617683, 34.592216> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388707, 0.413341, 0.823441,
		-0.660248, 0.498395, -0.561849,
		-0.642634, -0.762071, 0.079179,
		33.887310, 35.389061, 34.615971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.633064, 36.242592, 34.534824>,  <34.337154, 35.922512, 34.560547>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.633064, 36.242592, 34.534824> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.572712, 35.873314, 34.676216>,  <33.536503, 35.651749, 34.761051>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.572712, 35.873314, 34.676216>,  <33.633064, 36.242592, 34.534824>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.572712, 35.873314, 34.676216> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.696056, 0.353120, 0.625150,
		-0.701956, -0.151720, -0.695873,
		-0.150879, -0.923194, 0.353480,
		33.527447, 35.596355, 34.782261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.912792, 36.332687, 34.728485>,  <33.633064, 36.242592, 34.534824>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.912792, 36.332687, 34.728485> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.046791, 36.011463, 34.925613>,  <33.127190, 35.818729, 35.043888>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.046791, 36.011463, 34.925613>,  <32.912792, 36.332687, 34.728485>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.046791, 36.011463, 34.925613> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580209, 0.236290, 0.779439,
		-0.742386, -0.547044, -0.386788,
		0.334994, -0.803063, 0.492818,
		33.147289, 35.770546, 35.073460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.333195, 35.902790, 34.869259>,  <32.912792, 36.332687, 34.728485>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.333195, 35.902790, 34.869259> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.630394, 35.799442, 35.116222>,  <32.808712, 35.737434, 35.264400>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.630394, 35.799442, 35.116222>,  <32.333195, 35.902790, 34.869259>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.630394, 35.799442, 35.116222> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555162, 0.277338, 0.784142,
		-0.373830, -0.925381, 0.062626,
		0.742998, -0.258368, 0.617413,
		32.853294, 35.721931, 35.301445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.072632, 35.436909, 35.351063>,  <32.333195, 35.902790, 34.869259>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.072632, 35.436909, 35.351063> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.393456, 35.577316, 35.544346>,  <32.585949, 35.661560, 35.660316>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.393456, 35.577316, 35.544346>,  <32.072632, 35.436909, 35.351063>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.393456, 35.577316, 35.544346> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584668, 0.296304, 0.755227,
		0.121922, -0.888251, 0.442882,
		0.802059, 0.351018, 0.483206,
		32.634071, 35.682621, 35.689308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.998474, 35.115177, 36.056252>,  <32.072632, 35.436909, 35.351063>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.998474, 35.115177, 36.056252> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.252926, 35.423809, 36.057098>,  <32.405598, 35.608990, 36.057606>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.252926, 35.423809, 36.057098>,  <31.998474, 35.115177, 36.056252>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.252926, 35.423809, 36.057098> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501547, 0.411413, 0.761045,
		0.586335, -0.485186, 0.648696,
		0.636131, 0.771579, 0.002118,
		32.443764, 35.655281, 36.057735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.033108, 35.247684, 36.713371>,  <31.998474, 35.115177, 36.056252>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.033108, 35.247684, 36.713371> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.152435, 35.584057, 36.532776>,  <32.224033, 35.785881, 36.424419>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.152435, 35.584057, 36.532776>,  <32.033108, 35.247684, 36.713371>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.152435, 35.584057, 36.532776> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371546, 0.538032, 0.756621,
		0.879181, -0.057966, 0.472949,
		0.298320, 0.840929, -0.451491,
		32.241932, 35.836334, 36.397327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.431030, 35.588131, 37.220802>,  <32.033108, 35.247684, 36.713371>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.431030, 35.588131, 37.220802> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.306324, 35.862034, 36.957317>,  <32.231499, 36.026375, 36.799225>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.306324, 35.862034, 36.957317>,  <32.431030, 35.588131, 37.220802>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.306324, 35.862034, 36.957317> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273001, 0.599482, 0.752391,
		0.910095, 0.414399, 0.000043,
		-0.311764, 0.684759, -0.658717,
		32.212795, 36.067463, 36.759701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.527573, 36.229671, 37.553501>,  <32.431030, 35.588131, 37.220802>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.527573, 36.229671, 37.553501> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.252678, 36.297325, 37.270916>,  <32.087742, 36.337917, 37.101364>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.252678, 36.297325, 37.270916>,  <32.527573, 36.229671, 37.553501>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.252678, 36.297325, 37.270916> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479607, 0.624780, 0.616139,
		0.545597, 0.762262, -0.348255,
		-0.687241, 0.169138, -0.706464,
		32.046505, 36.348068, 37.058975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.387241, 37.051029, 37.497509>,  <32.527573, 36.229671, 37.553501>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.387241, 37.051029, 37.497509> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.100918, 36.800224, 37.374565>,  <31.929125, 36.649742, 37.300797>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.100918, 36.800224, 37.374565>,  <32.387241, 37.051029, 37.497509>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.100918, 36.800224, 37.374565> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.667913, 0.486343, 0.563350,
		-0.203746, 0.608540, -0.766920,
		-0.715807, -0.627016, -0.307362,
		31.886175, 36.612118, 37.282356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.093407, 37.273685, 37.200596>,  <32.387241, 37.051029, 37.497509>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.093407, 37.273685, 37.200596> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.393867, 37.375252, 37.444332>,  <33.574142, 37.436192, 37.590572>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.393867, 37.375252, 37.444332>,  <33.093407, 37.273685, 37.200596>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.393867, 37.375252, 37.444332> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520299, 0.340368, -0.783223,
		-0.406276, 0.905359, 0.123554,
		0.751152, 0.253920, 0.609340,
		33.619213, 37.451427, 37.627132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.250443, 38.012936, 37.296280>,  <33.093407, 37.273685, 37.200596>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.250443, 38.012936, 37.296280> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.579857, 37.786980, 37.316998>,  <33.777504, 37.651405, 37.329426>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.579857, 37.786980, 37.316998>,  <33.250443, 38.012936, 37.296280>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.579857, 37.786980, 37.316998> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366464, 0.460112, -0.808703,
		0.433001, 0.684977, 0.585932,
		0.823537, -0.564893, 0.051790,
		33.826920, 37.617512, 37.332535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.888020, 38.425198, 37.195522>,  <33.250443, 38.012936, 37.296280>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.888020, 38.425198, 37.195522> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.995548, 38.052055, 37.099586>,  <34.060066, 37.828171, 37.042027>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.995548, 38.052055, 37.099586>,  <33.888020, 38.425198, 37.195522>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.995548, 38.052055, 37.099586> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395883, 0.334011, -0.855402,
		0.878072, 0.135001, 0.459090,
		0.268821, -0.932851, -0.239841,
		34.076195, 37.772202, 37.027634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.580093, 38.411026, 37.076271>,  <33.888020, 38.425198, 37.195522>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.580093, 38.411026, 37.076271> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.425514, 38.105305, 36.869778>,  <34.332767, 37.921871, 36.745880>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.425514, 38.105305, 36.869778>,  <34.580093, 38.411026, 37.076271>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.425514, 38.105305, 36.869778> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327718, 0.409406, -0.851462,
		0.862127, -0.498221, 0.092264,
		-0.386443, -0.764305, -0.516236,
		34.309582, 37.876015, 36.714909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.148724, 38.198517, 36.655975>,  <34.580093, 38.411026, 37.076271>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.148724, 38.198517, 36.655975> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.789040, 38.101551, 36.510292>,  <34.573227, 38.043373, 36.422882>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.789040, 38.101551, 36.510292>,  <35.148724, 38.198517, 36.655975>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.789040, 38.101551, 36.510292> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317663, 0.210667, -0.924505,
		0.300841, -0.947024, -0.112428,
		-0.899214, -0.242414, -0.364212,
		34.519276, 38.028828, 36.401028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.311684, 38.037189, 35.988060>,  <35.148724, 38.198517, 36.655975>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.311684, 38.037189, 35.988060> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.914181, 38.021511, 35.946281>,  <34.675678, 38.012104, 35.921215>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.914181, 38.021511, 35.946281>,  <35.311684, 38.037189, 35.988060>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.914181, 38.021511, 35.946281> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084388, 0.348214, -0.933609,
		0.072965, -0.936595, -0.342733,
		-0.993758, -0.039198, -0.104445,
		34.616055, 38.009750, 35.914948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.086685, 37.780731, 35.321976>,  <35.311684, 38.037189, 35.988060>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.086685, 37.780731, 35.321976> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.783276, 38.012634, 35.440979>,  <34.601231, 38.151775, 35.512383>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.783276, 38.012634, 35.440979>,  <35.086685, 37.780731, 35.321976>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.783276, 38.012634, 35.440979> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089879, 0.359110, -0.928957,
		-0.645412, -0.731380, -0.220286,
		-0.758528, 0.579762, 0.297510,
		34.555717, 38.186562, 35.530231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.580723, 37.713062, 34.763397>,  <35.086685, 37.780731, 35.321976>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.580723, 37.713062, 34.763397> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.499695, 38.060078, 34.945099>,  <34.451077, 38.268288, 35.054119>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.499695, 38.060078, 34.945099>,  <34.580723, 37.713062, 34.763397>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.499695, 38.060078, 34.945099> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163362, 0.427435, -0.889164,
		-0.965545, -0.254329, 0.055135,
		-0.202574, 0.867535, 0.454255,
		34.438923, 38.320339, 35.081375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.088223, 38.004265, 34.317333>,  <34.580723, 37.713062, 34.763397>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.088223, 38.004265, 34.317333> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.223774, 38.314320, 34.530621>,  <34.305103, 38.500355, 34.658592>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.223774, 38.314320, 34.530621>,  <34.088223, 38.004265, 34.317333>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.223774, 38.314320, 34.530621> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017586, 0.571870, -0.820156,
		-0.940666, 0.268555, 0.207425,
		0.338877, 0.775141, 0.533216,
		34.325436, 38.546864, 34.690586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.698227, 38.533432, 34.171204>,  <34.088223, 38.004265, 34.317333>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.698227, 38.533432, 34.171204> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.046085, 38.698971, 34.278870>,  <34.254799, 38.798294, 34.343468>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.046085, 38.698971, 34.278870>,  <33.698227, 38.533432, 34.171204>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.046085, 38.698971, 34.278870> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085991, 0.409897, -0.908069,
		-0.486131, 0.812843, 0.320878,
		0.869645, 0.413848, 0.269161,
		34.306980, 38.823124, 34.359619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.599266, 39.290771, 33.976170>,  <33.698227, 38.533432, 34.171204>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.599266, 39.290771, 33.976170> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.994377, 39.250256, 34.023567>,  <34.231441, 39.225948, 34.052006>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.994377, 39.250256, 34.023567>,  <33.599266, 39.290771, 33.976170>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.994377, 39.250256, 34.023567> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155883, 0.644087, -0.748901,
		-0.000467, 0.758217, 0.652002,
		0.987775, -0.101286, 0.118494,
		34.290710, 39.219872, 34.059116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.822292, 39.953861, 34.010948>,  <33.599266, 39.290771, 33.976170>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.822292, 39.953861, 34.010948> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.136959, 39.722523, 33.924538>,  <34.325760, 39.583721, 33.872692>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.136959, 39.722523, 33.924538>,  <33.822292, 39.953861, 34.010948>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.136959, 39.722523, 33.924538> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251019, 0.619317, -0.743933,
		0.564039, 0.531003, 0.632374,
		0.786670, -0.578344, -0.216027,
		34.372959, 39.549019, 33.859730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.352711, 40.514172, 33.818443>,  <33.822292, 39.953861, 34.010948>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.352711, 40.514172, 33.818443> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.462063, 40.165001, 33.656818>,  <34.527676, 39.955498, 33.559841>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.462063, 40.165001, 33.656818>,  <34.352711, 40.514172, 33.818443>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.462063, 40.165001, 33.656818> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193942, 0.461462, -0.865701,
		0.942151, 0.158301, 0.295451,
		0.273381, -0.872922, -0.404066,
		34.544079, 39.903126, 33.535599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.038898, 40.697407, 33.376160>,  <34.352711, 40.514172, 33.818443>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.038898, 40.697407, 33.376160> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.902523, 40.341373, 33.255154>,  <34.820698, 40.127754, 33.182549>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.902523, 40.341373, 33.255154>,  <35.038898, 40.697407, 33.376160>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.902523, 40.341373, 33.255154> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029114, 0.331640, -0.942957,
		0.939634, -0.312684, -0.138982,
		-0.340939, -0.890081, -0.302517,
		34.800240, 40.074348, 33.164398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.408821, 40.626564, 32.858974>,  <35.038898, 40.697407, 33.376160>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.408821, 40.626564, 32.858974> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.095657, 40.381229, 32.817268>,  <34.907757, 40.234028, 32.792244>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.095657, 40.381229, 32.817268>,  <35.408821, 40.626564, 32.858974>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.095657, 40.381229, 32.817268> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092772, 0.280821, -0.955266,
		0.615178, -0.738215, -0.276758,
		-0.782911, -0.613334, -0.104269,
		34.860783, 40.197227, 32.785988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.667397, 40.199772, 32.442509>,  <35.408821, 40.626564, 32.858974>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.667397, 40.199772, 32.442509> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.278805, 40.121784, 32.388523>,  <35.045650, 40.074989, 32.356133>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.278805, 40.121784, 32.388523>,  <35.667397, 40.199772, 32.442509>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.278805, 40.121784, 32.388523> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127129, 0.052224, -0.990510,
		0.200172, -0.979417, -0.025948,
		-0.971478, -0.194974, -0.134966,
		34.987362, 40.063293, 32.348034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.644726, 39.782661, 31.855278>,  <35.667397, 40.199772, 32.442509>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.644726, 39.782661, 31.855278> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.290375, 39.957996, 31.916042>,  <35.077763, 40.063198, 31.952501>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.290375, 39.957996, 31.916042>,  <35.644726, 39.782661, 31.855278>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.290375, 39.957996, 31.916042> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092805, 0.153389, -0.983798,
		-0.454539, -0.885625, -0.095204,
		-0.885879, 0.438339, 0.151911,
		35.024612, 40.089497, 31.961617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.163647, 39.454514, 31.369095>,  <35.644726, 39.782661, 31.855278>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.163647, 39.454514, 31.369095> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.025921, 39.817417, 31.465702>,  <34.943287, 40.035160, 31.523666>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.025921, 39.817417, 31.465702>,  <35.163647, 39.454514, 31.369095>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.025921, 39.817417, 31.465702> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075310, 0.229728, -0.970337,
		-0.935830, -0.352288, -0.010773,
		-0.344312, 0.907259, 0.241517,
		34.922626, 40.089596, 31.538157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.741974, 39.563835, 30.851168>,  <35.163647, 39.454514, 31.369095>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.741974, 39.563835, 30.851168> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.733860, 39.937027, 30.994909>,  <34.728992, 40.160942, 31.081154>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.733860, 39.937027, 30.994909>,  <34.741974, 39.563835, 30.851168>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.733860, 39.937027, 30.994909> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312398, 0.335516, -0.888728,
		-0.949735, -0.130288, 0.284656,
		-0.020284, 0.932981, 0.359353,
		34.727776, 40.216923, 31.102715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.115543, 39.908653, 30.583794>,  <34.741974, 39.563835, 30.851168>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.115543, 39.908653, 30.583794> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.395332, 40.179157, 30.676243>,  <34.563206, 40.341461, 30.731712>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.395332, 40.179157, 30.676243>,  <34.115543, 39.908653, 30.583794>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.395332, 40.179157, 30.676243> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087038, 0.401605, -0.911668,
		-0.709344, 0.617566, 0.339770,
		0.699468, 0.676259, 0.231125,
		34.605171, 40.382034, 30.745581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.924431, 40.550983, 30.309904>,  <34.115543, 39.908653, 30.583794>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.924431, 40.550983, 30.309904> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.319374, 40.571358, 30.369957>,  <34.556339, 40.583580, 30.405989>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.319374, 40.571358, 30.369957>,  <33.924431, 40.550983, 30.309904>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.319374, 40.571358, 30.369957> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086620, 0.619821, -0.779948,
		-0.132779, 0.783088, 0.607571,
		0.987353, 0.050933, 0.150131,
		34.615582, 40.586639, 30.414997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.070549, 41.159767, 30.041021>,  <33.924431, 40.550983, 30.309904>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.070549, 41.159767, 30.041021> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.432766, 40.994587, 30.079920>,  <34.650097, 40.895477, 30.103258>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.432766, 40.994587, 30.079920>,  <34.070549, 41.159767, 30.041021>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.432766, 40.994587, 30.079920> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294626, 0.447201, -0.844516,
		0.305257, 0.793399, 0.526628,
		0.905546, -0.412953, 0.097245,
		34.704430, 40.870701, 30.109093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.604343, 41.783081, 29.879162>,  <34.070549, 41.159767, 30.041021>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.604343, 41.783081, 29.879162> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.798523, 41.440304, 29.809893>,  <34.915031, 41.234638, 29.768332>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.798523, 41.440304, 29.809893>,  <34.604343, 41.783081, 29.879162>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.798523, 41.440304, 29.809893> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489709, 0.430618, -0.758125,
		0.724241, 0.283226, 0.628696,
		0.485448, -0.856943, -0.173173,
		34.944157, 41.183220, 29.757940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.244968, 41.963783, 29.854136>,  <34.604343, 41.783081, 29.879162>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.244968, 41.963783, 29.854136> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.228760, 41.612679, 29.663183>,  <35.219036, 41.402016, 29.548613>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.228760, 41.612679, 29.663183>,  <35.244968, 41.963783, 29.854136>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.228760, 41.612679, 29.663183> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495341, 0.397283, -0.772530,
		0.867753, -0.267770, 0.418694,
		-0.040520, -0.877762, -0.477381,
		35.216602, 41.349350, 29.519970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.882915, 41.800266, 29.772810>,  <35.244968, 41.963783, 29.854136>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.882915, 41.800266, 29.772810> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.689205, 41.595367, 29.489096>,  <35.572979, 41.472427, 29.318867>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.689205, 41.595367, 29.489096>,  <35.882915, 41.800266, 29.772810>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.689205, 41.595367, 29.489096> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500260, 0.502975, -0.704809,
		0.717788, -0.696147, 0.012679,
		-0.484273, -0.512246, -0.709284,
		35.543922, 41.441692, 29.276310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.431507, 41.449932, 29.463041>,  <35.882915, 41.800266, 29.772810>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.431507, 41.449932, 29.463041> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.108906, 41.463921, 29.226963>,  <35.915344, 41.472313, 29.085316>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.108906, 41.463921, 29.226963>,  <36.431507, 41.449932, 29.463041>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.108906, 41.463921, 29.226963> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531917, 0.478711, -0.698499,
		0.258105, -0.877276, -0.404684,
		-0.806502, 0.034972, -0.590195,
		35.866955, 41.474411, 29.049904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.610161, 41.245132, 28.813744>,  <36.431507, 41.449932, 29.463041>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.610161, 41.245132, 28.813744> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.284988, 41.474899, 28.775412>,  <36.089886, 41.612759, 28.752413>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.284988, 41.474899, 28.775412>,  <36.610161, 41.245132, 28.813744>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.284988, 41.474899, 28.775412> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473699, 0.556523, -0.682563,
		-0.338745, -0.600273, -0.724517,
		-0.812934, 0.574417, -0.095830,
		36.041107, 41.647224, 28.746662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.126598, 40.788536, 28.573505>,  <36.610161, 41.245132, 28.813744>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.126598, 40.788536, 28.573505> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.520084, 40.754086, 28.636618>,  <37.756176, 40.733414, 28.674484>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.520084, 40.754086, 28.636618>,  <37.126598, 40.788536, 28.573505>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.520084, 40.754086, 28.636618> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179736, -0.458677, 0.870236,
		-0.002580, -0.884420, -0.466686,
		0.983711, -0.086125, 0.157779,
		37.815197, 40.728249, 28.683950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.363029, 40.109566, 28.790424>,  <37.126598, 40.788536, 28.573505>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.363029, 40.109566, 28.790424> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.685017, 40.317646, 28.904558>,  <37.878208, 40.442493, 28.973038>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.685017, 40.317646, 28.904558>,  <37.363029, 40.109566, 28.790424>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.685017, 40.317646, 28.904558> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092397, -0.584953, 0.805787,
		0.586081, -0.622268, -0.518933,
		0.804967, 0.520204, 0.285334,
		37.926506, 40.473709, 28.990158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.899109, 39.590458, 28.955877>,  <37.363029, 40.109566, 28.790424>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.899109, 39.590458, 28.955877> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.957863, 39.936607, 29.147524>,  <37.993114, 40.144299, 29.262512>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.957863, 39.936607, 29.147524>,  <37.899109, 39.590458, 28.955877>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.957863, 39.936607, 29.147524> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004965, -0.485010, 0.874494,
		0.989141, -0.126074, -0.075539,
		0.146888, 0.865373, 0.479117,
		38.001930, 40.196220, 29.291260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.417068, 39.536221, 29.379215>,  <37.899109, 39.590458, 28.955877>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.417068, 39.536221, 29.379215> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.248680, 39.844101, 29.571192>,  <38.147648, 40.028828, 29.686378>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.248680, 39.844101, 29.571192>,  <38.417068, 39.536221, 29.379215>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.248680, 39.844101, 29.571192> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027983, -0.517837, 0.855021,
		0.906643, 0.373368, 0.196455,
		-0.420969, 0.769702, 0.479941,
		38.122391, 40.075012, 29.715174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.739864, 39.561085, 30.050974>,  <38.417068, 39.536221, 29.379215>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.739864, 39.561085, 30.050974> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.412327, 39.778915, 30.123556>,  <38.215805, 39.909615, 30.167105>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.412327, 39.778915, 30.123556>,  <38.739864, 39.561085, 30.050974>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.412327, 39.778915, 30.123556> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021515, -0.345014, 0.938351,
		0.573609, 0.764461, 0.294230,
		-0.818846, 0.544577, 0.181456,
		38.166672, 39.942287, 30.177992>
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
