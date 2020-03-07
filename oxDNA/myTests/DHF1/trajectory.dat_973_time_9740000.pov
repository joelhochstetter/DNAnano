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
	<4.128222, 1.235072, 2.334045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.215965, 1.624329, 2.361977>,  <4.268611, 1.857883, 2.378736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.215965, 1.624329, 2.361977>,  <4.128222, 1.235072, 2.334045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.215965, 1.624329, 2.361977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100668, 0.093765, -0.990492,
		-0.970437, 0.210244, 0.118533,
		0.219359, 0.973142, 0.069828,
		4.281773, 1.916271, 2.382925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.654046, 1.628727, 2.024622>,  <4.128222, 1.235072, 2.334045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.654046, 1.628727, 2.024622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.992378, 1.841318, 2.006285>,  <4.195378, 1.968873, 1.995282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.992378, 1.841318, 2.006285>,  <3.654046, 1.628727, 2.024622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.992378, 1.841318, 2.006285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099770, 0.073186, -0.992315,
		-0.524038, 0.843905, 0.114928,
		0.845831, 0.531478, -0.045844,
		4.246128, 2.000762, 1.992531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.434956, 2.262364, 1.640940>,  <3.654046, 1.628727, 2.024622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.434956, 2.262364, 1.640940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.819466, 2.152264, 1.635445>,  <4.050171, 2.086203, 1.632147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.819466, 2.152264, 1.635445>,  <3.434956, 2.262364, 1.640940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.819466, 2.152264, 1.635445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035358, 0.172617, -0.984354,
		0.273316, 0.945749, 0.175664,
		0.961274, -0.275251, -0.013739,
		4.107848, 2.069688, 1.631323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.780242, 2.740007, 1.204018>,  <3.434956, 2.262364, 1.640940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.780242, 2.740007, 1.204018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.999557, 2.406178, 1.225439>,  <4.131146, 2.205880, 1.238291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.999557, 2.406178, 1.225439>,  <3.780242, 2.740007, 1.204018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.999557, 2.406178, 1.225439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181338, 0.056133, -0.981817,
		0.816393, 0.548030, 0.182117,
		0.548288, -0.834573, 0.053552,
		4.164044, 2.155806, 1.241505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.369771, 2.827291, 0.783704>,  <3.780242, 2.740007, 1.204018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.369771, 2.827291, 0.783704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.338493, 2.429142, 0.806036>,  <4.319726, 2.190252, 0.819435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.338493, 2.429142, 0.806036>,  <4.369771, 2.827291, 0.783704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.338493, 2.429142, 0.806036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085304, -0.062475, -0.994394,
		0.993282, -0.072994, 0.089795,
		-0.078195, -0.995374, 0.055829,
		4.315035, 2.130530, 0.822785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.974433, 2.550198, 0.535237>,  <4.369771, 2.827291, 0.783704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.974433, 2.550198, 0.535237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.723015, 2.240692, 0.503693>,  <4.572164, 2.054989, 0.484766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.723015, 2.240692, 0.503693>,  <4.974433, 2.550198, 0.535237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.723015, 2.240692, 0.503693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268068, -0.120338, -0.955855,
		0.730116, -0.621939, 0.283059,
		-0.628546, -0.773764, -0.078862,
		4.534451, 2.008563, 0.480034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.455428, 2.054625, 0.223417>,  <4.974433, 2.550198, 0.535237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.455428, 2.054625, 0.223417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.072289, 1.949455, 0.177116>,  <4.842405, 1.886353, 0.149336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.072289, 1.949455, 0.177116>,  <5.455428, 2.054625, 0.223417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.072289, 1.949455, 0.177116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210393, -0.367687, -0.905837,
		0.195607, -0.892007, 0.407505,
		-0.957848, -0.262925, -0.115750,
		4.784934, 1.870578, 0.142391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.455697, 1.381365, 0.024167>,  <5.455428, 2.054625, 0.223417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.455697, 1.381365, 0.024167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.106529, 1.526363, -0.106436>,  <4.897028, 1.613362, -0.184798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.106529, 1.526363, -0.106436>,  <5.455697, 1.381365, 0.024167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.106529, 1.526363, -0.106436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205035, -0.334697, -0.919749,
		-0.442688, -0.869812, 0.217839,
		-0.872919, 0.362497, -0.326508,
		4.844653, 1.635112, -0.204388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<5.296461, 1.899652, 3.472086> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.984154, 1.650723, 3.494411>,  <4.796769, 1.501365, 3.507807>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.984154, 1.650723, 3.494411>,  <5.296461, 1.899652, 3.472086>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.984154, 1.650723, 3.494411> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131773, 0.251320, 0.958892,
		-0.610767, 0.741318, -0.278228,
		-0.780769, -0.622323, 0.055813,
		4.749923, 1.464026, 3.511155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.662304, 2.210837, 3.641943>,  <5.296461, 1.899652, 3.472086>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.662304, 2.210837, 3.641943> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.614594, 1.836327, 3.774101>,  <4.585967, 1.611621, 3.853396>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.614594, 1.836327, 3.774101>,  <4.662304, 2.210837, 3.641943>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.614594, 1.836327, 3.774101> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124654, 0.344261, 0.930562,
		-0.985005, 0.069809, -0.157773,
		-0.119276, -0.936275, 0.330397,
		4.578811, 1.555444, 3.873220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.109027, 2.345270, 4.004674>,  <4.662304, 2.210837, 3.641943>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.109027, 2.345270, 4.004674> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.293213, 2.012695, 4.129051>,  <4.403724, 1.813150, 4.203677>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.293213, 2.012695, 4.129051>,  <4.109027, 2.345270, 4.004674>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.293213, 2.012695, 4.129051> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249149, 0.215154, 0.944264,
		-0.851996, -0.512270, -0.108082,
		0.460464, -0.831437, 0.310942,
		4.431352, 1.763264, 4.222334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.668822, 1.895220, 4.293591>,  <4.109027, 2.345270, 4.004674>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.668822, 1.895220, 4.293591> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.023605, 1.811253, 4.458145>,  <4.236475, 1.760872, 4.556878>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.023605, 1.811253, 4.458145>,  <3.668822, 1.895220, 4.293591>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.023605, 1.811253, 4.458145> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383652, 0.161022, 0.909331,
		-0.257129, -0.964368, 0.062283,
		0.886959, -0.209920, 0.411385,
		4.289693, 1.748277, 4.581561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.554863, 1.509857, 4.912790>,  <3.668822, 1.895220, 4.293591>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.554863, 1.509857, 4.912790> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.935921, 1.619453, 4.965553>,  <4.164555, 1.685211, 4.997211>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.935921, 1.619453, 4.965553>,  <3.554863, 1.509857, 4.912790>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.935921, 1.619453, 4.965553> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159209, 0.079823, 0.984012,
		0.259081, -0.958414, 0.119665,
		0.952643, 0.273991, 0.131908,
		4.221714, 1.701651, 5.005126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.717957, 0.997643, 5.411959>,  <3.554863, 1.509857, 4.912790>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.717957, 0.997643, 5.411959> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.966064, 1.311317, 5.419113>,  <4.114929, 1.499522, 5.423406>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.966064, 1.311317, 5.419113>,  <3.717957, 0.997643, 5.411959>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.966064, 1.311317, 5.419113> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059940, -0.070120, 0.995736,
		0.782096, -0.616552, -0.090497,
		0.620269, 0.784185, 0.017885,
		4.152145, 1.546573, 5.424479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.243373, 0.824389, 5.836935>,  <3.717957, 0.997643, 5.411959>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.243373, 0.824389, 5.836935> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.268051, 1.223236, 5.854599>,  <4.282858, 1.462544, 5.865197>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.268051, 1.223236, 5.854599>,  <4.243373, 0.824389, 5.836935>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.268051, 1.223236, 5.854599> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142445, -0.052588, 0.988405,
		0.987878, -0.054690, -0.145279,
		0.061696, 0.997118, 0.044160,
		4.286560, 1.522371, 5.867847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.810217, 0.997099, 6.277449>,  <4.243373, 0.824389, 5.836935>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.810217, 0.997099, 6.277449> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.588730, 1.329865, 6.262943>,  <4.455838, 1.529524, 6.254240>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.588730, 1.329865, 6.262943>,  <4.810217, 0.997099, 6.277449>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.588730, 1.329865, 6.262943> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030134, 0.023502, 0.999269,
		0.832159, 0.554406, 0.012055,
		-0.553718, 0.831914, -0.036264,
		4.422615, 1.579439, 6.252064>
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
