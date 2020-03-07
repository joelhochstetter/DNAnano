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
	<-1.288652, 4.186175, 2.498565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.945213, 4.296036, 2.325417>,  <-0.739150, 4.361952, 2.221528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.945213, 4.296036, 2.325417>,  <-1.288652, 4.186175, 2.498565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.945213, 4.296036, 2.325417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382491, -0.905413, 0.184196,
		-0.341337, -0.323720, -0.882437,
		0.858597, 0.274651, -0.432871,
		-0.687634, 4.378431, 2.195555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-1.016794, 3.632744, 1.942102>,  <-1.288652, 4.186175, 2.498565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-1.016794, 3.632744, 1.942102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.699387, 3.822105, 2.095055>,  <-0.508942, 3.935723, 2.186826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.699387, 3.822105, 2.095055>,  <-1.016794, 3.632744, 1.942102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.699387, 3.822105, 2.095055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470474, -0.875788, 0.107935,
		0.385983, 0.094253, -0.917678,
		0.793518, 0.473405, 0.382383,
		-0.461331, 3.964127, 2.209769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.459235, 3.165727, 1.864280>,  <-1.016794, 3.632744, 1.942102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.459235, 3.165727, 1.864280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.313728, 3.447113, 2.108513>,  <-0.226425, 3.615945, 2.255053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.313728, 3.447113, 2.108513>,  <-0.459235, 3.165727, 1.864280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.313728, 3.447113, 2.108513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646344, -0.662633, 0.378362,
		0.670756, 0.257011, -0.695723,
		0.363766, 0.703465, 0.610583,
		-0.204599, 3.658153, 2.291688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.330385, 2.966418, 1.896951>,  <-0.459235, 3.165727, 1.864280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.330385, 2.966418, 1.896951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.162842, 3.162689, 2.202576>,  <0.062316, 3.280452, 2.385951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.162842, 3.162689, 2.202576>,  <0.330385, 2.966418, 1.896951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.162842, 3.162689, 2.202576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632138, -0.446498, 0.633278,
		0.651889, 0.748247, -0.123157,
		-0.418859, 0.490679, 0.764063,
		0.037184, 3.309893, 2.431794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.802392, 3.423418, 2.288886>,  <0.330385, 2.966418, 1.896951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.802392, 3.423418, 2.288886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.540627, 3.307350, 2.568184>,  <0.383567, 3.237709, 2.735763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.540627, 3.307350, 2.568184>,  <0.802392, 3.423418, 2.288886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.540627, 3.307350, 2.568184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.753940, -0.320760, 0.573313,
		0.057610, 0.901618, 0.428680,
		-0.654413, -0.290170, 0.698244,
		0.344303, 3.220299, 2.777657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.182772, 3.479351, 2.961775>,  <0.802392, 3.423418, 2.288886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.182772, 3.479351, 2.961775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.875412, 3.238449, 3.048355>,  <0.690996, 3.093908, 3.100303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.875412, 3.238449, 3.048355>,  <1.182772, 3.479351, 2.961775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.875412, 3.238449, 3.048355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621288, -0.620883, 0.478023,
		-0.153501, 0.501791, 0.851260,
		-0.768400, -0.602254, 0.216450,
		0.644892, 3.057773, 3.113290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.230773, 3.377284, 3.682418>,  <1.182772, 3.479351, 2.961775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.230773, 3.377284, 3.682418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.987450, 3.083130, 3.562973>,  <0.841456, 2.906637, 3.491306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.987450, 3.083130, 3.562973>,  <1.230773, 3.377284, 3.682418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.987450, 3.083130, 3.562973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472419, -0.637794, 0.608308,
		-0.637794, 0.228969, 0.735386,
		-0.608308, -0.735386, -0.298612,
		0.804957, 2.862514, 3.473389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.077432, 3.045701, 4.301861>,  <1.230773, 3.377284, 3.682418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.077432, 3.045701, 4.301861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.056671, 2.802544, 3.984932>,  <1.044215, 2.656650, 3.794775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.056671, 2.802544, 3.984932>,  <1.077432, 3.045701, 4.301861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.056671, 2.802544, 3.984932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.718969, -0.573387, 0.392823,
		-0.693101, -0.549267, 0.466815,
		-0.051901, -0.607892, -0.792321,
		1.041101, 2.620176, 3.747236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<2.063963, 2.401851, 4.492622> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.140373, 2.064560, 4.291634>,  <2.186219, 1.862185, 4.171041>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.140373, 2.064560, 4.291634>,  <2.063963, 2.401851, 4.492622>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.140373, 2.064560, 4.291634> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577856, 0.317189, -0.751980,
		0.793468, 0.434003, -0.426673,
		0.191026, -0.843227, -0.502470,
		2.197681, 1.811592, 4.140893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.194722, 2.615520, 3.814460>,  <2.063963, 2.401851, 4.492622>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.194722, 2.615520, 3.814460> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.032486, 2.252090, 3.854439>,  <1.935144, 2.034033, 3.878426>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.032486, 2.252090, 3.854439>,  <2.194722, 2.615520, 3.814460>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.032486, 2.252090, 3.854439> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.688636, 0.231831, -0.687048,
		0.601064, -0.347487, -0.719705,
		-0.405590, -0.908574, 0.099947,
		1.910809, 1.979518, 3.884423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.060948, 2.235044, 3.095068>,  <2.194722, 2.615520, 3.814460>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.060948, 2.235044, 3.095068> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.792843, 2.116844, 3.367371>,  <1.631980, 2.045924, 3.530752>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.792843, 2.116844, 3.367371>,  <2.060948, 2.235044, 3.095068>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.792843, 2.116844, 3.367371> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.742121, 0.264267, -0.615970,
		0.002116, -0.918065, -0.396424,
		-0.670263, -0.295498, 0.680756,
		1.591764, 2.028194, 3.571597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.481727, 1.821193, 2.736152>,  <2.060948, 2.235044, 3.095068>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.481727, 1.821193, 2.736152> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.350765, 1.924599, 3.099686>,  <1.272188, 1.986642, 3.317806>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.350765, 1.924599, 3.099686>,  <1.481727, 1.821193, 2.736152>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.350765, 1.924599, 3.099686> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.898832, 0.211410, -0.383935,
		-0.291389, -0.942590, 0.163144,
		-0.327403, 0.258514, 0.908833,
		1.252544, 2.002153, 3.372336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.800388, 1.756814, 2.834135>,  <1.481727, 1.821193, 2.736152>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.800388, 1.756814, 2.834135> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.838978, 2.011490, 3.140160>,  <0.862131, 2.164295, 3.323775>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.838978, 2.011490, 3.140160>,  <0.800388, 1.756814, 2.834135>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.838978, 2.011490, 3.140160> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.842961, 0.460981, -0.277333,
		-0.529254, -0.618162, 0.581176,
		0.096474, 0.636688, 0.765063,
		0.867920, 2.202496, 3.369678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.172097, 1.767824, 3.107057>,  <0.800388, 1.756814, 2.834135>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.172097, 1.767824, 3.107057> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.359287, 2.105988, 3.210037>,  <0.471601, 2.308886, 3.271826>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.359287, 2.105988, 3.210037>,  <0.172097, 1.767824, 3.107057>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.359287, 2.105988, 3.210037> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.748880, 0.534040, -0.392403,
		-0.469231, -0.009165, 0.883028,
		0.467975, 0.845409, 0.257452,
		0.499680, 2.359611, 3.287273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.344213, 2.211099, 3.275240>,  <0.172097, 1.767824, 3.107057>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.344213, 2.211099, 3.275240> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.034645, 2.457451, 3.216263>,  <0.151096, 2.605262, 3.180877>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.034645, 2.457451, 3.216263>,  <-0.344213, 2.211099, 3.275240>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.034645, 2.457451, 3.216263> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591274, 0.619341, -0.516538,
		-0.226808, 0.486938, 0.843475,
		0.773920, 0.615880, -0.147442,
		0.197531, 2.642215, 3.172030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.557374, 2.785165, 3.601606>,  <-0.344213, 2.211099, 3.275240>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.557374, 2.785165, 3.601606> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.278263, 2.918365, 3.347923>,  <-0.110797, 2.998286, 3.195714>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.278263, 2.918365, 3.347923>,  <-0.557374, 2.785165, 3.601606>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.278263, 2.918365, 3.347923> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648250, 0.670247, -0.361304,
		0.304761, 0.663234, 0.683550,
		0.697777, 0.333000, -0.634207,
		-0.068930, 3.018265, 3.157661>
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
