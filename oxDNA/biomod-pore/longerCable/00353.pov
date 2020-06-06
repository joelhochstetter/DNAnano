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
	<24.134266, 35.504139, 34.894917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.218538, 35.124565, 34.988838>,  <24.269102, 34.896820, 35.045193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.218538, 35.124565, 34.988838>,  <24.134266, 35.504139, 34.894917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.218538, 35.124565, 34.988838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627786, 0.315457, 0.711598,
		-0.749331, -0.002515, 0.662191,
		0.210683, -0.948936, 0.234803,
		24.281744, 34.839886, 35.059280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.931534, 35.357601, 35.600349>,  <24.134266, 35.504139, 34.894917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.931534, 35.357601, 35.600349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.223667, 35.100601, 35.507561>,  <24.398947, 34.946404, 35.451889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.223667, 35.100601, 35.507561>,  <23.931534, 35.357601, 35.600349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.223667, 35.100601, 35.507561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522757, 0.307107, 0.795242,
		-0.439702, -0.702056, 0.560160,
		0.730334, -0.642498, -0.231969,
		24.442768, 34.907852, 35.437969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.102871, 35.121876, 36.166855>,  <23.931534, 35.357601, 35.600349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.102871, 35.121876, 36.166855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.427418, 35.079800, 35.936855>,  <24.622147, 35.054554, 35.798855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.427418, 35.079800, 35.936855>,  <24.102871, 35.121876, 36.166855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.427418, 35.079800, 35.936855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573308, 0.335089, 0.747685,
		0.114023, -0.936296, 0.332188,
		0.811367, -0.105193, -0.574994,
		24.670828, 35.048241, 35.764359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.615858, 34.963253, 36.615345>,  <24.102871, 35.121876, 36.166855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.615858, 34.963253, 36.615345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.841108, 35.078716, 36.305618>,  <24.976259, 35.147995, 36.119781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.841108, 35.078716, 36.305618>,  <24.615858, 34.963253, 36.615345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.841108, 35.078716, 36.305618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621038, 0.470323, 0.626984,
		0.545162, -0.833951, 0.085585,
		0.563126, 0.288656, -0.774317,
		25.010046, 35.165314, 36.073322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.346178, 34.879860, 36.864128>,  <24.615858, 34.963253, 36.615345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.346178, 34.879860, 36.864128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.396126, 35.146049, 36.569767>,  <25.426094, 35.305763, 36.393150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.396126, 35.146049, 36.569767>,  <25.346178, 34.879860, 36.864128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.396126, 35.146049, 36.569767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643071, 0.510537, 0.570798,
		0.755557, -0.544511, -0.364199,
		0.124869, 0.665477, -0.735900,
		25.433586, 35.345692, 36.348995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.082483, 34.979511, 36.588280>,  <25.346178, 34.879860, 36.864128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.082483, 34.979511, 36.588280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.849287, 35.304195, 36.574150>,  <25.709370, 35.499004, 36.565674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.849287, 35.304195, 36.574150>,  <26.082483, 34.979511, 36.588280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.849287, 35.304195, 36.574150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682098, 0.512595, 0.521525,
		0.441434, 0.279950, -0.852504,
		-0.582990, 0.811711, -0.035323,
		25.674391, 35.547710, 36.563553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.540501, 35.607952, 36.376640>,  <26.082483, 34.979511, 36.588280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.540501, 35.607952, 36.376640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.207424, 35.748886, 36.547512>,  <26.007578, 35.833447, 36.650036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.207424, 35.748886, 36.547512>,  <26.540501, 35.607952, 36.376640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.207424, 35.748886, 36.547512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548433, 0.631311, 0.548331,
		-0.076487, 0.690871, -0.718920,
		-0.832689, 0.352339, 0.427184,
		25.957617, 35.854588, 36.675667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.598747, 36.364063, 36.317310>,  <26.540501, 35.607952, 36.376640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.598747, 36.364063, 36.317310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.370010, 36.264824, 36.630089>,  <26.232769, 36.205280, 36.817757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.370010, 36.264824, 36.630089>,  <26.598747, 36.364063, 36.317310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.370010, 36.264824, 36.630089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489488, 0.661717, 0.567919,
		-0.658330, 0.707514, -0.256954,
		-0.571841, -0.248103, 0.781948,
		26.198458, 36.190392, 36.864674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.490135, 37.007820, 36.675533>,  <26.598747, 36.364063, 36.317310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.490135, 37.007820, 36.675533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.349813, 36.750004, 36.947269>,  <26.265621, 36.595314, 37.110313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.349813, 36.750004, 36.947269>,  <26.490135, 37.007820, 36.675533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.349813, 36.750004, 36.947269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242371, 0.638235, 0.730693,
		-0.904540, 0.420983, -0.067678,
		-0.350804, -0.644538, 0.679343,
		26.244572, 36.556641, 37.151073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.999475, 37.381092, 37.086227>,  <26.490135, 37.007820, 36.675533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.999475, 37.381092, 37.086227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.128832, 37.060001, 37.286648>,  <26.206446, 36.867348, 37.406902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.128832, 37.060001, 37.286648>,  <25.999475, 37.381092, 37.086227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.128832, 37.060001, 37.286648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084850, 0.551972, 0.829534,
		-0.942454, -0.225749, 0.246614,
		0.323391, -0.802723, 0.501053,
		26.225849, 36.819183, 37.436962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.538059, 37.472679, 37.628906>,  <25.999475, 37.381092, 37.086227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.538059, 37.472679, 37.628906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.828575, 37.228836, 37.755951>,  <26.002884, 37.082531, 37.832180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.828575, 37.228836, 37.755951>,  <25.538059, 37.472679, 37.628906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.828575, 37.228836, 37.755951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189519, 0.621737, 0.759951,
		-0.660747, -0.491750, 0.567094,
		0.726289, -0.609611, 0.317615,
		26.046461, 37.045952, 37.851234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.577112, 37.463722, 38.358822>,  <25.538059, 37.472679, 37.628906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.577112, 37.463722, 38.358822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.955914, 37.367672, 38.273476>,  <26.183195, 37.310043, 38.222267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.955914, 37.367672, 38.273476>,  <25.577112, 37.463722, 38.358822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.955914, 37.367672, 38.273476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314398, 0.556692, 0.768926,
		-0.065858, -0.795257, 0.602684,
		0.947004, -0.240123, -0.213365,
		26.240015, 37.295635, 38.209465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.883505, 37.418671, 39.049583>,  <25.577112, 37.463722, 38.358822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.883505, 37.418671, 39.049583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.156895, 37.462654, 38.760925>,  <26.320929, 37.489044, 38.587730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.156895, 37.462654, 38.760925>,  <25.883505, 37.418671, 39.049583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.156895, 37.462654, 38.760925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521147, 0.618731, 0.587859,
		0.511145, -0.777870, 0.365582,
		0.683474, 0.109959, -0.721645,
		26.361937, 37.495644, 38.544430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.528854, 37.315395, 39.341133>,  <25.883505, 37.418671, 39.049583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.528854, 37.315395, 39.341133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.562185, 37.544849, 39.015190>,  <26.582184, 37.682522, 38.819622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.562185, 37.544849, 39.015190>,  <26.528854, 37.315395, 39.341133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.562185, 37.544849, 39.015190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649665, 0.588776, 0.480914,
		0.755640, -0.569461, -0.323608,
		0.083330, 0.573635, -0.814861,
		26.587185, 37.716938, 38.770733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.270723, 37.314167, 39.136913>,  <26.528854, 37.315395, 39.341133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.270723, 37.314167, 39.136913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.049576, 37.633999, 39.043098>,  <26.916887, 37.825897, 38.986809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.049576, 37.633999, 39.043098>,  <27.270723, 37.314167, 39.136913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.049576, 37.633999, 39.043098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656136, 0.591245, 0.468952,
		0.513634, 0.105379, -0.851513,
		-0.552870, 0.799578, -0.234541,
		26.883715, 37.873871, 38.972736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.127773, 37.112717, 38.330273>,  <27.270723, 37.314167, 39.136913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.127773, 37.112717, 38.330273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.743269, 37.004662, 38.352188>,  <26.512566, 36.939831, 38.365337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.743269, 37.004662, 38.352188>,  <27.127773, 37.112717, 38.330273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.743269, 37.004662, 38.352188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111902, -0.564120, -0.818075,
		0.251896, -0.780254, 0.572496,
		-0.961263, -0.270134, 0.054787,
		26.454889, 36.923622, 38.368626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.056843, 36.355732, 38.226482>,  <27.127773, 37.112717, 38.330273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.056843, 36.355732, 38.226482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.712601, 36.538986, 38.137512>,  <26.506056, 36.648937, 38.084129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.712601, 36.538986, 38.137512>,  <27.056843, 36.355732, 38.226482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.712601, 36.538986, 38.137512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092228, -0.569733, -0.816638,
		-0.500853, -0.682289, 0.532568,
		-0.860604, 0.458133, -0.222426,
		26.454420, 36.676426, 38.070786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.560013, 35.742947, 38.073044>,  <27.056843, 36.355732, 38.226482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.560013, 35.742947, 38.073044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.456272, 36.085163, 37.893806>,  <26.394028, 36.290493, 37.786263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.456272, 36.085163, 37.893806>,  <26.560013, 35.742947, 38.073044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.456272, 36.085163, 37.893806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612342, -0.504459, -0.608735,
		-0.746843, 0.116513, 0.654714,
		-0.259351, 0.855538, -0.448098,
		26.378468, 36.341824, 37.759377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.883043, 35.707138, 37.989182>,  <26.560013, 35.742947, 38.073044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.883043, 35.707138, 37.989182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.016418, 35.987263, 37.736710>,  <26.096443, 36.155338, 37.585228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.016418, 35.987263, 37.736710>,  <25.883043, 35.707138, 37.989182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.016418, 35.987263, 37.736710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567467, -0.385548, -0.727554,
		-0.752862, 0.600767, 0.268846,
		0.333437, 0.700309, -0.631179,
		26.116449, 36.197357, 37.547356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.259846, 36.035854, 37.830288>,  <25.883043, 35.707138, 37.989182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.259846, 36.035854, 37.830288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.547024, 36.073593, 37.554417>,  <25.719332, 36.096237, 37.388893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.547024, 36.073593, 37.554417>,  <25.259846, 36.035854, 37.830288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.547024, 36.073593, 37.554417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.645063, -0.282194, -0.710113,
		-0.261622, 0.954707, -0.141738,
		0.717947, 0.094351, -0.689674,
		25.762407, 36.101898, 37.347515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.780621, 35.688541, 37.506718>,  <25.259846, 36.035854, 37.830288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.780621, 35.688541, 37.506718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.432310, 35.822117, 37.651070>,  <24.223324, 35.902264, 37.737679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.432310, 35.822117, 37.651070>,  <24.780621, 35.688541, 37.506718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.432310, 35.822117, 37.651070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014299, -0.750855, 0.660312,
		0.491473, 0.569824, 0.658601,
		-0.870775, 0.333943, 0.360877,
		24.171078, 35.922298, 37.759335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.955442, 36.353127, 37.254990>,  <24.780621, 35.688541, 37.506718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.955442, 36.353127, 37.254990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.264881, 36.191662, 37.059601>,  <25.450544, 36.094784, 36.942368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.264881, 36.191662, 37.059601>,  <24.955442, 36.353127, 37.254990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.264881, 36.191662, 37.059601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.633647, -0.485005, -0.602712,
		0.006379, 0.775776, -0.630977,
		0.773596, -0.403661, -0.488474,
		25.496960, 36.070564, 36.913059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.806639, 36.467175, 36.445110>,  <24.955442, 36.353127, 37.254990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.806639, 36.467175, 36.445110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.086599, 36.186005, 36.495758>,  <25.254576, 36.017303, 36.526146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.086599, 36.186005, 36.495758>,  <24.806639, 36.467175, 36.445110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.086599, 36.186005, 36.495758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427420, -0.554241, -0.714234,
		0.572232, 0.445772, -0.688358,
		0.699902, -0.702926, 0.126623,
		25.296570, 35.975128, 36.533745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.216305, 36.455677, 35.817463>,  <24.806639, 36.467175, 36.445110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.216305, 36.455677, 35.817463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.447922, 36.180264, 35.992107>,  <25.586891, 36.015015, 36.096893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.447922, 36.180264, 35.992107>,  <25.216305, 36.455677, 35.817463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.447922, 36.180264, 35.992107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451702, -0.716749, -0.531259,
		0.678730, 0.110404, -0.726041,
		0.579043, -0.688536, 0.436610,
		25.621635, 35.973701, 36.123089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.446493, 36.023582, 35.299126>,  <25.216305, 36.455677, 35.817463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.446493, 36.023582, 35.299126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.470390, 35.815121, 35.639671>,  <25.484728, 35.690044, 35.843998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.470390, 35.815121, 35.639671>,  <25.446493, 36.023582, 35.299126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.470390, 35.815121, 35.639671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300108, -0.822811, -0.482616,
		0.952033, -0.226669, -0.205560,
		0.059743, -0.521157, 0.851368,
		25.488314, 35.658775, 35.895081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.703388, 35.515450, 35.059986>,  <25.446493, 36.023582, 35.299126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.703388, 35.515450, 35.059986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.492636, 35.402134, 35.380520>,  <25.366184, 35.334145, 35.572842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.492636, 35.402134, 35.380520>,  <25.703388, 35.515450, 35.059986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.492636, 35.402134, 35.380520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359821, -0.779814, -0.512269,
		0.770015, -0.558243, 0.308936,
		-0.526883, -0.283293, 0.801336,
		25.334570, 35.317146, 35.620922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.801683, 34.832367, 35.124584>,  <25.703388, 35.515450, 35.059986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.801683, 34.832367, 35.124584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.446106, 34.935184, 35.276218>,  <25.232759, 34.996876, 35.367199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.446106, 34.935184, 35.276218>,  <25.801683, 34.832367, 35.124584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.446106, 34.935184, 35.276218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454280, -0.600319, -0.658215,
		0.058384, -0.757328, 0.650420,
		-0.888944, 0.257043, 0.379088,
		25.179422, 35.012299, 35.389946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.378498, 34.226215, 35.227325>,  <25.801683, 34.832367, 35.124584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.378498, 34.226215, 35.227325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.114613, 34.525726, 35.201672>,  <24.956282, 34.705433, 35.186279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.114613, 34.525726, 35.201672>,  <25.378498, 34.226215, 35.227325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.114613, 34.525726, 35.201672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494051, -0.496428, -0.713774,
		-0.566294, -0.439201, 0.697433,
		-0.659716, 0.748773, -0.064137,
		24.916698, 34.750359, 35.182430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.150801, 33.754169, 34.638695>,  <25.378498, 34.226215, 35.227325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.150801, 33.754169, 34.638695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.131035, 33.518513, 34.961304>,  <25.119175, 33.377121, 35.154869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.131035, 33.518513, 34.961304>,  <25.150801, 33.754169, 34.638695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.131035, 33.518513, 34.961304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248032, -0.789449, -0.561472,
		0.967491, 0.172297, 0.185136,
		-0.049415, -0.589138, 0.806520,
		25.116211, 33.341770, 35.203259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.822355, 33.427402, 34.830612>,  <25.150801, 33.754169, 34.638695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.822355, 33.427402, 34.830612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.507454, 33.196194, 34.916523>,  <25.318514, 33.057468, 34.968071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.507454, 33.196194, 34.916523>,  <25.822355, 33.427402, 34.830612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.507454, 33.196194, 34.916523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331102, -0.690081, -0.643552,
		0.520198, -0.435524, 0.734651,
		-0.787251, -0.578019, 0.214776,
		25.271278, 33.022789, 34.980957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.526600, 33.628544, 35.183987>,  <25.822355, 33.427402, 34.830612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.526600, 33.628544, 35.183987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.750904, 33.946003, 35.278362>,  <26.885487, 34.136478, 35.334988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.750904, 33.946003, 35.278362>,  <26.526600, 33.628544, 35.183987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.750904, 33.946003, 35.278362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617400, -0.590676, 0.519537,
		0.551693, -0.145669, -0.821228,
		0.560760, 0.793651, 0.235935,
		26.919132, 34.184097, 35.349144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.264956, 33.499016, 35.056953>,  <26.526600, 33.628544, 35.183987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.264956, 33.499016, 35.056953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.211832, 33.770576, 35.345798>,  <27.179958, 33.933514, 35.519108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.211832, 33.770576, 35.345798>,  <27.264956, 33.499016, 35.056953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.211832, 33.770576, 35.345798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682617, -0.465581, 0.563265,
		0.718607, 0.567735, -0.401599,
		-0.132809, 0.678904, 0.722116,
		27.171989, 33.974247, 35.562431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.662766, 34.068520, 34.822521>,  <27.264956, 33.499016, 35.056953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.662766, 34.068520, 34.822521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.460979, 34.373142, 34.985268>,  <27.339907, 34.555916, 35.082916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.460979, 34.373142, 34.985268>,  <27.662766, 34.068520, 34.822521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.460979, 34.373142, 34.985268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293511, -0.594413, 0.748681,
		0.812013, 0.258264, 0.523388,
		-0.504466, 0.761559, 0.406868,
		27.309639, 34.601608, 35.107327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.332500, 33.841530, 35.201202>,  <27.662766, 34.068520, 34.822521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.332500, 33.841530, 35.201202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.316679, 33.916344, 35.593826>,  <28.307186, 33.961231, 35.829399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.316679, 33.916344, 35.593826>,  <28.332500, 33.841530, 35.201202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.316679, 33.916344, 35.593826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671799, 0.732150, -0.112437,
		-0.739677, 0.654963, -0.154604,
		-0.039551, 0.187030, 0.981558,
		28.304813, 33.972454, 35.888294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.433071, 34.541424, 35.336666>,  <28.332500, 33.841530, 35.201202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.433071, 34.541424, 35.336666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.554583, 34.379246, 35.681534>,  <28.627489, 34.281937, 35.888454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.554583, 34.379246, 35.681534>,  <28.433071, 34.541424, 35.336666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.554583, 34.379246, 35.681534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656483, 0.744897, 0.118992,
		-0.690470, 0.529849, 0.492455,
		0.303780, -0.405449, 0.862165,
		28.645718, 34.257610, 35.940182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.433662, 35.074017, 35.841320>,  <28.433071, 34.541424, 35.336666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.433662, 35.074017, 35.841320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.681456, 34.766827, 35.906372>,  <28.830132, 34.582512, 35.945404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.681456, 34.766827, 35.906372>,  <28.433662, 35.074017, 35.841320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.681456, 34.766827, 35.906372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705872, 0.635598, 0.312666,
		-0.343490, -0.078894, 0.935837,
		0.619483, -0.767979, 0.162632,
		28.867300, 34.536434, 35.955162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.875031, 35.276352, 36.398739>,  <28.433662, 35.074017, 35.841320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.875031, 35.276352, 36.398739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.069960, 34.980434, 36.213173>,  <29.186916, 34.802883, 36.101833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.069960, 34.980434, 36.213173>,  <28.875031, 35.276352, 36.398739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.069960, 34.980434, 36.213173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.873059, 0.423068, 0.242451,
		0.016904, -0.523177, 0.852057,
		0.487323, -0.739797, -0.463915,
		29.216156, 34.758495, 36.073997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.397175, 35.183411, 36.851994>,  <28.875031, 35.276352, 36.398739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.397175, 35.183411, 36.851994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.529245, 35.027733, 36.508015>,  <29.608488, 34.934326, 36.301628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.529245, 35.027733, 36.508015>,  <29.397175, 35.183411, 36.851994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.529245, 35.027733, 36.508015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.828046, 0.556768, 0.065947,
		0.453125, -0.733850, 0.506104,
		0.330178, -0.389196, -0.859947,
		29.628300, 34.910973, 36.250031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.125170, 34.914864, 36.884014>,  <29.397175, 35.183411, 36.851994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.125170, 34.914864, 36.884014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.057377, 34.998062, 36.498680>,  <30.016701, 35.047981, 36.267479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.057377, 34.998062, 36.498680>,  <30.125170, 34.914864, 36.884014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.057377, 34.998062, 36.498680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.845083, 0.533587, -0.033468,
		0.507062, -0.819770, -0.266207,
		-0.169480, 0.207997, -0.963335,
		30.006533, 35.060463, 36.209679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.646513, 35.312157, 37.289600>,  <30.125170, 34.914864, 36.884014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.646513, 35.312157, 37.289600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.444292, 35.541386, 37.031605>,  <30.322960, 35.678925, 36.876808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.444292, 35.541386, 37.031605>,  <30.646513, 35.312157, 37.289600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.444292, 35.541386, 37.031605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685312, 0.720880, 0.103343,
		0.524179, -0.389770, -0.757176,
		-0.505553, 0.573072, -0.644984,
		30.292625, 35.713306, 36.838108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.736155, 35.696640, 36.608109>,  <30.646513, 35.312157, 37.289600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.736155, 35.696640, 36.608109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.809435, 35.739185, 36.217186>,  <30.853403, 35.764713, 35.982632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.809435, 35.739185, 36.217186>,  <30.736155, 35.696640, 36.608109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.809435, 35.739185, 36.217186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.747718, -0.630343, -0.208768,
		-0.638243, 0.768995, -0.035949,
		0.183202, 0.106365, -0.977304,
		30.864395, 35.771095, 35.923996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.218069, 36.002930, 36.160229>,  <30.736155, 35.696640, 36.608109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.218069, 36.002930, 36.160229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.453884, 35.742676, 35.968765>,  <30.595373, 35.586521, 35.853886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.453884, 35.742676, 35.968765>,  <30.218069, 36.002930, 36.160229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.453884, 35.742676, 35.968765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.807241, -0.453757, -0.377447,
		0.028387, 0.608912, -0.792730,
		0.589539, -0.650639, -0.478658,
		30.630745, 35.547485, 35.825169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.032846, 35.951611, 35.361893>,  <30.218069, 36.002930, 36.160229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.032846, 35.951611, 35.361893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.189077, 35.637123, 35.553436>,  <30.282816, 35.448429, 35.668362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.189077, 35.637123, 35.553436>,  <30.032846, 35.951611, 35.361893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.189077, 35.637123, 35.553436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.865835, -0.490435, -0.099013,
		0.312697, -0.375943, -0.872288,
		0.390578, -0.786219, 0.478862,
		30.306252, 35.401257, 35.697094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.803818, 35.361111, 34.959511>,  <30.032846, 35.951611, 35.361893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.803818, 35.361111, 34.959511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.900539, 35.246769, 35.330418>,  <29.958572, 35.178165, 35.552959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.900539, 35.246769, 35.330418>,  <29.803818, 35.361111, 34.959511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.900539, 35.246769, 35.330418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.811636, -0.583295, 0.031840,
		0.531767, -0.760301, -0.373051,
		0.241806, -0.285850, 0.927264,
		29.973082, 35.161015, 35.608597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.985458, 34.550331, 35.068539>,  <29.803818, 35.361111, 34.959511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.985458, 34.550331, 35.068539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.894274, 34.661972, 35.441662>,  <29.839563, 34.728954, 35.665535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.894274, 34.661972, 35.441662>,  <29.985458, 34.550331, 35.068539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.894274, 34.661972, 35.441662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.762098, -0.647419, 0.007467,
		0.606003, -0.709191, 0.360288,
		-0.227962, 0.279100, 0.932811,
		29.825886, 34.745701, 35.721504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.899248, 33.898571, 35.415474>,  <29.985458, 34.550331, 35.068539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.899248, 33.898571, 35.415474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.673231, 34.172939, 35.598881>,  <29.537621, 34.337563, 35.708923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.673231, 34.172939, 35.598881>,  <29.899248, 33.898571, 35.415474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.673231, 34.172939, 35.598881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.730089, -0.674541, 0.109382,
		0.384314, -0.272950, 0.881930,
		-0.565042, 0.685925, 0.458513,
		29.503719, 34.378716, 35.736435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.066923, 33.348866, 35.036190>,  <29.899248, 33.898571, 35.415474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.066923, 33.348866, 35.036190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.221012, 33.269665, 34.675659>,  <30.313465, 33.222145, 34.459339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.221012, 33.269665, 34.675659>,  <30.066923, 33.348866, 35.036190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.221012, 33.269665, 34.675659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190688, 0.972710, -0.132188,
		0.902907, -0.120951, 0.412467,
		0.385222, -0.198006, -0.901331,
		30.336578, 33.210262, 34.405258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.632210, 33.808071, 34.893761>,  <30.066923, 33.348866, 35.036190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.632210, 33.808071, 34.893761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.512350, 33.677605, 34.535133>,  <30.440434, 33.599327, 34.319958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.512350, 33.677605, 34.535133>,  <30.632210, 33.808071, 34.893761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.512350, 33.677605, 34.535133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126606, 0.917840, -0.376218,
		0.945612, -0.226244, -0.233735,
		-0.299649, -0.326164, -0.896564,
		30.422455, 33.579754, 34.266163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.141430, 33.927849, 34.301197>,  <30.632210, 33.808071, 34.893761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.141430, 33.927849, 34.301197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.751150, 33.929520, 34.213566>,  <30.516983, 33.930523, 34.160988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.751150, 33.929520, 34.213566>,  <31.141430, 33.927849, 34.301197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.751150, 33.929520, 34.213566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047875, 0.979725, -0.194545,
		0.213823, -0.200306, -0.956116,
		-0.975699, 0.004176, -0.219077,
		30.458441, 33.930771, 34.147842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.399015, 33.232651, 34.033962>,  <31.141430, 33.927849, 34.301197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.399015, 33.232651, 34.033962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.788404, 33.323330, 34.021576>,  <32.022038, 33.377739, 34.014145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.788404, 33.323330, 34.021576>,  <31.399015, 33.232651, 34.033962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.788404, 33.323330, 34.021576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201571, -0.913745, -0.352759,
		-0.108262, 0.337161, -0.935202,
		0.973472, 0.226700, -0.030962,
		32.080444, 33.391338, 34.012287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.879759, 33.827206, 33.738537>,  <31.399015, 33.232651, 34.033962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.879759, 33.827206, 33.738537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.717257, 34.169712, 33.866138>,  <31.619755, 34.375217, 33.942699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.717257, 34.169712, 33.866138>,  <31.879759, 33.827206, 33.738537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.717257, 34.169712, 33.866138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.873179, 0.260902, 0.411689,
		0.269287, 0.445799, -0.853667,
		-0.406254, 0.856267, 0.319005,
		31.595381, 34.426594, 33.961842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.094124, 34.573231, 33.385921>,  <31.879759, 33.827206, 33.738537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.094124, 34.573231, 33.385921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.002445, 34.561661, 33.775101>,  <31.947439, 34.554718, 34.008610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.002445, 34.561661, 33.775101>,  <32.094124, 34.573231, 33.385921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.002445, 34.561661, 33.775101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.922639, 0.312058, 0.226621,
		-0.310173, 0.949622, -0.044831,
		-0.229194, -0.028929, 0.972951,
		31.933687, 34.552982, 34.066986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.035927, 35.278812, 33.803951>,  <32.094124, 34.573231, 33.385921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.035927, 35.278812, 33.803951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.151466, 34.957340, 34.012051>,  <32.220791, 34.764458, 34.136909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.151466, 34.957340, 34.012051>,  <32.035927, 35.278812, 33.803951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.151466, 34.957340, 34.012051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.946760, 0.320486, -0.030569,
		-0.142166, 0.501383, 0.853466,
		0.288851, -0.803681, 0.520252,
		32.238121, 34.716236, 34.168125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.324856, 35.383537, 34.534187>,  <32.035927, 35.278812, 33.803951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.324856, 35.383537, 34.534187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.487980, 35.081203, 34.329285>,  <32.585854, 34.899803, 34.206345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.487980, 35.081203, 34.329285>,  <32.324856, 35.383537, 34.534187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.487980, 35.081203, 34.329285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.851223, 0.517679, -0.086180,
		0.330321, -0.400897, 0.854500,
		0.407808, -0.755837, -0.512253,
		32.610321, 34.854454, 34.175610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.036880, 35.072041, 34.753815>,  <32.324856, 35.383537, 34.534187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.036880, 35.072041, 34.753815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.981037, 35.064144, 34.357811>,  <32.947529, 35.059406, 34.120209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.981037, 35.064144, 34.357811>,  <33.036880, 35.072041, 34.753815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.981037, 35.064144, 34.357811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.875327, 0.464962, -0.132710,
		0.462936, -0.885110, -0.047638,
		-0.139613, -0.019737, -0.990009,
		32.939152, 35.058224, 34.060806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.685795, 35.152969, 34.439095>,  <33.036880, 35.072041, 34.753815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.685795, 35.152969, 34.439095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.462105, 35.205475, 34.111671>,  <33.327888, 35.236977, 33.915218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.462105, 35.205475, 34.111671>,  <33.685795, 35.152969, 34.439095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.462105, 35.205475, 34.111671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747873, 0.505913, -0.429811,
		0.357700, -0.852539, -0.381089,
		-0.559228, 0.131263, -0.818556,
		33.294334, 35.244854, 33.866104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.161514, 34.964031, 33.886093>,  <33.685795, 35.152969, 34.439095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.161514, 34.964031, 33.886093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.908508, 35.248993, 33.764503>,  <33.756702, 35.419971, 33.691551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.908508, 35.248993, 33.764503>,  <34.161514, 34.964031, 33.886093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.908508, 35.248993, 33.764503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.759970, 0.495049, -0.421155,
		-0.149551, -0.497399, -0.854534,
		-0.632518, 0.712405, -0.303973,
		33.718754, 35.462715, 33.673313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.465527, 35.198082, 33.327629>,  <34.161514, 34.964031, 33.886093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.465527, 35.198082, 33.327629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.236141, 35.506447, 33.438496>,  <34.098511, 35.691467, 33.505016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.236141, 35.506447, 33.438496>,  <34.465527, 35.198082, 33.327629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.236141, 35.506447, 33.438496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.770389, 0.622548, -0.137606,
		-0.278634, 0.134616, -0.950916,
		-0.573467, 0.770917, 0.277170,
		34.064102, 35.737720, 33.521648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.314056, 35.694359, 32.790367>,  <34.465527, 35.198082, 33.327629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.314056, 35.694359, 32.790367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.342186, 35.842373, 33.160908>,  <34.359062, 35.931179, 33.383232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.342186, 35.842373, 33.160908>,  <34.314056, 35.694359, 32.790367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.342186, 35.842373, 33.160908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.774620, 0.564854, -0.284436,
		-0.628505, 0.737574, -0.246911,
		0.070324, 0.370032, 0.926354,
		34.363281, 35.953381, 33.438812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.184464, 36.468800, 32.863087>,  <34.314056, 35.694359, 32.790367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.184464, 36.468800, 32.863087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.407188, 36.350166, 33.173439>,  <34.540825, 36.278984, 33.359650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.407188, 36.350166, 33.173439>,  <34.184464, 36.468800, 32.863087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.407188, 36.350166, 33.173439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737619, 0.606056, -0.297682,
		-0.381940, 0.738059, 0.556229,
		0.556813, -0.296588, 0.775883,
		34.574234, 36.261189, 33.406204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.354000, 37.159660, 33.171307>,  <34.184464, 36.468800, 32.863087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.354000, 37.159660, 33.171307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.602230, 36.854519, 33.243904>,  <34.751167, 36.671432, 33.287464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.602230, 36.854519, 33.243904>,  <34.354000, 37.159660, 33.171307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.602230, 36.854519, 33.243904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747603, 0.505746, -0.430476,
		0.236601, 0.402828, 0.884166,
		0.620572, -0.762857, 0.181495,
		34.788403, 36.625664, 33.298351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.991642, 37.391075, 33.581940>,  <34.354000, 37.159660, 33.171307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.991642, 37.391075, 33.581940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.053932, 37.079212, 33.339325>,  <35.091305, 36.892094, 33.193756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.053932, 37.079212, 33.339325>,  <34.991642, 37.391075, 33.581940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.053932, 37.079212, 33.339325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737866, 0.500044, -0.453332,
		0.656738, -0.376948, 0.653150,
		0.155722, -0.779658, -0.606535,
		35.100647, 36.845314, 33.157364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.719181, 37.151257, 33.648495>,  <34.991642, 37.391075, 33.581940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.719181, 37.151257, 33.648495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.566990, 37.047741, 33.293358>,  <35.475677, 36.985630, 33.080276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.566990, 37.047741, 33.293358>,  <35.719181, 37.151257, 33.648495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.566990, 37.047741, 33.293358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.823972, 0.341036, -0.452508,
		0.419892, -0.903726, 0.083481,
		-0.380474, -0.258791, -0.887844,
		35.452847, 36.970104, 33.027004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.185104, 37.812546, 33.473202>,  <35.719181, 37.151257, 33.648495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.185104, 37.812546, 33.473202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.496964, 37.607151, 33.616585>,  <36.684078, 37.483913, 33.702614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.496964, 37.607151, 33.616585>,  <36.185104, 37.812546, 33.473202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.496964, 37.607151, 33.616585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354407, -0.110115, -0.928585,
		0.516285, 0.851005, 0.096132,
		0.779645, -0.513484, 0.358453,
		36.730858, 37.453106, 33.724121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.769657, 38.091515, 33.257191>,  <36.185104, 37.812546, 33.473202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.769657, 38.091515, 33.257191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.839016, 37.700520, 33.305279>,  <36.880630, 37.465923, 33.334129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.839016, 37.700520, 33.305279>,  <36.769657, 38.091515, 33.257191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.839016, 37.700520, 33.305279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086433, -0.106490, -0.990550,
		0.981052, 0.182149, 0.066022,
		0.173397, -0.977487, 0.120216,
		36.891037, 37.407272, 33.341343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.403164, 37.963093, 32.917133>,  <36.769657, 38.091515, 33.257191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.403164, 37.963093, 32.917133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.126884, 37.675098, 32.890148>,  <36.961117, 37.502300, 32.873959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.126884, 37.675098, 32.890148>,  <37.403164, 37.963093, 32.917133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.126884, 37.675098, 32.890148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327200, -0.227964, -0.917046,
		0.644883, -0.655477, 0.393035,
		-0.690700, -0.719988, -0.067462,
		36.919674, 37.459103, 32.869911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.583618, 37.222885, 32.793503>,  <37.403164, 37.963093, 32.917133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.583618, 37.222885, 32.793503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.213909, 37.278252, 32.651199>,  <36.992085, 37.311470, 32.565815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.213909, 37.278252, 32.651199>,  <37.583618, 37.222885, 32.793503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.213909, 37.278252, 32.651199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262643, -0.445730, -0.855771,
		-0.277025, -0.884402, 0.375621,
		-0.924270, 0.138416, -0.355761,
		36.936626, 37.319778, 32.544472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.116024, 36.611179, 32.638233>,  <37.583618, 37.222885, 32.793503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.116024, 36.611179, 32.638233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.014801, 36.919907, 32.404907>,  <36.954067, 37.105145, 32.264912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.014801, 36.919907, 32.404907>,  <37.116024, 36.611179, 32.638233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.014801, 36.919907, 32.404907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237538, -0.534914, -0.810828,
		-0.937836, -0.343748, -0.047970,
		-0.253061, 0.771819, -0.583315,
		36.938881, 37.151451, 32.229912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.513000, 36.399258, 32.207798>,  <37.116024, 36.611179, 32.638233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.513000, 36.399258, 32.207798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.686390, 36.716564, 32.036770>,  <36.790424, 36.906948, 31.934153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.686390, 36.716564, 32.036770>,  <36.513000, 36.399258, 32.207798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.686390, 36.716564, 32.036770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093145, -0.432487, -0.896816,
		-0.896338, 0.428575, -0.113584,
		0.433476, 0.793271, -0.427575,
		36.816433, 36.954544, 31.908497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.052227, 36.673222, 31.622759>,  <36.513000, 36.399258, 32.207798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.052227, 36.673222, 31.622759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.432106, 36.780277, 31.557713>,  <36.660034, 36.844509, 31.518684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.432106, 36.780277, 31.557713>,  <36.052227, 36.673222, 31.622759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.432106, 36.780277, 31.557713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040052, -0.411190, -0.910670,
		-0.310594, 0.871375, -0.379787,
		0.949699, 0.267637, -0.162613,
		36.717014, 36.860569, 31.508928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.103352, 36.879097, 30.825224>,  <36.052227, 36.673222, 31.622759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.103352, 36.879097, 30.825224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.490997, 36.867207, 30.923155>,  <36.723583, 36.860073, 30.981915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.490997, 36.867207, 30.923155>,  <36.103352, 36.879097, 30.825224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.490997, 36.867207, 30.923155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239599, -0.121822, -0.963199,
		0.058459, 0.992107, -0.110936,
		0.969110, -0.029728, 0.244829,
		36.781731, 36.858288, 30.996603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.438618, 37.312782, 30.336252>,  <36.103352, 36.879097, 30.825224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.438618, 37.312782, 30.336252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.743874, 37.099388, 30.482132>,  <36.927029, 36.971352, 30.569660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.743874, 37.099388, 30.482132>,  <36.438618, 37.312782, 30.336252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.743874, 37.099388, 30.482132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312719, -0.189006, -0.930851,
		0.565526, 0.824421, 0.022592,
		0.763143, -0.533486, 0.364700,
		36.972816, 36.939342, 30.591541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.082054, 37.600300, 30.017952>,  <36.438618, 37.312782, 30.336252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.082054, 37.600300, 30.017952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.120422, 37.216156, 30.122644>,  <37.143444, 36.985668, 30.185459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.120422, 37.216156, 30.122644>,  <37.082054, 37.600300, 30.017952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.120422, 37.216156, 30.122644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258161, -0.229944, -0.938338,
		0.961329, 0.157571, 0.225873,
		0.095917, -0.960363, 0.261731,
		37.149197, 36.928047, 30.201164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.710896, 37.302425, 29.528753>,  <37.082054, 37.600300, 30.017952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.710896, 37.302425, 29.528753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.515060, 36.988647, 29.681038>,  <37.397560, 36.800381, 29.772409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.515060, 36.988647, 29.681038>,  <37.710896, 37.302425, 29.528753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.515060, 36.988647, 29.681038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055198, -0.463629, -0.884309,
		0.870204, -0.411934, 0.270288,
		-0.489590, -0.784448, 0.380713,
		37.368183, 36.753311, 29.795252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.068493, 36.741810, 29.318449>,  <37.710896, 37.302425, 29.528753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.068493, 36.741810, 29.318449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.702805, 36.609787, 29.412487>,  <37.483391, 36.530575, 29.468910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.702805, 36.609787, 29.412487>,  <38.068493, 36.741810, 29.318449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.702805, 36.609787, 29.412487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028533, -0.526287, -0.849828,
		0.404218, -0.783636, 0.471723,
		-0.914217, -0.330056, 0.235094,
		37.428539, 36.510769, 29.483015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.161316, 36.111301, 29.042618>,  <38.068493, 36.741810, 29.318449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.161316, 36.111301, 29.042618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.767883, 36.130386, 29.112244>,  <37.531826, 36.141838, 29.154018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.767883, 36.130386, 29.112244>,  <38.161316, 36.111301, 29.042618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.767883, 36.130386, 29.112244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178543, -0.398275, -0.899722,
		0.026398, -0.916025, 0.400253,
		-0.983578, 0.047712, 0.174064,
		37.472809, 36.144699, 29.164463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.850788, 35.393661, 28.896986>,  <38.161316, 36.111301, 29.042618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.850788, 35.393661, 28.896986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.609436, 35.710289, 28.858295>,  <37.464626, 35.900265, 28.835081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.609436, 35.710289, 28.858295>,  <37.850788, 35.393661, 28.896986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.609436, 35.710289, 28.858295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303177, -0.339884, -0.890260,
		-0.737577, -0.507837, 0.445063,
		-0.603377, 0.791568, -0.096726,
		37.428421, 35.947758, 28.829277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.378590, 35.110783, 28.588081>,  <37.850788, 35.393661, 28.896986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.378590, 35.110783, 28.588081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.269241, 35.491302, 28.531086>,  <37.203632, 35.719612, 28.496889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.269241, 35.491302, 28.531086>,  <37.378590, 35.110783, 28.588081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.269241, 35.491302, 28.531086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411371, -0.249525, -0.876647,
		-0.869505, -0.181037, 0.459550,
		-0.273375, 0.951295, -0.142490,
		37.187229, 35.776691, 28.488338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.605267, 35.135746, 28.363281>,  <37.378590, 35.110783, 28.588081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.605267, 35.135746, 28.363281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.813545, 35.459278, 28.253983>,  <36.938515, 35.653397, 28.188404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.813545, 35.459278, 28.253983>,  <36.605267, 35.135746, 28.363281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.813545, 35.459278, 28.253983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228669, -0.176235, -0.957419,
		-0.822546, 0.561012, 0.093189,
		0.520700, 0.808831, -0.273247,
		36.969757, 35.701927, 28.172009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.124805, 35.482338, 27.909327>,  <36.605267, 35.135746, 28.363281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.124805, 35.482338, 27.909327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.482906, 35.649784, 27.848295>,  <36.697769, 35.750252, 27.811676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.482906, 35.649784, 27.848295>,  <36.124805, 35.482338, 27.909327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.482906, 35.649784, 27.848295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234508, 0.151541, -0.960230,
		-0.378843, 0.895432, 0.233836,
		0.895256, 0.418613, -0.152576,
		36.751484, 35.775368, 27.802523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.010651, 36.118305, 27.536833>,  <36.124805, 35.482338, 27.909327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.010651, 36.118305, 27.536833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.390343, 36.019264, 27.459209>,  <36.618156, 35.959839, 27.412636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.390343, 36.019264, 27.459209>,  <36.010651, 36.118305, 27.536833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.390343, 36.019264, 27.459209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104915, 0.332395, -0.937287,
		0.296576, 0.910060, 0.289541,
		0.949229, -0.247600, -0.194060,
		36.675110, 35.944984, 27.400991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.290340, 36.574764, 27.049973>,  <36.010651, 36.118305, 27.536833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.290340, 36.574764, 27.049973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.556904, 36.278988, 27.011774>,  <36.716843, 36.101521, 26.988855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.556904, 36.278988, 27.011774>,  <36.290340, 36.574764, 27.049973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.556904, 36.278988, 27.011774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057397, 0.178583, -0.982249,
		0.743371, 0.649102, 0.161452,
		0.666412, -0.739442, -0.095497,
		36.756828, 36.057156, 26.983126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.689381, 36.807629, 26.560743>,  <36.290340, 36.574764, 27.049973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.689381, 36.807629, 26.560743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.780609, 36.418186, 26.557467>,  <36.835346, 36.184521, 26.555500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.780609, 36.418186, 26.557467>,  <36.689381, 36.807629, 26.560743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.780609, 36.418186, 26.557467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119696, -0.019685, -0.992616,
		0.966260, 0.227365, -0.121027,
		0.228069, -0.973611, -0.008194,
		36.849030, 36.126102, 26.555008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.293358, 36.704788, 26.195030>,  <36.689381, 36.807629, 26.560743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.293358, 36.704788, 26.195030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.060329, 36.380722, 26.168989>,  <36.920513, 36.186283, 26.153364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.060329, 36.380722, 26.168989>,  <37.293358, 36.704788, 26.195030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.060329, 36.380722, 26.168989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036209, 0.105889, -0.993718,
		0.811972, -0.576555, -0.091023,
		-0.582572, -0.810168, -0.065103,
		36.885559, 36.137672, 26.149458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.429905, 36.449696, 25.546623>,  <37.293358, 36.704788, 26.195030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.429905, 36.449696, 25.546623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.101742, 36.247185, 25.652924>,  <36.904846, 36.125679, 25.716703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.101742, 36.247185, 25.652924>,  <37.429905, 36.449696, 25.546623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.101742, 36.247185, 25.652924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358142, 0.092688, -0.929055,
		0.445726, -0.857376, -0.257360,
		-0.820404, -0.506275, 0.265749,
		36.855621, 36.095303, 25.732649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.375511, 35.918095, 24.979067>,  <37.429905, 36.449696, 25.546623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.375511, 35.918095, 24.979067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.024349, 35.922504, 25.170549>,  <36.813652, 35.925152, 25.285439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.024349, 35.922504, 25.170549>,  <37.375511, 35.918095, 24.979067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.024349, 35.922504, 25.170549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478124, -0.074500, -0.875127,
		0.026017, -0.997160, 0.070674,
		-0.877907, 0.011023, 0.478704,
		36.760979, 35.925812, 25.314161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.053131, 35.281994, 24.810026>,  <37.375511, 35.918095, 24.979067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.053131, 35.281994, 24.810026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.778194, 35.549320, 24.923815>,  <36.613232, 35.709717, 24.992088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.778194, 35.549320, 24.923815>,  <37.053131, 35.281994, 24.810026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.778194, 35.549320, 24.923815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498731, -0.149522, -0.853763,
		-0.528046, -0.728698, 0.436081,
		-0.687339, 0.668313, 0.284470,
		36.571991, 35.749813, 25.009155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.467373, 35.013206, 24.495615>,  <37.053131, 35.281994, 24.810026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.467373, 35.013206, 24.495615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.372990, 35.393276, 24.577087>,  <36.316360, 35.621319, 24.625971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.372990, 35.393276, 24.577087>,  <36.467373, 35.013206, 24.495615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.372990, 35.393276, 24.577087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492958, 0.063587, -0.867727,
		-0.837445, -0.305157, 0.453393,
		-0.235962, 0.950177, 0.203680,
		36.302200, 35.678329, 24.638191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.675625, 35.066936, 24.328508>,  <36.467373, 35.013206, 24.495615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.675625, 35.066936, 24.328508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.840351, 35.431442, 24.329058>,  <35.939186, 35.650146, 24.329388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.840351, 35.431442, 24.329058>,  <35.675625, 35.066936, 24.328508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.840351, 35.431442, 24.329058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497453, 0.226070, -0.837516,
		-0.763511, 0.344218, 0.546411,
		0.411815, 0.911266, 0.001374,
		35.963894, 35.704823, 24.329470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.092735, 35.566204, 24.244078>,  <35.675625, 35.066936, 24.328508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.092735, 35.566204, 24.244078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.420479, 35.760208, 24.121822>,  <35.617126, 35.876610, 24.048470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.420479, 35.760208, 24.121822>,  <35.092735, 35.566204, 24.244078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.420479, 35.760208, 24.121822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504094, 0.355641, -0.787026,
		-0.273019, 0.798927, 0.535889,
		0.819359, 0.485011, -0.305637,
		35.666286, 35.905712, 24.030130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.819454, 36.090496, 23.729139>,  <35.092735, 35.566204, 24.244078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.819454, 36.090496, 23.729139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.212128, 36.091904, 23.652945>,  <35.447731, 36.092751, 23.607227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.212128, 36.091904, 23.652945>,  <34.819454, 36.090496, 23.729139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.212128, 36.091904, 23.652945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185877, 0.237067, -0.953545,
		0.041799, 0.971487, 0.233380,
		0.981683, 0.003523, -0.190486,
		35.506634, 36.092960, 23.595798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.028572, 36.786057, 23.329868>,  <34.819454, 36.090496, 23.729139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.028572, 36.786057, 23.329868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.275909, 36.476482, 23.275202>,  <35.424313, 36.290737, 23.242403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.275909, 36.476482, 23.275202>,  <35.028572, 36.786057, 23.329868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.275909, 36.476482, 23.275202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031415, 0.198098, -0.979679,
		0.785277, 0.601488, 0.146806,
		0.618347, -0.773931, -0.136665,
		35.461414, 36.244305, 23.234201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.293976, 36.984146, 22.748213>,  <35.028572, 36.786057, 23.329868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.293976, 36.984146, 22.748213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.398750, 36.598377, 22.733952>,  <35.461617, 36.366917, 22.725395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.398750, 36.598377, 22.733952>,  <35.293976, 36.984146, 22.748213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.398750, 36.598377, 22.733952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056859, 0.021457, -0.998151,
		0.963408, 0.263481, -0.049216,
		0.261938, -0.964426, -0.035653,
		35.477333, 36.309048, 22.723255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.711121, 37.038857, 22.191238>,  <35.293976, 36.984146, 22.748213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.711121, 37.038857, 22.191238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.627178, 36.650063, 22.233597>,  <35.576813, 36.416786, 22.259012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.627178, 36.650063, 22.233597>,  <35.711121, 37.038857, 22.191238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.627178, 36.650063, 22.233597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106776, -0.084878, -0.990654,
		0.971884, -0.219203, -0.085972,
		-0.209857, -0.971981, 0.105897,
		35.564220, 36.358467, 22.265366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.124146, 36.649170, 21.741766>,  <35.711121, 37.038857, 22.191238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.124146, 36.649170, 21.741766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.821869, 36.396187, 21.809795>,  <35.640503, 36.244396, 21.850613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.821869, 36.396187, 21.809795>,  <36.124146, 36.649170, 21.741766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.821869, 36.396187, 21.809795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070002, -0.180196, -0.981137,
		0.651176, -0.753342, 0.091899,
		-0.755691, -0.632460, 0.170075,
		35.595161, 36.206448, 21.860817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.346024, 36.198589, 21.340227>,  <36.124146, 36.649170, 21.741766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.346024, 36.198589, 21.340227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.972721, 36.082806, 21.425320>,  <35.748741, 36.013336, 21.476376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.972721, 36.082806, 21.425320>,  <36.346024, 36.198589, 21.340227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.972721, 36.082806, 21.425320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047173, -0.488313, -0.871393,
		0.356113, -0.823264, 0.442064,
		-0.933252, -0.289461, 0.212730,
		35.692745, 35.995968, 21.489140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.257729, 35.430679, 21.313166>,  <36.346024, 36.198589, 21.340227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.257729, 35.430679, 21.313166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.908298, 35.612892, 21.244638>,  <35.698639, 35.722221, 21.203522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.908298, 35.612892, 21.244638>,  <36.257729, 35.430679, 21.313166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.908298, 35.612892, 21.244638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058118, -0.447131, -0.892579,
		-0.483206, -0.769778, 0.417077,
		-0.873576, 0.455539, -0.171319,
		35.646225, 35.749554, 21.193243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.827126, 34.864388, 20.966469>,  <36.257729, 35.430679, 21.313166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.827126, 34.864388, 20.966469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.678589, 35.226753, 20.885056>,  <35.589466, 35.444172, 20.836208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.678589, 35.226753, 20.885056>,  <35.827126, 34.864388, 20.966469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.678589, 35.226753, 20.885056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027711, -0.229922, -0.972815,
		-0.928083, -0.355605, 0.110483,
		-0.371340, 0.905915, -0.203532,
		35.567188, 35.498528, 20.823996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.452820, 34.740967, 20.416361>,  <35.827126, 34.864388, 20.966469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.452820, 34.740967, 20.416361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.477196, 35.139706, 20.396023>,  <35.491821, 35.378948, 20.383820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.477196, 35.139706, 20.396023>,  <35.452820, 34.740967, 20.416361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.477196, 35.139706, 20.396023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050048, -0.047822, -0.997601,
		-0.996886, 0.063339, 0.046975,
		0.060940, 0.996846, -0.050843,
		35.495480, 35.438759, 20.380770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.980236, 34.904034, 19.991575>,  <35.452820, 34.740967, 20.416361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.980236, 34.904034, 19.991575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.238438, 35.208569, 19.967255>,  <35.393356, 35.391289, 19.952662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.238438, 35.208569, 19.967255>,  <34.980236, 34.904034, 19.991575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.238438, 35.208569, 19.967255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250993, 0.136270, -0.958349,
		-0.721339, 0.633878, 0.279052,
		0.645502, 0.761334, -0.060802,
		35.432087, 35.436970, 19.949015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.781693, 35.254055, 19.336468>,  <34.980236, 34.904034, 19.991575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.781693, 35.254055, 19.336468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.091686, 35.483536, 19.442497>,  <35.277683, 35.621223, 19.506115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.091686, 35.483536, 19.442497>,  <34.781693, 35.254055, 19.336468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.091686, 35.483536, 19.442497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008061, 0.410426, -0.911858,
		-0.631927, 0.708814, 0.313450,
		0.774986, 0.573702, 0.265073,
		35.324181, 35.655647, 19.522018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.623463, 36.032516, 19.218319>,  <34.781693, 35.254055, 19.336468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.623463, 36.032516, 19.218319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.017994, 35.977016, 19.182739>,  <35.254711, 35.943714, 19.161392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.017994, 35.977016, 19.182739>,  <34.623463, 36.032516, 19.218319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.017994, 35.977016, 19.182739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008723, 0.582872, -0.812517,
		0.164585, 0.800630, 0.576111,
		0.986324, -0.138753, -0.088948,
		35.313892, 35.935390, 19.156055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.965588, 36.746593, 19.090727>,  <34.623463, 36.032516, 19.218319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.965588, 36.746593, 19.090727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.231411, 36.480331, 18.954927>,  <35.390907, 36.320576, 18.873447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.231411, 36.480331, 18.954927>,  <34.965588, 36.746593, 19.090727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.231411, 36.480331, 18.954927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021404, 0.471115, -0.881812,
		0.746926, 0.578753, 0.327333,
		0.664563, -0.665655, -0.339500,
		35.430779, 36.280636, 18.853077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.499714, 37.097057, 18.749607>,  <34.965588, 36.746593, 19.090727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.499714, 37.097057, 18.749607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.556503, 36.729225, 18.603069>,  <35.590576, 36.508526, 18.515146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.556503, 36.729225, 18.603069>,  <35.499714, 37.097057, 18.749607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.556503, 36.729225, 18.603069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190861, 0.388582, -0.901430,
		0.971295, 0.058061, 0.230683,
		0.141977, -0.919583, -0.366346,
		35.599098, 36.453350, 18.493166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.994453, 37.199039, 18.282307>,  <35.499714, 37.097057, 18.749607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.994453, 37.199039, 18.282307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.833824, 36.849327, 18.173225>,  <35.737446, 36.639500, 18.107777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.833824, 36.849327, 18.173225>,  <35.994453, 37.199039, 18.282307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.833824, 36.849327, 18.173225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070934, 0.267179, -0.961032,
		0.913074, -0.405272, -0.045276,
		-0.401576, -0.874282, -0.272702,
		35.713352, 36.587044, 18.091415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.469051, 36.870281, 17.822294>,  <35.994453, 37.199039, 18.282307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.469051, 36.870281, 17.822294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.129791, 36.673195, 17.744444>,  <35.926235, 36.554943, 17.697735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.129791, 36.673195, 17.744444>,  <36.469051, 36.870281, 17.822294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.129791, 36.673195, 17.744444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069485, 0.260742, -0.962905,
		0.525182, -0.830210, -0.186912,
		-0.848148, -0.492713, -0.194624,
		35.875347, 36.525383, 17.686056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.687420, 36.584633, 17.306742>,  <36.469051, 36.870281, 17.822294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.687420, 36.584633, 17.306742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.288025, 36.571335, 17.289255>,  <36.048386, 36.563358, 17.278763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.288025, 36.571335, 17.289255>,  <36.687420, 36.584633, 17.306742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.288025, 36.571335, 17.289255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030150, 0.333597, -0.942234,
		0.045904, -0.942129, -0.332091,
		-0.998491, -0.033240, -0.043718,
		35.988476, 36.561363, 17.276140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.582096, 36.221951, 16.757416>,  <36.687420, 36.584633, 17.306742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.582096, 36.221951, 16.757416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.247086, 36.429482, 16.825968>,  <36.046078, 36.554001, 16.867100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.247086, 36.429482, 16.825968>,  <36.582096, 36.221951, 16.757416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.247086, 36.429482, 16.825968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059799, 0.398806, -0.915083,
		-0.543117, -0.756156, -0.365035,
		-0.837524, 0.518826, 0.171381,
		35.995827, 36.585129, 16.877382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.177471, 36.204720, 16.137411>,  <36.582096, 36.221951, 16.757416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.177471, 36.204720, 16.137411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.999336, 36.522545, 16.302502>,  <35.892456, 36.713242, 16.401556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.999336, 36.522545, 16.302502>,  <36.177471, 36.204720, 16.137411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.999336, 36.522545, 16.302502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072990, 0.427211, -0.901201,
		-0.892384, -0.431462, -0.132257,
		-0.445335, 0.794564, 0.412729,
		35.865734, 36.760914, 16.426321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.510422, 36.534714, 15.776231>,  <36.177471, 36.204720, 16.137411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.510422, 36.534714, 15.776231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.691055, 36.814388, 15.997937>,  <35.799435, 36.982193, 16.130960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.691055, 36.814388, 15.997937>,  <35.510422, 36.534714, 15.776231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.691055, 36.814388, 15.997937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062596, 0.644513, -0.762027,
		-0.890029, 0.309426, 0.334819,
		0.451586, 0.699184, 0.554266,
		35.826530, 37.024143, 16.164217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.043755, 37.136116, 15.841577>,  <35.510422, 36.534714, 15.776231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.043755, 37.136116, 15.841577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.430878, 37.227592, 15.883603>,  <35.663151, 37.282478, 15.908819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.430878, 37.227592, 15.883603>,  <35.043755, 37.136116, 15.841577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.430878, 37.227592, 15.883603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099212, 0.730342, -0.675838,
		-0.231296, 0.643660, 0.729523,
		0.967812, 0.228696, 0.105066,
		35.721222, 37.296200, 15.915123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.003803, 37.874779, 16.045748>,  <35.043755, 37.136116, 15.841577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.003803, 37.874779, 16.045748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.057251, 38.262371, 15.962584>,  <35.089321, 38.494926, 15.912685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.057251, 38.262371, 15.962584>,  <35.003803, 37.874779, 16.045748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.057251, 38.262371, 15.962584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109547, -0.194063, -0.974854,
		-0.984959, 0.153038, 0.080218,
		0.133622, 0.968978, -0.207909,
		35.097336, 38.553066, 15.900211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.386345, 38.250851, 15.749274>,  <35.003803, 37.874779, 16.045748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.386345, 38.250851, 15.749274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.713749, 38.435421, 15.612373>,  <34.910191, 38.546162, 15.530232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.713749, 38.435421, 15.612373>,  <34.386345, 38.250851, 15.749274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.713749, 38.435421, 15.612373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187339, -0.348803, -0.918281,
		-0.543096, 0.815735, -0.199055,
		0.818505, 0.461424, -0.342252,
		34.959301, 38.573849, 15.509698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.206161, 38.682091, 15.157794>,  <34.386345, 38.250851, 15.749274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.206161, 38.682091, 15.157794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.570965, 38.518124, 15.151986>,  <34.789848, 38.419743, 15.148501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.570965, 38.518124, 15.151986>,  <34.206161, 38.682091, 15.157794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.570965, 38.518124, 15.151986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310423, -0.666644, -0.677661,
		0.268106, 0.622538, -0.735232,
		0.912007, -0.409918, -0.014519,
		34.844566, 38.395149, 15.147631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.495953, 38.683922, 14.505843>,  <34.206161, 38.682091, 15.157794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.495953, 38.683922, 14.505843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.606380, 38.376328, 14.736477>,  <34.672638, 38.191772, 14.874857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.606380, 38.376328, 14.736477>,  <34.495953, 38.683922, 14.505843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.606380, 38.376328, 14.736477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409331, -0.636845, -0.653358,
		0.869616, -0.055639, -0.490584,
		0.276074, -0.768982, 0.576585,
		34.689201, 38.145634, 14.909452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.936623, 38.089287, 14.162959>,  <34.495953, 38.683922, 14.505843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.936623, 38.089287, 14.162959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.719536, 37.965084, 14.475124>,  <34.589283, 37.890564, 14.662423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.719536, 37.965084, 14.475124>,  <34.936623, 38.089287, 14.162959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.719536, 37.965084, 14.475124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275391, -0.812008, -0.514590,
		0.793484, -0.494195, 0.355181,
		-0.542718, -0.310506, 0.780412,
		34.556721, 37.871933, 14.709249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.354874, 38.583714, 14.387008>,  <34.936623, 38.089287, 14.162959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.354874, 38.583714, 14.387008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.438969, 38.470005, 14.761171>,  <35.489426, 38.401779, 14.985670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.438969, 38.470005, 14.761171>,  <35.354874, 38.583714, 14.387008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.438969, 38.470005, 14.761171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493849, 0.794870, 0.352555,
		-0.843751, -0.536070, 0.026721,
		0.210234, -0.284272, 0.935409,
		35.502041, 38.384724, 15.041794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.003834, 38.751549, 14.927964>,  <35.354874, 38.583714, 14.387008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.003834, 38.751549, 14.927964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.607979, 38.722950, 14.977781>,  <35.370468, 38.705791, 15.007671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.607979, 38.722950, 14.977781>,  <36.003834, 38.751549, 14.927964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.607979, 38.722950, 14.977781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088853, 0.376458, 0.922163,
		-0.112818, 0.923670, -0.366203,
		-0.989635, -0.071499, 0.124542,
		35.311089, 38.701500, 15.015144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.728477, 39.450260, 15.113435>,  <36.003834, 38.751549, 14.927964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.728477, 39.450260, 15.113435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.494438, 39.150383, 15.237128>,  <35.354015, 38.970459, 15.311344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.494438, 39.150383, 15.237128>,  <35.728477, 39.450260, 15.113435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.494438, 39.150383, 15.237128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043287, 0.351903, 0.935035,
		-0.809805, 0.560475, -0.173446,
		-0.585100, -0.749688, 0.309234,
		35.318909, 38.925476, 15.329899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.246662, 39.817467, 15.529913>,  <35.728477, 39.450260, 15.113435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.246662, 39.817467, 15.529913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.216049, 39.432384, 15.633718>,  <35.197681, 39.201336, 15.696000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.216049, 39.432384, 15.633718>,  <35.246662, 39.817467, 15.529913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.216049, 39.432384, 15.633718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128251, 0.267618, 0.954952,
		-0.988784, 0.039802, -0.143948,
		-0.076532, -0.962703, 0.259512,
		35.193089, 39.143574, 15.711571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.727604, 39.781292, 16.017761>,  <35.246662, 39.817467, 15.529913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.727604, 39.781292, 16.017761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.976089, 39.471779, 16.067329>,  <35.125179, 39.286072, 16.097071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.976089, 39.471779, 16.067329>,  <34.727604, 39.781292, 16.017761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.976089, 39.471779, 16.067329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034054, 0.131328, 0.990754,
		-0.782901, -0.619690, 0.055232,
		0.621214, -0.773782, 0.123919,
		35.162453, 39.239643, 16.104506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.444752, 39.528381, 16.523373>,  <34.727604, 39.781292, 16.017761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.444752, 39.528381, 16.523373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.826042, 39.408966, 16.504448>,  <35.054817, 39.337318, 16.493093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.826042, 39.408966, 16.504448>,  <34.444752, 39.528381, 16.523373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.826042, 39.408966, 16.504448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147739, 0.323623, 0.934581,
		-0.263694, -0.897856, 0.352591,
		0.953225, -0.298535, -0.047311,
		35.112011, 39.319405, 16.490255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.550457, 39.139477, 17.163534>,  <34.444752, 39.528381, 16.523373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.550457, 39.139477, 17.163534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.921700, 39.235260, 17.049503>,  <35.144447, 39.292732, 16.981085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.921700, 39.235260, 17.049503>,  <34.550457, 39.139477, 17.163534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.921700, 39.235260, 17.049503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214846, 0.280870, 0.935389,
		0.304069, -0.929390, 0.209228,
		0.928108, 0.239471, -0.285080,
		35.200134, 39.307098, 16.963980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.128033, 38.856911, 17.686178>,  <34.550457, 39.139477, 17.163534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.128033, 38.856911, 17.686178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.287804, 39.163181, 17.484507>,  <35.383667, 39.346943, 17.363504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.287804, 39.163181, 17.484507>,  <35.128033, 38.856911, 17.686178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.287804, 39.163181, 17.484507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517715, 0.265475, 0.813323,
		0.756590, -0.585884, -0.290364,
		0.399429, 0.765678, -0.504177,
		35.407631, 39.392883, 17.333254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.811359, 38.859734, 17.948215>,  <35.128033, 38.856911, 17.686178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.811359, 38.859734, 17.948215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.769901, 39.229301, 17.800905>,  <35.745026, 39.451042, 17.712519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.769901, 39.229301, 17.800905>,  <35.811359, 38.859734, 17.948215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.769901, 39.229301, 17.800905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387847, 0.378503, 0.840423,
		0.915878, -0.055730, -0.397570,
		-0.103644, 0.923921, -0.368278,
		35.738808, 39.506477, 17.690422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.472454, 39.194748, 18.023527>,  <35.811359, 38.859734, 17.948215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.472454, 39.194748, 18.023527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.213146, 39.494209, 17.968021>,  <36.057560, 39.673885, 17.934717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.213146, 39.494209, 17.968021>,  <36.472454, 39.194748, 18.023527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.213146, 39.494209, 17.968021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423544, 0.506020, 0.751368,
		0.632735, 0.428318, -0.645128,
		-0.648272, 0.748657, -0.138765,
		36.018665, 39.718807, 17.926392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.858353, 39.737579, 18.040615>,  <36.472454, 39.194748, 18.023527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.858353, 39.737579, 18.040615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.497841, 39.898148, 18.105793>,  <36.281532, 39.994488, 18.144899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.497841, 39.898148, 18.105793>,  <36.858353, 39.737579, 18.040615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.497841, 39.898148, 18.105793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366111, 0.504636, 0.781860,
		0.231626, 0.764333, -0.601784,
		-0.901284, 0.401419, 0.162944,
		36.227455, 40.018574, 18.154676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.981068, 40.511520, 18.205780>,  <36.858353, 39.737579, 18.040615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.981068, 40.511520, 18.205780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.610054, 40.448349, 18.341276>,  <36.387447, 40.410446, 18.422573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.610054, 40.448349, 18.341276>,  <36.981068, 40.511520, 18.205780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.610054, 40.448349, 18.341276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198016, 0.561025, 0.803767,
		-0.316978, 0.812595, -0.489096,
		-0.927531, -0.157928, 0.338739,
		36.331795, 40.400970, 18.442898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.972012, 41.044117, 18.632835>,  <36.981068, 40.511520, 18.205780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.972012, 41.044117, 18.632835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.649185, 40.834438, 18.741549>,  <36.455490, 40.708630, 18.806776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.649185, 40.834438, 18.741549>,  <36.972012, 41.044117, 18.632835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.649185, 40.834438, 18.741549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097447, 0.335726, 0.936906,
		-0.582369, 0.782626, -0.219870,
		-0.807063, -0.524199, 0.271781,
		36.407066, 40.677177, 18.823082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.552082, 41.482071, 18.928196>,  <36.972012, 41.044117, 18.632835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.552082, 41.482071, 18.928196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.471584, 41.122501, 19.083853>,  <36.423286, 40.906757, 19.177246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.471584, 41.122501, 19.083853>,  <36.552082, 41.482071, 18.928196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.471584, 41.122501, 19.083853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172989, 0.358411, 0.917396,
		-0.964146, 0.251935, 0.083377,
		-0.201241, -0.898927, 0.389143,
		36.411213, 40.852821, 19.200596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.381458, 41.642799, 19.579676>,  <36.552082, 41.482071, 18.928196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.381458, 41.642799, 19.579676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.443115, 41.253258, 19.646421>,  <36.480110, 41.019531, 19.686468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.443115, 41.253258, 19.646421>,  <36.381458, 41.642799, 19.579676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.443115, 41.253258, 19.646421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164733, 0.191850, 0.967500,
		-0.974219, -0.121648, 0.189999,
		0.154146, -0.973856, 0.166864,
		36.489361, 40.961102, 19.696480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.002838, 41.515301, 20.145693>,  <36.381458, 41.642799, 19.579676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.002838, 41.515301, 20.145693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.274529, 41.222012, 20.132799>,  <36.437542, 41.046036, 20.125063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.274529, 41.222012, 20.132799>,  <36.002838, 41.515301, 20.145693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.274529, 41.222012, 20.132799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135763, 0.082358, 0.987312,
		-0.721267, -0.674980, 0.155484,
		0.679221, -0.733225, -0.032236,
		36.478294, 41.002045, 20.123129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.735027, 41.007454, 20.566721>,  <36.002838, 41.515301, 20.145693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.735027, 41.007454, 20.566721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.115883, 40.892040, 20.526365>,  <36.344395, 40.822792, 20.502151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.115883, 40.892040, 20.526365>,  <35.735027, 41.007454, 20.566721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.115883, 40.892040, 20.526365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027216, -0.248729, 0.968191,
		-0.304455, -0.924597, -0.228971,
		0.952138, -0.288539, -0.100890,
		36.401524, 40.805481, 20.496098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.712856, 40.361122, 20.830198>,  <35.735027, 41.007454, 20.566721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.712856, 40.361122, 20.830198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.095531, 40.472473, 20.864271>,  <36.325138, 40.539284, 20.884714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.095531, 40.472473, 20.864271>,  <35.712856, 40.361122, 20.830198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.095531, 40.472473, 20.864271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000184, -0.292024, 0.956411,
		0.291120, -0.915001, -0.279324,
		0.956686, 0.278379, 0.085182,
		36.382538, 40.555988, 20.889826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.059837, 39.798355, 21.145927>,  <35.712856, 40.361122, 20.830198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.059837, 39.798355, 21.145927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.246624, 40.142460, 21.227789>,  <36.358696, 40.348923, 21.276907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.246624, 40.142460, 21.227789>,  <36.059837, 39.798355, 21.145927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.246624, 40.142460, 21.227789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035765, -0.212875, 0.976425,
		0.883551, -0.463277, -0.068638,
		0.466967, 0.860267, 0.204655,
		36.386715, 40.400539, 21.289185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.515736, 39.667099, 21.743500>,  <36.059837, 39.798355, 21.145927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.515736, 39.667099, 21.743500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.519325, 40.066788, 21.758898>,  <36.521477, 40.306599, 21.768137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.519325, 40.066788, 21.758898>,  <36.515736, 39.667099, 21.743500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.519325, 40.066788, 21.758898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048713, -0.038012, 0.998089,
		0.998773, -0.010829, 0.048334,
		0.008971, 0.999219, 0.038493,
		36.522018, 40.366554, 21.770445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.031002, 39.755646, 22.191668>,  <36.515736, 39.667099, 21.743500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.031002, 39.755646, 22.191668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.800884, 40.081978, 22.168129>,  <36.662811, 40.277775, 22.154007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.800884, 40.081978, 22.168129>,  <37.031002, 39.755646, 22.191668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.800884, 40.081978, 22.168129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062751, 0.115751, 0.991294,
		0.815534, 0.566595, -0.117785,
		-0.575296, 0.815825, -0.058845,
		36.628296, 40.326725, 22.150475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.420746, 40.231495, 22.645702>,  <37.031002, 39.755646, 22.191668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.420746, 40.231495, 22.645702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.035057, 40.333389, 22.616358>,  <36.803642, 40.394527, 22.598751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.035057, 40.333389, 22.616358>,  <37.420746, 40.231495, 22.645702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.035057, 40.333389, 22.616358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026650, 0.182199, 0.982900,
		0.263746, 0.949691, -0.168893,
		-0.964224, 0.254735, -0.073363,
		36.745789, 40.409809, 22.594349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.273823, 40.707348, 23.232065>,  <37.420746, 40.231495, 22.645702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.273823, 40.707348, 23.232065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.885925, 40.663136, 23.145006>,  <36.653187, 40.636608, 23.092772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.885925, 40.663136, 23.145006>,  <37.273823, 40.707348, 23.232065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.885925, 40.663136, 23.145006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237612, 0.223124, 0.945387,
		-0.055936, 0.968503, -0.242639,
		-0.969748, -0.110535, -0.217647,
		36.595001, 40.629974, 23.079712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.968605, 41.283077, 23.400515>,  <37.273823, 40.707348, 23.232065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.968605, 41.283077, 23.400515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.690342, 40.995731, 23.400085>,  <36.523384, 40.823322, 23.399828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.690342, 40.995731, 23.400085>,  <36.968605, 41.283077, 23.400515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.690342, 40.995731, 23.400085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337281, 0.325299, 0.883415,
		-0.634268, 0.614920, -0.468590,
		-0.695662, -0.718369, -0.001074,
		36.481644, 40.780220, 23.399763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.440563, 41.581955, 23.875128>,  <36.968605, 41.283077, 23.400515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.440563, 41.581955, 23.875128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.335110, 41.198143, 23.835510>,  <36.271839, 40.967857, 23.811739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.335110, 41.198143, 23.835510>,  <36.440563, 41.581955, 23.875128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.335110, 41.198143, 23.835510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357323, 0.001767, 0.933979,
		-0.896002, 0.281615, -0.343326,
		-0.263630, -0.959526, -0.099044,
		36.256020, 40.910286, 23.805798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.934887, 41.525356, 24.365576>,  <36.440563, 41.581955, 23.875128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.934887, 41.525356, 24.365576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.033558, 41.141914, 24.308691>,  <36.092762, 40.911850, 24.274561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.033558, 41.141914, 24.308691>,  <35.934887, 41.525356, 24.365576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.033558, 41.141914, 24.308691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406927, -0.235643, 0.882544,
		-0.879523, -0.159834, -0.448210,
		0.246678, -0.958606, -0.142212,
		36.107563, 40.854332, 24.266027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.428101, 41.180447, 24.693243>,  <35.934887, 41.525356, 24.365576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.428101, 41.180447, 24.693243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.736240, 40.925411, 24.690407>,  <35.921124, 40.772392, 24.688705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.736240, 40.925411, 24.690407>,  <35.428101, 41.180447, 24.693243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.736240, 40.925411, 24.690407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258769, -0.322776, 0.910414,
		-0.582754, -0.699501, -0.413637,
		0.770347, -0.637585, -0.007089,
		35.967346, 40.734135, 24.688280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.139420, 40.579288, 24.872789>,  <35.428101, 41.180447, 24.693243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.139420, 40.579288, 24.872789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.528130, 40.555813, 24.964191>,  <35.761356, 40.541725, 25.019033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.528130, 40.555813, 24.964191>,  <35.139420, 40.579288, 24.872789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.528130, 40.555813, 24.964191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235769, -0.206369, 0.949645,
		-0.008580, -0.976712, -0.214381,
		0.971771, -0.058692, 0.228508,
		35.819660, 40.538204, 25.032743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.278648, 39.839352, 25.145164>,  <35.139420, 40.579288, 24.872789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.278648, 39.839352, 25.145164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.568958, 40.081825, 25.275269>,  <35.743145, 40.227310, 25.353331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.568958, 40.081825, 25.275269>,  <35.278648, 39.839352, 25.145164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.568958, 40.081825, 25.275269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150891, -0.321019, 0.934975,
		0.671180, -0.727661, -0.141520,
		0.725775, 0.606182, 0.325259,
		35.786690, 40.263680, 25.372847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.488098, 39.482574, 25.711834>,  <35.278648, 39.839352, 25.145164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.488098, 39.482574, 25.711834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.691292, 39.820385, 25.779621>,  <35.813210, 40.023071, 25.820293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.691292, 39.820385, 25.779621>,  <35.488098, 39.482574, 25.711834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.691292, 39.820385, 25.779621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037637, -0.218316, 0.975152,
		0.860543, -0.488985, -0.142687,
		0.507986, 0.844530, 0.169466,
		35.843689, 40.073746, 25.830462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.966980, 39.256714, 26.238300>,  <35.488098, 39.482574, 25.711834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.966980, 39.256714, 26.238300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.913841, 39.653152, 26.234936>,  <35.881958, 39.891018, 26.232918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.913841, 39.653152, 26.234936>,  <35.966980, 39.256714, 26.238300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.913841, 39.653152, 26.234936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089267, 0.020415, 0.995799,
		0.987108, 0.131540, -0.091185,
		-0.132849, 0.991101, -0.008409,
		35.873985, 39.950481, 26.232412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.478722, 39.545792, 26.624214>,  <35.966980, 39.256714, 26.238300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.478722, 39.545792, 26.624214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.197083, 39.829826, 26.625984>,  <36.028099, 40.000248, 26.627047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.197083, 39.829826, 26.625984>,  <36.478722, 39.545792, 26.624214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.197083, 39.829826, 26.625984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153947, 0.146558, 0.977150,
		0.693214, 0.688691, -0.212507,
		-0.704098, 0.710089, 0.004426,
		35.985851, 40.042854, 26.627312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.811737, 40.064281, 27.048023>,  <36.478722, 39.545792, 26.624214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.811737, 40.064281, 27.048023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.418606, 40.137966, 27.043861>,  <36.182728, 40.182178, 27.041365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.418606, 40.137966, 27.043861>,  <36.811737, 40.064281, 27.048023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.418606, 40.137966, 27.043861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015154, -0.024395, 0.999588,
		0.183883, 0.982584, 0.026768,
		-0.982831, 0.184212, -0.010404,
		36.123756, 40.193230, 27.040741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.728397, 40.552864, 27.589483>,  <36.811737, 40.064281, 27.048023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.728397, 40.552864, 27.589483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.365940, 40.396023, 27.526043>,  <36.148464, 40.301918, 27.487978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.365940, 40.396023, 27.526043>,  <36.728397, 40.552864, 27.589483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.365940, 40.396023, 27.526043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176178, 0.008999, 0.984317,
		-0.384523, 0.919879, -0.077233,
		-0.906147, -0.392099, -0.158603,
		36.094097, 40.278393, 27.478462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.179134, 40.997570, 27.843567>,  <36.728397, 40.552864, 27.589483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.179134, 40.997570, 27.843567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.030548, 40.626190, 27.843842>,  <35.941395, 40.403362, 27.844006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.030548, 40.626190, 27.843842>,  <36.179134, 40.997570, 27.843567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.030548, 40.626190, 27.843842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139748, 0.056643, 0.988566,
		-0.917870, 0.367121, -0.150790,
		-0.371465, -0.928447, 0.000686,
		35.919109, 40.347656, 27.844048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.633423, 40.999802, 28.292635>,  <36.179134, 40.997570, 27.843567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.633423, 40.999802, 28.292635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.743473, 40.618496, 28.242678>,  <35.809502, 40.389713, 28.212704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.743473, 40.618496, 28.242678>,  <35.633423, 40.999802, 28.292635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.743473, 40.618496, 28.242678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134766, -0.090383, 0.986747,
		-0.951916, -0.288309, 0.103601,
		0.275124, -0.953262, -0.124892,
		35.826012, 40.332516, 28.205210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.306137, 40.700539, 28.880632>,  <35.633423, 40.999802, 28.292635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.306137, 40.700539, 28.880632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.527241, 40.386433, 28.769049>,  <35.659904, 40.197968, 28.702099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.527241, 40.386433, 28.769049>,  <35.306137, 40.700539, 28.880632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.527241, 40.386433, 28.769049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103260, -0.267625, 0.957974,
		-0.826918, -0.558335, -0.066846,
		0.552760, -0.785264, -0.278957,
		35.693069, 40.150852, 28.685362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.097496, 40.139454, 29.343180>,  <35.306137, 40.700539, 28.880632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.097496, 40.139454, 29.343180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.444118, 40.008945, 29.192116>,  <35.652092, 39.930641, 29.101479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.444118, 40.008945, 29.192116>,  <35.097496, 40.139454, 29.343180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.444118, 40.008945, 29.192116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282565, -0.303005, 0.910134,
		-0.411383, -0.895397, -0.170378,
		0.866557, -0.326271, -0.377659,
		35.704086, 39.911064, 29.078817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.116558, 39.447323, 29.501881>,  <35.097496, 40.139454, 29.343180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.116558, 39.447323, 29.501881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.474304, 39.617290, 29.445953>,  <35.688953, 39.719273, 29.412397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.474304, 39.617290, 29.445953>,  <35.116558, 39.447323, 29.501881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.474304, 39.617290, 29.445953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235134, -0.180654, 0.955027,
		0.380553, -0.887020, -0.261484,
		0.894367, 0.424922, -0.139820,
		35.742615, 39.744766, 29.404007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.629925, 38.855427, 29.449715>,  <35.116558, 39.447323, 29.501881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.629925, 38.855427, 29.449715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.833904, 39.181881, 29.558434>,  <35.956291, 39.377754, 29.623665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.833904, 39.181881, 29.558434>,  <35.629925, 38.855427, 29.449715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.833904, 39.181881, 29.558434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430775, -0.515784, 0.740540,
		0.744569, -0.260556, -0.614595,
		0.509951, 0.816135, 0.271796,
		35.986889, 39.426720, 29.639973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.229931, 38.604477, 29.669806>,  <35.629925, 38.855427, 29.449715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.229931, 38.604477, 29.669806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.161804, 38.956970, 29.846176>,  <36.120930, 39.168468, 29.951998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.161804, 38.956970, 29.846176>,  <36.229931, 38.604477, 29.669806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.161804, 38.956970, 29.846176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284444, -0.384449, 0.878232,
		0.943443, 0.274993, -0.185186,
		-0.170313, 0.881237, 0.440925,
		36.110710, 39.221340, 29.978455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.798664, 38.649155, 30.076336>,  <36.229931, 38.604477, 29.669806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.798664, 38.649155, 30.076336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.532391, 38.917763, 30.206516>,  <36.372627, 39.078926, 30.284624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.532391, 38.917763, 30.206516>,  <36.798664, 38.649155, 30.076336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.532391, 38.917763, 30.206516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237462, -0.222834, 0.945493,
		0.707440, 0.706686, -0.011123,
		-0.665688, 0.671521, 0.325453,
		36.332684, 39.119221, 30.304152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.219627, 39.032646, 30.612333>,  <36.798664, 38.649155, 30.076336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.219627, 39.032646, 30.612333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.833561, 39.106079, 30.686895>,  <36.601921, 39.150139, 30.731632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.833561, 39.106079, 30.686895>,  <37.219627, 39.032646, 30.612333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.833561, 39.106079, 30.686895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141110, -0.234683, 0.961775,
		0.220313, 0.954579, 0.200604,
		-0.965168, 0.183584, 0.186405,
		36.544010, 39.161156, 30.742817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.755287, 39.430683, 30.376621>,  <37.219627, 39.032646, 30.612333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.755287, 39.430683, 30.376621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.154102, 39.458839, 30.364204>,  <38.393391, 39.475735, 30.356754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.154102, 39.458839, 30.364204>,  <37.755287, 39.430683, 30.376621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.154102, 39.458839, 30.364204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065018, 0.555295, -0.829108,
		-0.041123, 0.828669, 0.558226,
		0.997036, 0.070390, -0.031043,
		38.453213, 39.479958, 30.354891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.929081, 40.048203, 30.119942>,  <37.755287, 39.430683, 30.376621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.929081, 40.048203, 30.119942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.261559, 39.836094, 30.053091>,  <38.461044, 39.708828, 30.012981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.261559, 39.836094, 30.053091>,  <37.929081, 40.048203, 30.119942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.261559, 39.836094, 30.053091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097140, 0.434481, -0.895427,
		0.547429, 0.728040, 0.412648,
		0.831195, -0.530268, -0.167126,
		38.510918, 39.677013, 30.002953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.574890, 40.468819, 29.803892>,  <37.929081, 40.048203, 30.119942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.574890, 40.468819, 29.803892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.652470, 40.090557, 29.699486>,  <38.699017, 39.863602, 29.636841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.652470, 40.090557, 29.699486>,  <38.574890, 40.468819, 29.803892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.652470, 40.090557, 29.699486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156567, 0.292497, -0.943362,
		0.968438, 0.142095, 0.204786,
		0.193946, -0.945650, -0.261018,
		38.710655, 39.806862, 29.621180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.073994, 40.518559, 29.325607>,  <38.574890, 40.468819, 29.803892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.073994, 40.518559, 29.325607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.985977, 40.130585, 29.284002>,  <38.933167, 39.897800, 29.259039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.985977, 40.130585, 29.284002>,  <39.073994, 40.518559, 29.325607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.985977, 40.130585, 29.284002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277497, 0.039982, -0.959894,
		0.935189, -0.240075, 0.260355,
		-0.220037, -0.969931, -0.104011,
		38.919968, 39.839607, 29.252800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.696526, 40.071014, 29.126190>,  <39.073994, 40.518559, 29.325607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.696526, 40.071014, 29.126190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.350853, 39.927597, 28.984980>,  <39.143448, 39.841545, 28.900253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.350853, 39.927597, 28.984980>,  <39.696526, 40.071014, 29.126190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.350853, 39.927597, 28.984980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308277, 0.177232, -0.934641,
		0.397682, -0.916533, -0.042629,
		-0.864184, -0.358548, -0.353028,
		39.091599, 39.820034, 28.879072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.908607, 39.587475, 28.576813>,  <39.696526, 40.071014, 29.126190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.908607, 39.587475, 28.576813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.522205, 39.660358, 28.503447>,  <39.290363, 39.704086, 28.459427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.522205, 39.660358, 28.503447>,  <39.908607, 39.587475, 28.576813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.522205, 39.660358, 28.503447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243586, 0.403679, -0.881878,
		-0.086644, -0.896573, -0.434338,
		-0.966002, 0.182207, -0.183416,
		39.232407, 39.715019, 28.448421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.769062, 39.297512, 27.961422>,  <39.908607, 39.587475, 28.576813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.769062, 39.297512, 27.961422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.422894, 39.497818, 27.968111>,  <39.215191, 39.618000, 27.972124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.422894, 39.497818, 27.968111>,  <39.769062, 39.297512, 27.961422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.422894, 39.497818, 27.968111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118891, 0.237659, -0.964045,
		-0.486730, -0.832320, -0.265212,
		-0.865424, 0.500761, 0.016720,
		39.163265, 39.648045, 27.973127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.417465, 39.174728, 27.252968>,  <39.769062, 39.297512, 27.961422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.417465, 39.174728, 27.252968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.265564, 39.509842, 27.409895>,  <39.174423, 39.710911, 27.504051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.265564, 39.509842, 27.409895>,  <39.417465, 39.174728, 27.252968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.265564, 39.509842, 27.409895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179462, 0.349313, -0.919660,
		-0.907514, -0.419650, 0.017697,
		-0.379753, 0.837780, 0.392317,
		39.151638, 39.761177, 27.527590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.970367, 39.345646, 26.767529>,  <39.417465, 39.174728, 27.252968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.970367, 39.345646, 26.767529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.045708, 39.689266, 26.957920>,  <39.090912, 39.895439, 27.072155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.045708, 39.689266, 26.957920>,  <38.970367, 39.345646, 26.767529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.045708, 39.689266, 26.957920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045469, 0.491762, -0.869542,
		-0.981049, 0.142138, 0.131684,
		0.188352, 0.859050, 0.475980,
		39.102215, 39.946980, 27.100714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.426628, 39.853035, 26.587324>,  <38.970367, 39.345646, 26.767529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.426628, 39.853035, 26.587324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.735123, 40.066559, 26.726032>,  <38.920219, 40.194672, 26.809258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.735123, 40.066559, 26.726032>,  <38.426628, 39.853035, 26.587324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.735123, 40.066559, 26.726032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051634, 0.490503, -0.869908,
		-0.634457, 0.688806, 0.350729,
		0.771232, 0.533810, 0.346769,
		38.966492, 40.226704, 26.830063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.351551, 40.450089, 26.236271>,  <38.426628, 39.853035, 26.587324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.351551, 40.450089, 26.236271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.727272, 40.492298, 26.366852>,  <38.952705, 40.517624, 26.445200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.727272, 40.492298, 26.366852>,  <38.351551, 40.450089, 26.236271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.727272, 40.492298, 26.366852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215561, 0.558732, -0.800844,
		-0.266911, 0.822607, 0.502072,
		0.939304, 0.105527, 0.326454,
		39.009064, 40.523956, 26.464788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.409557, 41.129929, 26.247231>,  <38.351551, 40.450089, 26.236271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.409557, 41.129929, 26.247231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.777569, 40.977661, 26.210060>,  <38.998375, 40.886299, 26.187757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.777569, 40.977661, 26.210060>,  <38.409557, 41.129929, 26.247231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.777569, 40.977661, 26.210060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134585, 0.529699, -0.837440,
		0.368010, 0.757964, 0.538572,
		0.920031, -0.380669, -0.092924,
		39.053577, 40.863461, 26.182182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.857269, 41.702271, 26.178204>,  <38.409557, 41.129929, 26.247231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.857269, 41.702271, 26.178204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.041214, 41.375271, 26.039513>,  <39.151581, 41.179070, 25.956299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.041214, 41.375271, 26.039513>,  <38.857269, 41.702271, 26.178204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.041214, 41.375271, 26.039513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247786, 0.493087, -0.833947,
		0.852718, 0.297588, 0.429318,
		0.459864, -0.817500, -0.346726,
		39.179173, 41.130020, 25.935495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.404461, 41.939098, 25.802248>,  <38.857269, 41.702271, 26.178204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.404461, 41.939098, 25.802248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.329983, 41.586060, 25.629572>,  <39.285297, 41.374237, 25.525967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.329983, 41.586060, 25.629572>,  <39.404461, 41.939098, 25.802248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.329983, 41.586060, 25.629572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274933, 0.375016, -0.885311,
		0.943263, -0.283524, 0.172829,
		-0.186193, -0.882597, -0.431688,
		39.274124, 41.321281, 25.500065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.993835, 41.789665, 25.277521>,  <39.404461, 41.939098, 25.802248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.993835, 41.789665, 25.277521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.718338, 41.521111, 25.168077>,  <39.553040, 41.359978, 25.102411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.718338, 41.521111, 25.168077>,  <39.993835, 41.789665, 25.277521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.718338, 41.521111, 25.168077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213019, 0.173329, -0.961551,
		0.693001, -0.720549, 0.023639,
		-0.688747, -0.671391, -0.273608,
		39.511715, 41.319695, 25.085995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.296852, 41.189007, 24.895905>,  <39.993835, 41.789665, 25.277521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.296852, 41.189007, 24.895905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.916714, 41.190315, 24.771439>,  <39.688629, 41.191101, 24.696758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.916714, 41.190315, 24.771439>,  <40.296852, 41.189007, 24.895905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.916714, 41.190315, 24.771439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310420, -0.059950, -0.948707,
		-0.021755, -0.998196, 0.055959,
		-0.950351, 0.003268, -0.311164,
		39.631607, 41.191296, 24.678089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.297131, 41.089188, 24.170502>,  <40.296852, 41.189007, 24.895905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.297131, 41.089188, 24.170502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.908104, 41.180756, 24.187078>,  <39.674690, 41.235695, 24.197025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.908104, 41.180756, 24.187078>,  <40.297131, 41.089188, 24.170502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.908104, 41.180756, 24.187078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013305, 0.123116, -0.992303,
		-0.232260, -0.965628, -0.116692,
		-0.972563, 0.228920, 0.041443,
		39.616337, 41.249432, 24.199511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.941006, 40.718418, 23.593721>,  <40.297131, 41.089188, 24.170502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.941006, 40.718418, 23.593721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.729088, 41.042667, 23.693491>,  <39.601936, 41.237217, 23.753353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.729088, 41.042667, 23.693491>,  <39.941006, 40.718418, 23.593721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.729088, 41.042667, 23.693491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115508, 0.222387, -0.968092,
		-0.840224, -0.541700, -0.024187,
		-0.529794, 0.810620, 0.249426,
		39.570148, 41.285854, 23.768318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.399902, 40.749405, 23.152760>,  <39.941006, 40.718418, 23.593721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.399902, 40.749405, 23.152760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.408463, 41.131565, 23.270573>,  <39.413601, 41.360863, 23.341261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.408463, 41.131565, 23.270573>,  <39.399902, 40.749405, 23.152760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.408463, 41.131565, 23.270573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335006, 0.284424, -0.898262,
		-0.941973, -0.079444, 0.326153,
		0.021404, 0.955401, 0.294534,
		39.414883, 41.418186, 23.358932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.905174, 40.849720, 22.812408>,  <39.399902, 40.749405, 23.152760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.905174, 40.849720, 22.812408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.117878, 41.181065, 22.882902>,  <39.245499, 41.379871, 22.925198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.117878, 41.181065, 22.882902>,  <38.905174, 40.849720, 22.812408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.117878, 41.181065, 22.882902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168181, 0.307236, -0.936654,
		-0.830030, 0.468432, 0.302689,
		0.531756, 0.828358, 0.176234,
		39.277405, 41.429573, 22.935772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.454151, 41.402603, 22.555975>,  <38.905174, 40.849720, 22.812408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.454151, 41.402603, 22.555975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.822430, 41.556274, 22.528490>,  <39.043396, 41.648476, 22.511999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.822430, 41.556274, 22.528490>,  <38.454151, 41.402603, 22.555975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.822430, 41.556274, 22.528490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136026, 0.150871, -0.979150,
		-0.365801, 0.910849, 0.191164,
		0.920699, 0.384177, -0.068711,
		39.098640, 41.671528, 22.507877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.481441, 41.937447, 22.028755>,  <38.454151, 41.402603, 22.555975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.481441, 41.937447, 22.028755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.873829, 41.865841, 22.058832>,  <39.109261, 41.822880, 22.076878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.873829, 41.865841, 22.058832>,  <38.481441, 41.937447, 22.028755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.873829, 41.865841, 22.058832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103968, 0.157225, -0.982075,
		0.163979, 0.971203, 0.172844,
		0.980970, -0.179010, 0.075192,
		39.168121, 41.812138, 22.081390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.777298, 42.321091, 21.603172>,  <38.481441, 41.937447, 22.028755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.777298, 42.321091, 21.603172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.067230, 42.049755, 21.651291>,  <39.241192, 41.886951, 21.680162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.067230, 42.049755, 21.651291>,  <38.777298, 42.321091, 21.603172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.067230, 42.049755, 21.651291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015911, -0.158083, -0.987298,
		0.688741, 0.717540, -0.103791,
		0.724833, -0.678341, 0.120295,
		39.284679, 41.846252, 21.687380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.342117, 42.521561, 21.115337>,  <38.777298, 42.321091, 21.603172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.342117, 42.521561, 21.115337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.393383, 42.134457, 21.202065>,  <39.424145, 41.902195, 21.254101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.393383, 42.134457, 21.202065>,  <39.342117, 42.521561, 21.115337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.393383, 42.134457, 21.202065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041295, -0.223641, -0.973796,
		0.990893, 0.115854, -0.068627,
		0.128166, -0.967762, 0.216820,
		39.431831, 41.844128, 21.267111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.693031, 42.248032, 20.564022>,  <39.342117, 42.521561, 21.115337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.693031, 42.248032, 20.564022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.547691, 41.913502, 20.728231>,  <39.460487, 41.712784, 20.826757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.547691, 41.913502, 20.728231>,  <39.693031, 42.248032, 20.564022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.547691, 41.913502, 20.728231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160786, -0.377734, -0.911847,
		0.917672, -0.397329, 0.002781,
		-0.363354, -0.836329, 0.410521,
		39.438686, 41.662601, 20.851387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.091320, 41.688263, 20.323935>,  <39.693031, 42.248032, 20.564022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.091320, 41.688263, 20.323935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.731693, 41.538742, 20.415108>,  <39.515919, 41.449028, 20.469812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.731693, 41.538742, 20.415108>,  <40.091320, 41.688263, 20.323935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.731693, 41.538742, 20.415108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098027, -0.335527, -0.936916,
		0.426701, -0.864692, 0.265018,
		-0.899065, -0.373804, 0.227933,
		39.461975, 41.426601, 20.483488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.118313, 41.116684, 19.986403>,  <40.091320, 41.688263, 20.323935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.118313, 41.116684, 19.986403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.727509, 41.138462, 20.068844>,  <39.493027, 41.151531, 20.118309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.727509, 41.138462, 20.068844>,  <40.118313, 41.116684, 19.986403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.727509, 41.138462, 20.068844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203968, -0.519818, -0.829570,
		0.061967, -0.852540, 0.518975,
		-0.977014, 0.054448, 0.206102,
		39.434402, 41.154797, 20.130674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.837521, 40.477428, 19.896305>,  <40.118313, 41.116684, 19.986403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.837521, 40.477428, 19.896305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.508705, 40.704082, 19.873762>,  <39.311417, 40.840073, 19.860237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.508705, 40.704082, 19.873762>,  <39.837521, 40.477428, 19.896305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.508705, 40.704082, 19.873762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265330, -0.468727, -0.842553,
		-0.503838, -0.677657, 0.535657,
		-0.822038, 0.566636, -0.056360,
		39.262093, 40.874073, 19.856855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.372494, 40.023376, 19.662346>,  <39.837521, 40.477428, 19.896305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.372494, 40.023376, 19.662346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.231350, 40.384037, 19.562342>,  <39.146664, 40.600433, 19.502338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.231350, 40.384037, 19.562342>,  <39.372494, 40.023376, 19.662346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.231350, 40.384037, 19.562342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419019, -0.391183, -0.819389,
		-0.836607, -0.184372, 0.515845,
		-0.352862, 0.901656, -0.250011,
		39.125492, 40.654533, 19.487339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.559475, 39.999401, 19.747934>,  <39.372494, 40.023376, 19.662346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.559475, 39.999401, 19.747934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.651264, 40.298378, 19.498560>,  <38.706337, 40.477764, 19.348936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.651264, 40.298378, 19.498560>,  <38.559475, 39.999401, 19.747934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.651264, 40.298378, 19.498560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288808, -0.559389, -0.776964,
		-0.929479, 0.358348, 0.087500,
		0.229477, 0.747442, -0.623434,
		38.720108, 40.522610, 19.311529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.984135, 39.975243, 19.372826>,  <38.559475, 39.999401, 19.747934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.984135, 39.975243, 19.372826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.228748, 40.210770, 19.161425>,  <38.375515, 40.352085, 19.034584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.228748, 40.210770, 19.161425>,  <37.984135, 39.975243, 19.372826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.228748, 40.210770, 19.161425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338299, -0.409240, -0.847394,
		-0.715249, 0.697002, -0.051066,
		0.611533, 0.588822, -0.528504,
		38.412209, 40.387417, 19.002874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.626713, 40.401142, 18.809372>,  <37.984135, 39.975243, 19.372826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.626713, 40.401142, 18.809372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.009995, 40.391052, 18.695381>,  <38.239964, 40.384998, 18.626986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.009995, 40.391052, 18.695381>,  <37.626713, 40.401142, 18.809372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.009995, 40.391052, 18.695381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279319, -0.297983, -0.912791,
		-0.061890, 0.954238, -0.292575,
		0.958202, -0.025229, -0.284979,
		38.297455, 40.383484, 18.609888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.668495, 40.740768, 18.066305>,  <37.626713, 40.401142, 18.809372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.668495, 40.740768, 18.066305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.018555, 40.553028, 18.113327>,  <38.228592, 40.440384, 18.141541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.018555, 40.553028, 18.113327>,  <37.668495, 40.740768, 18.066305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.018555, 40.553028, 18.113327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053306, -0.335008, -0.940706,
		0.480906, 0.816993, -0.318202,
		0.875150, -0.469353, 0.117557,
		38.281101, 40.412224, 18.148594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.097034, 40.838009, 17.377501>,  <37.668495, 40.740768, 18.066305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.097034, 40.838009, 17.377501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.257164, 40.514111, 17.549109>,  <38.353241, 40.319771, 17.652073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.257164, 40.514111, 17.549109>,  <38.097034, 40.838009, 17.377501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.257164, 40.514111, 17.549109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075677, -0.495786, -0.865141,
		0.913243, 0.313870, -0.259754,
		0.400325, -0.809741, 0.429021,
		38.377262, 40.271187, 17.677814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.766716, 40.595589, 16.992870>,  <38.097034, 40.838009, 17.377501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.766716, 40.595589, 16.992870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.605957, 40.287712, 17.191282>,  <38.509502, 40.102985, 17.310329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.605957, 40.287712, 17.191282>,  <38.766716, 40.595589, 16.992870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.605957, 40.287712, 17.191282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151125, -0.478523, -0.864972,
		0.903126, -0.422597, 0.075999,
		-0.401902, -0.769693, 0.496031,
		38.485386, 40.056805, 17.340092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.100998, 39.898991, 16.791193>,  <38.766716, 40.595589, 16.992870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.100998, 39.898991, 16.791193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.747864, 39.805222, 16.953989>,  <38.535984, 39.748959, 17.051666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.747864, 39.805222, 16.953989>,  <39.100998, 39.898991, 16.791193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.747864, 39.805222, 16.953989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252149, -0.494509, -0.831794,
		0.396255, -0.836962, 0.377461,
		-0.882838, -0.234426, 0.406991,
		38.483013, 39.734894, 17.076086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.037991, 39.321651, 16.532291>,  <39.100998, 39.898991, 16.791193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.037991, 39.321651, 16.532291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.672192, 39.423241, 16.658266>,  <38.452713, 39.484196, 16.733850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.672192, 39.423241, 16.658266>,  <39.037991, 39.321651, 16.532291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.672192, 39.423241, 16.658266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377303, -0.254343, -0.890479,
		-0.146057, -0.933170, 0.328422,
		-0.914499, 0.253975, 0.314939,
		38.397842, 39.499435, 16.752748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.573734, 38.910213, 16.114511>,  <39.037991, 39.321651, 16.532291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.573734, 38.910213, 16.114511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.299839, 39.151123, 16.278658>,  <38.135502, 39.295670, 16.377146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.299839, 39.151123, 16.278658>,  <38.573734, 38.910213, 16.114511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.299839, 39.151123, 16.278658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557046, -0.069444, -0.827573,
		-0.469929, -0.795262, 0.383046,
		-0.684738, 0.602275, 0.410364,
		38.094418, 39.331806, 16.401768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.896690, 38.254986, 16.015190>,  <38.573734, 38.910213, 16.114511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.896690, 38.254986, 16.015190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.274014, 38.127781, 15.977149>,  <39.500408, 38.051456, 15.954325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.274014, 38.127781, 15.977149>,  <38.896690, 38.254986, 16.015190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.274014, 38.127781, 15.977149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085162, -0.045051, 0.995348,
		-0.320818, -0.947015, -0.015415,
		0.943304, -0.318013, -0.095103,
		39.557007, 38.032379, 15.948618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.995972, 37.668751, 16.441801>,  <38.896690, 38.254986, 16.015190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.995972, 37.668751, 16.441801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.358925, 37.824013, 16.377298>,  <39.576694, 37.917168, 16.338596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.358925, 37.824013, 16.377298>,  <38.995972, 37.668751, 16.441801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.358925, 37.824013, 16.377298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181283, -0.015272, 0.983313,
		0.379211, -0.921469, -0.084223,
		0.907378, 0.388151, -0.161255,
		39.631138, 37.940456, 16.328922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.390907, 37.326679, 16.926926>,  <38.995972, 37.668751, 16.441801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.390907, 37.326679, 16.926926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.598583, 37.654381, 16.829546>,  <39.723190, 37.851002, 16.771118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.598583, 37.654381, 16.829546>,  <39.390907, 37.326679, 16.926926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.598583, 37.654381, 16.829546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217211, 0.149011, 0.964684,
		0.826596, -0.553734, -0.100585,
		0.519190, 0.819252, -0.243449,
		39.754341, 37.900158, 16.756512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.071014, 37.254604, 17.286993>,  <39.390907, 37.326679, 16.926926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.071014, 37.254604, 17.286993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.035847, 37.641933, 17.193516>,  <40.014748, 37.874332, 17.137428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.035847, 37.641933, 17.193516>,  <40.071014, 37.254604, 17.286993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.035847, 37.641933, 17.193516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319005, 0.249617, 0.914291,
		0.943667, 0.005831, -0.330846,
		-0.087916, 0.968327, -0.233695,
		40.009472, 37.932430, 17.123407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.683994, 37.412395, 17.536293>,  <40.071014, 37.254604, 17.286993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.683994, 37.412395, 17.536293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.481514, 37.755898, 17.504547>,  <40.360027, 37.961998, 17.485498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.481514, 37.755898, 17.504547>,  <40.683994, 37.412395, 17.536293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.481514, 37.755898, 17.504547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180485, 0.195477, 0.963957,
		0.843318, 0.473632, -0.253943,
		-0.506201, 0.858756, -0.079366,
		40.329655, 38.013523, 17.480738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.153118, 37.945160, 17.777214>,  <40.683994, 37.412395, 17.536293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.153118, 37.945160, 17.777214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.768585, 38.042786, 17.828236>,  <40.537865, 38.101360, 17.858849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.768585, 38.042786, 17.828236>,  <41.153118, 37.945160, 17.777214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.768585, 38.042786, 17.828236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203796, 0.318985, 0.925589,
		0.185219, 0.915794, -0.356391,
		-0.961333, 0.244068, 0.127553,
		40.480186, 38.116005, 17.866501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.127541, 38.602318, 18.227243>,  <41.153118, 37.945160, 17.777214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.127541, 38.602318, 18.227243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.764687, 38.439316, 18.269293>,  <40.546974, 38.341515, 18.294521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.764687, 38.439316, 18.269293>,  <41.127541, 38.602318, 18.227243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.764687, 38.439316, 18.269293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003376, 0.242733, 0.970087,
		-0.420833, 0.880352, -0.218815,
		-0.907132, -0.407506, 0.105122,
		40.492546, 38.317062, 18.300829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.710384, 39.113373, 18.654232>,  <41.127541, 38.602318, 18.227243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.710384, 39.113373, 18.654232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.489906, 38.781158, 18.686228>,  <40.357620, 38.581829, 18.705425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.489906, 38.781158, 18.686228>,  <40.710384, 39.113373, 18.654232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.489906, 38.781158, 18.686228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050615, 0.128974, 0.990355,
		-0.832838, 0.541833, -0.113127,
		-0.551198, -0.830532, 0.079989,
		40.324547, 38.531998, 18.710224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.250652, 39.297714, 19.095934>,  <40.710384, 39.113373, 18.654232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.250652, 39.297714, 19.095934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.204834, 38.900845, 19.115833>,  <40.177341, 38.662724, 19.127773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.204834, 38.900845, 19.115833>,  <40.250652, 39.297714, 19.095934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.204834, 38.900845, 19.115833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096272, 0.060927, 0.993489,
		-0.988742, 0.109013, -0.102497,
		-0.114548, -0.992172, 0.049746,
		40.170471, 38.603191, 19.130756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.719975, 39.222210, 19.594696>,  <40.250652, 39.297714, 19.095934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.719975, 39.222210, 19.594696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.913788, 38.873028, 19.572151>,  <40.030075, 38.663517, 19.558624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.913788, 38.873028, 19.572151>,  <39.719975, 39.222210, 19.594696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.913788, 38.873028, 19.572151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108200, -0.123741, 0.986398,
		-0.868056, -0.471844, -0.154410,
		0.484533, -0.872956, -0.056361,
		40.059147, 38.611141, 19.555243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.330128, 38.739586, 19.927061>,  <39.719975, 39.222210, 19.594696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.330128, 38.739586, 19.927061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.717525, 38.640106, 19.932131>,  <39.949966, 38.580418, 19.935173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.717525, 38.640106, 19.932131>,  <39.330128, 38.739586, 19.927061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.717525, 38.640106, 19.932131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039942, -0.104895, 0.993681,
		-0.245801, -0.962883, -0.111524,
		0.968497, -0.248703, 0.012676,
		40.008076, 38.565495, 19.935934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.326546, 38.292442, 20.491638>,  <39.330128, 38.739586, 19.927061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.326546, 38.292442, 20.491638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.703308, 38.415379, 20.437454>,  <39.929367, 38.489140, 20.404943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.703308, 38.415379, 20.437454>,  <39.326546, 38.292442, 20.491638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.703308, 38.415379, 20.437454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165197, -0.072774, 0.983572,
		0.292434, -0.948812, -0.119318,
		0.941909, 0.307341, -0.135460,
		39.985882, 38.507580, 20.396816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.579895, 37.966312, 21.077129>,  <39.326546, 38.292442, 20.491638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.579895, 37.966312, 21.077129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.835472, 38.251671, 20.962021>,  <39.988819, 38.422886, 20.892956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.835472, 38.251671, 20.962021>,  <39.579895, 37.966312, 21.077129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.835472, 38.251671, 20.962021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325201, 0.088517, 0.941493,
		0.697132, -0.695145, -0.175440,
		0.638945, 0.713399, -0.287770,
		40.027157, 38.465691, 20.875690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.147247, 37.760502, 21.471340>,  <39.579895, 37.966312, 21.077129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.147247, 37.760502, 21.471340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.249157, 38.134396, 21.372250>,  <40.310303, 38.358730, 21.312796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.249157, 38.134396, 21.372250>,  <40.147247, 37.760502, 21.471340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.249157, 38.134396, 21.372250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290836, 0.170250, 0.941504,
		0.922228, -0.311917, -0.228478,
		0.254773, 0.934731, -0.247726,
		40.325588, 38.414814, 21.297932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.888264, 37.917439, 21.714230>,  <40.147247, 37.760502, 21.471340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.888264, 37.917439, 21.714230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.711205, 38.266449, 21.631516>,  <40.604969, 38.475857, 21.581886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.711205, 38.266449, 21.631516>,  <40.888264, 37.917439, 21.714230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.711205, 38.266449, 21.631516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198748, 0.320337, 0.926220,
		0.874394, 0.368889, -0.315209,
		-0.442645, 0.872528, -0.206785,
		40.578411, 38.528206, 21.569481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.392517, 38.363270, 21.958538>,  <40.888264, 37.917439, 21.714230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.392517, 38.363270, 21.958538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.061836, 38.585262, 21.921526>,  <40.863430, 38.718460, 21.899319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.061836, 38.585262, 21.921526>,  <41.392517, 38.363270, 21.958538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.061836, 38.585262, 21.921526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021231, 0.195107, 0.980552,
		0.562244, 0.808656, -0.173078,
		-0.826698, 0.554985, -0.092529,
		40.813828, 38.751759, 21.893766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.561405, 39.124172, 22.221533>,  <41.392517, 38.363270, 21.958538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.561405, 39.124172, 22.221533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.167770, 39.053101, 22.222099>,  <40.931591, 39.010456, 22.222439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.167770, 39.053101, 22.222099>,  <41.561405, 39.124172, 22.221533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.167770, 39.053101, 22.222099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015168, 0.091940, 0.995649,
		-0.177040, 0.979784, -0.093172,
		-0.984087, -0.177683, 0.001415,
		40.872543, 38.999794, 22.222525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.280491, 39.660690, 22.563520>,  <41.561405, 39.124172, 22.221533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.280491, 39.660690, 22.563520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.002419, 39.377979, 22.615963>,  <40.835575, 39.208351, 22.647429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.002419, 39.377979, 22.615963>,  <41.280491, 39.660690, 22.563520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.002419, 39.377979, 22.615963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034790, 0.215251, 0.975939,
		-0.717994, 0.673891, -0.174227,
		-0.695179, -0.706779, 0.131104,
		40.793865, 39.165947, 22.655294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.839989, 39.884312, 23.096748>,  <41.280491, 39.660690, 22.563520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.839989, 39.884312, 23.096748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.722836, 39.502018, 23.108061>,  <40.652542, 39.272644, 23.114849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.722836, 39.502018, 23.108061>,  <40.839989, 39.884312, 23.096748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.722836, 39.502018, 23.108061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003304, 0.028566, 0.999586,
		-0.956143, 0.292855, -0.005209,
		-0.292883, -0.955730, 0.028281,
		40.634972, 39.215298, 23.116545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.295338, 39.772579, 23.579321>,  <40.839989, 39.884312, 23.096748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.295338, 39.772579, 23.579321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.461277, 39.410988, 23.537920>,  <40.560841, 39.194031, 23.513081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.461277, 39.410988, 23.537920>,  <40.295338, 39.772579, 23.579321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.461277, 39.410988, 23.537920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058589, -0.140055, 0.988409,
		-0.908000, -0.403979, -0.111066,
		0.414852, -0.903983, -0.103501,
		40.585732, 39.139793, 23.506870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.016632, 39.501228, 24.102491>,  <40.295338, 39.772579, 23.579321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.016632, 39.501228, 24.102491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.296947, 39.237118, 23.994471>,  <40.465137, 39.078651, 23.929659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.296947, 39.237118, 23.994471>,  <40.016632, 39.501228, 24.102491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.296947, 39.237118, 23.994471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218300, -0.161909, 0.962357,
		-0.679149, -0.733359, 0.030675,
		0.700787, -0.660280, -0.270053,
		40.507183, 39.039032, 23.913454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.924568, 38.862373, 24.504042>,  <40.016632, 39.501228, 24.102491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.924568, 38.862373, 24.504042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.306740, 38.875732, 24.386709>,  <40.536041, 38.883747, 24.316311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.306740, 38.875732, 24.386709>,  <39.924568, 38.862373, 24.504042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.306740, 38.875732, 24.386709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292896, -0.231774, 0.927628,
		-0.037007, -0.972196, -0.231224,
		0.955428, 0.033396, -0.293329,
		40.593369, 38.885750, 24.298710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.292961, 38.366768, 24.945498>,  <39.924568, 38.862373, 24.504042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.292961, 38.366768, 24.945498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.590458, 38.582878, 24.788042>,  <40.768955, 38.712543, 24.693569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.590458, 38.582878, 24.788042>,  <40.292961, 38.366768, 24.945498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.590458, 38.582878, 24.788042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430629, 0.063156, 0.900316,
		0.511276, -0.839117, -0.185685,
		0.743744, 0.540272, -0.393639,
		40.813580, 38.744961, 24.669950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.823444, 38.067669, 25.323425>,  <40.292961, 38.366768, 24.945498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.823444, 38.067669, 25.323425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.935051, 38.426273, 25.185780>,  <41.002014, 38.641438, 25.103191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.935051, 38.426273, 25.185780>,  <40.823444, 38.067669, 25.323425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.935051, 38.426273, 25.185780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331432, 0.246423, 0.910730,
		0.901277, -0.368163, -0.228375,
		0.279021, 0.896511, -0.344116,
		41.018757, 38.695225, 25.082544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.569595, 38.239029, 25.180071>,  <40.823444, 38.067669, 25.323425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.569595, 38.239029, 25.180071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.389095, 38.588074, 25.254822>,  <41.280796, 38.797501, 25.299671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.389095, 38.588074, 25.254822>,  <41.569595, 38.239029, 25.180071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.389095, 38.588074, 25.254822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728881, 0.239572, 0.641356,
		0.514884, 0.425622, -0.744137,
		-0.451250, 0.872612, 0.186875,
		41.253719, 38.849857, 25.310884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.974396, 38.354847, 25.689442>,  <41.569595, 38.239029, 25.180071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.974396, 38.354847, 25.689442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.738026, 38.676010, 25.658072>,  <41.596203, 38.868710, 25.639250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.738026, 38.676010, 25.658072>,  <41.974396, 38.354847, 25.689442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.738026, 38.676010, 25.658072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520279, 0.453588, 0.723580,
		0.616541, 0.386776, -0.685771,
		-0.590921, 0.802909, -0.078424,
		41.560749, 38.916882, 25.634544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.385834, 38.954372, 25.669544>,  <41.974396, 38.354847, 25.689442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.385834, 38.954372, 25.669544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.031994, 39.070545, 25.815489>,  <41.819691, 39.140247, 25.903055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.031994, 39.070545, 25.815489>,  <42.385834, 38.954372, 25.669544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.031994, 39.070545, 25.815489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465387, 0.499699, 0.730559,
		0.029857, 0.816058, -0.577199,
		-0.884604, 0.290433, 0.364863,
		41.766613, 39.157677, 25.924948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.572063, 39.581108, 25.914600>,  <42.385834, 38.954372, 25.669544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.572063, 39.581108, 25.914600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.216343, 39.533627, 26.091257>,  <42.002911, 39.505138, 26.197250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.216343, 39.533627, 26.091257>,  <42.572063, 39.581108, 25.914600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.216343, 39.533627, 26.091257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332548, 0.495070, 0.802694,
		-0.313926, 0.860706, -0.400794,
		-0.889304, -0.118703, 0.441641,
		41.949551, 39.498016, 26.223749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.319134, 40.270844, 26.179443>,  <42.572063, 39.581108, 25.914600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.319134, 40.270844, 26.179443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.137863, 39.974949, 26.378410>,  <42.029102, 39.797413, 26.497791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.137863, 39.974949, 26.378410>,  <42.319134, 40.270844, 26.179443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.137863, 39.974949, 26.378410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218274, 0.448938, 0.866494,
		-0.864284, 0.501248, -0.041984,
		-0.453177, -0.739733, 0.497419,
		42.001911, 39.753029, 26.527636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.921436, 40.491600, 26.675678>,  <42.319134, 40.270844, 26.179443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.921436, 40.491600, 26.675678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.949703, 40.116814, 26.812559>,  <41.966663, 39.891941, 26.894688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.949703, 40.116814, 26.812559>,  <41.921436, 40.491600, 26.675678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.949703, 40.116814, 26.812559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181145, 0.349410, 0.919293,
		-0.980914, -0.002978, 0.194420,
		0.070670, -0.936965, 0.342201,
		41.970905, 39.835724, 26.915220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.624344, 40.566528, 27.252235>,  <41.921436, 40.491600, 26.675678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.624344, 40.566528, 27.252235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.810719, 40.215992, 27.301126>,  <41.922543, 40.005672, 27.330462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.810719, 40.215992, 27.301126>,  <41.624344, 40.566528, 27.252235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.810719, 40.215992, 27.301126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133906, 0.206382, 0.969265,
		-0.874628, -0.435248, 0.213508,
		0.465935, -0.876337, 0.122226,
		41.950500, 39.953091, 27.337793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.257099, 40.142590, 27.806347>,  <41.624344, 40.566528, 27.252235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.257099, 40.142590, 27.806347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.633804, 40.014664, 27.764767>,  <41.859829, 39.937908, 27.739819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.633804, 40.014664, 27.764767>,  <41.257099, 40.142590, 27.806347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.633804, 40.014664, 27.764767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085610, -0.070923, 0.993801,
		-0.325202, -0.944823, -0.039413,
		0.941761, -0.319812, -0.103951,
		41.916332, 39.918720, 27.733582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.398430, 39.719975, 28.374096>,  <41.257099, 40.142590, 27.806347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.398430, 39.719975, 28.374096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.763973, 39.804619, 28.235481>,  <41.983299, 39.855408, 28.152311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.763973, 39.804619, 28.235481>,  <41.398430, 39.719975, 28.374096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.763973, 39.804619, 28.235481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344165, 0.049168, 0.937621,
		0.215454, -0.976116, -0.027898,
		0.913854, 0.211615, -0.346538,
		42.038128, 39.868103, 28.131519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.767593, 39.303524, 28.751450>,  <41.398430, 39.719975, 28.374096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.767593, 39.303524, 28.751450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.008930, 39.595959, 28.624023>,  <42.153732, 39.771420, 28.547567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.008930, 39.595959, 28.624023>,  <41.767593, 39.303524, 28.751450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.008930, 39.595959, 28.624023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446678, 0.021119, 0.894446,
		0.660649, -0.681952, -0.313821,
		0.603342, 0.731092, -0.318565,
		42.189934, 39.815285, 28.528454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.350773, 39.101841, 28.899878>,  <41.767593, 39.303524, 28.751450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.350773, 39.101841, 28.899878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.414974, 39.495770, 28.873438>,  <42.453495, 39.732124, 28.857574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.414974, 39.495770, 28.873438>,  <42.350773, 39.101841, 28.899878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.414974, 39.495770, 28.873438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498776, -0.023136, 0.866422,
		0.851740, -0.172034, -0.494918,
		0.160504, 0.984819, -0.066100,
		42.463127, 39.791214, 28.853607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.080372, 39.201332, 29.081537>,  <42.350773, 39.101841, 28.899878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.080372, 39.201332, 29.081537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.891754, 39.550011, 29.134899>,  <42.778584, 39.759216, 29.166916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.891754, 39.550011, 29.134899>,  <43.080372, 39.201332, 29.081537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.891754, 39.550011, 29.134899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383523, 0.066496, 0.921134,
		0.794076, 0.485519, -0.365670,
		-0.471544, 0.871694, 0.133404,
		42.750290, 39.811520, 29.174921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.480389, 39.599140, 29.521450>,  <43.080372, 39.201332, 29.081537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.480389, 39.599140, 29.521450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.128349, 39.788216, 29.539331>,  <42.917126, 39.901661, 29.550060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.128349, 39.788216, 29.539331>,  <43.480389, 39.599140, 29.521450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.128349, 39.788216, 29.539331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174531, 0.234514, 0.956317,
		0.441552, 0.849454, -0.288893,
		-0.880097, 0.472685, 0.044706,
		42.864319, 39.930019, 29.552744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.598518, 40.184189, 29.778929>,  <43.480389, 39.599140, 29.521450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.598518, 40.184189, 29.778929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.210751, 40.140404, 29.866789>,  <42.978088, 40.114132, 29.919504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.210751, 40.140404, 29.866789>,  <43.598518, 40.184189, 29.778929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.210751, 40.140404, 29.866789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187699, 0.245884, 0.950952,
		-0.158106, 0.963098, -0.217817,
		-0.969418, -0.109467, 0.219648,
		42.919926, 40.107563, 29.932684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.418266, 40.681206, 30.248817>,  <43.598518, 40.184189, 29.778929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.418266, 40.681206, 30.248817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.096889, 40.446095, 30.286772>,  <42.904064, 40.305027, 30.309544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.096889, 40.446095, 30.286772>,  <43.418266, 40.681206, 30.248817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.096889, 40.446095, 30.286772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042301, 0.102612, 0.993822,
		-0.593885, 0.802487, -0.057578,
		-0.803437, -0.587780, 0.094886,
		42.855858, 40.269760, 30.315237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.931946, 40.963699, 30.681654>,  <43.418266, 40.681206, 30.248817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.931946, 40.963699, 30.681654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.841602, 40.576485, 30.725277>,  <42.787395, 40.344154, 30.751450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.841602, 40.576485, 30.725277>,  <42.931946, 40.963699, 30.681654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.841602, 40.576485, 30.725277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092442, 0.132742, 0.986830,
		-0.969764, 0.212801, -0.119468,
		-0.225857, -0.968037, 0.109056,
		42.773846, 40.286072, 30.757994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.368473, 40.921581, 31.174099>,  <42.931946, 40.963699, 30.681654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.368473, 40.921581, 31.174099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.489624, 40.540371, 31.173670>,  <42.562317, 40.311646, 31.173412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.489624, 40.540371, 31.173670>,  <42.368473, 40.921581, 31.174099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.489624, 40.540371, 31.173670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368003, -0.117991, 0.922308,
		-0.879112, -0.278954, -0.386454,
		0.302880, -0.953028, -0.001071,
		42.580486, 40.254463, 31.173349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.849979, 40.517448, 31.446394>,  <42.368473, 40.921581, 31.174099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.849979, 40.517448, 31.446394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.161697, 40.267483, 31.465092>,  <42.348728, 40.117504, 31.476311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.161697, 40.267483, 31.465092>,  <41.849979, 40.517448, 31.446394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.161697, 40.267483, 31.465092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335549, -0.353121, 0.873334,
		-0.529250, -0.696270, -0.484874,
		0.779295, -0.624911, 0.046743,
		42.395485, 40.080009, 31.479115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.593330, 39.861347, 31.544043>,  <41.849979, 40.517448, 31.446394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.593330, 39.861347, 31.544043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.973774, 39.846119, 31.666645>,  <42.202038, 39.836983, 31.740206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.973774, 39.846119, 31.666645>,  <41.593330, 39.861347, 31.544043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.973774, 39.846119, 31.666645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271362, -0.576946, 0.770387,
		0.147506, -0.815895, -0.559069,
		0.951107, -0.038073, 0.306505,
		42.259106, 39.834698, 31.758596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.581898, 39.157879, 31.804041>,  <41.593330, 39.861347, 31.544043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.581898, 39.157879, 31.804041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.897926, 39.336082, 31.972471>,  <42.087543, 39.443005, 32.073528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.897926, 39.336082, 31.972471>,  <41.581898, 39.157879, 31.804041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.897926, 39.336082, 31.972471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242946, -0.403090, 0.882324,
		0.562817, -0.799399, -0.210235,
		0.790072, 0.445511, 0.421077,
		42.134949, 39.469734, 32.098793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.838734, 38.695915, 32.284645>,  <41.581898, 39.157879, 31.804041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.838734, 38.695915, 32.284645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.011871, 39.042000, 32.385883>,  <42.115753, 39.249649, 32.446625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.011871, 39.042000, 32.385883>,  <41.838734, 38.695915, 32.284645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.011871, 39.042000, 32.385883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240233, -0.159894, 0.957456,
		0.868869, -0.475231, 0.138643,
		0.432844, 0.865210, 0.253093,
		42.141724, 39.301563, 32.461811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.015667, 38.554489, 32.963184>,  <41.838734, 38.695915, 32.284645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.015667, 38.554489, 32.963184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.015724, 38.953232, 32.931499>,  <42.015759, 39.192478, 32.912487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.015724, 38.953232, 32.931499>,  <42.015667, 38.554489, 32.963184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.015724, 38.953232, 32.931499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266626, 0.076387, 0.960768,
		0.963800, 0.020981, 0.265799,
		0.000146, 0.996857, -0.079216,
		42.015766, 39.252289, 32.907734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.416737, 38.724468, 33.522667>,  <42.015667, 38.554489, 32.963184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.416737, 38.724468, 33.522667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.176483, 39.020294, 33.401150>,  <42.032333, 39.197788, 33.328239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.176483, 39.020294, 33.401150>,  <42.416737, 38.724468, 33.522667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.176483, 39.020294, 33.401150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523057, -0.076090, 0.848894,
		0.604695, 0.668773, 0.432536,
		-0.600629, 0.739563, -0.303795,
		41.996296, 39.242165, 33.310013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.377678, 39.228107, 34.166843>,  <42.416737, 38.724468, 33.522667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.377678, 39.228107, 34.166843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.070358, 39.308151, 33.923641>,  <41.885967, 39.356178, 33.777718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.070358, 39.308151, 33.923641>,  <42.377678, 39.228107, 34.166843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.070358, 39.308151, 33.923641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580538, 0.182261, 0.793572,
		0.269614, 0.962673, -0.023863,
		-0.768299, 0.200105, -0.608009,
		41.839867, 39.368183, 33.741238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.041172, 39.839939, 34.417866>,  <42.377678, 39.228107, 34.166843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.041172, 39.839939, 34.417866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.778496, 39.632500, 34.198845>,  <41.620892, 39.508034, 34.067432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.778496, 39.632500, 34.198845>,  <42.041172, 39.839939, 34.417866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.778496, 39.632500, 34.198845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.730558, 0.257216, 0.632554,
		-0.187204, 0.815409, -0.547779,
		-0.656688, -0.518602, -0.547552,
		41.581490, 39.476921, 34.034580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.476315, 40.309944, 34.311375>,  <42.041172, 39.839939, 34.417866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.476315, 40.309944, 34.311375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.384716, 39.922676, 34.270962>,  <41.329758, 39.690315, 34.246712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.384716, 39.922676, 34.270962>,  <41.476315, 40.309944, 34.311375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.384716, 39.922676, 34.270962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.826993, 0.138751, 0.544822,
		-0.513461, 0.208321, -0.832442,
		-0.229000, -0.968168, -0.101037,
		41.316017, 39.632225, 34.240650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.766800, 40.350235, 34.156761>,  <41.476315, 40.309944, 34.311375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.766800, 40.350235, 34.156761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.810692, 39.975838, 34.290546>,  <40.837029, 39.751198, 34.370819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.810692, 39.975838, 34.290546>,  <40.766800, 40.350235, 34.156761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.810692, 39.975838, 34.290546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.861333, 0.078387, 0.501956,
		-0.496048, -0.343168, -0.797604,
		0.109734, -0.935997, 0.334466,
		40.843613, 39.695038, 34.390884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.184803, 40.094738, 34.053249>,  <40.766800, 40.350235, 34.156761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.184803, 40.094738, 34.053249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.352058, 39.847416, 34.319439>,  <40.452412, 39.699020, 34.479153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.352058, 39.847416, 34.319439>,  <40.184803, 40.094738, 34.053249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.352058, 39.847416, 34.319439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.818595, 0.061091, 0.571113,
		-0.393779, -0.783558, -0.480599,
		0.418140, -0.618308, 0.665473,
		40.477501, 39.661922, 34.519081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.632568, 39.800091, 34.430862>,  <40.184803, 40.094738, 34.053249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.632568, 39.800091, 34.430862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.943264, 39.718891, 34.669346>,  <40.129681, 39.670170, 34.812435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.943264, 39.718891, 34.669346>,  <39.632568, 39.800091, 34.430862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.943264, 39.718891, 34.669346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596743, 0.065555, 0.799750,
		-0.201433, -0.976982, -0.070219,
		0.776738, -0.202999, 0.596212,
		40.176285, 39.657993, 34.848209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.267117, 39.462990, 34.969757>,  <39.632568, 39.800091, 34.430862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.267117, 39.462990, 34.969757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.622295, 39.609467, 35.081085>,  <39.835403, 39.697353, 35.147881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.622295, 39.609467, 35.081085>,  <39.267117, 39.462990, 34.969757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.622295, 39.609467, 35.081085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409267, 0.352898, 0.841406,
		0.209896, -0.861027, 0.463223,
		0.887944, 0.366189, 0.278318,
		39.888680, 39.719322, 35.164581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.442627, 39.175545, 35.613022>,  <39.267117, 39.462990, 34.969757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.442627, 39.175545, 35.613022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.609844, 39.536369, 35.570068>,  <39.710175, 39.752865, 35.544296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.609844, 39.536369, 35.570068>,  <39.442627, 39.175545, 35.613022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.609844, 39.536369, 35.570068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599067, 0.362609, 0.713886,
		0.682907, -0.234101, 0.691979,
		0.418039, 0.902059, -0.107386,
		39.735256, 39.806988, 35.537853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.650043, 39.457497, 36.253193>,  <39.442627, 39.175545, 35.613022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.650043, 39.457497, 36.253193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.610634, 39.775612, 36.013924>,  <39.586987, 39.966480, 35.870361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.610634, 39.775612, 36.013924>,  <39.650043, 39.457497, 36.253193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.610634, 39.775612, 36.013924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594813, 0.434843, 0.676099,
		0.797804, 0.422415, 0.430203,
		-0.098523, 0.795285, -0.598177,
		39.581078, 40.014198, 35.834469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.630486, 40.040222, 36.797928>,  <39.650043, 39.457497, 36.253193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.630486, 40.040222, 36.797928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.488712, 40.170071, 36.447159>,  <39.403648, 40.247982, 36.236698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.488712, 40.170071, 36.447159>,  <39.630486, 40.040222, 36.797928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.488712, 40.170071, 36.447159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.702238, 0.526837, 0.478858,
		0.617445, 0.785533, 0.041234,
		-0.354435, 0.324624, -0.876924,
		39.382381, 40.267456, 36.184082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.449539, 40.690895, 36.899426>,  <39.630486, 40.040222, 36.797928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.449539, 40.690895, 36.899426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.251114, 40.615261, 36.560444>,  <39.132061, 40.569881, 36.357056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.251114, 40.615261, 36.560444>,  <39.449539, 40.690895, 36.899426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.251114, 40.615261, 36.560444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.843364, 0.337091, 0.418457,
		0.206546, 0.922289, -0.326682,
		-0.496060, -0.189081, -0.847451,
		39.102295, 40.558537, 36.306210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.111588, 41.250092, 36.849953>,  <39.449539, 40.690895, 36.899426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.111588, 41.250092, 36.849953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.906368, 41.000114, 36.614586>,  <38.783237, 40.850128, 36.473366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.906368, 41.000114, 36.614586>,  <39.111588, 41.250092, 36.849953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.906368, 41.000114, 36.614586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.857922, 0.395294, 0.328196,
		0.027492, 0.673191, -0.738957,
		-0.513044, -0.624945, -0.588413,
		38.752457, 40.812630, 36.438061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.587273, 41.634663, 36.395485>,  <39.111588, 41.250092, 36.849953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.587273, 41.634663, 36.395485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.471207, 41.257591, 36.461403>,  <38.401566, 41.031349, 36.500954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.471207, 41.257591, 36.461403>,  <38.587273, 41.634663, 36.395485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.471207, 41.257591, 36.461403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.845789, 0.333186, 0.416687,
		-0.447711, -0.018477, -0.893987,
		-0.290165, -0.942680, 0.164798,
		38.384155, 40.974789, 36.510841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.178280, 41.446838, 35.966099>,  <38.587273, 41.634663, 36.395485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.178280, 41.446838, 35.966099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.126087, 41.291569, 36.331020>,  <38.094772, 41.198406, 36.549973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.126087, 41.291569, 36.331020>,  <38.178280, 41.446838, 35.966099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.126087, 41.291569, 36.331020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.874710, 0.478265, 0.078388,
		-0.466751, -0.787772, -0.401944,
		-0.130485, -0.388172, 0.912303,
		38.086941, 41.175117, 36.604710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.590572, 41.013397, 36.080280>,  <38.178280, 41.446838, 35.966099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.590572, 41.013397, 36.080280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.675491, 41.224796, 36.409065>,  <37.726444, 41.351635, 36.606335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.675491, 41.224796, 36.409065>,  <37.590572, 41.013397, 36.080280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.675491, 41.224796, 36.409065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.855125, 0.507575, -0.105489,
		-0.472958, -0.680485, 0.559688,
		0.212301, 0.528496, 0.821962,
		37.739182, 41.383347, 36.655655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.968933, 41.178757, 36.475391>,  <37.590572, 41.013397, 36.080280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.968933, 41.178757, 36.475391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.037766, 40.790428, 36.542191>,  <37.079067, 40.557430, 36.582272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.037766, 40.790428, 36.542191>,  <36.968933, 41.178757, 36.475391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.037766, 40.790428, 36.542191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.932064, 0.105600, -0.346562,
		0.318815, 0.215294, 0.923041,
		0.172086, -0.970823, 0.167001,
		37.089390, 40.499180, 36.592289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.607376, 40.987579, 37.003403>,  <36.968933, 41.178757, 36.475391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.607376, 40.987579, 37.003403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.510864, 40.755951, 36.691898>,  <37.452957, 40.616974, 36.504997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.510864, 40.755951, 36.691898>,  <37.607376, 40.987579, 37.003403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.510864, 40.755951, 36.691898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.931590, 0.086622, -0.353039,
		0.271891, -0.810665, 0.518553,
		-0.241279, -0.579067, -0.778760,
		37.438480, 40.582230, 36.458271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.086548, 40.370110, 37.085976>,  <37.607376, 40.987579, 37.003403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.086548, 40.370110, 37.085976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.946381, 40.469231, 36.724689>,  <37.862278, 40.528702, 36.507915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.946381, 40.469231, 36.724689>,  <38.086548, 40.370110, 37.085976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.946381, 40.469231, 36.724689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.935225, 0.040484, -0.351732,
		-0.050593, -0.967965, -0.245934,
		-0.350420, 0.247799, -0.903217,
		37.841255, 40.543571, 36.453724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.244183, 39.838036, 36.443031>,  <38.086548, 40.370110, 37.085976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.244183, 39.838036, 36.443031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.226780, 40.230671, 36.368641>,  <38.216339, 40.466251, 36.324005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.226780, 40.230671, 36.368641>,  <38.244183, 39.838036, 36.443031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.226780, 40.230671, 36.368641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.837837, -0.065552, -0.541971,
		-0.544184, -0.179397, -0.819561,
		-0.043504, 0.981590, -0.185978,
		38.213730, 40.525146, 36.312847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.190453, 39.876339, 35.751282>,  <38.244183, 39.838036, 36.443031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.190453, 39.876339, 35.751282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.346924, 40.201500, 35.923870>,  <38.440807, 40.396599, 36.027424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.346924, 40.201500, 35.923870>,  <38.190453, 39.876339, 35.751282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.346924, 40.201500, 35.923870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.857060, -0.150967, -0.492602,
		-0.335301, 0.562490, -0.755763,
		0.391179, 0.812905, 0.431468,
		38.464279, 40.445370, 36.053310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.517212, 40.278263, 35.177624>,  <38.190453, 39.876339, 35.751282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.517212, 40.278263, 35.177624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.688263, 40.379234, 35.524822>,  <38.790894, 40.439819, 35.733143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.688263, 40.379234, 35.524822>,  <38.517212, 40.278263, 35.177624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.688263, 40.379234, 35.524822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.902544, -0.172897, -0.394362,
		0.050525, 0.952043, -0.301765,
		0.427623, 0.252431, 0.867996,
		38.816551, 40.454964, 35.785221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.951214, 40.926208, 35.166767>,  <38.517212, 40.278263, 35.177624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.951214, 40.926208, 35.166767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.079880, 40.693192, 35.465343>,  <39.157078, 40.553379, 35.644489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.079880, 40.693192, 35.465343>,  <38.951214, 40.926208, 35.166767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.079880, 40.693192, 35.465343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.875485, -0.117274, -0.468799,
		0.360635, 0.804293, 0.472287,
		0.321665, -0.582546, 0.746440,
		39.176380, 40.518429, 35.689274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.575676, 41.185146, 35.453537>,  <38.951214, 40.926208, 35.166767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.575676, 41.185146, 35.453537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.561508, 40.796539, 35.547253>,  <39.553009, 40.563374, 35.603481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.561508, 40.796539, 35.547253>,  <39.575676, 41.185146, 35.453537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.561508, 40.796539, 35.547253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.898667, -0.133520, -0.417816,
		0.437200, 0.195753, 0.877803,
		-0.035416, -0.971521, 0.234292,
		39.550884, 40.505081, 35.617538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.203358, 40.986370, 35.333599>,  <39.575676, 41.185146, 35.453537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.203358, 40.986370, 35.333599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.076626, 40.611374, 35.391201>,  <40.000587, 40.386375, 35.425762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.076626, 40.611374, 35.391201>,  <40.203358, 40.986370, 35.333599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.076626, 40.611374, 35.391201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.776177, -0.343530, -0.528713,
		0.545130, -0.055742, 0.836496,
		-0.316833, -0.937486, 0.144003,
		39.981575, 40.330128, 35.434402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.822445, 40.618633, 35.435345>,  <40.203358, 40.986370, 35.333599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.822445, 40.618633, 35.435345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.532497, 40.367046, 35.322945>,  <40.358528, 40.216095, 35.255505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.532497, 40.367046, 35.322945>,  <40.822445, 40.618633, 35.435345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.532497, 40.367046, 35.322945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634287, -0.450209, -0.628484,
		0.268787, -0.633805, 0.725290,
		-0.724868, -0.628970, -0.281004,
		40.315037, 40.178356, 35.238644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.898235, 39.951824, 35.922646>,  <40.822445, 40.618633, 35.435345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.898235, 39.951824, 35.922646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.637688, 39.758812, 35.688419>,  <40.481361, 39.643005, 35.547882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.637688, 39.758812, 35.688419>,  <40.898235, 39.951824, 35.922646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.637688, 39.758812, 35.688419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676156, -0.018955, -0.736514,
		0.344289, -0.875676, 0.338610,
		-0.651366, -0.482527, -0.585568,
		40.442276, 39.614056, 35.512749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.205112, 39.320911, 35.580231>,  <40.898235, 39.951824, 35.922646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.205112, 39.320911, 35.580231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.871948, 39.401020, 35.373875>,  <40.672050, 39.449085, 35.250061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.871948, 39.401020, 35.373875>,  <41.205112, 39.320911, 35.580231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.871948, 39.401020, 35.373875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424966, -0.365660, -0.828068,
		-0.354491, -0.908944, 0.219448,
		-0.832911, 0.200285, -0.515893,
		40.622074, 39.461102, 35.219109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.077785, 38.707123, 35.223942>,  <41.205112, 39.320911, 35.580231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.077785, 38.707123, 35.223942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.913227, 39.021835, 35.039886>,  <40.814491, 39.210663, 34.929455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.913227, 39.021835, 35.039886>,  <41.077785, 38.707123, 35.223942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.913227, 39.021835, 35.039886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456888, -0.258819, -0.851039,
		-0.788673, -0.560348, -0.252993,
		-0.411399, 0.786780, -0.460140,
		40.789806, 39.257870, 34.901844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.861927, 38.427574, 34.631863>,  <41.077785, 38.707123, 35.223942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.861927, 38.427574, 34.631863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.866970, 38.821598, 34.563171>,  <40.869995, 39.058014, 34.521957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.866970, 38.821598, 34.563171>,  <40.861927, 38.427574, 34.631863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.866970, 38.821598, 34.563171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428033, -0.160527, -0.889393,
		-0.903675, -0.062288, -0.423664,
		0.012611, 0.985064, -0.171725,
		40.870754, 39.117119, 34.511654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.604977, 38.574078, 33.987122>,  <40.861927, 38.427574, 34.631863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.604977, 38.574078, 33.987122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.836414, 38.878113, 34.105438>,  <40.975277, 39.060535, 34.176426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.836414, 38.878113, 34.105438>,  <40.604977, 38.574078, 33.987122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.836414, 38.878113, 34.105438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424131, 0.029373, -0.905125,
		-0.696663, 0.649155, -0.305382,
		0.578596, 0.760089, 0.295789,
		41.009995, 39.106140, 34.194176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.634216, 39.056110, 33.307243>,  <40.604977, 38.574078, 33.987122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.634216, 39.056110, 33.307243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.929878, 39.221191, 33.520157>,  <41.107273, 39.320240, 33.647907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.929878, 39.221191, 33.520157>,  <40.634216, 39.056110, 33.307243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.929878, 39.221191, 33.520157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495109, 0.202867, -0.844815,
		-0.456641, 0.887987, -0.054383,
		0.739152, 0.412703, 0.532288,
		41.151623, 39.345001, 33.679844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.882084, 39.567921, 32.882477>,  <40.634216, 39.056110, 33.307243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.882084, 39.567921, 32.882477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.177368, 39.487221, 33.139957>,  <41.354538, 39.438801, 33.294445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.177368, 39.487221, 33.139957>,  <40.882084, 39.567921, 32.882477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.177368, 39.487221, 33.139957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673071, 0.283970, -0.682888,
		-0.045016, 0.937367, 0.345423,
		0.738206, -0.201754, 0.643698,
		41.398830, 39.426693, 33.333065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.239651, 40.180161, 32.813385>,  <40.882084, 39.567921, 32.882477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.239651, 40.180161, 32.813385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.470284, 39.895348, 32.973663>,  <41.608662, 39.724461, 33.069832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.470284, 39.895348, 32.973663>,  <41.239651, 40.180161, 32.813385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.470284, 39.895348, 32.973663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715855, 0.203855, -0.667829,
		0.393835, 0.671898, 0.627254,
		0.576581, -0.712037, 0.400696,
		41.643257, 39.681736, 33.093872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.915710, 40.533524, 32.783550>,  <41.239651, 40.180161, 32.813385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.915710, 40.533524, 32.783550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.988201, 40.143303, 32.833286>,  <42.031696, 39.909172, 32.863129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.988201, 40.143303, 32.833286>,  <41.915710, 40.533524, 32.783550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.988201, 40.143303, 32.833286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654400, 0.025243, -0.755727,
		0.734110, 0.218327, 0.642974,
		0.181226, -0.975549, 0.124342,
		42.042568, 39.850639, 32.870590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.658772, 40.487579, 32.788898>,  <41.915710, 40.533524, 32.783550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.658772, 40.487579, 32.788898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.497101, 40.135494, 32.689407>,  <42.400097, 39.924244, 32.629715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.497101, 40.135494, 32.689407>,  <42.658772, 40.487579, 32.788898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.497101, 40.135494, 32.689407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633011, -0.072891, -0.770704,
		0.660253, -0.468949, 0.586645,
		-0.404181, -0.880212, -0.248724,
		42.375847, 39.871429, 32.614792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.237133, 40.139507, 32.576702>,  <42.658772, 40.487579, 32.788898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.237133, 40.139507, 32.576702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.917618, 39.951950, 32.425926>,  <42.725910, 39.839417, 32.335461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.917618, 39.951950, 32.425926>,  <43.237133, 40.139507, 32.576702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.917618, 39.951950, 32.425926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468569, -0.091909, -0.878633,
		0.377341, -0.878460, 0.293125,
		-0.798784, -0.468894, -0.376938,
		42.677982, 39.811283, 32.312843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.468315, 39.598415, 32.156078>,  <43.237133, 40.139507, 32.576702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.468315, 39.598415, 32.156078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.101551, 39.689636, 32.025074>,  <42.881493, 39.744370, 31.946472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.101551, 39.689636, 32.025074>,  <43.468315, 39.598415, 32.156078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.101551, 39.689636, 32.025074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349278, 0.061545, -0.934996,
		-0.193073, -0.971701, -0.136086,
		-0.916912, 0.228055, -0.327511,
		42.826477, 39.758053, 31.926821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.394489, 39.205448, 31.639957>,  <43.468315, 39.598415, 32.156078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.394489, 39.205448, 31.639957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.104942, 39.476990, 31.590685>,  <42.931213, 39.639915, 31.561121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.104942, 39.476990, 31.590685>,  <43.394489, 39.205448, 31.639957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.104942, 39.476990, 31.590685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238582, 0.078767, -0.967923,
		-0.647374, -0.730038, -0.218979,
		-0.723869, 0.678852, -0.123182,
		42.887783, 39.680645, 31.553730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.991219, 38.997074, 30.981939>,  <43.394489, 39.205448, 31.639957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.991219, 38.997074, 30.981939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.890034, 39.378616, 31.046656>,  <42.829323, 39.607540, 31.085485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.890034, 39.378616, 31.046656>,  <42.991219, 38.997074, 30.981939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.890034, 39.378616, 31.046656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189002, 0.115285, -0.975186,
		-0.948835, -0.277264, 0.151117,
		-0.252963, 0.953852, 0.161790,
		42.814144, 39.664772, 31.095192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.632885, 38.934856, 30.574348>,  <42.991219, 38.997074, 30.981939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.632885, 38.934856, 30.574348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.477139, 38.729259, 30.268616>,  <43.383690, 38.605904, 30.085176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.477139, 38.729259, 30.268616>,  <43.632885, 38.934856, 30.574348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.477139, 38.729259, 30.268616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488553, 0.588225, -0.644443,
		0.780838, -0.624344, 0.022075,
		-0.389369, -0.513990, -0.764333,
		43.360329, 38.575062, 30.039316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.089989, 38.616295, 30.015287>,  <43.632885, 38.934856, 30.574348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.089989, 38.616295, 30.015287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.726685, 38.743446, 29.906460>,  <43.508701, 38.819736, 29.841164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.726685, 38.743446, 29.906460>,  <44.089989, 38.616295, 30.015287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.726685, 38.743446, 29.906460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418414, 0.689912, -0.590721,
		-0.000074, -0.650364, -0.759623,
		-0.908256, 0.317881, -0.272070,
		43.454208, 38.838810, 29.824839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.122910, 38.416740, 30.677145>,  <44.089989, 38.616295, 30.015287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.122910, 38.416740, 30.677145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.411777, 38.639137, 30.841751>,  <44.585098, 38.772575, 30.940516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.411777, 38.639137, 30.841751>,  <44.122910, 38.416740, 30.677145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.411777, 38.639137, 30.841751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.678334, 0.685703, 0.263958,
		-0.135420, -0.469768, 0.872341,
		0.722166, 0.555994, 0.411517,
		44.628426, 38.805935, 30.965206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.948067, 38.539162, 31.413822>,  <44.122910, 38.416740, 30.677145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.948067, 38.539162, 31.413822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.150570, 38.837624, 31.240866>,  <44.272072, 39.016701, 31.137093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.150570, 38.837624, 31.240866>,  <43.948067, 38.539162, 31.413822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.150570, 38.837624, 31.240866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617013, 0.663687, 0.422865,
		0.602493, 0.052712, 0.796382,
		0.506258, 0.746151, -0.432391,
		44.302448, 39.061470, 31.111149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.223614, 38.991287, 31.966179>,  <43.948067, 38.539162, 31.413822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.223614, 38.991287, 31.966179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.122822, 39.179298, 31.627811>,  <44.062347, 39.292107, 31.424791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.122822, 39.179298, 31.627811>,  <44.223614, 38.991287, 31.966179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.122822, 39.179298, 31.627811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506539, 0.680754, 0.529142,
		0.824575, 0.561824, 0.066552,
		-0.251979, 0.470029, -0.845919,
		44.047230, 39.320309, 31.374035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.568886, 38.391521, 32.071442>,  <44.223614, 38.991287, 31.966179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.568886, 38.391521, 32.071442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.925472, 38.444496, 32.244759>,  <45.139423, 38.476280, 32.348751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.925472, 38.444496, 32.244759>,  <44.568886, 38.391521, 32.071442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.925472, 38.444496, 32.244759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204086, -0.736445, 0.644979,
		0.404517, -0.663408, -0.629488,
		0.891468, 0.132435, 0.433297,
		45.192913, 38.484226, 32.374748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.019634, 37.828972, 32.018631>,  <44.568886, 38.391521, 32.071442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.019634, 37.828972, 32.018631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.068981, 38.028320, 32.361889>,  <45.098587, 38.147930, 32.567844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.068981, 38.028320, 32.361889>,  <45.019634, 37.828972, 32.018631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.068981, 38.028320, 32.361889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401381, -0.765798, 0.502441,
		0.907565, -0.406425, 0.105564,
		0.123363, 0.498369, 0.858143,
		45.105991, 38.177830, 32.619331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.120701, 37.351555, 32.547295>,  <45.019634, 37.828972, 32.018631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.120701, 37.351555, 32.547295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.040356, 37.685555, 32.752205>,  <44.992149, 37.885956, 32.875153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.040356, 37.685555, 32.752205>,  <45.120701, 37.351555, 32.547295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.040356, 37.685555, 32.752205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379788, -0.548410, 0.744988,
		0.903004, -0.044917, 0.427278,
		-0.200861, 0.835002, 0.512276,
		44.980099, 37.936054, 32.905888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.493702, 37.487785, 33.126240>,  <45.120701, 37.351555, 32.547295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.493702, 37.487785, 33.126240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.131302, 37.638233, 33.203903>,  <44.913864, 37.728504, 33.250504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.131302, 37.638233, 33.203903>,  <45.493702, 37.487785, 33.126240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.131302, 37.638233, 33.203903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089448, -0.618471, 0.780700,
		0.413723, 0.689946, 0.593977,
		-0.905998, 0.376124, 0.194161,
		44.859501, 37.751072, 33.262150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.497570, 37.633869, 33.866341>,  <45.493702, 37.487785, 33.126240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.497570, 37.633869, 33.866341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.113903, 37.668232, 33.758553>,  <44.883701, 37.688850, 33.693878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.113903, 37.668232, 33.758553>,  <45.497570, 37.633869, 33.866341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.113903, 37.668232, 33.758553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277046, -0.477158, 0.834006,
		-0.056935, 0.874609, 0.481475,
		-0.959168, 0.085907, -0.269473,
		44.826153, 37.694004, 33.677711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.970879, 37.238468, 34.388401>,  <45.497570, 37.633869, 33.866341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.970879, 37.238468, 34.388401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.633068, 37.201748, 34.599434>,  <45.430382, 37.179714, 34.726055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.633068, 37.201748, 34.599434>,  <45.970879, 37.238468, 34.388401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.633068, 37.201748, 34.599434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535211, 0.177731, -0.825809,
		-0.017958, -0.979788, -0.199232,
		-0.844527, -0.091801, 0.527585,
		45.379711, 37.174206, 34.757710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.555344, 36.637993, 34.256020>,  <45.970879, 37.238468, 34.388401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.555344, 36.637993, 34.256020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.339088, 36.953423, 34.373230>,  <45.209335, 37.142681, 34.443558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.339088, 36.953423, 34.373230>,  <45.555344, 36.637993, 34.256020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.339088, 36.953423, 34.373230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433130, 0.037688, -0.900543,
		-0.721185, -0.613789, 0.321178,
		-0.540638, 0.788570, 0.293030,
		45.176895, 37.189995, 34.461140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.801384, 36.862888, 34.182297>,  <45.555344, 36.637993, 34.256020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.801384, 36.862888, 34.182297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.573639, 36.622509, 33.957909>,  <44.436993, 36.478283, 33.823277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.573639, 36.622509, 33.957909>,  <44.801384, 36.862888, 34.182297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.573639, 36.622509, 33.957909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.818373, -0.479111, -0.317362,
		-0.078052, -0.639780, 0.764584,
		-0.569362, -0.600944, -0.560975,
		44.402832, 36.442226, 33.789616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.013363, 36.141380, 34.270012>,  <44.801384, 36.862888, 34.182297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.013363, 36.141380, 34.270012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.853413, 36.178329, 33.905251>,  <44.757442, 36.200500, 33.686394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.853413, 36.178329, 33.905251>,  <45.013363, 36.141380, 34.270012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.853413, 36.178329, 33.905251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.749960, -0.538996, -0.383463,
		-0.526931, -0.837229, 0.146262,
		-0.399880, 0.092368, -0.911901,
		44.733448, 36.206039, 33.631680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.873707, 35.530079, 33.936359>,  <45.013363, 36.141380, 34.270012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.873707, 35.530079, 33.936359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.913895, 35.784058, 33.629963>,  <44.938007, 35.936447, 33.446125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.913895, 35.784058, 33.629963>,  <44.873707, 35.530079, 33.936359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.913895, 35.784058, 33.629963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675833, -0.608566, -0.415809,
		-0.730175, -0.475906, -0.490263,
		0.100471, 0.634949, -0.765993,
		44.944035, 35.974541, 33.400166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.616001, 35.428402, 33.666660>,  <44.873707, 35.530079, 33.936359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.616001, 35.428402, 33.666660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.990185, 35.569359, 33.655838>,  <46.214695, 35.653934, 33.649345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.990185, 35.569359, 33.655838>,  <45.616001, 35.428402, 33.666660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.990185, 35.569359, 33.655838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284701, -0.705984, 0.648485,
		0.209420, -0.614335, -0.760747,
		0.935462, 0.352391, -0.027054,
		46.270824, 35.675076, 33.647720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.997467, 34.865200, 33.568237>,  <45.616001, 35.428402, 33.666660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.997467, 34.865200, 33.568237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.216568, 35.157612, 33.730991>,  <46.348030, 35.333061, 33.828644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.216568, 35.157612, 33.730991>,  <45.997467, 34.865200, 33.568237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.216568, 35.157612, 33.730991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488179, -0.674231, 0.554161,
		0.679444, -0.104912, -0.726188,
		0.547756, 0.731031, 0.406886,
		46.380894, 35.376923, 33.853058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.675606, 34.731216, 33.524170>,  <45.997467, 34.865200, 33.568237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.675606, 34.731216, 33.524170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.676655, 34.996170, 33.823833>,  <46.677284, 35.155144, 34.003632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.676655, 34.996170, 33.823833>,  <46.675606, 34.731216, 33.524170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.676655, 34.996170, 33.823833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687265, -0.545385, 0.479814,
		0.726402, 0.513613, -0.456663,
		0.002619, 0.662387, 0.749157,
		46.677441, 35.194885, 34.048580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.313213, 34.981236, 33.547123>,  <46.675606, 34.731216, 33.524170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.313213, 34.981236, 33.547123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.111698, 34.954792, 33.891640>,  <46.990788, 34.938927, 34.098351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.111698, 34.954792, 33.891640>,  <47.313213, 34.981236, 33.547123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.111698, 34.954792, 33.891640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.781392, -0.459951, 0.421748,
		0.368270, 0.885480, 0.283378,
		-0.503789, -0.066112, 0.861293,
		46.960560, 34.934959, 34.150028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.687099, 35.287682, 33.994057>,  <47.313213, 34.981236, 33.547123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.687099, 35.287682, 33.994057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.459721, 35.050282, 34.221962>,  <47.323292, 34.907841, 34.358704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.459721, 35.050282, 34.221962>,  <47.687099, 35.287682, 33.994057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.459721, 35.050282, 34.221962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.817344, -0.328354, 0.473426,
		-0.093893, 0.734810, 0.671743,
		-0.568448, -0.593497, 0.569762,
		47.289185, 34.872234, 34.392891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.737301, 35.460812, 34.857887>,  <47.687099, 35.287682, 33.994057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.737301, 35.460812, 34.857887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.656605, 35.077969, 34.774708>,  <47.608189, 34.848263, 34.724800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.656605, 35.077969, 34.774708>,  <47.737301, 35.460812, 34.857887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.656605, 35.077969, 34.774708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.680708, -0.289664, 0.672854,
		-0.704229, -0.005810, 0.709949,
		-0.201737, -0.957111, -0.207945,
		47.596085, 34.790836, 34.712326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<40.099033, 34.537079, 22.668373> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.724236, 34.465454, 22.788353>,  <39.499355, 34.422478, 22.860340>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.724236, 34.465454, 22.788353>,  <40.099033, 34.537079, 22.668373>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.724236, 34.465454, 22.788353> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264746, 0.196193, 0.944149,
		-0.227908, 0.964077, -0.136427,
		-0.936999, -0.179061, 0.299949,
		39.443134, 34.411736, 22.878338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.989925, 34.993008, 23.222538>,  <40.099033, 34.537079, 22.668373>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.989925, 34.993008, 23.222538> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.682693, 34.741669, 23.271912>,  <39.498356, 34.590866, 23.301535>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.682693, 34.741669, 23.271912>,  <39.989925, 34.993008, 23.222538>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.682693, 34.741669, 23.271912> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007297, 0.201332, 0.979496,
		-0.640317, 0.751427, -0.159223,
		-0.768076, -0.628350, 0.123433,
		39.452271, 34.553165, 23.308941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.531803, 35.316261, 23.661837>,  <39.989925, 34.993008, 23.222538>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.531803, 35.316261, 23.661837> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.422424, 34.933121, 23.697050>,  <39.356796, 34.703236, 23.718178>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.422424, 34.933121, 23.697050>,  <39.531803, 35.316261, 23.661837>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.422424, 34.933121, 23.697050> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012806, 0.095136, 0.995382,
		-0.961802, 0.271055, -0.038281,
		-0.273445, -0.957851, 0.088031,
		39.340389, 34.645767, 23.723459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.952591, 35.380108, 24.145485>,  <39.531803, 35.316261, 23.661837>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.952591, 35.380108, 24.145485> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.053539, 34.994335, 24.176928>,  <39.114109, 34.762871, 24.195793>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.053539, 34.994335, 24.176928>,  <38.952591, 35.380108, 24.145485>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.053539, 34.994335, 24.176928> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183536, 0.032048, 0.982490,
		-0.950065, -0.262380, -0.168920,
		0.252372, -0.964432, 0.078604,
		39.129250, 34.705006, 24.200508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.531963, 35.195663, 24.666826>,  <38.952591, 35.380108, 24.145485>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.531963, 35.195663, 24.666826> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.795696, 34.899761, 24.613098>,  <38.953934, 34.722218, 24.580862>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.795696, 34.899761, 24.613098>,  <38.531963, 35.195663, 24.666826>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.795696, 34.899761, 24.613098> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017916, -0.163142, 0.986440,
		-0.751641, -0.652795, -0.094311,
		0.659329, -0.739759, -0.134319,
		38.993496, 34.677834, 24.572802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.214874, 34.525494, 24.868378>,  <38.531963, 35.195663, 24.666826>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.214874, 34.525494, 24.868378> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.613277, 34.519283, 24.903553>,  <38.852318, 34.515556, 24.924658>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.613277, 34.519283, 24.903553>,  <38.214874, 34.525494, 24.868378>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.613277, 34.519283, 24.903553> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089259, -0.144016, 0.985542,
		-0.002641, -0.989454, -0.144827,
		0.996005, -0.015530, 0.087938,
		38.912079, 34.514626, 24.929934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.363331, 33.984188, 25.295210>,  <38.214874, 34.525494, 24.868378>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.363331, 33.984188, 25.295210> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.672741, 34.237103, 25.312565>,  <38.858387, 34.388851, 25.322977>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.672741, 34.237103, 25.312565>,  <38.363331, 33.984188, 25.295210>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.672741, 34.237103, 25.312565> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009814, -0.056501, 0.998354,
		0.633693, -0.772675, -0.037500,
		0.773522, 0.632282, 0.043387,
		38.904797, 34.426788, 25.325581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.576454, 33.716320, 25.845741>,  <38.363331, 33.984188, 25.295210>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.576454, 33.716320, 25.845741> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.777027, 34.058628, 25.794800>,  <38.897369, 34.264015, 25.764235>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.777027, 34.058628, 25.794800>,  <38.576454, 33.716320, 25.845741>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.777027, 34.058628, 25.794800> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002917, 0.148869, 0.988852,
		0.865193, -0.495469, 0.077144,
		0.501431, 0.855773, -0.127355,
		38.927456, 34.315361, 25.756594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.272160, 33.735310, 26.392134>,  <38.576454, 33.716320, 25.845741>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.272160, 33.735310, 26.392134> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.164646, 34.106758, 26.289831>,  <39.100140, 34.329628, 26.228451>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.164646, 34.106758, 26.289831>,  <39.272160, 33.735310, 26.392134>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.164646, 34.106758, 26.289831> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037384, 0.275384, 0.960607,
		0.962475, 0.248633, -0.108734,
		-0.268783, 0.928625, -0.255755,
		39.084011, 34.385345, 26.213104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.739159, 34.103466, 26.802811>,  <39.272160, 33.735310, 26.392134>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.739159, 34.103466, 26.802811> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.451588, 34.355694, 26.685837>,  <39.279045, 34.507030, 26.615652>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.451588, 34.355694, 26.685837>,  <39.739159, 34.103466, 26.802811>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.451588, 34.355694, 26.685837> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049599, 0.373108, 0.926461,
		0.693311, 0.680565, -0.236962,
		-0.718930, 0.630573, -0.292435,
		39.235909, 34.544865, 26.598106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.046219, 34.751724, 26.835604>,  <39.739159, 34.103466, 26.802811>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.046219, 34.751724, 26.835604> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.648350, 34.767494, 26.873693>,  <39.409626, 34.776955, 26.896547>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.648350, 34.767494, 26.873693>,  <40.046219, 34.751724, 26.835604>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.648350, 34.767494, 26.873693> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101968, 0.242094, 0.964880,
		0.014986, 0.969451, -0.244825,
		-0.994675, 0.039424, 0.095225,
		39.349949, 34.779320, 26.902262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.879406, 35.462284, 27.067215>,  <40.046219, 34.751724, 26.835604>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.879406, 35.462284, 27.067215> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.580143, 35.222328, 27.180628>,  <39.400585, 35.078354, 27.248674>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.580143, 35.222328, 27.180628>,  <39.879406, 35.462284, 27.067215>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.580143, 35.222328, 27.180628> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005161, 0.422040, 0.906562,
		-0.663496, 0.679719, -0.312658,
		-0.748162, -0.599887, 0.283530,
		39.355694, 35.042362, 27.265686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.550682, 35.883713, 27.527796>,  <39.879406, 35.462284, 27.067215>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.550682, 35.883713, 27.527796> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.399300, 35.522614, 27.609596>,  <39.308468, 35.305954, 27.658676>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.399300, 35.522614, 27.609596>,  <39.550682, 35.883713, 27.527796>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.399300, 35.522614, 27.609596> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140458, 0.274388, 0.951306,
		-0.914899, 0.331306, -0.230642,
		-0.378459, -0.902744, 0.204503,
		39.285763, 35.251789, 27.670948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.958313, 35.990196, 27.997875>,  <39.550682, 35.883713, 27.527796>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.958313, 35.990196, 27.997875> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.091118, 35.617794, 28.058535>,  <39.170799, 35.394352, 28.094931>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.091118, 35.617794, 28.058535>,  <38.958313, 35.990196, 27.997875>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.091118, 35.617794, 28.058535> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040412, 0.146579, 0.988373,
		-0.942409, -0.334280, 0.011042,
		0.332012, -0.931006, 0.151646,
		39.190720, 35.338493, 28.104029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.566631, 35.649582, 28.593025>,  <38.958313, 35.990196, 27.997875>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.566631, 35.649582, 28.593025> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.921734, 35.468414, 28.560173>,  <39.134796, 35.359715, 28.540462>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.921734, 35.468414, 28.560173>,  <38.566631, 35.649582, 28.593025>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.921734, 35.468414, 28.560173> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136356, 0.088345, 0.986713,
		-0.439647, -0.887163, 0.140188,
		0.887760, -0.452921, -0.082130,
		39.188061, 35.332539, 28.535534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.546364, 35.143513, 29.138498>,  <38.566631, 35.649582, 28.593025>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.546364, 35.143513, 29.138498> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.929291, 35.191681, 29.033388>,  <39.159046, 35.220581, 28.970322>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.929291, 35.191681, 29.033388>,  <38.546364, 35.143513, 29.138498>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.929291, 35.191681, 29.033388> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272554, -0.073316, 0.959343,
		0.096256, -0.990012, -0.103006,
		0.957314, 0.120418, -0.262775,
		39.216484, 35.227806, 28.954556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.780193, 35.079422, 29.788729>,  <38.546364, 35.143513, 29.138498>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.780193, 35.079422, 29.788729> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.119446, 35.190193, 29.608070>,  <39.322998, 35.256657, 29.499676>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.119446, 35.190193, 29.608070>,  <38.780193, 35.079422, 29.788729>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.119446, 35.190193, 29.608070> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400894, 0.221853, 0.888856,
		0.346348, -0.934929, 0.077142,
		0.848132, 0.276928, -0.451645,
		39.373886, 35.273270, 29.472576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.254166, 34.829559, 30.231134>,  <38.780193, 35.079422, 29.788729>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.254166, 34.829559, 30.231134> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.439354, 35.102970, 30.005409>,  <39.550468, 35.267017, 29.869974>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.439354, 35.102970, 30.005409>,  <39.254166, 34.829559, 30.231134>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.439354, 35.102970, 30.005409> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371051, 0.428730, 0.823718,
		0.804969, -0.590750, -0.055131,
		0.462976, 0.683523, -0.564313,
		39.578247, 35.308025, 29.836115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.981220, 34.935539, 30.612896>,  <39.254166, 34.829559, 30.231134>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.981220, 34.935539, 30.612896> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.868065, 35.243336, 30.383863>,  <39.800171, 35.428013, 30.246445>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.868065, 35.243336, 30.383863>,  <39.981220, 34.935539, 30.612896>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.868065, 35.243336, 30.383863> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321261, 0.638501, 0.699363,
		0.903750, 0.013895, -0.427835,
		-0.282890, 0.769496, -0.572581,
		39.783199, 35.474186, 30.212090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.553822, 35.413479, 30.616823>,  <39.981220, 34.935539, 30.612896>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.553822, 35.413479, 30.616823> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.273998, 35.648525, 30.454185>,  <40.106102, 35.789555, 30.356604>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.273998, 35.648525, 30.454185>,  <40.553822, 35.413479, 30.616823>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.273998, 35.648525, 30.454185> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348707, 0.777384, 0.523525,
		0.623712, 0.224456, -0.748735,
		-0.699562, 0.587618, -0.406594,
		40.064129, 35.824810, 30.332207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.884396, 36.036102, 30.342672>,  <40.553822, 35.413479, 30.616823>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.884396, 36.036102, 30.342672> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.500877, 36.127975, 30.409554>,  <40.270767, 36.183098, 30.449682>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.500877, 36.127975, 30.409554>,  <40.884396, 36.036102, 30.342672>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.500877, 36.127975, 30.409554> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283257, 0.727721, 0.624651,
		0.021792, 0.646274, -0.762794,
		-0.958797, 0.229679, 0.167203,
		40.213238, 36.196880, 30.459715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.767376, 36.841591, 30.202122>,  <40.884396, 36.036102, 30.342672>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.767376, 36.841591, 30.202122> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.465557, 36.721615, 30.435595>,  <40.284466, 36.649628, 30.575678>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.465557, 36.721615, 30.435595>,  <40.767376, 36.841591, 30.202122>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.465557, 36.721615, 30.435595> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123006, 0.809027, 0.574756,
		-0.644611, 0.505479, -0.573557,
		-0.754550, -0.299944, 0.583684,
		40.239193, 36.631630, 30.610701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.431671, 37.176556, 30.220695>,  <40.767376, 36.841591, 30.202122>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.431671, 37.176556, 30.220695> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.827034, 37.215874, 30.174414>,  <42.064251, 37.239464, 30.146645>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.827034, 37.215874, 30.174414>,  <41.431671, 37.176556, 30.220695>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.827034, 37.215874, 30.174414> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096278, -0.183447, -0.978303,
		-0.117385, 0.978103, -0.171857,
		0.988408, 0.098292, -0.115704,
		42.123558, 37.245361, 30.139702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.522301, 37.309822, 29.554512>,  <41.431671, 37.176556, 30.220695>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.522301, 37.309822, 29.554512> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.909569, 37.238434, 29.624699>,  <42.141930, 37.195602, 29.666811>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.909569, 37.238434, 29.624699>,  <41.522301, 37.309822, 29.554512>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.909569, 37.238434, 29.624699> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117054, -0.296796, -0.947740,
		0.221219, 0.938116, -0.266460,
		0.968174, -0.178468, 0.175467,
		42.200020, 37.184895, 29.677340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.922115, 37.593613, 28.983965>,  <41.522301, 37.309822, 29.554512>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.922115, 37.593613, 28.983965> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.170193, 37.319061, 29.135887>,  <42.319038, 37.154331, 29.227039>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.170193, 37.319061, 29.135887>,  <41.922115, 37.593613, 28.983965>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.170193, 37.319061, 29.135887> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298085, -0.241644, -0.923447,
		0.725607, 0.685929, 0.054732,
		0.620194, -0.686374, 0.379804,
		42.356251, 37.113148, 29.249828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.469120, 37.639244, 28.527023>,  <41.922115, 37.593613, 28.983965>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.469120, 37.639244, 28.527023> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.517570, 37.286606, 28.709503>,  <42.546642, 37.075024, 28.818991>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.517570, 37.286606, 28.709503>,  <42.469120, 37.639244, 28.527023>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.517570, 37.286606, 28.709503> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095423, -0.447114, -0.889372,
		0.988039, 0.151262, 0.029965,
		0.121130, -0.881594, 0.456200,
		42.553909, 37.022129, 28.846363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.014416, 37.351818, 28.170382>,  <42.469120, 37.639244, 28.527023>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.014416, 37.351818, 28.170382> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.810589, 37.061142, 28.354671>,  <42.688293, 36.886738, 28.465246>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.810589, 37.061142, 28.354671>,  <43.014416, 37.351818, 28.170382>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.810589, 37.061142, 28.354671> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081650, -0.492204, -0.866642,
		0.856547, -0.479232, 0.191478,
		-0.509569, -0.726686, 0.460724,
		42.657719, 36.843136, 28.492889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.427086, 36.687187, 28.148624>,  <43.014416, 37.351818, 28.170382>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.427086, 36.687187, 28.148624> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.040848, 36.590687, 28.187439>,  <42.809105, 36.532787, 28.210728>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.040848, 36.590687, 28.187439>,  <43.427086, 36.687187, 28.148624>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.040848, 36.590687, 28.187439> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067650, -0.593387, -0.802070,
		0.251080, -0.767914, 0.589294,
		-0.965599, -0.241249, 0.097039,
		42.751167, 36.518311, 28.216551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.380581, 36.161186, 27.877394>,  <43.427086, 36.687187, 28.148624>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.380581, 36.161186, 27.877394> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.990921, 36.251476, 27.880934>,  <42.757126, 36.305649, 27.883057>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.990921, 36.251476, 27.880934>,  <43.380581, 36.161186, 27.877394>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.990921, 36.251476, 27.880934> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117688, -0.473691, -0.872792,
		-0.192818, -0.851273, 0.488012,
		-0.974151, 0.225723, 0.008849,
		42.698677, 36.319195, 27.883589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.105160, 35.537342, 27.605371>,  <43.380581, 36.161186, 27.877394>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.105160, 35.537342, 27.605371> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.833370, 35.828579, 27.569162>,  <42.670296, 36.003323, 27.547438>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.833370, 35.828579, 27.569162>,  <43.105160, 35.537342, 27.605371>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.833370, 35.828579, 27.569162> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164413, -0.271339, -0.948337,
		-0.715040, -0.629488, 0.304076,
		-0.679474, 0.728094, -0.090522,
		42.629528, 36.047009, 27.542006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.616280, 35.277119, 27.188465>,  <43.105160, 35.537342, 27.605371>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.616280, 35.277119, 27.188465> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.462139, 35.646210, 27.192074>,  <42.369656, 35.867664, 27.194239>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.462139, 35.646210, 27.192074>,  <42.616280, 35.277119, 27.188465>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.462139, 35.646210, 27.192074> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394622, -0.155953, -0.905512,
		-0.834132, -0.352503, 0.424224,
		-0.385355, 0.922725, 0.009020,
		42.346531, 35.923027, 27.194780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.903778, 35.194298, 27.106287>,  <42.616280, 35.277119, 27.188465>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.903778, 35.194298, 27.106287> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.015656, 35.545414, 26.950718>,  <42.082783, 35.756084, 26.857376>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.015656, 35.545414, 26.950718>,  <41.903778, 35.194298, 27.106287>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.015656, 35.545414, 26.950718> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445740, -0.240064, -0.862372,
		-0.850344, 0.414561, 0.324119,
		0.279697, 0.877786, -0.388923,
		42.099564, 35.808750, 26.834042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.315830, 35.358727, 26.664352>,  <41.903778, 35.194298, 27.106287>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.315830, 35.358727, 26.664352> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.579823, 35.631306, 26.537821>,  <41.738216, 35.794853, 26.461903>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.579823, 35.631306, 26.537821>,  <41.315830, 35.358727, 26.664352>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.579823, 35.631306, 26.537821> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385249, -0.054513, -0.921201,
		-0.644992, 0.729837, 0.226549,
		0.659976, 0.681445, -0.316329,
		41.777817, 35.835739, 26.442923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.966537, 35.971352, 26.322001>,  <41.315830, 35.358727, 26.664352>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.966537, 35.971352, 26.322001> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.341808, 35.937611, 26.187714>,  <41.566971, 35.917366, 26.107141>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.341808, 35.937611, 26.187714>,  <40.966537, 35.971352, 26.322001>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.341808, 35.937611, 26.187714> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335004, 0.022907, -0.941938,
		0.087145, 0.996173, -0.006767,
		0.938178, -0.084352, -0.335718,
		41.623260, 35.912304, 26.086998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.088261, 36.497345, 25.819462>,  <40.966537, 35.971352, 26.322001>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.088261, 36.497345, 25.819462> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.362343, 36.214161, 25.751003>,  <41.526791, 36.044250, 25.709929>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.362343, 36.214161, 25.751003>,  <41.088261, 36.497345, 25.819462>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.362343, 36.214161, 25.751003> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218989, 0.023856, -0.975435,
		0.694653, 0.705849, -0.138690,
		0.685201, -0.707961, -0.171145,
		41.567902, 36.001774, 25.699659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.671314, 36.749413, 25.450497>,  <41.088261, 36.497345, 25.819462>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.671314, 36.749413, 25.450497> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.656437, 36.359051, 25.364492>,  <41.647511, 36.124832, 25.312889>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.656437, 36.359051, 25.364492>,  <41.671314, 36.749413, 25.450497>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.656437, 36.359051, 25.364492> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108748, 0.217835, -0.969908,
		0.993373, -0.012691, -0.114229,
		-0.037192, -0.975903, -0.215012,
		41.645279, 36.066280, 25.299990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.755051, 36.673641, 24.725761>,  <41.671314, 36.749413, 25.450497>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.755051, 36.673641, 24.725761> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.719749, 36.276707, 24.760378>,  <41.698570, 36.038548, 24.781147>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.719749, 36.276707, 24.760378>,  <41.755051, 36.673641, 24.725761>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.719749, 36.276707, 24.760378> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191864, -0.068318, -0.979041,
		0.977446, -0.103007, -0.184364,
		-0.088253, -0.992332, 0.086540,
		41.693275, 35.979008, 24.786341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.246330, 36.239700, 24.444838>,  <41.755051, 36.673641, 24.725761>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.246330, 36.239700, 24.444838> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.949696, 35.971367, 24.442842>,  <41.771713, 35.810368, 24.441645>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.949696, 35.971367, 24.442842>,  <42.246330, 36.239700, 24.444838>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.949696, 35.971367, 24.442842> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088665, 0.105382, -0.990471,
		0.664971, -0.734079, -0.137630,
		-0.741588, -0.670837, -0.004989,
		41.727219, 35.770115, 24.441345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.459694, 35.744720, 23.968697>,  <42.246330, 36.239700, 24.444838>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.459694, 35.744720, 23.968697> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.063881, 35.702213, 24.007767>,  <41.826393, 35.676708, 24.031210>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.063881, 35.702213, 24.007767>,  <42.459694, 35.744720, 23.968697>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.063881, 35.702213, 24.007767> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103206, 0.047825, -0.993510,
		0.100905, -0.993187, -0.058292,
		-0.989528, -0.106266, 0.097677,
		41.767021, 35.670334, 24.037069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.278698, 35.221020, 23.466105>,  <42.459694, 35.744720, 23.968697>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.278698, 35.221020, 23.466105> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.944275, 35.421280, 23.555861>,  <41.743622, 35.541435, 23.609715>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.944275, 35.421280, 23.555861>,  <42.278698, 35.221020, 23.466105>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.944275, 35.421280, 23.555861> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204919, 0.094437, -0.974213,
		-0.508929, -0.860484, 0.023637,
		-0.836062, 0.500649, 0.224391,
		41.693455, 35.571476, 23.623178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<41.798935, 34.852989, 23.090900> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.617008, 35.206856, 23.131893>,  <41.507851, 35.419174, 23.156488>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.617008, 35.206856, 23.131893>,  <41.798935, 34.852989, 23.090900>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.617008, 35.206856, 23.131893> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146365, 0.039255, -0.988451,
		-0.878474, -0.464566, 0.111630,
		-0.454820, 0.884668, 0.102481,
		41.480564, 35.472256, 23.162638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.140724, 34.807735, 22.866812>,  <41.798935, 34.852989, 23.090900>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.140724, 34.807735, 22.866812> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.204094, 35.202576, 22.857550>,  <41.242115, 35.439480, 22.851994>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.204094, 35.202576, 22.857550>,  <41.140724, 34.807735, 22.866812>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.204094, 35.202576, 22.857550> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409365, 0.044327, -0.911294,
		-0.898511, 0.153852, 0.411106,
		0.158427, 0.987099, -0.023153,
		41.251621, 35.498707, 22.850603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.464066, 35.178932, 22.682705>,  <41.140724, 34.807735, 22.866812>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.464066, 35.178932, 22.682705> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.765266, 35.425041, 22.589380>,  <40.945988, 35.572708, 22.533386>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.765266, 35.425041, 22.589380>,  <40.464066, 35.178932, 22.682705>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.765266, 35.425041, 22.589380> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381911, 0.119909, -0.916387,
		-0.535852, 0.779142, 0.325270,
		0.752999, 0.615272, -0.233310,
		40.991165, 35.609623, 22.519388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.131107, 35.694530, 22.259876>,  <40.464066, 35.178932, 22.682705>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.131107, 35.694530, 22.259876> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.521145, 35.734440, 22.180653>,  <40.755169, 35.758385, 22.133118>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.521145, 35.734440, 22.180653>,  <40.131107, 35.694530, 22.259876>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.521145, 35.734440, 22.180653> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217082, 0.246730, -0.944457,
		-0.045366, 0.963934, 0.262246,
		0.975098, 0.099776, -0.198060,
		40.813675, 35.764374, 22.121235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.152653, 36.068497, 21.745275>,  <40.131107, 35.694530, 22.259876>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.152653, 36.068497, 21.745275> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.521576, 35.917736, 21.711113>,  <40.742928, 35.827278, 21.690615>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.521576, 35.917736, 21.711113>,  <40.152653, 36.068497, 21.745275>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.521576, 35.917736, 21.711113> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046973, 0.110029, -0.992818,
		0.383595, 0.919694, 0.083776,
		0.922306, -0.376905, -0.085408,
		40.798267, 35.804665, 21.685492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.622997, 36.563847, 21.356020>,  <40.152653, 36.068497, 21.745275>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.622997, 36.563847, 21.356020> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.769897, 36.193832, 21.317148>,  <40.858036, 35.971825, 21.293825>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.769897, 36.193832, 21.317148>,  <40.622997, 36.563847, 21.356020>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.769897, 36.193832, 21.317148> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239392, 0.006958, -0.970898,
		0.898788, 0.379825, -0.218890,
		0.367249, -0.925032, -0.097181,
		40.880074, 35.916325, 21.287994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.957371, 36.638988, 20.632130>,  <40.622997, 36.563847, 21.356020>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.957371, 36.638988, 20.632130> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.911896, 36.253311, 20.727968>,  <40.884609, 36.021904, 20.785471>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.911896, 36.253311, 20.727968>,  <40.957371, 36.638988, 20.632130>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.911896, 36.253311, 20.727968> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219768, -0.210782, -0.952509,
		0.968905, -0.160946, -0.187936,
		-0.113689, -0.964193, 0.239598,
		40.877789, 35.964054, 20.799849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.415596, 36.180874, 20.188820>,  <40.957371, 36.638988, 20.632130>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.415596, 36.180874, 20.188820> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.137646, 35.930206, 20.329922>,  <40.970875, 35.779804, 20.414583>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.137646, 35.930206, 20.329922>,  <41.415596, 36.180874, 20.188820>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.137646, 35.930206, 20.329922> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017605, -0.505205, -0.862820,
		0.718918, -0.593339, 0.362085,
		-0.694872, -0.626671, 0.352755,
		40.929184, 35.742207, 20.435749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.643806, 35.514099, 20.009378>,  <41.415596, 36.180874, 20.188820>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.643806, 35.514099, 20.009378> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.246712, 35.505817, 20.056784>,  <41.008453, 35.500847, 20.085228>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.246712, 35.505817, 20.056784>,  <41.643806, 35.514099, 20.009378>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.246712, 35.505817, 20.056784> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099871, -0.407437, -0.907756,
		0.067084, -0.912999, 0.402410,
		-0.992736, -0.020707, 0.118514,
		40.948891, 35.499607, 20.092339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.421631, 34.945541, 19.617628>,  <41.643806, 35.514099, 20.009378>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.421631, 34.945541, 19.617628> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.088863, 35.161793, 19.667629>,  <40.889202, 35.291546, 19.697630>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.088863, 35.161793, 19.667629>,  <41.421631, 34.945541, 19.617628>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.088863, 35.161793, 19.667629> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349575, -0.335678, -0.874710,
		-0.430940, -0.771384, 0.468249,
		-0.831918, 0.540635, 0.124999,
		40.839287, 35.323982, 19.705130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.888691, 34.606632, 19.338398>,  <41.421631, 34.945541, 19.617628>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.888691, 34.606632, 19.338398> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.700447, 34.957714, 19.374519>,  <40.587502, 35.168365, 19.396193>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.700447, 34.957714, 19.374519>,  <40.888691, 34.606632, 19.338398>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.700447, 34.957714, 19.374519> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500817, -0.181453, -0.846320,
		-0.726436, -0.443511, 0.524965,
		-0.470609, 0.877709, 0.090304,
		40.559265, 35.221027, 19.401611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.157787, 34.440083, 19.179100>,  <40.888691, 34.606632, 19.338398>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.157787, 34.440083, 19.179100> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.248100, 34.825005, 19.118456>,  <40.302288, 35.055958, 19.082069>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.248100, 34.825005, 19.118456>,  <40.157787, 34.440083, 19.179100>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.248100, 34.825005, 19.118456> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468916, -0.029058, -0.882764,
		-0.853896, 0.270410, 0.444680,
		0.225787, 0.962307, -0.151613,
		40.315838, 35.113697, 19.072971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.464348, 34.779949, 18.898769>,  <40.157787, 34.440083, 19.179100>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.464348, 34.779949, 18.898769> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.774494, 35.012821, 18.800896>,  <39.960583, 35.152546, 18.742172>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.774494, 35.012821, 18.800896>,  <39.464348, 34.779949, 18.898769>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.774494, 35.012821, 18.800896> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245594, -0.078973, -0.966151,
		-0.581799, 0.809214, 0.081748,
		0.775366, 0.582183, -0.244684,
		40.007103, 35.187477, 18.727489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.213951, 35.273430, 18.428804>,  <39.464348, 34.779949, 18.898769>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.213951, 35.273430, 18.428804> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.606373, 35.328533, 18.374317>,  <39.841827, 35.361595, 18.341625>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.606373, 35.328533, 18.374317>,  <39.213951, 35.273430, 18.428804>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.606373, 35.328533, 18.374317> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138457, 0.006739, -0.990346,
		-0.135515, 0.990442, 0.025686,
		0.981053, 0.137763, -0.136220,
		39.900688, 35.369862, 18.333450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.270924, 35.780308, 17.902752>,  <39.213951, 35.273430, 18.428804>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.270924, 35.780308, 17.902752> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.633675, 35.612061, 17.912977>,  <39.851326, 35.511112, 17.919113>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.633675, 35.612061, 17.912977>,  <39.270924, 35.780308, 17.902752>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.633675, 35.612061, 17.912977> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071564, 0.093943, -0.993002,
		0.415270, 0.902362, 0.115295,
		0.906879, -0.420615, 0.025565,
		39.905739, 35.485874, 17.920647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.644516, 36.236309, 17.582682>,  <39.270924, 35.780308, 17.902752>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.644516, 36.236309, 17.582682> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.869812, 35.909988, 17.530176>,  <40.004990, 35.714195, 17.498672>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.869812, 35.909988, 17.530176>,  <39.644516, 36.236309, 17.582682>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.869812, 35.909988, 17.530176> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173190, 0.038772, -0.984125,
		0.807937, 0.577036, -0.119450,
		0.563244, -0.815798, -0.131262,
		40.038784, 35.665249, 17.490797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.174374, 36.362175, 17.143900>,  <39.644516, 36.236309, 17.582682>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.174374, 36.362175, 17.143900> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.158112, 35.963497, 17.115793>,  <40.148354, 35.724289, 17.098928>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.158112, 35.963497, 17.115793>,  <40.174374, 36.362175, 17.143900>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.158112, 35.963497, 17.115793> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018193, 0.071053, -0.997307,
		0.999007, -0.039270, -0.021021,
		-0.040658, -0.996699, -0.070268,
		40.145916, 35.664486, 17.094713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.625706, 36.249069, 16.645452>,  <40.174374, 36.362175, 17.143900>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.625706, 36.249069, 16.645452> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.373356, 35.938946, 16.657394>,  <40.221947, 35.752872, 16.664560>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.373356, 35.938946, 16.657394>,  <40.625706, 36.249069, 16.645452>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.373356, 35.938946, 16.657394> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134206, 0.071144, -0.988396,
		0.764191, -0.627559, -0.148934,
		-0.630873, -0.775312, 0.029854,
		40.184093, 35.706352, 16.666351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.822803, 35.794460, 16.166025>,  <40.625706, 36.249069, 16.645452>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.822803, 35.794460, 16.166025> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.444550, 35.675484, 16.218657>,  <40.217598, 35.604099, 16.250235>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.444550, 35.675484, 16.218657>,  <40.822803, 35.794460, 16.166025>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.444550, 35.675484, 16.218657> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140886, 0.009981, -0.989976,
		0.293144, -0.954689, -0.051344,
		-0.945631, -0.297439, 0.131577,
		40.160862, 35.586254, 16.258129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.751682, 35.203533, 15.663365>,  <40.822803, 35.794460, 16.166025>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.751682, 35.203533, 15.663365> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.374828, 35.289268, 15.766475>,  <40.148716, 35.340710, 15.828341>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.374828, 35.289268, 15.766475>,  <40.751682, 35.203533, 15.663365>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.374828, 35.289268, 15.766475> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276952, -0.064338, -0.958727,
		-0.188906, -0.974638, 0.119976,
		-0.942132, 0.214337, 0.257774,
		40.092190, 35.353569, 15.843807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.302082, 34.694187, 15.270724>,  <40.751682, 35.203533, 15.663365>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.302082, 34.694187, 15.270724> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.063915, 34.990189, 15.395860>,  <39.921013, 35.167789, 15.470941>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.063915, 34.990189, 15.395860>,  <40.302082, 34.694187, 15.270724>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.063915, 34.990189, 15.395860> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457403, 0.007886, -0.889225,
		-0.660498, -0.672555, 0.333785,
		-0.595420, 0.740005, 0.312837,
		39.885288, 35.212189, 15.489711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.583565, 34.466206, 15.263237>,  <40.302082, 34.694187, 15.270724>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.583565, 34.466206, 15.263237> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.584236, 34.865097, 15.233467>,  <39.584637, 35.104431, 15.215606>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.584236, 34.865097, 15.233467>,  <39.583565, 34.466206, 15.263237>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.584236, 34.865097, 15.233467> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568353, -0.060285, -0.820574,
		-0.822783, 0.043675, 0.566674,
		0.001677, 0.997225, -0.074424,
		39.584740, 35.164265, 15.211140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.883217, 34.746407, 15.179871>,  <39.583565, 34.466206, 15.263237>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.883217, 34.746407, 15.179871> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.165127, 34.981083, 15.020328>,  <39.334274, 35.121887, 14.924602>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.165127, 34.981083, 15.020328>,  <38.883217, 34.746407, 15.179871>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.165127, 34.981083, 15.020328> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530389, 0.062365, -0.845457,
		-0.471145, 0.807408, 0.355126,
		0.704777, 0.586688, -0.398858,
		39.376560, 35.157089, 14.900670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.317162, 34.360455, 14.828777>,  <38.883217, 34.746407, 15.179871>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.317162, 34.360455, 14.828777> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.932449, 34.413631, 14.733019>,  <37.701622, 34.445538, 14.675564>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.932449, 34.413631, 14.733019>,  <38.317162, 34.360455, 14.828777>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.932449, 34.413631, 14.733019> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200055, 0.255841, 0.945792,
		0.186982, 0.957534, -0.219467,
		-0.961777, 0.132941, -0.239397,
		37.643917, 34.453514, 14.661200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.179077, 35.003124, 14.966489>,  <38.317162, 34.360455, 14.828777>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.179077, 35.003124, 14.966489> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.835938, 34.802433, 15.010975>,  <37.630054, 34.682018, 15.037666>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.835938, 34.802433, 15.010975>,  <38.179077, 35.003124, 14.966489>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.835938, 34.802433, 15.010975> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078934, 0.342483, 0.936202,
		-0.507808, 0.794339, -0.333401,
		-0.857846, -0.501728, 0.111216,
		37.578583, 34.651917, 15.044339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.745739, 35.433662, 15.411237>,  <38.179077, 35.003124, 14.966489>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.745739, 35.433662, 15.411237> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.577457, 35.070843, 15.417767>,  <37.476486, 34.853149, 15.421684>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.577457, 35.070843, 15.417767>,  <37.745739, 35.433662, 15.411237>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.577457, 35.070843, 15.417767> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335610, 0.172331, 0.926103,
		-0.842835, 0.384140, -0.376916,
		-0.420708, -0.907049, 0.016325,
		37.451244, 34.798729, 15.422664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.117432, 35.605350, 15.858736>,  <37.745739, 35.433662, 15.411237>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.117432, 35.605350, 15.858736> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.209229, 35.216061, 15.853481>,  <37.264305, 34.982487, 15.850328>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.209229, 35.216061, 15.853481>,  <37.117432, 35.605350, 15.858736>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.209229, 35.216061, 15.853481> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268080, -0.076177, 0.960380,
		-0.935665, -0.216874, -0.278384,
		0.229487, -0.973223, -0.013136,
		37.278076, 34.924095, 15.849541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.633762, 35.292610, 16.244091>,  <37.117432, 35.605350, 15.858736>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.633762, 35.292610, 16.244091> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.927448, 35.022987, 16.276548>,  <37.103661, 34.861214, 16.296022>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.927448, 35.022987, 16.276548>,  <36.633762, 35.292610, 16.244091>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.927448, 35.022987, 16.276548> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123022, -0.014546, 0.992297,
		-0.667683, -0.738538, -0.093603,
		0.734211, -0.674055, 0.081144,
		37.147713, 34.820770, 16.300892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.420902, 34.771053, 16.747398>,  <36.633762, 35.292610, 16.244091>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.420902, 34.771053, 16.747398> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.817207, 34.722893, 16.722439>,  <37.054989, 34.693996, 16.707462>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.817207, 34.722893, 16.722439>,  <36.420902, 34.771053, 16.747398>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.817207, 34.722893, 16.722439> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039545, -0.183635, 0.982199,
		-0.129714, -0.975593, -0.177177,
		0.990763, -0.120399, -0.062400,
		37.114437, 34.686771, 16.703718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.529018, 34.175194, 17.118689>,  <36.420902, 34.771053, 16.747398>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.529018, 34.175194, 17.118689> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.882679, 34.362072, 17.119871>,  <37.094875, 34.474197, 17.120581>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.882679, 34.362072, 17.119871>,  <36.529018, 34.175194, 17.118689>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.882679, 34.362072, 17.119871> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177738, -0.342200, 0.922664,
		0.432076, -0.815247, -0.385595,
		0.884149, 0.467196, 0.002956,
		37.147923, 34.502232, 17.120758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.985794, 33.719082, 17.445387>,  <36.529018, 34.175194, 17.118689>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.985794, 33.719082, 17.445387> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.169731, 34.074226, 17.451633>,  <37.280094, 34.287312, 17.455381>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.169731, 34.074226, 17.451633>,  <36.985794, 33.719082, 17.445387>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.169731, 34.074226, 17.451633> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160696, -0.100500, 0.981874,
		0.873337, -0.449002, -0.188891,
		0.459847, 0.887861, 0.015618,
		37.307686, 34.340584, 17.456318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.389931, 33.565250, 17.912388>,  <36.985794, 33.719082, 17.445387>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.389931, 33.565250, 17.912388> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.390598, 33.965137, 17.921923>,  <37.390999, 34.205070, 17.927643>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.390598, 33.965137, 17.921923>,  <37.389931, 33.565250, 17.912388>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.390598, 33.965137, 17.921923> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083572, -0.023891, 0.996215,
		0.996500, 0.000334, -0.083588,
		0.001665, 0.999714, 0.023835,
		37.391098, 34.265053, 17.929073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.965179, 33.695282, 18.314957>,  <37.389931, 33.565250, 17.912388>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.965179, 33.695282, 18.314957> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.803699, 34.061001, 18.328190>,  <37.706810, 34.280430, 18.336130>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.803699, 34.061001, 18.328190>,  <37.965179, 33.695282, 18.314957>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.803699, 34.061001, 18.328190> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325401, 0.109693, 0.939192,
		0.855067, 0.389919, -0.341795,
		-0.403701, 0.914293, 0.033085,
		37.682590, 34.335289, 18.338116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.494732, 34.201435, 18.548162>,  <37.965179, 33.695282, 18.314957>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.494732, 34.201435, 18.548162> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.129578, 34.339306, 18.635643>,  <37.910484, 34.422028, 18.688131>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.129578, 34.339306, 18.635643>,  <38.494732, 34.201435, 18.548162>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.129578, 34.339306, 18.635643> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300351, 0.204324, 0.931687,
		0.276443, 0.916215, -0.290049,
		-0.912890, 0.344675, 0.218703,
		37.855709, 34.442707, 18.701254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.649620, 34.762775, 18.938324>,  <38.494732, 34.201435, 18.548162>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.649620, 34.762775, 18.938324> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.260143, 34.734039, 19.024828>,  <38.026459, 34.716797, 19.076731>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.260143, 34.734039, 19.024828>,  <38.649620, 34.762775, 18.938324>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.260143, 34.734039, 19.024828> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174366, 0.376138, 0.910009,
		-0.146715, 0.923775, -0.353716,
		-0.973690, -0.071836, 0.216259,
		37.968037, 34.712490, 19.089706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.496521, 35.409790, 19.350100>,  <38.649620, 34.762775, 18.938324>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.496521, 35.409790, 19.350100> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.238861, 35.111195, 19.416826>,  <38.084267, 34.932037, 19.456861>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.238861, 35.111195, 19.416826>,  <38.496521, 35.409790, 19.350100>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.238861, 35.111195, 19.416826> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047277, 0.178816, 0.982746,
		-0.763438, 0.640921, -0.079892,
		-0.644148, -0.746489, 0.166816,
		38.045616, 34.887249, 19.466871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.066792, 35.693047, 19.840569>,  <38.496521, 35.409790, 19.350100>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.066792, 35.693047, 19.840569> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.032661, 35.295486, 19.868492>,  <38.012184, 35.056950, 19.885246>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.032661, 35.295486, 19.868492>,  <38.066792, 35.693047, 19.840569>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.032661, 35.295486, 19.868492> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203986, 0.051153, 0.977637,
		-0.975248, 0.097660, 0.198377,
		-0.085328, -0.993904, 0.069808,
		38.007065, 34.997314, 19.889435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.780880, 35.546967, 20.478060>,  <38.066792, 35.693047, 19.840569>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.780880, 35.546967, 20.478060> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.959026, 35.206978, 20.365486>,  <38.065914, 35.002987, 20.297941>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.959026, 35.206978, 20.365486>,  <37.780880, 35.546967, 20.478060>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.959026, 35.206978, 20.365486> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376501, -0.107401, 0.920170,
		-0.812342, -0.515769, 0.272181,
		0.445362, -0.849969, -0.281434,
		38.092636, 34.951988, 20.281055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.611916, 35.180420, 21.008226>,  <37.780880, 35.546967, 20.478060>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.611916, 35.180420, 21.008226> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.904659, 34.979450, 20.824074>,  <38.080307, 34.858868, 20.713583>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.904659, 34.979450, 20.824074>,  <37.611916, 35.180420, 21.008226>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.904659, 34.979450, 20.824074> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382513, -0.256232, 0.887710,
		-0.563968, -0.825783, 0.004655,
		0.731863, -0.502420, -0.460379,
		38.124218, 34.828724, 20.685961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.562965, 34.497082, 21.314035>,  <37.611916, 35.180420, 21.008226>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.562965, 34.497082, 21.314035> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.932102, 34.553402, 21.170624>,  <38.153584, 34.587193, 21.084578>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.932102, 34.553402, 21.170624>,  <37.562965, 34.497082, 21.314035>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.932102, 34.553402, 21.170624> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373747, -0.102170, 0.921886,
		0.093169, -0.984752, -0.146910,
		0.922839, 0.140798, -0.358529,
		38.208954, 34.595642, 21.063065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.943951, 33.886284, 21.459503>,  <37.562965, 34.497082, 21.314035>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.943951, 33.886284, 21.459503> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.196930, 34.193871, 21.422192>,  <38.348717, 34.378422, 21.399805>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.196930, 34.193871, 21.422192>,  <37.943951, 33.886284, 21.459503>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.196930, 34.193871, 21.422192> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296752, -0.129294, 0.946162,
		0.715508, -0.626076, -0.309964,
		0.632445, 0.768968, -0.093278,
		38.386665, 34.424561, 21.394209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.555038, 33.592159, 21.731241>,  <37.943951, 33.886284, 21.459503>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.555038, 33.592159, 21.731241> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.643501, 33.981701, 21.752054>,  <38.696579, 34.215424, 21.764542>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.643501, 33.981701, 21.752054>,  <38.555038, 33.592159, 21.731241>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.643501, 33.981701, 21.752054> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400287, -0.139295, 0.905741,
		0.889304, -0.179479, -0.420625,
		0.221153, 0.973850, 0.052033,
		38.709846, 34.273857, 21.767664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.278275, 33.595249, 21.836853>,  <38.555038, 33.592159, 21.731241>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.278275, 33.595249, 21.836853> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.155334, 33.951637, 21.970543>,  <39.081570, 34.165470, 22.050756>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.155334, 33.951637, 21.970543>,  <39.278275, 33.595249, 21.836853>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.155334, 33.951637, 21.970543> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472906, -0.161776, 0.866134,
		0.825771, 0.424260, -0.371625,
		-0.307346, 0.890973, 0.334225,
		39.063129, 34.218929, 22.070810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.829922, 33.963688, 22.083742>,  <39.278275, 33.595249, 21.836853>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.829922, 33.963688, 22.083742> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.516907, 34.116676, 22.280251>,  <39.329098, 34.208469, 22.398155>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.516907, 34.116676, 22.280251>,  <39.829922, 33.963688, 22.083742>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.516907, 34.116676, 22.280251> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526080, -0.015798, 0.850288,
		0.332971, 0.923833, -0.188848,
		-0.782541, 0.382470, 0.491270,
		39.282143, 34.231419, 22.427631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<42.891541, 35.801311, 25.746222> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.504681, 35.823547, 25.845449>,  <42.272564, 35.836887, 25.904987>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.504681, 35.823547, 25.845449>,  <42.891541, 35.801311, 25.746222>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.504681, 35.823547, 25.845449> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249483, 0.395055, 0.884132,
		-0.048857, 0.916974, -0.395943,
		-0.967146, 0.055585, 0.248071,
		42.214539, 35.840221, 25.919870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.804501, 36.446335, 25.913992>,  <42.891541, 35.801311, 25.746222>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.804501, 36.446335, 25.913992> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.504696, 36.252094, 26.093958>,  <42.324814, 36.135551, 26.201939>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.504696, 36.252094, 26.093958>,  <42.804501, 36.446335, 25.913992>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.504696, 36.252094, 26.093958> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258291, 0.411257, 0.874159,
		-0.609523, 0.771401, -0.182816,
		-0.749512, -0.485600, 0.449916,
		42.279842, 36.106415, 26.228933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.554237, 36.952446, 26.445379>,  <42.804501, 36.446335, 25.913992>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.554237, 36.952446, 26.445379> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.407734, 36.598709, 26.561163>,  <42.319832, 36.386467, 26.630632>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.407734, 36.598709, 26.561163>,  <42.554237, 36.952446, 26.445379>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.407734, 36.598709, 26.561163> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021160, 0.303079, 0.952731,
		-0.930273, 0.355069, -0.092292,
		-0.366257, -0.884347, 0.289459,
		42.297855, 36.333405, 26.648001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.154007, 37.151897, 26.921698>,  <42.554237, 36.952446, 26.445379>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.154007, 37.151897, 26.921698> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.199921, 36.764507, 27.010128>,  <42.227470, 36.532074, 27.063187>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.199921, 36.764507, 27.010128>,  <42.154007, 37.151897, 26.921698>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.199921, 36.764507, 27.010128> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101592, 0.209933, 0.972423,
		-0.988182, -0.134082, -0.074291,
		0.114789, -0.968478, 0.221074,
		42.234356, 36.473965, 27.076450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.690842, 36.987354, 27.402908>,  <42.154007, 37.151897, 26.921698>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.690842, 36.987354, 27.402908> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.963593, 36.697815, 27.445034>,  <42.127243, 36.524094, 27.470310>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.963593, 36.697815, 27.445034>,  <41.690842, 36.987354, 27.402908>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.963593, 36.697815, 27.445034> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005639, 0.138772, 0.990308,
		-0.731446, -0.675861, 0.090543,
		0.681876, -0.723847, 0.105316,
		42.168156, 36.480659, 27.476629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.459114, 36.658749, 27.962400>,  <41.690842, 36.987354, 27.402908>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.459114, 36.658749, 27.962400> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.844028, 36.553276, 27.935654>,  <42.074978, 36.489994, 27.919605>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.844028, 36.553276, 27.935654>,  <41.459114, 36.658749, 27.962400>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.844028, 36.553276, 27.935654> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099005, 0.110530, 0.988929,
		-0.253367, -0.958258, 0.132467,
		0.962291, -0.263677, -0.066868,
		42.132717, 36.474174, 27.915594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.514420, 36.167625, 28.500036>,  <41.459114, 36.658749, 27.962400>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.514420, 36.167625, 28.500036> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.886600, 36.290478, 28.420099>,  <42.109909, 36.364189, 28.372137>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.886600, 36.290478, 28.420099>,  <41.514420, 36.167625, 28.500036>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.886600, 36.290478, 28.420099> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168790, 0.124823, 0.977716,
		0.325233, -0.943445, 0.064301,
		0.930448, 0.307133, -0.199841,
		42.165733, 36.382618, 28.360147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.034836, 35.861107, 29.060829>,  <41.514420, 36.167625, 28.500036>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.034836, 35.861107, 29.060829> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.237793, 36.161976, 28.892643>,  <42.359566, 36.342495, 28.791731>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.237793, 36.161976, 28.892643>,  <42.034836, 35.861107, 29.060829>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.237793, 36.161976, 28.892643> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340868, 0.272950, 0.899615,
		0.791430, -0.599782, -0.117898,
		0.507393, 0.752170, -0.420467,
		42.390011, 36.387627, 28.766502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.688484, 35.862865, 29.455757>,  <42.034836, 35.861107, 29.060829>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.688484, 35.862865, 29.455757> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.635361, 36.218391, 29.280315>,  <42.603489, 36.431705, 29.175051>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.635361, 36.218391, 29.280315>,  <42.688484, 35.862865, 29.455757>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.635361, 36.218391, 29.280315> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192603, 0.457232, 0.868241,
		0.972248, 0.030830, -0.231910,
		-0.132804, 0.888813, -0.438605,
		42.595520, 36.485035, 29.148733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.174335, 36.232742, 29.644579>,  <42.688484, 35.862865, 29.455757>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.174335, 36.232742, 29.644579> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.913311, 36.515141, 29.534494>,  <42.756695, 36.684578, 29.468445>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.913311, 36.515141, 29.534494>,  <43.174335, 36.232742, 29.644579>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.913311, 36.515141, 29.534494> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147425, 0.474550, 0.867795,
		0.743257, 0.525715, -0.413754,
		-0.652560, 0.705992, -0.275209,
		42.717545, 36.726940, 29.451931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.434929, 36.766094, 29.854015>,  <43.174335, 36.232742, 29.644579>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.434929, 36.766094, 29.854015> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.060699, 36.899776, 29.808392>,  <42.836163, 36.979984, 29.781017>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.060699, 36.899776, 29.808392>,  <43.434929, 36.766094, 29.854015>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.060699, 36.899776, 29.808392> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038174, 0.416817, 0.908189,
		0.351060, 0.845324, -0.402721,
		-0.935574, 0.334202, -0.114058,
		42.780025, 37.000038, 29.774174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.429920, 37.490128, 29.969290>,  <43.434929, 36.766094, 29.854015>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.429920, 37.490128, 29.969290> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.046436, 37.397369, 30.035133>,  <42.816345, 37.341713, 30.074640>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.046436, 37.397369, 30.035133>,  <43.429920, 37.490128, 29.969290>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.046436, 37.397369, 30.035133> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051317, 0.428259, 0.902198,
		-0.279715, 0.873394, -0.398676,
		-0.958711, -0.231900, 0.164611,
		42.758823, 37.327801, 30.084517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.898216, 38.103863, 30.116730>,  <43.429920, 37.490128, 29.969290>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.898216, 38.103863, 30.116730> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.757912, 37.777763, 30.301054>,  <42.673729, 37.582104, 30.411648>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.757912, 37.777763, 30.301054>,  <42.898216, 38.103863, 30.116730>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.757912, 37.777763, 30.301054> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102463, 0.522529, 0.846442,
		-0.930843, 0.249681, -0.266815,
		-0.350759, -0.815244, 0.460809,
		42.652683, 37.533192, 30.439297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.379505, 38.283722, 30.546856>,  <42.898216, 38.103863, 30.116730>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.379505, 38.283722, 30.546856> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.505878, 37.934959, 30.696507>,  <42.581703, 37.725704, 30.786297>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.505878, 37.934959, 30.696507>,  <42.379505, 38.283722, 30.546856>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.505878, 37.934959, 30.696507> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163972, 0.338213, 0.926674,
		-0.934506, -0.354112, -0.036116,
		0.315932, -0.871905, 0.374126,
		42.600658, 37.673389, 30.808744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.375538, 39.054588, 30.645330>,  <42.379505, 38.283722, 30.546856>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.375538, 39.054588, 30.645330> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.501926, 39.431767, 30.687323>,  <42.577759, 39.658073, 30.712519>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.501926, 39.431767, 30.687323>,  <42.375538, 39.054588, 30.645330>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.501926, 39.431767, 30.687323> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169244, 0.164894, -0.971682,
		-0.933551, 0.289257, 0.211690,
		0.315973, 0.942943, 0.104982,
		42.596718, 39.714649, 30.718817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.887253, 39.480568, 30.512251>,  <42.375538, 39.054588, 30.645330>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.887253, 39.480568, 30.512251> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.236332, 39.664288, 30.445992>,  <42.445778, 39.774521, 30.406235>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.236332, 39.664288, 30.445992>,  <41.887253, 39.480568, 30.512251>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.236332, 39.664288, 30.445992> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268109, 0.167246, -0.948760,
		-0.408065, 0.872393, 0.269099,
		0.872697, 0.459304, -0.165649,
		42.498142, 39.802078, 30.396297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.650372, 39.975353, 30.049929>,  <41.887253, 39.480568, 30.512251>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.650372, 39.975353, 30.049929> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.043533, 40.046703, 30.031700>,  <42.279430, 40.089512, 30.020763>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.043533, 40.046703, 30.031700>,  <41.650372, 39.975353, 30.049929>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.043533, 40.046703, 30.031700> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089079, 0.244165, -0.965634,
		-0.161120, 0.953187, 0.255881,
		0.982907, 0.178376, -0.045569,
		42.338406, 40.100216, 30.018030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.686138, 40.534431, 29.588875>,  <41.650372, 39.975353, 30.049929>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.686138, 40.534431, 29.588875> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.039299, 40.347244, 29.573446>,  <42.251194, 40.234932, 29.564190>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.039299, 40.347244, 29.573446>,  <41.686138, 40.534431, 29.588875>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.039299, 40.347244, 29.573446> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143114, 0.346419, -0.927099,
		0.447214, 0.813019, 0.372827,
		0.882903, -0.467968, -0.038569,
		42.304169, 40.206856, 29.561876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.125904, 40.922279, 29.209530>,  <41.686138, 40.534431, 29.588875>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.125904, 40.922279, 29.209530> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.317078, 40.570942, 29.213615>,  <42.431782, 40.360142, 29.216066>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.317078, 40.570942, 29.213615>,  <42.125904, 40.922279, 29.209530>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.317078, 40.570942, 29.213615> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200986, 0.098027, -0.974677,
		0.855096, 0.467880, 0.223383,
		0.477930, -0.878339, 0.010214,
		42.460457, 40.307442, 29.216681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.646820, 41.047035, 28.746901>,  <42.125904, 40.922279, 29.209530>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.646820, 41.047035, 28.746901> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.564171, 40.658413, 28.793179>,  <42.514580, 40.425240, 28.820946>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.564171, 40.658413, 28.793179>,  <42.646820, 41.047035, 28.746901>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.564171, 40.658413, 28.793179> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022278, -0.113544, -0.993283,
		0.978167, -0.207814, 0.001817,
		-0.206624, -0.971556, 0.115694,
		42.502182, 40.366947, 28.827887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.978798, 40.756340, 28.180285>,  <42.646820, 41.047035, 28.746901>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.978798, 40.756340, 28.180285> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.748150, 40.445602, 28.281496>,  <42.609760, 40.259159, 28.342224>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.748150, 40.445602, 28.281496>,  <42.978798, 40.756340, 28.180285>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.748150, 40.445602, 28.281496> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004000, -0.307014, -0.951697,
		0.817003, -0.549779, 0.173923,
		-0.576620, -0.776843, 0.253030,
		42.575165, 40.212551, 28.357405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.174782, 40.221710, 27.706980>,  <42.978798, 40.756340, 28.180285>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.174782, 40.221710, 27.706980> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.817863, 40.101826, 27.842026>,  <42.603714, 40.029896, 27.923054>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.817863, 40.101826, 27.842026>,  <43.174782, 40.221710, 27.706980>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.817863, 40.101826, 27.842026> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225397, -0.352207, -0.908376,
		0.391165, -0.886635, 0.246717,
		-0.892293, -0.299715, 0.337615,
		42.550175, 40.011909, 27.943310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.131409, 39.519943, 27.499659>,  <43.174782, 40.221710, 27.706980>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.131409, 39.519943, 27.499659> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.758366, 39.650589, 27.561069>,  <42.534542, 39.728977, 27.597916>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.758366, 39.650589, 27.561069>,  <43.131409, 39.519943, 27.499659>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.758366, 39.650589, 27.561069> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283631, -0.400257, -0.871406,
		-0.223165, -0.856222, 0.465920,
		-0.932605, 0.326617, 0.153527,
		42.478584, 39.748573, 27.607128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.722507, 38.909428, 27.281748>,  <43.131409, 39.519943, 27.499659>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.722507, 38.909428, 27.281748> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.460350, 39.207764, 27.329382>,  <42.303055, 39.386765, 27.357962>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.460350, 39.207764, 27.329382>,  <42.722507, 38.909428, 27.281748>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.460350, 39.207764, 27.329382> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569005, -0.383895, -0.727226,
		-0.496679, -0.544378, 0.675990,
		-0.655395, 0.745839, 0.119081,
		42.263733, 39.431515, 27.365107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.983356, 38.623829, 27.384809>,  <42.722507, 38.909428, 27.281748>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.983356, 38.623829, 27.384809> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.983440, 38.999123, 27.246405>,  <41.983490, 39.224297, 27.163363>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.983440, 38.999123, 27.246405>,  <41.983356, 38.623829, 27.384809>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.983440, 38.999123, 27.246405> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531846, -0.292914, -0.794570,
		-0.846841, 0.184190, 0.498933,
		0.000208, 0.938229, -0.346013,
		41.983501, 39.280590, 27.142601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.297024, 38.877434, 27.145042>,  <41.983356, 38.623829, 27.384809>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.297024, 38.877434, 27.145042> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.518978, 39.151493, 26.956291>,  <41.652149, 39.315929, 26.843040>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.518978, 39.151493, 26.956291>,  <41.297024, 38.877434, 27.145042>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.518978, 39.151493, 26.956291> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537899, -0.137225, -0.831765,
		-0.634639, 0.715357, 0.292399,
		0.554885, 0.685152, -0.471878,
		41.685444, 39.357040, 26.814728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.867867, 39.264206, 26.893417>,  <41.297024, 38.877434, 27.145042>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.867867, 39.264206, 26.893417> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.200588, 39.317665, 26.677921>,  <41.400219, 39.349739, 26.548622>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.200588, 39.317665, 26.677921>,  <40.867867, 39.264206, 26.893417>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.200588, 39.317665, 26.677921> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531496, -0.088095, -0.842467,
		-0.160054, 0.987106, -0.002245,
		0.831802, 0.133647, -0.538742,
		41.450130, 39.357758, 26.516298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.736450, 39.755779, 26.379101>,  <40.867867, 39.264206, 26.893417>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.736450, 39.755779, 26.379101> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.043320, 39.541630, 26.237782>,  <41.227444, 39.413139, 26.152990>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.043320, 39.541630, 26.237782>,  <40.736450, 39.755779, 26.379101>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.043320, 39.541630, 26.237782> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522743, -0.202639, -0.828056,
		0.371725, 0.819949, -0.435321,
		0.767177, -0.535370, -0.353297,
		41.273472, 39.381020, 26.131792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.180286, 40.231514, 26.146967>,  <40.736450, 39.755779, 26.379101>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.180286, 40.231514, 26.146967> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.847908, 40.454048, 26.144905>,  <39.648483, 40.587570, 26.143669>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.847908, 40.454048, 26.144905>,  <40.180286, 40.231514, 26.146967>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.847908, 40.454048, 26.144905> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122580, -0.174035, 0.977080,
		0.542688, 0.812529, 0.212808,
		-0.830942, 0.556335, -0.005153,
		39.598625, 40.620949, 26.143360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.265732, 40.595139, 26.840775>,  <40.180286, 40.231514, 26.146967>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.265732, 40.595139, 26.840775> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.880302, 40.585739, 26.734215>,  <39.649044, 40.580101, 26.670279>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.880302, 40.585739, 26.734215>,  <40.265732, 40.595139, 26.840775>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.880302, 40.585739, 26.734215> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252705, -0.246012, 0.935745,
		-0.087522, 0.968982, 0.231115,
		-0.963577, -0.023494, -0.266398,
		39.591228, 40.578690, 26.654295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.904591, 40.955208, 27.353596>,  <40.265732, 40.595139, 26.840775>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.904591, 40.955208, 27.353596> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.601227, 40.751236, 27.191221>,  <39.419209, 40.628853, 27.093798>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.601227, 40.751236, 27.191221>,  <39.904591, 40.955208, 27.353596>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.601227, 40.751236, 27.191221> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232225, -0.370527, 0.899323,
		-0.609004, 0.776324, 0.162592,
		-0.758410, -0.509933, -0.405934,
		39.373703, 40.598255, 27.069441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.271591, 41.102108, 27.803650>,  <39.904591, 40.955208, 27.353596>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.271591, 41.102108, 27.803650> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.226158, 40.766293, 27.591133>,  <39.198898, 40.564804, 27.463623>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.226158, 40.766293, 27.591133>,  <39.271591, 41.102108, 27.803650>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.226158, 40.766293, 27.591133> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312284, -0.477482, 0.821273,
		-0.943174, 0.259200, -0.207939,
		-0.113587, -0.839539, -0.531292,
		39.192081, 40.514431, 27.431746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.651550, 40.812462, 28.096270>,  <39.271591, 41.102108, 27.803650>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.651550, 40.812462, 28.096270> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.790688, 40.488640, 27.907112>,  <38.874168, 40.294346, 27.793617>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.790688, 40.488640, 27.907112>,  <38.651550, 40.812462, 28.096270>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.790688, 40.488640, 27.907112> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334127, -0.578313, 0.744253,
		-0.875993, -0.100878, -0.471656,
		0.347844, -0.809554, -0.472893,
		38.895042, 40.245773, 27.765244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.111992, 40.360619, 27.936193>,  <38.651550, 40.812462, 28.096270>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.111992, 40.360619, 27.936193> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.446911, 40.145603, 27.976164>,  <38.647861, 40.016594, 28.000147>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.446911, 40.145603, 27.976164>,  <38.111992, 40.360619, 27.936193>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.446911, 40.145603, 27.976164> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427223, -0.529184, 0.733106,
		-0.341191, -0.656520, -0.672733,
		0.837299, -0.537536, 0.099927,
		38.698101, 39.984341, 28.006142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.912510, 39.907047, 28.378967>,  <38.111992, 40.360619, 27.936193>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.912510, 39.907047, 28.378967> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.308357, 39.851147, 28.392340>,  <38.545868, 39.817608, 28.400364>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.308357, 39.851147, 28.392340>,  <37.912510, 39.907047, 28.378967>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.308357, 39.851147, 28.392340> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091938, -0.437011, 0.894745,
		-0.110429, -0.888534, -0.445324,
		0.989623, -0.139748, 0.033431,
		38.605244, 39.809223, 28.402369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.042843, 39.185745, 28.479931>,  <37.912510, 39.907047, 28.378967>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.042843, 39.185745, 28.479931> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.362125, 39.384869, 28.615614>,  <38.553696, 39.504341, 28.697023>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.362125, 39.384869, 28.615614>,  <38.042843, 39.185745, 28.479931>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.362125, 39.384869, 28.615614> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192303, -0.323064, 0.926633,
		0.570869, -0.804872, -0.162141,
		0.798203, 0.497806, 0.339207,
		38.601585, 39.534210, 28.717377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.306957, 38.763645, 28.932827>,  <38.042843, 39.185745, 28.479931>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.306957, 38.763645, 28.932827> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.514584, 39.097168, 29.008026>,  <38.639160, 39.297279, 29.053146>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.514584, 39.097168, 29.008026>,  <38.306957, 38.763645, 28.932827>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.514584, 39.097168, 29.008026> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077659, -0.173033, 0.981850,
		0.851199, -0.524244, -0.025063,
		0.519065, 0.833804, 0.187998,
		38.670303, 39.347309, 29.064426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.813381, 38.546703, 29.365595>,  <38.306957, 38.763645, 28.932827>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.813381, 38.546703, 29.365595> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.795055, 38.938602, 29.443558>,  <38.784061, 39.173744, 29.490335>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.795055, 38.938602, 29.443558>,  <38.813381, 38.546703, 29.365595>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.795055, 38.938602, 29.443558> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068983, -0.191542, 0.979057,
		0.996566, 0.058296, -0.058811,
		-0.045810, 0.979752, 0.194906,
		38.781311, 39.232529, 29.502029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.352196, 38.720047, 29.848030>,  <38.813381, 38.546703, 29.365595>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.352196, 38.720047, 29.848030> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.102497, 39.030586, 29.882883>,  <38.952679, 39.216911, 29.903795>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.102497, 39.030586, 29.882883>,  <39.352196, 38.720047, 29.848030>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.102497, 39.030586, 29.882883> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171819, 0.027636, 0.984741,
		0.762098, 0.629693, -0.150644,
		-0.624247, 0.776353, 0.087132,
		38.915222, 39.263493, 29.909023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.736370, 39.294559, 30.087786>,  <39.352196, 38.720047, 29.848030>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.736370, 39.294559, 30.087786> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.348640, 39.345852, 30.171652>,  <39.116001, 39.376625, 30.221972>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.348640, 39.345852, 30.171652>,  <39.736370, 39.294559, 30.087786>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.348640, 39.345852, 30.171652> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196987, -0.104782, 0.974791,
		0.146965, 0.986194, 0.076309,
		-0.969328, 0.128228, 0.209666,
		39.057842, 39.384319, 30.234552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<40.264927, 42.224899, 22.467381> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.909756, 42.041016, 22.461109>,  <39.696651, 41.930683, 22.457346>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.909756, 42.041016, 22.461109>,  <40.264927, 42.224899, 22.467381>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.909756, 42.041016, 22.461109> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025487, 0.015138, 0.999561,
		-0.459273, 0.887939, -0.025159,
		-0.887929, -0.459713, -0.015679,
		39.643375, 41.903103, 22.456406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.833496, 42.569138, 23.048035>,  <40.264927, 42.224899, 22.467381>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.833496, 42.569138, 23.048035> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.657043, 42.211460, 23.017504>,  <39.551170, 41.996853, 22.999186>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.657043, 42.211460, 23.017504>,  <39.833496, 42.569138, 23.048035>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.657043, 42.211460, 23.017504> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020215, -0.075126, 0.996969,
		-0.897214, 0.441339, 0.015064,
		-0.441134, -0.894190, -0.076326,
		39.524704, 41.943203, 22.994606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.386940, 42.639423, 23.661293>,  <39.833496, 42.569138, 23.048035>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.386940, 42.639423, 23.661293> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.403046, 42.253185, 23.558527>,  <39.412708, 42.021442, 23.496866>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.403046, 42.253185, 23.558527>,  <39.386940, 42.639423, 23.661293>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.403046, 42.253185, 23.558527> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148229, -0.248508, 0.957221,
		-0.988133, -0.076621, 0.133124,
		0.040261, -0.965595, -0.256917,
		39.415123, 41.963509, 23.481453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.921780, 42.297371, 24.212530>,  <39.386940, 42.639423, 23.661293>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.921780, 42.297371, 24.212530> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.146652, 41.997501, 24.072845>,  <39.281574, 41.817581, 23.989035>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.146652, 41.997501, 24.072845>,  <38.921780, 42.297371, 24.212530>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.146652, 41.997501, 24.072845> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040519, -0.446715, 0.893758,
		-0.826022, -0.488303, -0.281510,
		0.562180, -0.749670, -0.349211,
		39.315308, 41.772602, 23.968082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.433193, 41.778450, 24.242785>,  <38.921780, 42.297371, 24.212530>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.433193, 41.778450, 24.242785> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.799553, 41.617920, 24.239620>,  <39.019367, 41.521603, 24.237720>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.799553, 41.617920, 24.239620>,  <38.433193, 41.778450, 24.242785>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.799553, 41.617920, 24.239620> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187113, -0.444294, 0.876123,
		-0.355127, -0.800961, -0.482022,
		0.915900, -0.401328, -0.007911,
		39.074322, 41.497520, 24.237247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.327389, 41.067467, 24.437607>,  <38.433193, 41.778450, 24.242785>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.327389, 41.067467, 24.437607> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.716179, 41.128128, 24.509455>,  <38.949451, 41.164524, 24.552563>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.716179, 41.128128, 24.509455>,  <38.327389, 41.067467, 24.437607>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.716179, 41.128128, 24.509455> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086013, -0.481662, 0.872126,
		0.218780, -0.863135, -0.455119,
		0.971976, 0.151657, 0.179619,
		39.007771, 41.173626, 24.563341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.633789, 40.448467, 24.719090>,  <38.327389, 41.067467, 24.437607>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.633789, 40.448467, 24.719090> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.903572, 40.722588, 24.828981>,  <39.065441, 40.887058, 24.894917>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.903572, 40.722588, 24.828981>,  <38.633789, 40.448467, 24.719090>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.903572, 40.722588, 24.828981> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068808, -0.428824, 0.900764,
		0.735103, -0.588621, -0.336376,
		0.674455, 0.685299, 0.274728,
		39.105907, 40.928177, 24.911400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.169376, 40.089031, 25.056803>,  <38.633789, 40.448467, 24.719090>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.169376, 40.089031, 25.056803> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.183361, 40.465885, 25.190165>,  <39.191753, 40.691998, 25.270182>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.183361, 40.465885, 25.190165>,  <39.169376, 40.089031, 25.056803>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.183361, 40.465885, 25.190165> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221136, -0.332631, 0.916764,
		0.974616, 0.041676, -0.219969,
		0.034961, 0.942136, 0.333404,
		39.193848, 40.748528, 25.290186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.738876, 40.002045, 25.457125>,  <39.169376, 40.089031, 25.056803>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.738876, 40.002045, 25.457125> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.572021, 40.344810, 25.578247>,  <39.471909, 40.550468, 25.650921>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.572021, 40.344810, 25.578247>,  <39.738876, 40.002045, 25.457125>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.572021, 40.344810, 25.578247> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239924, -0.217531, 0.946106,
		0.876603, 0.467308, -0.114854,
		-0.417138, 0.856915, 0.302806,
		39.446880, 40.601887, 25.669088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.492775, 39.662964, 25.675621>,  <39.738876, 40.002045, 25.457125>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.492775, 39.662964, 25.675621> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.853825, 39.490932, 25.682581>,  <41.070454, 39.387714, 25.686758>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.853825, 39.490932, 25.682581>,  <40.492775, 39.662964, 25.675621>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.853825, 39.490932, 25.682581> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075495, -0.197987, -0.977293,
		0.423759, 0.880814, -0.211176,
		0.902623, -0.430079, 0.017401,
		41.124611, 39.361908, 25.687801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.898952, 40.037651, 25.240433>,  <40.492775, 39.662964, 25.675621>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.898952, 40.037651, 25.240433> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.004730, 39.653030, 25.270061>,  <41.068195, 39.422256, 25.287838>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.004730, 39.653030, 25.270061>,  <40.898952, 40.037651, 25.240433>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.004730, 39.653030, 25.270061> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143749, -0.115249, -0.982880,
		0.953627, 0.249269, -0.168699,
		0.264444, -0.961552, 0.074072,
		41.084064, 39.364563, 25.292284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.260361, 39.917461, 24.570465>,  <40.898952, 40.037651, 25.240433>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.260361, 39.917461, 24.570465> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.162449, 39.565262, 24.732849>,  <41.103703, 39.353943, 24.830278>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.162449, 39.565262, 24.732849>,  <41.260361, 39.917461, 24.570465>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.162449, 39.565262, 24.732849> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179457, -0.370318, -0.911405,
		0.952826, -0.295946, -0.067365,
		-0.244780, -0.880500, 0.405958,
		41.089016, 39.301113, 24.854637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.774574, 39.436150, 24.275705>,  <41.260361, 39.917461, 24.570465>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.774574, 39.436150, 24.275705> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.443649, 39.250893, 24.402859>,  <41.245094, 39.139740, 24.479151>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.443649, 39.250893, 24.402859>,  <41.774574, 39.436150, 24.275705>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.443649, 39.250893, 24.402859> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207215, -0.274371, -0.939033,
		0.522125, -0.842745, 0.131020,
		-0.827313, -0.463143, 0.317885,
		41.195454, 39.111950, 24.498224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.833046, 38.810390, 23.828375>,  <41.774574, 39.436150, 24.275705>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.833046, 38.810390, 23.828375> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.462025, 38.866722, 23.966827>,  <41.239410, 38.900520, 24.049898>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.462025, 38.866722, 23.966827>,  <41.833046, 38.810390, 23.828375>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.462025, 38.866722, 23.966827> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372367, -0.270648, -0.887746,
		-0.031340, -0.952322, 0.303481,
		-0.927556, 0.140829, 0.346131,
		41.183758, 38.908970, 24.070667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.439838, 38.208485, 23.530092>,  <41.833046, 38.810390, 23.828375>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.439838, 38.208485, 23.530092> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.159931, 38.466797, 23.652266>,  <40.991985, 38.621784, 23.725569>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.159931, 38.466797, 23.652266>,  <41.439838, 38.208485, 23.530092>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.159931, 38.466797, 23.652266> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490265, -0.123164, -0.862827,
		-0.519578, -0.753524, 0.402790,
		-0.699771, 0.645780, 0.305434,
		40.950001, 38.660530, 23.743896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.806072, 37.874382, 23.452415>,  <41.439838, 38.208485, 23.530092>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.806072, 37.874382, 23.452415> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.733070, 38.267570, 23.443863>,  <40.689270, 38.503483, 23.438732>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.733070, 38.267570, 23.443863>,  <40.806072, 37.874382, 23.452415>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.733070, 38.267570, 23.443863> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470425, -0.106398, -0.876002,
		-0.863361, -0.149818, 0.481833,
		-0.182507, 0.982972, -0.021382,
		40.678318, 38.562462, 23.437449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.303249, 37.932068, 23.007582>,  <40.806072, 37.874382, 23.452415>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.303249, 37.932068, 23.007582> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.371319, 38.325989, 23.021530>,  <40.412159, 38.562340, 23.029900>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.371319, 38.325989, 23.021530>,  <40.303249, 37.932068, 23.007582>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.371319, 38.325989, 23.021530> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150021, 0.060863, -0.986808,
		-0.973928, 0.162694, 0.158098,
		0.170170, 0.984798, 0.034869,
		40.422371, 38.621429, 23.031990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.795002, 38.340759, 22.754749>,  <40.303249, 37.932068, 23.007582>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.795002, 38.340759, 22.754749> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.103432, 38.593296, 22.721657>,  <40.288490, 38.744820, 22.701801>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.103432, 38.593296, 22.721657>,  <39.795002, 38.340759, 22.754749>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.103432, 38.593296, 22.721657> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184747, 0.097487, -0.977939,
		-0.609352, 0.769350, 0.191809,
		0.771076, 0.631345, -0.082731,
		40.334755, 38.782700, 22.696838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.575512, 38.842709, 22.317352>,  <39.795002, 38.340759, 22.754749>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.575512, 38.842709, 22.317352> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.973721, 38.870434, 22.291624>,  <40.212646, 38.887070, 22.276188>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.973721, 38.870434, 22.291624>,  <39.575512, 38.842709, 22.317352>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.973721, 38.870434, 22.291624> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071683, 0.109556, -0.991393,
		-0.061671, 0.991561, 0.114034,
		0.995519, 0.069315, -0.064321,
		40.272377, 38.891228, 22.272327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.651802, 39.353897, 21.831892>,  <39.575512, 38.842709, 22.317352>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.651802, 39.353897, 21.831892> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.010136, 39.176907, 21.848339>,  <40.225136, 39.070713, 21.858208>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.010136, 39.176907, 21.848339>,  <39.651802, 39.353897, 21.831892>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.010136, 39.176907, 21.848339> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093806, 0.097856, -0.990770,
		0.434366, 0.891427, 0.129170,
		0.895839, -0.442474, 0.041116,
		40.278889, 39.044163, 21.860674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.919487, 39.677132, 21.356066>,  <39.651802, 39.353897, 21.831892>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.919487, 39.677132, 21.356066> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.123913, 39.339886, 21.422953>,  <40.246571, 39.137539, 21.463085>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.123913, 39.339886, 21.422953>,  <39.919487, 39.677132, 21.356066>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.123913, 39.339886, 21.422953> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109732, -0.128951, -0.985561,
		0.852506, 0.522039, 0.026614,
		0.511069, -0.843117, 0.167216,
		40.277233, 39.086952, 21.473118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.405128, 39.606441, 20.837034>,  <39.919487, 39.677132, 21.356066>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.405128, 39.606441, 20.837034> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.379860, 39.231491, 20.974051>,  <40.364697, 39.006519, 21.056259>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.379860, 39.231491, 20.974051>,  <40.405128, 39.606441, 20.837034>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.379860, 39.231491, 20.974051> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001900, -0.343111, -0.939293,
		0.998001, -0.059991, 0.019895,
		-0.063175, -0.937377, 0.342539,
		40.360909, 38.950279, 21.076813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.015648, 39.253197, 20.685101>,  <40.405128, 39.606441, 20.837034>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.015648, 39.253197, 20.685101> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.701416, 39.007057, 20.711023>,  <40.512875, 38.859371, 20.726578>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.701416, 39.007057, 20.711023>,  <41.015648, 39.253197, 20.685101>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.701416, 39.007057, 20.711023> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167449, -0.312257, -0.935124,
		0.595668, -0.723765, 0.348344,
		-0.785583, -0.615353, 0.064808,
		40.465740, 38.822453, 20.730465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<34.688251, 35.303802, 22.222773> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.955872, 35.579327, 22.111122>,  <35.116444, 35.744640, 22.044132>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.955872, 35.579327, 22.111122>,  <34.688251, 35.303802, 22.222773>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.955872, 35.579327, 22.111122> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193140, 0.201526, 0.960252,
		0.717685, -0.696366, 0.001794,
		0.669048, 0.688812, -0.279128,
		35.156586, 35.785969, 22.027384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.280811, 35.089409, 22.511623>,  <34.688251, 35.303802, 22.222773>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.280811, 35.089409, 22.511623> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.377159, 35.468288, 22.426960>,  <35.434967, 35.695618, 22.376162>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.377159, 35.468288, 22.426960>,  <35.280811, 35.089409, 22.511623>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.377159, 35.468288, 22.426960> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429564, 0.091517, 0.898387,
		0.870321, -0.307312, -0.384838,
		0.240866, 0.947198, -0.211659,
		35.449417, 35.752449, 22.363462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.934349, 35.123077, 22.775997>,  <35.280811, 35.089409, 22.511623>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.934349, 35.123077, 22.775997> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.805706, 35.499878, 22.737640>,  <35.728519, 35.725960, 22.714626>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.805706, 35.499878, 22.737640>,  <35.934349, 35.123077, 22.775997>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.805706, 35.499878, 22.737640> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479651, 0.249392, 0.841271,
		0.816398, 0.224562, -0.532040,
		-0.321604, 0.942006, -0.095892,
		35.709225, 35.782478, 22.708874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.479485, 35.505943, 22.921040>,  <35.934349, 35.123077, 22.775997>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.479485, 35.505943, 22.921040> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.173580, 35.754555, 22.988977>,  <35.990036, 35.903721, 23.029739>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.173580, 35.754555, 22.988977>,  <36.479485, 35.505943, 22.921040>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.173580, 35.754555, 22.988977> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359318, 0.192595, 0.913125,
		0.534820, 0.759350, -0.370615,
		-0.764760, 0.621526, 0.169844,
		35.944153, 35.941013, 23.039930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.729282, 36.113392, 23.218988>,  <36.479485, 35.505943, 22.921040>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.729282, 36.113392, 23.218988> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.347809, 36.099873, 23.338552>,  <36.118927, 36.091763, 23.410292>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.347809, 36.099873, 23.338552>,  <36.729282, 36.113392, 23.218988>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.347809, 36.099873, 23.338552> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290242, 0.157773, 0.943857,
		-0.079057, 0.986897, -0.140657,
		-0.953682, -0.033794, 0.298912,
		36.061703, 36.089733, 23.428226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.633652, 36.639240, 23.615112>,  <36.729282, 36.113392, 23.218988>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.633652, 36.639240, 23.615112> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.331963, 36.409977, 23.743261>,  <36.150951, 36.272419, 23.820150>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.331963, 36.409977, 23.743261>,  <36.633652, 36.639240, 23.615112>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.331963, 36.409977, 23.743261> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296614, 0.137896, 0.944989,
		-0.585811, 0.807756, 0.066005,
		-0.754219, -0.573163, 0.320373,
		36.105698, 36.238029, 23.839373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.384933, 36.934109, 24.261406>,  <36.633652, 36.639240, 23.615112>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.384933, 36.934109, 24.261406> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.248764, 36.559052, 24.289507>,  <36.167061, 36.334019, 24.306368>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.248764, 36.559052, 24.289507>,  <36.384933, 36.934109, 24.261406>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.248764, 36.559052, 24.289507> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218717, -0.006297, 0.975768,
		-0.914481, 0.347539, 0.207223,
		-0.340423, -0.937644, 0.070254,
		36.146637, 36.277760, 24.310583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.037674, 36.890312, 24.882879>,  <36.384933, 36.934109, 24.261406>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.037674, 36.890312, 24.882879> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.132912, 36.509636, 24.805323>,  <36.190056, 36.281231, 24.758789>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.132912, 36.509636, 24.805323>,  <36.037674, 36.890312, 24.882879>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.132912, 36.509636, 24.805323> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274218, -0.125639, 0.953425,
		-0.931726, -0.280177, 0.231056,
		0.238098, -0.951691, -0.193891,
		36.204342, 36.224129, 24.747156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.571327, 36.542194, 25.364435>,  <36.037674, 36.890312, 24.882879>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.571327, 36.542194, 25.364435> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.879200, 36.306103, 25.267094>,  <36.063923, 36.164448, 25.208689>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.879200, 36.306103, 25.267094>,  <35.571327, 36.542194, 25.364435>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.879200, 36.306103, 25.267094> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203843, -0.134026, 0.969786,
		-0.605011, -0.796032, 0.017156,
		0.769682, -0.590229, -0.243353,
		36.110104, 36.129036, 25.194088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.561153, 35.895226, 25.748182>,  <35.571327, 36.542194, 25.364435>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.561153, 35.895226, 25.748182> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.938343, 35.905163, 25.615412>,  <36.164658, 35.911125, 25.535749>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.938343, 35.905163, 25.615412>,  <35.561153, 35.895226, 25.748182>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.938343, 35.905163, 25.615412> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332387, -0.123215, 0.935060,
		-0.017668, -0.992069, -0.124447,
		0.942978, 0.024844, -0.331927,
		36.221237, 35.912617, 25.515833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.839546, 35.363911, 26.105560>,  <35.561153, 35.895226, 25.748182>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.839546, 35.363911, 26.105560> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.147747, 35.576782, 25.965212>,  <36.332668, 35.704506, 25.881002>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.147747, 35.576782, 25.965212>,  <35.839546, 35.363911, 26.105560>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.147747, 35.576782, 25.965212> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561582, -0.306303, 0.768638,
		0.301580, -0.789281, -0.534869,
		0.770503, 0.532179, -0.350871,
		36.378899, 35.736435, 25.859951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.474537, 34.942497, 26.220556>,  <35.839546, 35.363911, 26.105560>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.474537, 34.942497, 26.220556> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.596512, 35.322136, 26.189009>,  <36.669697, 35.549919, 26.170080>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.596512, 35.322136, 26.189009>,  <36.474537, 34.942497, 26.220556>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.596512, 35.322136, 26.189009> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412077, -0.056830, 0.909375,
		0.858607, -0.309802, -0.408433,
		0.304937, 0.949102, -0.078867,
		36.687992, 35.606865, 26.165348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.031563, 34.832062, 26.592022>,  <36.474537, 34.942497, 26.220556>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.031563, 34.832062, 26.592022> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.991524, 35.228832, 26.560875>,  <36.967499, 35.466896, 26.542187>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.991524, 35.228832, 26.560875>,  <37.031563, 34.832062, 26.592022>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.991524, 35.228832, 26.560875> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549757, 0.120369, 0.826607,
		0.829305, 0.039937, -0.557367,
		-0.100102, 0.991926, -0.077867,
		36.961494, 35.526409, 26.537516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.648941, 35.303993, 26.508450>,  <37.031563, 34.832062, 26.592022>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.648941, 35.303993, 26.508450> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.361137, 35.489784, 26.714970>,  <37.188454, 35.601257, 26.838882>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.361137, 35.489784, 26.714970>,  <37.648941, 35.303993, 26.508450>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.361137, 35.489784, 26.714970> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552599, -0.067384, 0.830719,
		0.420639, 0.883019, -0.208184,
		-0.719512, 0.464475, 0.516299,
		37.145283, 35.629128, 26.869860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.326916, 35.445595, 26.485693>,  <37.648941, 35.303993, 26.508450>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.326916, 35.445595, 26.485693> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.615356, 35.169796, 26.512831>,  <38.788422, 35.004318, 26.529114>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.615356, 35.169796, 26.512831>,  <38.326916, 35.445595, 26.485693>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.615356, 35.169796, 26.512831> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035400, -0.061131, -0.997502,
		0.691922, 0.721704, -0.019674,
		0.721104, -0.689497, 0.067846,
		38.831688, 34.962948, 26.533184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.799480, 35.617424, 26.008612>,  <38.326916, 35.445595, 26.485693>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.799480, 35.617424, 26.008612> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.899525, 35.234009, 26.063231>,  <38.959553, 35.003960, 26.096003>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.899525, 35.234009, 26.063231>,  <38.799480, 35.617424, 26.008612>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.899525, 35.234009, 26.063231> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093578, -0.116438, -0.988780,
		0.963684, 0.260083, 0.060575,
		0.250112, -0.958540, 0.136547,
		38.974560, 34.946445, 26.104195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.420483, 35.504627, 25.618464>,  <38.799480, 35.617424, 26.008612>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.420483, 35.504627, 25.618464> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.276955, 35.136223, 25.679104>,  <39.190838, 34.915180, 25.715488>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.276955, 35.136223, 25.679104>,  <39.420483, 35.504627, 25.618464>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.276955, 35.136223, 25.679104> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040910, -0.177781, -0.983220,
		0.932508, -0.346601, 0.101470,
		-0.358824, -0.921011, 0.151603,
		39.169308, 34.859921, 25.724585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.915100, 35.197887, 25.235989>,  <39.420483, 35.504627, 25.618464>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.915100, 35.197887, 25.235989> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.612873, 34.938141, 25.270479>,  <39.431538, 34.782291, 25.291174>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.612873, 34.938141, 25.270479>,  <39.915100, 35.197887, 25.235989>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.612873, 34.938141, 25.270479> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191345, -0.344669, -0.919016,
		0.626499, -0.677882, 0.384675,
		-0.755570, -0.649368, 0.086226,
		39.386204, 34.743332, 25.296347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.197033, 34.600899, 24.980242>,  <39.915100, 35.197887, 25.235989>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.197033, 34.600899, 24.980242> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.797779, 34.580280, 24.967138>,  <39.558228, 34.567909, 24.959276>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.797779, 34.580280, 24.967138>,  <40.197033, 34.600899, 24.980242>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.797779, 34.580280, 24.967138> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043608, -0.225922, -0.973169,
		0.042761, -0.972781, 0.227748,
		-0.998133, -0.051545, -0.032761,
		39.498341, 34.564816, 24.957310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.002552, 33.847252, 24.612158>,  <40.197033, 34.600899, 24.980242>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.002552, 33.847252, 24.612158> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.685600, 34.089413, 24.582155>,  <39.495430, 34.234711, 24.564154>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.685600, 34.089413, 24.582155>,  <40.002552, 33.847252, 24.612158>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.685600, 34.089413, 24.582155> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021671, -0.094940, -0.995247,
		-0.609645, -0.790238, 0.062108,
		-0.792378, 0.605401, -0.075005,
		39.447887, 34.271034, 24.559654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.413280, 33.446236, 24.229893>,  <40.002552, 33.847252, 24.612158>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.413280, 33.446236, 24.229893> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.322338, 33.835163, 24.208328>,  <39.267773, 34.068520, 24.195391>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.322338, 33.835163, 24.208328>,  <39.413280, 33.446236, 24.229893>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.322338, 33.835163, 24.208328> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342876, -0.131742, -0.930097,
		-0.911453, -0.192978, 0.363337,
		-0.227355, 0.972319, -0.053909,
		39.254131, 34.126858, 24.192156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.822037, 33.467083, 23.822435>,  <39.413280, 33.446236, 24.229893>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.822037, 33.467083, 23.822435> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.995937, 33.826523, 23.798763>,  <39.100277, 34.042187, 23.784559>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.995937, 33.826523, 23.798763>,  <38.822037, 33.467083, 23.822435>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.995937, 33.826523, 23.798763> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162134, 0.013459, -0.986677,
		-0.885835, 0.438554, 0.151546,
		0.434751, 0.898604, -0.059182,
		39.126362, 34.096104, 23.781008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.338692, 33.800877, 23.422289>,  <38.822037, 33.467083, 23.822435>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.338692, 33.800877, 23.422289> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.677517, 34.011654, 23.394516>,  <38.880814, 34.138119, 23.377853>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.677517, 34.011654, 23.394516>,  <38.338692, 33.800877, 23.422289>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.677517, 34.011654, 23.394516> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255881, 0.289817, -0.922242,
		-0.465843, 0.798963, 0.380327,
		0.847063, 0.526938, -0.069431,
		38.931637, 34.169735, 23.373686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.205013, 34.395607, 23.146425>,  <38.338692, 33.800877, 23.422289>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.205013, 34.395607, 23.146425> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.597576, 34.406090, 23.070372>,  <38.833115, 34.412380, 23.024738>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.597576, 34.406090, 23.070372>,  <38.205013, 34.395607, 23.146425>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.597576, 34.406090, 23.070372> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188500, 0.318121, -0.929121,
		0.036137, 0.947688, 0.317147,
		0.981408, 0.026206, -0.190135,
		38.891998, 34.413952, 23.013330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.311516, 34.971603, 22.940962>,  <38.205013, 34.395607, 23.146425>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.311516, 34.971603, 22.940962> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.589535, 34.740463, 22.769850>,  <38.756348, 34.601780, 22.667183>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.589535, 34.740463, 22.769850>,  <38.311516, 34.971603, 22.940962>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.589535, 34.740463, 22.769850> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395228, 0.189943, -0.898731,
		0.600588, 0.793730, -0.096364,
		0.695046, -0.577853, -0.427782,
		38.798050, 34.567108, 22.641516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.621490, 35.385811, 22.443605>,  <38.311516, 34.971603, 22.940962>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.621490, 35.385811, 22.443605> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.751106, 35.024242, 22.331940>,  <38.828876, 34.807301, 22.264940>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.751106, 35.024242, 22.331940>,  <38.621490, 35.385811, 22.443605>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.751106, 35.024242, 22.331940> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224201, 0.213304, -0.950913,
		0.919094, 0.370720, -0.133540,
		0.324038, -0.903918, -0.279162,
		38.848316, 34.753067, 22.248192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.984291, 35.528210, 21.818714>,  <38.621490, 35.385811, 22.443605>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.984291, 35.528210, 21.818714> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.891396, 35.139484, 21.802534>,  <38.835659, 34.906250, 21.792826>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.891396, 35.139484, 21.802534>,  <38.984291, 35.528210, 21.818714>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.891396, 35.139484, 21.802534> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258267, 0.101705, -0.960705,
		0.937744, -0.212666, -0.274608,
		-0.232239, -0.971818, -0.040449,
		38.821724, 34.847939, 21.790400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.421284, 35.127857, 21.252203>,  <38.984291, 35.528210, 21.818714>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.421284, 35.127857, 21.252203> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.090309, 34.909142, 21.303371>,  <38.891724, 34.777912, 21.334072>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.090309, 34.909142, 21.303371>,  <39.421284, 35.127857, 21.252203>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.090309, 34.909142, 21.303371> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088948, -0.097301, -0.991272,
		0.554467, -0.831595, 0.031875,
		-0.827439, -0.546792, 0.127919,
		38.842079, 34.745106, 21.341747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.025536, 34.915703, 20.816784>,  <39.421284, 35.127857, 21.252203>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.025536, 34.915703, 20.816784> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.310539, 35.173920, 20.706799>,  <40.481541, 35.328850, 20.640808>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.310539, 35.173920, 20.706799>,  <40.025536, 34.915703, 20.816784>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.310539, 35.173920, 20.706799> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401808, -0.054127, 0.914123,
		0.575225, -0.761801, -0.297951,
		0.712507, 0.645546, -0.274962,
		40.524292, 35.367584, 20.624310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.715462, 34.675331, 21.161453>,  <40.025536, 34.915703, 20.816784>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.715462, 34.675331, 21.161453> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.760246, 35.056782, 21.049690>,  <40.787117, 35.285652, 20.982632>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.760246, 35.056782, 21.049690>,  <40.715462, 34.675331, 21.161453>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.760246, 35.056782, 21.049690> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281588, 0.239205, 0.929241,
		0.952981, -0.182719, -0.241747,
		0.111963, 0.953622, -0.279409,
		40.793835, 35.342869, 20.965868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.498299, 34.835529, 21.042789>,  <40.715462, 34.675331, 21.161453>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.498299, 34.835529, 21.042789> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.280544, 35.161446, 21.122551>,  <41.149891, 35.356995, 21.170408>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.280544, 35.161446, 21.122551>,  <41.498299, 34.835529, 21.042789>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.280544, 35.161446, 21.122551> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494034, 0.119312, 0.861217,
		0.677918, 0.567349, -0.467485,
		-0.544387, 0.814788, 0.199406,
		41.117229, 35.405884, 21.182373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.957233, 35.426346, 21.255173>,  <41.498299, 34.835529, 21.042789>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.957233, 35.426346, 21.255173> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.602238, 35.530670, 21.407139>,  <41.389240, 35.593266, 21.498318>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.602238, 35.530670, 21.407139>,  <41.957233, 35.426346, 21.255173>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.602238, 35.530670, 21.407139> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430822, 0.176988, 0.884911,
		0.163554, 0.949027, -0.269439,
		-0.887492, 0.260811, 0.379915,
		41.335991, 35.608913, 21.521112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.019390, 36.012623, 21.733099>,  <41.957233, 35.426346, 21.255173>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.019390, 36.012623, 21.733099> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.655884, 35.919559, 21.871670>,  <41.437778, 35.863720, 21.954811>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.655884, 35.919559, 21.871670>,  <42.019390, 36.012623, 21.733099>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.655884, 35.919559, 21.871670> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256876, 0.342350, 0.903776,
		-0.328871, 0.910311, -0.251352,
		-0.908768, -0.232659, 0.346426,
		41.383255, 35.849762, 21.975597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.881424, 36.476364, 22.253363>,  <42.019390, 36.012623, 21.733099>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.881424, 36.476364, 22.253363> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.610340, 36.194633, 22.337868>,  <41.447689, 36.025597, 22.388571>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.610340, 36.194633, 22.337868>,  <41.881424, 36.476364, 22.253363>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.610340, 36.194633, 22.337868> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123955, 0.173766, 0.976955,
		-0.724804, 0.688281, -0.030459,
		-0.677713, -0.704325, 0.211262,
		41.407028, 35.983337, 22.401247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.566563, 36.794479, 22.848404>,  <41.881424, 36.476364, 22.253363>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.566563, 36.794479, 22.848404> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.492153, 36.401470, 22.851055>,  <41.447510, 36.165665, 22.852646>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.492153, 36.401470, 22.851055>,  <41.566563, 36.794479, 22.848404>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.492153, 36.401470, 22.851055> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045797, -0.001931, 0.998949,
		-0.981478, 0.186127, 0.045355,
		-0.186019, -0.982524, 0.006629,
		41.436348, 36.106712, 22.853045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.169048, 36.738110, 23.343924>,  <41.566563, 36.794479, 22.848404>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.169048, 36.738110, 23.343924> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.266384, 36.352604, 23.300205>,  <41.324787, 36.121300, 23.273975>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.266384, 36.352604, 23.300205>,  <41.169048, 36.738110, 23.343924>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.266384, 36.352604, 23.300205> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090631, -0.134782, 0.986722,
		-0.965697, -0.230206, -0.120145,
		0.243343, -0.963763, -0.109294,
		41.339386, 36.063477, 23.267416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.660889, 36.357300, 23.810638>,  <41.169048, 36.738110, 23.343924>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.660889, 36.357300, 23.810638> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.954937, 36.090771, 23.760651>,  <41.131367, 35.930855, 23.730658>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.954937, 36.090771, 23.760651>,  <40.660889, 36.357300, 23.810638>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.954937, 36.090771, 23.760651> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066206, -0.254016, 0.964931,
		-0.674700, -0.701063, -0.230846,
		0.735117, -0.666322, -0.124970,
		41.175472, 35.890873, 23.723160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.483940, 35.682541, 24.096951>,  <40.660889, 36.357300, 23.810638>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.483940, 35.682541, 24.096951> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.883743, 35.693924, 24.102299>,  <41.123623, 35.700756, 24.105507>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.883743, 35.693924, 24.102299>,  <40.483940, 35.682541, 24.096951>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.883743, 35.693924, 24.102299> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002146, -0.362426, 0.932010,
		0.031370, -0.931578, -0.362185,
		0.999506, 0.028460, 0.013369,
		41.183594, 35.702461, 24.106310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.649635, 35.098946, 24.580547>,  <40.483940, 35.682541, 24.096951>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.649635, 35.098946, 24.580547> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.985126, 35.312584, 24.538067>,  <41.186420, 35.440765, 24.512579>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.985126, 35.312584, 24.538067>,  <40.649635, 35.098946, 24.580547>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.985126, 35.312584, 24.538067> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222880, -0.158750, 0.961833,
		0.496848, -0.830388, -0.252186,
		0.838729, 0.534092, -0.106202,
		41.236744, 35.472813, 24.506207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.119720, 34.896690, 25.110695>,  <40.649635, 35.098946, 24.580547>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.119720, 34.896690, 25.110695> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.318970, 35.220020, 24.985163>,  <41.438519, 35.414017, 24.909843>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.318970, 35.220020, 24.985163>,  <41.119720, 34.896690, 25.110695>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.318970, 35.220020, 24.985163> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580580, -0.042090, 0.813115,
		0.644049, -0.587235, -0.490261,
		0.498125, 0.808321, -0.313828,
		41.468407, 35.462517, 24.891014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.858589, 34.778370, 25.114233>,  <41.119720, 34.896690, 25.110695>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.858589, 34.778370, 25.114233> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.808079, 35.172859, 25.156967>,  <41.777775, 35.409554, 25.182608>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.808079, 35.172859, 25.156967>,  <41.858589, 34.778370, 25.114233>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.808079, 35.172859, 25.156967> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473288, -0.034755, 0.880222,
		0.871811, 0.161711, -0.462380,
		-0.126272, 0.986226, 0.106835,
		41.770199, 35.468727, 25.189018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.489796, 35.131493, 25.360210>,  <41.858589, 34.778370, 25.114233>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.489796, 35.131493, 25.360210> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.195805, 35.373882, 25.481934>,  <42.019409, 35.519314, 25.554968>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.195805, 35.373882, 25.481934>,  <42.489796, 35.131493, 25.360210>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.195805, 35.373882, 25.481934> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465923, 0.125249, 0.875916,
		0.492666, 0.785564, -0.374392,
		-0.734980, 0.605972, 0.304307,
		41.975311, 35.555676, 25.573225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<41.253426, 38.721142, 20.272732> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.856777, 38.684353, 20.309019>,  <40.618790, 38.662281, 20.330791>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.856777, 38.684353, 20.309019>,  <41.253426, 38.721142, 20.272732>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.856777, 38.684353, 20.309019> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042302, -0.432366, -0.900706,
		0.122060, -0.896996, 0.424852,
		-0.991621, -0.091968, 0.090719,
		40.559292, 38.656761, 20.336235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.151333, 37.997295, 20.104483>,  <41.253426, 38.721142, 20.272732>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.151333, 37.997295, 20.104483> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.812805, 38.199314, 20.036758>,  <40.609688, 38.320526, 19.996124>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.812805, 38.199314, 20.036758>,  <41.151333, 37.997295, 20.104483>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.812805, 38.199314, 20.036758> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047843, -0.388637, -0.920148,
		-0.530518, -0.770641, 0.353075,
		-0.846322, 0.505048, -0.169309,
		40.558907, 38.350826, 19.985966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.794994, 37.548695, 19.632385>,  <41.151333, 37.997295, 20.104483>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.794994, 37.548695, 19.632385> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.582500, 37.886574, 19.606237>,  <40.455006, 38.089302, 19.590549>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.582500, 37.886574, 19.606237>,  <40.794994, 37.548695, 19.632385>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.582500, 37.886574, 19.606237> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140038, -0.163639, -0.976530,
		-0.835574, -0.509609, 0.205220,
		-0.531230, 0.844702, -0.065368,
		40.423130, 38.139984, 19.586628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.229500, 37.340641, 19.288115>,  <40.794994, 37.548695, 19.632385>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.229500, 37.340641, 19.288115> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.198021, 37.734695, 19.227047>,  <40.179134, 37.971130, 19.190407>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.198021, 37.734695, 19.227047>,  <40.229500, 37.340641, 19.288115>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.198021, 37.734695, 19.227047> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097891, -0.160041, -0.982244,
		-0.992081, -0.062358, 0.109031,
		-0.078700, 0.985139, -0.152669,
		40.174412, 38.030235, 19.181246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.566715, 37.501152, 18.840487>,  <40.229500, 37.340641, 19.288115>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.566715, 37.501152, 18.840487> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.793446, 37.828930, 18.806479>,  <39.929482, 38.025597, 18.786074>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.793446, 37.828930, 18.806479>,  <39.566715, 37.501152, 18.840487>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.793446, 37.828930, 18.806479> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046594, -0.071148, -0.996377,
		-0.822522, 0.568729, -0.002147,
		0.566821, 0.819442, -0.085020,
		39.963493, 38.074764, 18.780973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.262676, 37.931103, 18.339659>,  <39.566715, 37.501152, 18.840487>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.262676, 37.931103, 18.339659> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.638718, 38.064960, 18.313671>,  <39.864342, 38.145275, 18.298079>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.638718, 38.064960, 18.313671>,  <39.262676, 37.931103, 18.339659>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.638718, 38.064960, 18.313671> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060363, -0.024161, -0.997884,
		-0.335509, 0.942034, -0.002514,
		0.940101, 0.334647, -0.064970,
		39.920750, 38.165356, 18.294180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.220600, 38.438198, 17.949287>,  <39.262676, 37.931103, 18.339659>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.220600, 38.438198, 17.949287> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.615776, 38.376595, 17.942936>,  <39.852882, 38.339634, 17.939125>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.615776, 38.376595, 17.942936>,  <39.220600, 38.438198, 17.949287>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.615776, 38.376595, 17.942936> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011345, 0.030268, -0.999478,
		0.154410, 0.987606, 0.028156,
		0.987942, -0.154010, -0.015878,
		39.912159, 38.330391, 17.938173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.608009, 39.047096, 17.552397>,  <39.220600, 38.438198, 17.949287>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.608009, 39.047096, 17.552397> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.798428, 38.695541, 17.540165>,  <39.912678, 38.484608, 17.532825>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.798428, 38.695541, 17.540165>,  <39.608009, 39.047096, 17.552397>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.798428, 38.695541, 17.540165> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152627, -0.048324, -0.987102,
		0.866076, 0.474570, -0.157147,
		0.476043, -0.878890, -0.030580,
		39.941242, 38.431873, 17.530991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.094154, 39.183437, 16.973259>,  <39.608009, 39.047096, 17.552397>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.094154, 39.183437, 16.973259> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.038486, 38.788986, 17.009438>,  <40.005085, 38.552315, 17.031145>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.038486, 38.788986, 17.009438>,  <40.094154, 39.183437, 16.973259>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.038486, 38.788986, 17.009438> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004212, -0.090746, -0.995865,
		0.990259, -0.138980, 0.008476,
		-0.139174, -0.986129, 0.090448,
		39.996735, 38.493149, 17.036572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.697075, 38.857925, 16.657848>,  <40.094154, 39.183437, 16.973259>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.697075, 38.857925, 16.657848> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.396984, 38.593460, 16.659517>,  <40.216930, 38.434780, 16.660519>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.396984, 38.593460, 16.659517>,  <40.697075, 38.857925, 16.657848>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.396984, 38.593460, 16.659517> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118054, -0.140158, -0.983066,
		0.650552, -0.737033, 0.183204,
		-0.750230, -0.661164, 0.004171,
		40.171913, 38.395111, 16.660769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.862930, 38.277802, 16.255159>,  <40.697075, 38.857925, 16.657848>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.862930, 38.277802, 16.255159> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.467102, 38.220200, 16.256109>,  <40.229603, 38.185638, 16.256680>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.467102, 38.220200, 16.256109>,  <40.862930, 38.277802, 16.255159>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.467102, 38.220200, 16.256109> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053067, -0.379880, -0.923512,
		0.133897, -0.913757, 0.383561,
		-0.989573, -0.144010, 0.002374,
		40.170231, 38.176998, 16.256821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.816708, 37.706642, 15.793620>,  <40.862930, 38.277802, 16.255159>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.816708, 37.706642, 15.793620> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.436008, 37.826530, 15.820007>,  <40.207588, 37.898464, 15.835839>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.436008, 37.826530, 15.820007>,  <40.816708, 37.706642, 15.793620>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.436008, 37.826530, 15.820007> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168839, -0.331869, -0.928093,
		-0.256274, -0.894445, 0.366459,
		-0.951744, 0.299719, 0.065968,
		40.150486, 37.916447, 15.839798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.353699, 37.112461, 15.659890>,  <40.816708, 37.706642, 15.793620>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.353699, 37.112461, 15.659890> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.183266, 37.461269, 15.563538>,  <40.081005, 37.670555, 15.505726>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.183266, 37.461269, 15.563538>,  <40.353699, 37.112461, 15.659890>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.183266, 37.461269, 15.563538> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171220, -0.339179, -0.925009,
		-0.888332, -0.352890, 0.293827,
		-0.426086, 0.872024, -0.240881,
		40.055439, 37.722878, 15.491273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.697407, 37.046078, 15.709014>,  <40.353699, 37.112461, 15.659890>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.697407, 37.046078, 15.709014> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.846756, 37.296490, 15.435172>,  <39.936367, 37.446735, 15.270867>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.846756, 37.296490, 15.435172>,  <39.697407, 37.046078, 15.709014>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.846756, 37.296490, 15.435172> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186293, -0.672341, -0.716416,
		-0.908784, 0.395027, -0.134408,
		0.373372, 0.626028, -0.684604,
		39.958767, 37.484299, 15.229791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.664989, 36.462681, 15.183809>,  <39.697407, 37.046078, 15.709014>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.664989, 36.462681, 15.183809> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.622944, 36.065094, 15.196364>,  <39.597717, 35.826542, 15.203897>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.622944, 36.065094, 15.196364>,  <39.664989, 36.462681, 15.183809>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.622944, 36.065094, 15.196364> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197630, 0.010052, 0.980225,
		-0.974624, 0.109242, 0.195380,
		-0.105118, -0.993964, 0.031387,
		39.591408, 35.766903, 15.205780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.314693, 36.371212, 15.805366>,  <39.664989, 36.462681, 15.183809>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.314693, 36.371212, 15.805366> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.477581, 36.022591, 15.696139>,  <39.575314, 35.813416, 15.630604>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.477581, 36.022591, 15.696139>,  <39.314693, 36.371212, 15.805366>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.477581, 36.022591, 15.696139> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087164, -0.260527, 0.961524,
		-0.909162, -0.415351, -0.030123,
		0.407218, -0.871556, -0.273065,
		39.599747, 35.761124, 15.614220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.869736, 35.714096, 16.110222>,  <39.314693, 36.371212, 15.805366>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.869736, 35.714096, 16.110222> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.247818, 35.609718, 16.031744>,  <39.474667, 35.547092, 15.984656>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.247818, 35.609718, 16.031744>,  <38.869736, 35.714096, 16.110222>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.247818, 35.609718, 16.031744> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140531, -0.217234, 0.965951,
		-0.294680, -0.940594, -0.168660,
		0.945206, -0.260944, -0.196197,
		39.531380, 35.531437, 15.972885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.964920, 35.126362, 16.506865>,  <38.869736, 35.714096, 16.110222>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.964920, 35.126362, 16.506865> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.327896, 35.276424, 16.431179>,  <39.545681, 35.366463, 16.385769>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.327896, 35.276424, 16.431179>,  <38.964920, 35.126362, 16.506865>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.327896, 35.276424, 16.431179> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313317, -0.304127, 0.899633,
		0.279962, -0.875649, -0.393522,
		0.907444, 0.375160, -0.189211,
		39.600128, 35.388973, 16.374416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.405148, 34.632614, 16.653414>,  <38.964920, 35.126362, 16.506865>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.405148, 34.632614, 16.653414> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.637180, 34.958233, 16.664913>,  <39.776402, 35.153606, 16.671812>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.637180, 34.958233, 16.664913>,  <39.405148, 34.632614, 16.653414>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.637180, 34.958233, 16.664913> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407285, -0.320431, 0.855244,
		0.705423, -0.484404, -0.517427,
		0.580083, 0.814049, 0.028749,
		39.811207, 35.202446, 16.673538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.043449, 34.381718, 16.922808>,  <39.405148, 34.632614, 16.653414>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.043449, 34.381718, 16.922808> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.074650, 34.773483, 16.997286>,  <40.093372, 35.008541, 17.041973>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.074650, 34.773483, 16.997286>,  <40.043449, 34.381718, 16.922808>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.074650, 34.773483, 16.997286> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465385, -0.200940, 0.861997,
		0.881664, 0.019415, -0.471478,
		0.078003, 0.979411, 0.186197,
		40.098049, 35.067307, 17.053144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.651245, 34.476349, 17.373072>,  <40.043449, 34.381718, 16.922808>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.651245, 34.476349, 17.373072> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.440098, 34.813602, 17.414024>,  <40.313412, 35.015953, 17.438597>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.440098, 34.813602, 17.414024>,  <40.651245, 34.476349, 17.373072>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.440098, 34.813602, 17.414024> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407939, 0.145957, 0.901267,
		0.744946, 0.517514, -0.420993,
		-0.527865, 0.843135, 0.102384,
		40.281738, 35.066544, 17.444740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.043640, 34.759178, 17.852253>,  <40.651245, 34.476349, 17.373072>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.043640, 34.759178, 17.852253> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.702946, 34.966652, 17.881948>,  <40.498531, 35.091137, 17.899765>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.702946, 34.966652, 17.881948>,  <41.043640, 34.759178, 17.852253>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.702946, 34.966652, 17.881948> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249926, 0.277638, 0.927607,
		0.460528, 0.808628, -0.366108,
		-0.851734, 0.518688, 0.074237,
		40.447426, 35.122257, 17.904219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.241924, 35.473881, 18.100780>,  <41.043640, 34.759178, 17.852253>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.241924, 35.473881, 18.100780> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.852470, 35.433243, 18.182468>,  <40.618797, 35.408859, 18.231482>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.852470, 35.433243, 18.182468>,  <41.241924, 35.473881, 18.100780>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.852470, 35.433243, 18.182468> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153448, 0.370679, 0.915997,
		-0.168761, 0.923187, -0.345318,
		-0.973639, -0.101597, 0.204218,
		40.560379, 35.402763, 18.243734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.061459, 36.027737, 18.509296>,  <41.241924, 35.473881, 18.100780>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.061459, 36.027737, 18.509296> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.762913, 35.766270, 18.559343>,  <40.583786, 35.609390, 18.589373>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.762913, 35.766270, 18.559343>,  <41.061459, 36.027737, 18.509296>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.762913, 35.766270, 18.559343> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035294, 0.226607, 0.973347,
		-0.664602, 0.722054, -0.192202,
		-0.746363, -0.653672, 0.125119,
		40.539005, 35.570168, 18.596878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.483093, 36.407452, 18.833578>,  <41.061459, 36.027737, 18.509296>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.483093, 36.407452, 18.833578> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.441769, 36.015503, 18.901897>,  <40.416973, 35.780334, 18.942888>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.441769, 36.015503, 18.901897>,  <40.483093, 36.407452, 18.833578>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.441769, 36.015503, 18.901897> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017876, 0.169858, 0.985306,
		-0.994488, 0.104850, -0.000033,
		-0.103315, -0.979875, 0.170796,
		40.410774, 35.721542, 18.953136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.066566, 36.406593, 19.326553>,  <40.483093, 36.407452, 18.833578>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.066566, 36.406593, 19.326553> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.248249, 36.050564, 19.341808>,  <40.357258, 35.836945, 19.350962>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.248249, 36.050564, 19.341808>,  <40.066566, 36.406593, 19.326553>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.248249, 36.050564, 19.341808> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117499, 0.102285, 0.987791,
		-0.883112, -0.444184, 0.151042,
		0.454210, -0.890078, 0.038138,
		40.384514, 35.783539, 19.353251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.766300, 36.102570, 19.837143>,  <40.066566, 36.406593, 19.326553>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.766300, 36.102570, 19.837143> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.078106, 35.855232, 19.797131>,  <40.265190, 35.706829, 19.773123>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.078106, 35.855232, 19.797131>,  <39.766300, 36.102570, 19.837143>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.078106, 35.855232, 19.797131> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015120, -0.141075, 0.989883,
		-0.626203, -0.773140, -0.100620,
		0.779514, -0.618347, -0.100032,
		40.311958, 35.669727, 19.767120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.674454, 35.507324, 20.279459>,  <39.766300, 36.102570, 19.837143>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.674454, 35.507324, 20.279459> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.068695, 35.513130, 20.212074>,  <40.305241, 35.516613, 20.171644>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.068695, 35.513130, 20.212074>,  <39.674454, 35.507324, 20.279459>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.068695, 35.513130, 20.212074> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164328, 0.152403, 0.974561,
		0.039822, -0.988212, 0.147823,
		0.985601, 0.014518, -0.168460,
		40.364376, 35.517487, 20.161537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.359032, 34.925301, 20.538488>,  <39.674454, 35.507324, 20.279459>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.359032, 34.925301, 20.538488> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.024494, 34.794430, 20.714437>,  <38.823772, 34.715908, 20.820007>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.024494, 34.794430, 20.714437>,  <39.359032, 34.925301, 20.538488>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.024494, 34.794430, 20.714437> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460932, -0.014695, -0.887314,
		0.296774, -0.944848, -0.138517,
		-0.836342, -0.327179, 0.439871,
		38.773590, 34.696278, 20.846399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.126690, 34.281113, 20.137098>,  <39.359032, 34.925301, 20.538488>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.126690, 34.281113, 20.137098> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.815807, 34.435188, 20.336126>,  <38.629276, 34.527634, 20.455544>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.815807, 34.435188, 20.336126>,  <39.126690, 34.281113, 20.137098>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.815807, 34.435188, 20.336126> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581947, -0.139243, -0.801218,
		-0.239340, -0.912271, 0.332382,
		-0.777209, 0.385192, 0.497567,
		38.582645, 34.550743, 20.485397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.518364, 33.749268, 19.985626>,  <39.126690, 34.281113, 20.137098>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.518364, 33.749268, 19.985626> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.377766, 34.115131, 20.065468>,  <38.293407, 34.334652, 20.113373>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.377766, 34.115131, 20.065468>,  <38.518364, 33.749268, 19.985626>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.377766, 34.115131, 20.065468> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529441, -0.018370, -0.848148,
		-0.772103, -0.403801, 0.490717,
		-0.351497, 0.914663, 0.199605,
		38.272316, 34.389530, 20.125349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.718613, 33.689690, 19.992678>,  <38.518364, 33.749268, 19.985626>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.718613, 33.689690, 19.992678> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.820248, 34.073105, 19.941067>,  <37.881229, 34.303154, 19.910101>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.820248, 34.073105, 19.941067>,  <37.718613, 33.689690, 19.992678>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.820248, 34.073105, 19.941067> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463233, 0.003501, -0.886230,
		-0.849031, 0.284952, 0.444915,
		0.254091, 0.958536, -0.129026,
		37.896473, 34.360664, 19.902359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.086494, 33.951275, 19.738962>,  <37.718613, 33.689690, 19.992678>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.086494, 33.951275, 19.738962> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.349743, 34.248657, 19.691366>,  <37.507690, 34.427086, 19.662807>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.349743, 34.248657, 19.691366>,  <37.086494, 33.951275, 19.738962>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.349743, 34.248657, 19.691366> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347583, 0.159809, -0.923931,
		-0.667884, 0.649413, 0.363585,
		0.658117, 0.743454, -0.118991,
		37.547176, 34.471695, 19.655668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.724773, 34.418484, 19.392109>,  <37.086494, 33.951275, 19.738962>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.724773, 34.418484, 19.392109> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.101196, 34.522125, 19.305138>,  <37.327049, 34.584309, 19.252954>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.101196, 34.522125, 19.305138>,  <36.724773, 34.418484, 19.392109>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.101196, 34.522125, 19.305138> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262646, 0.154704, -0.952409,
		-0.213137, 0.953379, 0.213638,
		0.941058, 0.259105, -0.217428,
		37.383514, 34.599857, 19.239910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.647961, 34.951557, 18.963547>,  <36.724773, 34.418484, 19.392109>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.647961, 34.951557, 18.963547> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.020000, 34.823940, 18.890745>,  <37.243225, 34.747372, 18.847063>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.020000, 34.823940, 18.890745>,  <36.647961, 34.951557, 18.963547>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.020000, 34.823940, 18.890745> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173309, 0.055695, -0.983291,
		0.323845, 0.946104, -0.003490,
		0.930101, -0.319039, -0.182005,
		37.299030, 34.728230, 18.836143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.585499, 35.657120, 19.133322>,  <36.647961, 34.951557, 18.963547>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.585499, 35.657120, 19.133322> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.197098, 35.752720, 19.135679>,  <35.964058, 35.810078, 19.137094>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.197098, 35.752720, 19.135679>,  <36.585499, 35.657120, 19.133322>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.197098, 35.752720, 19.135679> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003379, -0.038373, 0.999258,
		0.239045, 0.970262, 0.038068,
		-0.971003, 0.238996, 0.005894,
		35.905796, 35.824417, 19.137447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.512604, 36.215149, 19.587330>,  <36.585499, 35.657120, 19.133322>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.512604, 36.215149, 19.587330> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.156559, 36.033283, 19.574745>,  <35.942932, 35.924164, 19.567194>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.156559, 36.033283, 19.574745>,  <36.512604, 36.215149, 19.587330>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.156559, 36.033283, 19.574745> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107987, 0.143339, 0.983765,
		-0.442771, 0.879054, -0.176685,
		-0.890108, -0.454662, -0.031460,
		35.889526, 35.896885, 19.565308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.132736, 36.546940, 20.093906>,  <36.512604, 36.215149, 19.587330>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.132736, 36.546940, 20.093906> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.912670, 36.216724, 20.043629>,  <35.780632, 36.018593, 20.013462>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.912670, 36.216724, 20.043629>,  <36.132736, 36.546940, 20.093906>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.912670, 36.216724, 20.043629> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250887, 0.019841, 0.967813,
		-0.796475, 0.563994, -0.218034,
		-0.550166, -0.825541, -0.125696,
		35.747620, 35.969063, 20.005920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.538040, 36.733673, 20.383480>,  <36.132736, 36.546940, 20.093906>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.538040, 36.733673, 20.383480> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.519009, 36.334175, 20.377249>,  <35.507591, 36.094475, 20.373510>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.519009, 36.334175, 20.377249>,  <35.538040, 36.733673, 20.383480>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.519009, 36.334175, 20.377249> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171718, -0.007185, 0.985120,
		-0.983997, 0.049543, -0.171161,
		-0.047576, -0.998746, -0.015577,
		35.504734, 36.034550, 20.372576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.902679, 36.586510, 20.687754>,  <35.538040, 36.733673, 20.383480>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.902679, 36.586510, 20.687754> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.106556, 36.244251, 20.723717>,  <35.228882, 36.038895, 20.745295>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.106556, 36.244251, 20.723717>,  <34.902679, 36.586510, 20.687754>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.106556, 36.244251, 20.723717> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163902, 0.006020, 0.986458,
		-0.844602, -0.517524, -0.137174,
		0.509690, -0.855648, 0.089907,
		35.259464, 35.987556, 20.750689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.419109, 36.175343, 20.985424>,  <34.902679, 36.586510, 20.687754>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.419109, 36.175343, 20.985424> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.798943, 36.071781, 21.056156>,  <35.026840, 36.009644, 21.098595>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.798943, 36.071781, 21.056156>,  <34.419109, 36.175343, 20.985424>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.798943, 36.071781, 21.056156> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160851, 0.081832, 0.983580,
		-0.269123, -0.962430, 0.036061,
		0.949579, -0.258904, 0.176831,
		35.083817, 35.994110, 21.109205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.407787, 35.881672, 21.606598>,  <34.419109, 36.175343, 20.985424>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.407787, 35.881672, 21.606598> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.805401, 35.895077, 21.565092>,  <35.043968, 35.903118, 21.540190>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.805401, 35.895077, 21.565092>,  <34.407787, 35.881672, 21.606598>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.805401, 35.895077, 21.565092> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105523, -0.055909, 0.992844,
		0.027471, -0.997873, -0.059112,
		0.994037, 0.033512, -0.103763,
		35.103611, 35.905128, 21.533964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<37.428421, 40.268963, 16.995405> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.587563, 39.948936, 16.815802>,  <37.683048, 39.756920, 16.708038>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.587563, 39.948936, 16.815802>,  <37.428421, 40.268963, 16.995405>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.587563, 39.948936, 16.815802> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492987, -0.226321, 0.840085,
		-0.773742, -0.555586, 0.304379,
		0.397853, -0.800064, -0.449011,
		37.706917, 39.708916, 16.681099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.225258, 39.784828, 17.369423>,  <37.428421, 40.268963, 16.995405>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.225258, 39.784828, 17.369423> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.561520, 39.675724, 17.182272>,  <37.763275, 39.610260, 17.069983>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.561520, 39.675724, 17.182272>,  <37.225258, 39.784828, 17.369423>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.561520, 39.675724, 17.182272> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461767, -0.090410, 0.882381,
		-0.282984, -0.957823, 0.049951,
		0.840649, -0.272765, -0.467876,
		37.813713, 39.593895, 17.041908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.506798, 39.102421, 17.613012>,  <37.225258, 39.784828, 17.369423>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.506798, 39.102421, 17.613012> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.798321, 39.323647, 17.451538>,  <37.973232, 39.456383, 17.354652>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.798321, 39.323647, 17.451538>,  <37.506798, 39.102421, 17.613012>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.798321, 39.323647, 17.451538> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396852, 0.139263, 0.907256,
		0.557992, -0.821415, -0.117990,
		0.728803, 0.553066, -0.403688,
		38.016960, 39.489567, 17.330431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.134426, 39.014156, 18.044500>,  <37.506798, 39.102421, 17.613012>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.134426, 39.014156, 18.044500> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.229736, 39.339066, 17.831545>,  <38.286922, 39.534012, 17.703772>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.229736, 39.339066, 17.831545>,  <38.134426, 39.014156, 18.044500>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.229736, 39.339066, 17.831545> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423700, 0.406320, 0.809557,
		0.873901, -0.418472, -0.247344,
		0.238276, 0.812272, -0.532390,
		38.301220, 39.582748, 17.671827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.796692, 39.194695, 18.277058>,  <38.134426, 39.014156, 18.044500>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.796692, 39.194695, 18.277058> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.678833, 39.532150, 18.097519>,  <38.608120, 39.734623, 17.989796>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.678833, 39.532150, 18.097519>,  <38.796692, 39.194695, 18.277058>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.678833, 39.532150, 18.097519> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437355, 0.536668, 0.721601,
		0.849650, 0.016308, -0.527094,
		-0.294643, 0.843636, -0.448848,
		38.590439, 39.785240, 17.962864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.371174, 39.641857, 18.355488>,  <38.796692, 39.194695, 18.277058>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.371174, 39.641857, 18.355488> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.041119, 39.860676, 18.299084>,  <38.843086, 39.991966, 18.265242>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.041119, 39.860676, 18.299084>,  <39.371174, 39.641857, 18.355488>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.041119, 39.860676, 18.299084> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246687, 0.573457, 0.781212,
		0.508226, 0.609822, -0.608131,
		-0.825138, 0.547050, -0.141011,
		38.793579, 40.024792, 18.256781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.558578, 40.302971, 18.272770>,  <39.371174, 39.641857, 18.355488>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.558578, 40.302971, 18.272770> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.177773, 40.313847, 18.394711>,  <38.949291, 40.320374, 18.467875>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.177773, 40.313847, 18.394711>,  <39.558578, 40.302971, 18.272770>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.177773, 40.313847, 18.394711> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241696, 0.677865, 0.694321,
		-0.187768, 0.734683, -0.651908,
		-0.952012, 0.027192, 0.304851,
		38.892170, 40.322002, 18.486166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.430161, 41.061089, 18.338310>,  <39.558578, 40.302971, 18.272770>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.430161, 41.061089, 18.338310> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.157677, 40.863941, 18.554840>,  <38.994186, 40.745651, 18.684759>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.157677, 40.863941, 18.554840>,  <39.430161, 41.061089, 18.338310>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.157677, 40.863941, 18.554840> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177649, 0.606039, 0.775344,
		-0.710208, 0.624337, -0.325281,
		-0.681209, -0.492869, 0.541326,
		38.953316, 40.716080, 18.717237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.961498, 41.564003, 18.582809>,  <39.430161, 41.061089, 18.338310>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.961498, 41.564003, 18.582809> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.902798, 41.234467, 18.801805>,  <38.867577, 41.036743, 18.933203>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.902798, 41.234467, 18.801805>,  <38.961498, 41.564003, 18.582809>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.902798, 41.234467, 18.801805> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222512, 0.511805, 0.829786,
		-0.963822, 0.243593, 0.108209,
		-0.146748, -0.823844, 0.547491,
		38.858772, 40.987312, 18.966053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.545345, 41.822884, 19.140259>,  <38.961498, 41.564003, 18.582809>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.545345, 41.822884, 19.140259> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.715744, 41.483658, 19.266314>,  <38.817982, 41.280121, 19.341948>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.715744, 41.483658, 19.266314>,  <38.545345, 41.822884, 19.140259>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.715744, 41.483658, 19.266314> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074486, 0.380018, 0.921975,
		-0.901654, -0.369283, 0.225055,
		0.425994, -0.848066, 0.315139,
		38.843544, 41.229237, 19.360855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.173241, 41.557091, 19.768339>,  <38.545345, 41.822884, 19.140259>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.173241, 41.557091, 19.768339> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.521851, 41.362759, 19.794897>,  <38.731018, 41.246159, 19.810833>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.521851, 41.362759, 19.794897>,  <38.173241, 41.557091, 19.768339>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.521851, 41.362759, 19.794897> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041671, 0.208298, 0.977177,
		-0.488577, -0.848868, 0.201783,
		0.871525, -0.485835, 0.066396,
		38.783310, 41.217007, 19.814816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.051777, 41.280460, 20.349628>,  <38.173241, 41.557091, 19.768339>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.051777, 41.280460, 20.349628> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.448292, 41.247005, 20.308941>,  <38.686203, 41.226933, 20.284529>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.448292, 41.247005, 20.308941>,  <38.051777, 41.280460, 20.349628>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.448292, 41.247005, 20.308941> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097984, -0.047601, 0.994049,
		-0.087987, -0.995358, -0.038990,
		0.991291, -0.083643, -0.101717,
		38.745678, 41.221912, 20.278425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.688831, 40.554642, 20.416485>,  <38.051777, 41.280460, 20.349628>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.688831, 40.554642, 20.416485> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.297649, 40.620678, 20.467621>,  <37.062939, 40.660301, 20.498302>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.297649, 40.620678, 20.467621>,  <37.688831, 40.554642, 20.416485>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.297649, 40.620678, 20.467621> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174133, -0.306995, -0.935645,
		-0.115222, -0.937283, 0.328976,
		-0.977958, 0.165092, 0.127839,
		37.004261, 40.670204, 20.505972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.378925, 40.003342, 20.023424>,  <37.688831, 40.554642, 20.416485>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.378925, 40.003342, 20.023424> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.116859, 40.305267, 20.036161>,  <36.959618, 40.486423, 20.043804>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.116859, 40.305267, 20.036161>,  <37.378925, 40.003342, 20.023424>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.116859, 40.305267, 20.036161> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371641, -0.285310, -0.883448,
		-0.657753, -0.590641, 0.467445,
		-0.655168, 0.754812, 0.031843,
		36.920307, 40.531712, 20.045715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.812065, 39.723106, 19.810900>,  <37.378925, 40.003342, 20.023424>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.812065, 39.723106, 19.810900> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.693527, 40.103554, 19.776119>,  <36.622406, 40.331821, 19.755251>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.693527, 40.103554, 19.776119>,  <36.812065, 39.723106, 19.810900>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.693527, 40.103554, 19.776119> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487986, -0.229043, -0.842265,
		-0.821007, -0.207166, 0.532006,
		-0.296341, 0.951116, -0.086951,
		36.604626, 40.388889, 19.750034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.099827, 39.674774, 19.707167>,  <36.812065, 39.723106, 19.810900>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.099827, 39.674774, 19.707167> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.166416, 40.043373, 19.566811>,  <36.206371, 40.264534, 19.482597>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.166416, 40.043373, 19.566811>,  <36.099827, 39.674774, 19.707167>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.166416, 40.043373, 19.566811> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385713, -0.266644, -0.883248,
		-0.907476, 0.282381, 0.311045,
		0.166474, 0.921500, -0.350891,
		36.216358, 40.319824, 19.461544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.526222, 39.963432, 19.455555>,  <36.099827, 39.674774, 19.707167>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.526222, 39.963432, 19.455555> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.795002, 40.165821, 19.239233>,  <35.956272, 40.287254, 19.109440>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.795002, 40.165821, 19.239233>,  <35.526222, 39.963432, 19.455555>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.795002, 40.165821, 19.239233> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496457, -0.234118, -0.835894,
		-0.549554, 0.830167, 0.093879,
		0.671953, 0.505975, -0.540803,
		35.996590, 40.317616, 19.076992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.151947, 40.106949, 18.893332>,  <35.526222, 39.963432, 19.455555>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.151947, 40.106949, 18.893332> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.509579, 40.210114, 18.746853>,  <35.724159, 40.272011, 18.658966>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.509579, 40.210114, 18.746853>,  <35.151947, 40.106949, 18.893332>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.509579, 40.210114, 18.746853> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280084, -0.316082, -0.906447,
		-0.349530, 0.913003, -0.210367,
		0.894082, 0.257910, -0.366197,
		35.777802, 40.287487, 18.636993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.023285, 40.501022, 18.267202>,  <35.151947, 40.106949, 18.893332>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.023285, 40.501022, 18.267202> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.389076, 40.340172, 18.249170>,  <35.608551, 40.243664, 18.238350>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.389076, 40.340172, 18.249170>,  <35.023285, 40.501022, 18.267202>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.389076, 40.340172, 18.249170> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250705, -0.475606, -0.843176,
		0.317619, 0.782366, -0.535744,
		0.914476, -0.402122, -0.045081,
		35.663418, 40.219536, 18.235645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.167797, 40.601963, 17.579857>,  <35.023285, 40.501022, 18.267202>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.167797, 40.601963, 17.579857> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.457111, 40.358948, 17.711161>,  <35.630699, 40.213139, 17.789942>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.457111, 40.358948, 17.711161>,  <35.167797, 40.601963, 17.579857>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.457111, 40.358948, 17.711161> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032101, -0.445265, -0.894823,
		0.689801, 0.657752, -0.302551,
		0.723287, -0.607538, 0.328258,
		35.674099, 40.176685, 17.809639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.649868, 40.650055, 17.085297>,  <35.167797, 40.601963, 17.579857>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.649868, 40.650055, 17.085297> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.667374, 40.299988, 17.278034>,  <35.677876, 40.089947, 17.393677>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.667374, 40.299988, 17.278034>,  <35.649868, 40.650055, 17.085297>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.667374, 40.299988, 17.278034> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257049, -0.475931, -0.841080,
		0.965407, -0.087048, -0.245789,
		0.043764, -0.875164, 0.481843,
		35.680504, 40.037437, 17.422586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.125931, 40.286652, 16.717392>,  <35.649868, 40.650055, 17.085297>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.125931, 40.286652, 16.717392> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.895187, 40.023087, 16.910503>,  <35.756741, 39.864948, 17.026369>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.895187, 40.023087, 16.910503>,  <36.125931, 40.286652, 16.717392>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.895187, 40.023087, 16.910503> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153571, -0.493004, -0.856366,
		0.802281, -0.568139, 0.183201,
		-0.576855, -0.658912, 0.482778,
		35.722130, 39.825413, 17.055336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.355354, 39.640934, 16.515579>,  <36.125931, 40.286652, 16.717392>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.355354, 39.640934, 16.515579> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.995464, 39.530350, 16.650673>,  <35.779530, 39.463997, 16.731730>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.995464, 39.530350, 16.650673>,  <36.355354, 39.640934, 16.515579>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.995464, 39.530350, 16.650673> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153180, -0.524571, -0.837473,
		0.408698, -0.805228, 0.429620,
		-0.899723, -0.276465, 0.337736,
		35.725548, 39.447411, 16.751993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.346577, 38.862873, 16.527088>,  <36.355354, 39.640934, 16.515579>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.346577, 38.862873, 16.527088> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.978634, 39.012627, 16.480280>,  <35.757866, 39.102478, 16.452194>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.978634, 39.012627, 16.480280>,  <36.346577, 38.862873, 16.527088>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.978634, 39.012627, 16.480280> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170891, -0.651042, -0.739554,
		-0.353062, -0.660289, 0.662847,
		-0.919861, 0.374383, -0.117020,
		35.702675, 39.124943, 16.445173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.956882, 38.237904, 16.265615>,  <36.346577, 38.862873, 16.527088>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.956882, 38.237904, 16.265615> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.707581, 38.545883, 16.210871>,  <35.557999, 38.730671, 16.178024>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.707581, 38.545883, 16.210871>,  <35.956882, 38.237904, 16.265615>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.707581, 38.545883, 16.210871> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234496, -0.350960, -0.906553,
		-0.746034, -0.532919, 0.399288,
		-0.623253, 0.769951, -0.136861,
		35.520603, 38.776867, 16.169813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.161449, 37.947479, 16.889259>,  <35.956882, 38.237904, 16.265615>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.161449, 37.947479, 16.889259> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.984619, 37.677364, 16.653105>,  <35.878521, 37.515293, 16.511412>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.984619, 37.677364, 16.653105>,  <36.161449, 37.947479, 16.889259>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.984619, 37.677364, 16.653105> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025852, -0.648328, 0.760923,
		-0.896606, 0.351647, 0.269150,
		-0.442073, -0.675290, -0.590385,
		35.851997, 37.474777, 16.475988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.470673, 37.711040, 17.153753>,  <36.161449, 37.947479, 16.889259>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.470673, 37.711040, 17.153753> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.594009, 37.416893, 16.912374>,  <35.668011, 37.240402, 16.767548>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.594009, 37.416893, 16.912374>,  <35.470673, 37.711040, 17.153753>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.594009, 37.416893, 16.912374> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413993, -0.674869, 0.610870,
		-0.856466, 0.061465, -0.512531,
		0.308344, -0.735373, -0.603449,
		35.686512, 37.196281, 16.731340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.918125, 37.236317, 17.079515>,  <35.470673, 37.711040, 17.153753>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.918125, 37.236317, 17.079515> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.264240, 37.043808, 17.023432>,  <35.471909, 36.928303, 16.989780>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.264240, 37.043808, 17.023432>,  <34.918125, 37.236317, 17.079515>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.264240, 37.043808, 17.023432> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271301, -0.684818, 0.676329,
		-0.421515, -0.547179, -0.723132,
		0.865287, -0.481269, -0.140211,
		35.523827, 36.899426, 16.981369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.734871, 36.529739, 16.944492>,  <34.918125, 37.236317, 17.079515>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.734871, 36.529739, 16.944492> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.104912, 36.560493, 17.093233>,  <35.326935, 36.578945, 17.182478>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.104912, 36.560493, 17.093233>,  <34.734871, 36.529739, 16.944492>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.104912, 36.560493, 17.093233> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239373, -0.642110, 0.728282,
		0.294765, -0.762747, -0.575613,
		0.925102, 0.076886, 0.371853,
		35.382442, 36.583561, 17.204788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.774124, 35.992512, 17.346523>,  <34.734871, 36.529739, 16.944492>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.774124, 35.992512, 17.346523> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.120064, 36.159653, 17.457838>,  <35.327625, 36.259937, 17.524626>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.120064, 36.159653, 17.457838>,  <34.774124, 35.992512, 17.346523>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.120064, 36.159653, 17.457838> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038220, -0.607498, 0.793401,
		0.500583, -0.675532, -0.541362,
		0.864844, 0.417854, 0.278285,
		35.379517, 36.285007, 17.541323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.179649, 35.455322, 17.644571>,  <34.774124, 35.992512, 17.346523>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.179649, 35.455322, 17.644571> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.364998, 35.787476, 17.768343>,  <35.476208, 35.986767, 17.842606>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.364998, 35.787476, 17.768343>,  <35.179649, 35.455322, 17.644571>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.364998, 35.787476, 17.768343> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184661, -0.431996, 0.882769,
		0.866711, -0.351910, -0.353514,
		0.463372, 0.830385, 0.309431,
		35.504009, 36.036591, 17.861172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.710209, 35.251301, 18.032988>,  <35.179649, 35.455322, 17.644571>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.710209, 35.251301, 18.032988> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.665276, 35.628319, 18.158840>,  <35.638313, 35.854530, 18.234352>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.665276, 35.628319, 18.158840>,  <35.710209, 35.251301, 18.032988>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.665276, 35.628319, 18.158840> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162355, -0.294971, 0.941612,
		0.980317, 0.156861, -0.119890,
		-0.112338, 0.942543, 0.314632,
		35.631573, 35.911083, 18.253229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.333412, 35.388683, 18.364885>,  <35.710209, 35.251301, 18.032988>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.333412, 35.388683, 18.364885> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.055298, 35.635040, 18.513079>,  <35.888432, 35.782856, 18.601995>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.055298, 35.635040, 18.513079>,  <36.333412, 35.388683, 18.364885>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.055298, 35.635040, 18.513079> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309382, -0.208805, 0.927730,
		0.648742, 0.759655, -0.045368,
		-0.695282, 0.615893, 0.370484,
		35.846714, 35.819809, 18.624224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.052273, 35.410583, 18.520479>,  <36.333412, 35.388683, 18.364885>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.052273, 35.410583, 18.520479> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.224098, 35.054550, 18.459513>,  <37.327194, 34.840931, 18.422934>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.224098, 35.054550, 18.459513>,  <37.052273, 35.410583, 18.520479>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.224098, 35.054550, 18.459513> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133349, 0.104410, -0.985554,
		0.893136, 0.443685, -0.073840,
		0.429566, -0.890080, -0.152417,
		37.352966, 34.787525, 18.413788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.525513, 35.539482, 18.036005>,  <37.052273, 35.410583, 18.520479>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.525513, 35.539482, 18.036005> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.462357, 35.145420, 18.009079>,  <37.424461, 34.908981, 17.992924>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.462357, 35.145420, 18.009079>,  <37.525513, 35.539482, 18.036005>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.462357, 35.145420, 18.009079> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070667, 0.056724, -0.995886,
		0.984924, -0.162001, 0.060661,
		-0.157894, -0.985159, -0.067317,
		37.414989, 34.849873, 17.988884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.889957, 35.475231, 17.481010>,  <37.525513, 35.539482, 18.036005>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.889957, 35.475231, 17.481010> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.698719, 35.124065, 17.491554>,  <37.583977, 34.913364, 17.497881>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.698719, 35.124065, 17.491554>,  <37.889957, 35.475231, 17.481010>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.698719, 35.124065, 17.491554> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091862, -0.079830, -0.992567,
		0.873492, -0.472118, 0.118813,
		-0.478093, -0.877913, 0.026362,
		37.555290, 34.860691, 17.499462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.322346, 35.090130, 17.230179>,  <37.889957, 35.475231, 17.481010>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.322346, 35.090130, 17.230179> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.972206, 34.906479, 17.169558>,  <37.762123, 34.796288, 17.133184>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.972206, 34.906479, 17.169558>,  <38.322346, 35.090130, 17.230179>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.972206, 34.906479, 17.169558> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200680, -0.059839, -0.977827,
		0.439876, -0.886354, 0.144517,
		-0.875349, -0.459125, -0.151552,
		37.709602, 34.768742, 17.124092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.423363, 34.634628, 16.649387>,  <38.322346, 35.090130, 17.230179>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.423363, 34.634628, 16.649387> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.025059, 34.634285, 16.686165>,  <37.786076, 34.634079, 16.708231>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.025059, 34.634285, 16.686165>,  <38.423363, 34.634628, 16.649387>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.025059, 34.634285, 16.686165> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091661, -0.069817, -0.993340,
		0.007273, -0.997559, 0.069442,
		-0.995764, -0.000860, 0.091945,
		37.726330, 34.634026, 16.713749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.080887, 33.948006, 16.347101>,  <38.423363, 34.634628, 16.649387>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.080887, 33.948006, 16.347101> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.794224, 34.226749, 16.335932>,  <37.622227, 34.393997, 16.329229>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.794224, 34.226749, 16.335932>,  <38.080887, 33.948006, 16.347101>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.794224, 34.226749, 16.335932> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140819, -0.183805, -0.972824,
		-0.683056, -0.693253, 0.229857,
		-0.716662, 0.696862, -0.027926,
		37.579224, 34.435806, 16.327555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.502235, 33.620701, 15.929541>,  <38.080887, 33.948006, 16.347101>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.502235, 33.620701, 15.929541> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.432964, 34.014141, 15.909370>,  <37.391403, 34.250206, 15.897268>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.432964, 34.014141, 15.909370>,  <37.502235, 33.620701, 15.929541>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.432964, 34.014141, 15.909370> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228142, -0.089868, -0.969472,
		-0.958103, -0.156386, 0.239963,
		-0.173177, 0.983599, -0.050425,
		37.381012, 34.309219, 15.894243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.777069, 33.719929, 15.670968>,  <37.502235, 33.620701, 15.929541>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.777069, 33.719929, 15.670968> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.992661, 34.043705, 15.577749>,  <37.122017, 34.237968, 15.521818>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.992661, 34.043705, 15.577749>,  <36.777069, 33.719929, 15.670968>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.992661, 34.043705, 15.577749> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184129, -0.156762, -0.970321,
		-0.821947, 0.565895, 0.064549,
		0.538981, 0.809437, -0.233047,
		37.154354, 34.286537, 15.507835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.534630, 33.948380, 15.022472>,  <36.777069, 33.719929, 15.670968>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.534630, 33.948380, 15.022472> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.880657, 34.148056, 15.042343>,  <37.088272, 34.267860, 15.054265>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.880657, 34.148056, 15.042343>,  <36.534630, 33.948380, 15.022472>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.880657, 34.148056, 15.042343> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104679, -0.082779, -0.991055,
		-0.490613, 0.862529, -0.123865,
		0.865067, 0.499191, 0.049676,
		37.140179, 34.297813, 15.057246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<39.297527, 36.221069, 31.397406> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.567131, 36.376163, 31.145891>,  <39.728893, 36.469219, 30.994982>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.567131, 36.376163, 31.145891>,  <39.297527, 36.221069, 31.397406>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.567131, 36.376163, 31.145891> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191671, -0.730238, -0.655755,
		-0.713425, 0.562504, -0.417868,
		0.674008, 0.387739, -0.628786,
		39.769333, 36.492485, 30.957256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.986629, 36.432713, 30.752256>,  <39.297527, 36.221069, 31.397406>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.986629, 36.432713, 30.752256> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.368259, 36.364071, 30.654045>,  <39.597237, 36.322887, 30.595118>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.368259, 36.364071, 30.654045>,  <38.986629, 36.432713, 30.752256>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.368259, 36.364071, 30.654045> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299550, -0.550962, -0.778917,
		-0.001614, 0.816697, -0.577065,
		0.954079, -0.171602, -0.245530,
		39.654484, 36.312592, 30.580385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.040676, 36.546299, 30.061371>,  <38.986629, 36.432713, 30.752256>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.040676, 36.546299, 30.061371> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.363770, 36.320251, 30.128555>,  <39.557625, 36.184624, 30.168865>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.363770, 36.320251, 30.128555>,  <39.040676, 36.546299, 30.061371>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.363770, 36.320251, 30.128555> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213810, -0.546302, -0.809839,
		0.549409, 0.618223, -0.562094,
		0.807734, -0.565114, 0.167962,
		39.606091, 36.150719, 30.178944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.517460, 36.539642, 29.395992>,  <39.040676, 36.546299, 30.061371>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.517460, 36.539642, 29.395992> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.608463, 36.228745, 29.630640>,  <39.663063, 36.042206, 29.771429>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.608463, 36.228745, 29.630640>,  <39.517460, 36.539642, 29.395992>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.608463, 36.228745, 29.630640> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073490, -0.614405, -0.785561,
		0.970999, 0.135609, -0.196901,
		0.227506, -0.777249, 0.586621,
		39.676716, 35.995571, 29.806627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.080997, 36.201519, 29.110006>,  <39.517460, 36.539642, 29.395992>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.080997, 36.201519, 29.110006> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.950687, 35.911964, 29.353271>,  <39.872501, 35.738232, 29.499231>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.950687, 35.911964, 29.353271>,  <40.080997, 36.201519, 29.110006>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.950687, 35.911964, 29.353271> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068633, -0.623450, -0.778846,
		0.942953, -0.295467, 0.153421,
		-0.325774, -0.723885, 0.608163,
		39.852955, 35.694798, 29.535721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.524231, 35.531139, 29.100475>,  <40.080997, 36.201519, 29.110006>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.524231, 35.531139, 29.100475> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.145145, 35.449104, 29.198277>,  <39.917694, 35.399883, 29.256958>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.145145, 35.449104, 29.198277>,  <40.524231, 35.531139, 29.100475>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.145145, 35.449104, 29.198277> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088202, -0.567982, -0.818301,
		0.306698, -0.797079, 0.520193,
		-0.947711, -0.205089, 0.244503,
		39.860832, 35.387577, 29.271627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.426189, 35.113342, 28.669603>,  <40.524231, 35.531139, 29.100475>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.426189, 35.113342, 28.669603> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.048153, 35.165524, 28.789457>,  <39.821331, 35.196831, 28.861370>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.048153, 35.165524, 28.789457>,  <40.426189, 35.113342, 28.669603>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.048153, 35.165524, 28.789457> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323274, -0.507527, -0.798693,
		0.047881, -0.851703, 0.521832,
		-0.945093, 0.130453, 0.299634,
		39.764626, 35.204659, 28.879347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.204384, 34.525574, 28.468735>,  <40.426189, 35.113342, 28.669603>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.204384, 34.525574, 28.468735> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.899967, 34.784161, 28.490242>,  <39.717316, 34.939312, 28.503147>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.899967, 34.784161, 28.490242>,  <40.204384, 34.525574, 28.468735>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.899967, 34.784161, 28.490242> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349208, -0.338419, -0.873800,
		-0.546691, -0.683774, 0.483303,
		-0.761041, 0.646472, 0.053769,
		39.671654, 34.978104, 28.506372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.615063, 34.146145, 28.223969>,  <40.204384, 34.525574, 28.468735>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.615063, 34.146145, 28.223969> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.481525, 34.522694, 28.204517>,  <39.401402, 34.748623, 28.192846>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.481525, 34.522694, 28.204517>,  <39.615063, 34.146145, 28.223969>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.481525, 34.522694, 28.204517> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469577, -0.210817, -0.857352,
		-0.817340, -0.263389, 0.512427,
		-0.333846, 0.941373, -0.048628,
		39.381371, 34.805107, 28.189930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.842918, 34.111588, 27.975630>,  <39.615063, 34.146145, 28.223969>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.842918, 34.111588, 27.975630> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.954807, 34.484215, 27.882730>,  <39.021942, 34.707790, 27.826990>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.954807, 34.484215, 27.882730>,  <38.842918, 34.111588, 27.975630>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.954807, 34.484215, 27.882730> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426743, -0.096055, -0.899257,
		-0.860027, 0.350651, 0.370671,
		0.279721, 0.931567, -0.232248,
		39.038723, 34.763683, 27.813057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.268131, 34.395218, 27.563599>,  <38.842918, 34.111588, 27.975630>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.268131, 34.395218, 27.563599> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.594803, 34.600323, 27.457687>,  <38.790806, 34.723385, 27.394140>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.594803, 34.600323, 27.457687>,  <38.268131, 34.395218, 27.563599>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.594803, 34.600323, 27.457687> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241168, -0.113583, -0.963814,
		-0.524278, 0.850986, 0.030900,
		0.816682, 0.512759, -0.264780,
		38.839809, 34.754150, 27.378254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.028210, 34.888767, 27.004860>,  <38.268131, 34.395218, 27.563599>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.028210, 34.888767, 27.004860> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.426876, 34.864941, 26.982569>,  <38.666077, 34.850647, 26.969194>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.426876, 34.864941, 26.982569>,  <38.028210, 34.888767, 27.004860>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.426876, 34.864941, 26.982569> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065359, -0.174434, -0.982497,
		0.048801, 0.982865, -0.177746,
		0.996668, -0.059564, -0.055726,
		38.725876, 34.847073, 26.965851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.916485, 35.469639, 27.216318>,  <38.028210, 34.888767, 27.004860>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.916485, 35.469639, 27.216318> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.539734, 35.590687, 27.274675>,  <37.313683, 35.663315, 27.309690>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.539734, 35.590687, 27.274675>,  <37.916485, 35.469639, 27.216318>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.539734, 35.590687, 27.274675> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191725, 0.127581, 0.973121,
		0.275870, 0.944535, -0.178186,
		-0.941880, 0.302617, 0.145895,
		37.257172, 35.681473, 27.318443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.983711, 36.107254, 27.668222>,  <37.916485, 35.469639, 27.216318>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.983711, 36.107254, 27.668222> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.592922, 36.022911, 27.681255>,  <37.358448, 35.972305, 27.689075>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.592922, 36.022911, 27.681255>,  <37.983711, 36.107254, 27.668222>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.592922, 36.022911, 27.681255> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010415, 0.199668, 0.979808,
		-0.213106, 0.956907, -0.197267,
		-0.976974, -0.210857, 0.032584,
		37.299831, 35.959656, 27.691031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.644810, 36.799877, 27.819435>,  <37.983711, 36.107254, 27.668222>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.644810, 36.799877, 27.819435> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.417068, 36.490814, 27.931749>,  <37.280426, 36.305378, 27.999138>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.417068, 36.490814, 27.931749>,  <37.644810, 36.799877, 27.819435>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.417068, 36.490814, 27.931749> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197738, 0.460233, 0.865497,
		-0.797961, 0.437247, -0.414817,
		-0.569349, -0.772658, 0.280788,
		37.246265, 36.259018, 28.015985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.062698, 37.059155, 28.253885>,  <37.644810, 36.799877, 27.819435>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.062698, 37.059155, 28.253885> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.091156, 36.666405, 28.324162>,  <37.108231, 36.430756, 28.366327>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.091156, 36.666405, 28.324162>,  <37.062698, 37.059155, 28.253885>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.091156, 36.666405, 28.324162> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092344, 0.181863, 0.978978,
		-0.993182, -0.053425, 0.103609,
		0.071144, -0.981872, 0.175689,
		37.112499, 36.371841, 28.376869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.443630, 36.821869, 28.581417>,  <37.062698, 37.059155, 28.253885>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.443630, 36.821869, 28.581417> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.755653, 36.592361, 28.681255>,  <36.942867, 36.454659, 28.741159>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.755653, 36.592361, 28.681255>,  <36.443630, 36.821869, 28.581417>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.755653, 36.592361, 28.681255> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163588, 0.198015, 0.966452,
		-0.603941, -0.794722, 0.060603,
		0.780061, -0.573766, 0.249597,
		36.989670, 36.420231, 28.756134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.225704, 36.581635, 29.231056>,  <36.443630, 36.821869, 28.581417>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.225704, 36.581635, 29.231056> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.597801, 36.434933, 29.226238>,  <36.821060, 36.346912, 29.223349>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.597801, 36.434933, 29.226238>,  <36.225704, 36.581635, 29.231056>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.597801, 36.434933, 29.226238> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142902, 0.331835, 0.932451,
		-0.337988, -0.869123, 0.361096,
		0.930238, -0.366758, -0.012043,
		36.876873, 36.324905, 29.222626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.247032, 36.188831, 29.868116>,  <36.225704, 36.581635, 29.231056>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.247032, 36.188831, 29.868116> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.622704, 36.254925, 29.747686>,  <36.848106, 36.294582, 29.675428>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.622704, 36.254925, 29.747686>,  <36.247032, 36.188831, 29.868116>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.622704, 36.254925, 29.747686> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291060, 0.082393, 0.953150,
		0.182299, -0.982807, 0.029289,
		0.939176, 0.165233, -0.301076,
		36.904457, 36.304493, 29.657364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.652290, 35.830921, 30.334938>,  <36.247032, 36.188831, 29.868116>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.652290, 35.830921, 30.334938> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.902496, 36.098595, 30.174477>,  <37.052620, 36.259201, 30.078199>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.902496, 36.098595, 30.174477>,  <36.652290, 35.830921, 30.334938>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.902496, 36.098595, 30.174477> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363568, 0.204924, 0.908749,
		0.690329, -0.714279, -0.115113,
		0.625511, 0.669188, -0.401154,
		37.090149, 36.299351, 30.054131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.388496, 35.734100, 30.643862>,  <36.652290, 35.830921, 30.334938>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.388496, 35.734100, 30.643862> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.333874, 36.104744, 30.503725>,  <37.301102, 36.327133, 30.419643>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.333874, 36.104744, 30.503725>,  <37.388496, 35.734100, 30.643862>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.333874, 36.104744, 30.503725> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077511, 0.362564, 0.928730,
		0.987595, 0.099670, -0.121333,
		-0.136557, 0.926614, -0.350341,
		37.292908, 36.382729, 30.398623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.984005, 36.185780, 30.974188>,  <37.388496, 35.734100, 30.643862>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.984005, 36.185780, 30.974188> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.671757, 36.413788, 30.871655>,  <37.484409, 36.550594, 30.810135>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.671757, 36.413788, 30.871655>,  <37.984005, 36.185780, 30.974188>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.671757, 36.413788, 30.871655> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022896, 0.383770, 0.923145,
		0.624588, 0.726493, -0.286527,
		-0.780619, 0.570024, -0.256332,
		37.437572, 36.584797, 30.794754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.094215, 36.860249, 31.253452>,  <37.984005, 36.185780, 30.974188>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.094215, 36.860249, 31.253452> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.698963, 36.874611, 31.193705>,  <37.461811, 36.883228, 31.157856>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.698963, 36.874611, 31.193705>,  <38.094215, 36.860249, 31.253452>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.698963, 36.874611, 31.193705> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101668, 0.576074, 0.811050,
		0.115174, 0.816608, -0.565584,
		-0.988129, 0.035910, -0.149371,
		37.402523, 36.885384, 31.148893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.793007, 37.488453, 31.255018>,  <38.094215, 36.860249, 31.253452>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.793007, 37.488453, 31.255018> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.449375, 37.294170, 31.319590>,  <37.243195, 37.177601, 31.358334>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.449375, 37.294170, 31.319590>,  <37.793007, 37.488453, 31.255018>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.449375, 37.294170, 31.319590> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172125, 0.571182, 0.802574,
		-0.482024, 0.661692, -0.574296,
		-0.859084, -0.485711, 0.161429,
		37.191650, 37.148457, 31.368019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.275806, 37.994785, 31.253065>,  <37.793007, 37.488453, 31.255018>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.275806, 37.994785, 31.253065> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.149738, 37.682362, 31.468702>,  <37.074097, 37.494907, 31.598083>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.149738, 37.682362, 31.468702>,  <37.275806, 37.994785, 31.253065>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.149738, 37.682362, 31.468702> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293978, 0.620449, 0.727062,
		-0.902355, 0.070666, -0.425160,
		-0.315169, -0.781056, 0.539091,
		37.055187, 37.448044, 31.630430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.590633, 38.191696, 31.481228>,  <37.275806, 37.994785, 31.253065>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.590633, 38.191696, 31.481228> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.698322, 37.889721, 31.720423>,  <36.762936, 37.708534, 31.863939>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.698322, 37.889721, 31.720423>,  <36.590633, 38.191696, 31.481228>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.698322, 37.889721, 31.720423> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402827, 0.475718, 0.781936,
		-0.874787, -0.451396, -0.176039,
		0.269218, -0.754940, 0.597986,
		36.779087, 37.663239, 31.899818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.813766, 38.238010, 31.540085>,  <36.590633, 38.191696, 31.481228>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.813766, 38.238010, 31.540085> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.091511, 38.525082, 31.518921>,  <36.258160, 38.697323, 31.506222>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.091511, 38.525082, 31.518921>,  <35.813766, 38.238010, 31.540085>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.091511, 38.525082, 31.518921> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549999, 0.481844, -0.682149,
		-0.464066, 0.502762, 0.729296,
		0.694365, 0.717675, -0.052911,
		36.299820, 38.740383, 31.503048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.362278, 38.812523, 31.399609>,  <35.813766, 38.238010, 31.540085>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.362278, 38.812523, 31.399609> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.727997, 38.914986, 31.274111>,  <35.947430, 38.976463, 31.198812>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.727997, 38.914986, 31.274111>,  <35.362278, 38.812523, 31.399609>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.727997, 38.914986, 31.274111> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398752, 0.433369, -0.808201,
		-0.071057, 0.864046, 0.498372,
		0.914302, 0.256156, -0.313746,
		36.002289, 38.991833, 31.179987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.238026, 39.366737, 30.973181>,  <35.362278, 38.812523, 31.399609>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.238026, 39.366737, 30.973181> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.629639, 39.313568, 30.911436>,  <35.864605, 39.281666, 30.874390>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.629639, 39.313568, 30.911436>,  <35.238026, 39.366737, 30.973181>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.629639, 39.313568, 30.911436> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092047, 0.387322, -0.917338,
		0.181719, 0.912312, 0.366967,
		0.979033, -0.132919, -0.154359,
		35.923347, 39.273693, 30.865128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.486172, 39.987076, 30.781927>,  <35.238026, 39.366737, 30.973181>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.486172, 39.987076, 30.781927> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.753223, 39.723835, 30.642689>,  <35.913452, 39.565891, 30.559145>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.753223, 39.723835, 30.642689>,  <35.486172, 39.987076, 30.781927>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.753223, 39.723835, 30.642689> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035851, 0.438598, -0.897968,
		0.743633, 0.611987, 0.269226,
		0.667626, -0.658106, -0.348097,
		35.953510, 39.526402, 30.538260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.089535, 40.405209, 30.470053>,  <35.486172, 39.987076, 30.781927>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.089535, 40.405209, 30.470053> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.110992, 40.032028, 30.327656>,  <36.123867, 39.808121, 30.242218>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.110992, 40.032028, 30.327656>,  <36.089535, 40.405209, 30.470053>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.110992, 40.032028, 30.327656> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119519, 0.359942, -0.925287,
		0.991382, 0.007084, 0.130812,
		0.053640, -0.932948, -0.355994,
		36.127083, 39.752144, 30.220858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.543732, 40.496868, 29.995743>,  <36.089535, 40.405209, 30.470053>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.543732, 40.496868, 29.995743> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.368996, 40.159840, 29.869732>,  <36.264156, 39.957623, 29.794125>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.368996, 40.159840, 29.869732>,  <36.543732, 40.496868, 29.995743>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.368996, 40.159840, 29.869732> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071492, 0.381623, -0.921549,
		0.896695, -0.380045, -0.226945,
		-0.436837, -0.842573, -0.315029,
		36.237946, 39.907066, 29.775223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.956924, 40.292839, 29.323162>,  <36.543732, 40.496868, 29.995743>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.956924, 40.292839, 29.323162> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.595039, 40.123844, 29.345049>,  <36.377907, 40.022446, 29.358181>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.595039, 40.123844, 29.345049>,  <36.956924, 40.292839, 29.323162>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.595039, 40.123844, 29.345049> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139080, 0.171510, -0.975316,
		0.402673, -0.889994, -0.213927,
		-0.904716, -0.422487, 0.054718,
		36.323624, 39.997097, 29.361464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.956654, 39.842400, 28.756460>,  <36.956924, 40.292839, 29.323162>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.956654, 39.842400, 28.756460> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.564430, 39.832928, 28.834387>,  <36.329098, 39.827244, 28.881144>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.564430, 39.832928, 28.834387>,  <36.956654, 39.842400, 28.756460>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.564430, 39.832928, 28.834387> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195286, 0.019435, -0.980554,
		0.019435, -0.999531, -0.023682,
		0.980554, 0.023682, -0.194817,
		36.270264, 39.825825, 28.892832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.580818, 39.299889, 28.327415>,  <36.956654, 39.842400, 28.756460>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.580818, 39.299889, 28.327415> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.306450, 39.567585, 28.441694>,  <36.141827, 39.728203, 28.510262>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.306450, 39.567585, 28.441694>,  <36.580818, 39.299889, 28.327415>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.306450, 39.567585, 28.441694> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265902, 0.134947, -0.954508,
		-0.677352, -0.730687, 0.085390,
		-0.685923, 0.669243, 0.285698,
		36.100674, 39.768356, 28.527403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.829010, 39.069542, 28.119129>,  <36.580818, 39.299889, 28.327415>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.829010, 39.069542, 28.119129> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.848091, 39.468719, 28.136269>,  <35.859539, 39.708225, 28.146553>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.848091, 39.468719, 28.136269>,  <35.829010, 39.069542, 28.119129>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.848091, 39.468719, 28.136269> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265336, 0.054018, -0.962642,
		-0.962975, 0.034549, 0.267367,
		0.047701, 0.997942, 0.042851,
		35.862400, 39.768101, 28.149124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.293793, 39.221962, 27.693823>,  <35.829010, 39.069542, 28.119129>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.293793, 39.221962, 27.693823> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.506336, 39.556141, 27.749935>,  <35.633862, 39.756649, 27.783602>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.506336, 39.556141, 27.749935>,  <35.293793, 39.221962, 27.693823>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.506336, 39.556141, 27.749935> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106984, 0.230443, -0.967187,
		-0.840364, 0.498915, 0.211827,
		0.531359, 0.835452, 0.140280,
		35.665745, 39.806778, 27.792019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.884998, 39.733524, 27.367165>,  <35.293793, 39.221962, 27.693823>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.884998, 39.733524, 27.367165> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.254311, 39.884678, 27.394732>,  <35.475899, 39.975368, 27.411272>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.254311, 39.884678, 27.394732>,  <34.884998, 39.733524, 27.367165>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.254311, 39.884678, 27.394732> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072861, 0.348445, -0.934493,
		-0.377144, 0.857781, 0.349247,
		0.923284, 0.377885, 0.068915,
		35.531296, 39.998043, 27.415405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.823662, 40.347748, 27.031244>,  <34.884998, 39.733524, 27.367165>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.823662, 40.347748, 27.031244> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.220234, 40.295692, 27.026800>,  <35.458179, 40.264462, 27.024134>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.220234, 40.295692, 27.026800>,  <34.823662, 40.347748, 27.031244>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.220234, 40.295692, 27.026800> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024548, 0.269212, -0.962768,
		0.128280, 0.954248, 0.270100,
		0.991434, -0.130134, -0.011109,
		35.517666, 40.256653, 27.023468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.028294, 40.895157, 26.639990>,  <34.823662, 40.347748, 27.031244>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.028294, 40.895157, 26.639990> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.335426, 40.638897, 26.641081>,  <35.519707, 40.485142, 26.641735>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.335426, 40.638897, 26.641081>,  <35.028294, 40.895157, 26.639990>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.335426, 40.638897, 26.641081> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145100, 0.169751, -0.974747,
		0.624007, 0.748835, 0.223298,
		0.767829, -0.640649, 0.002730,
		35.565777, 40.446701, 26.641899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.496735, 41.218548, 26.172096>,  <35.028294, 40.895157, 26.639990>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.496735, 41.218548, 26.172096> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.649666, 40.850212, 26.202770>,  <35.741425, 40.629211, 26.221174>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.649666, 40.850212, 26.202770>,  <35.496735, 41.218548, 26.172096>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.649666, 40.850212, 26.202770> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337734, 0.062012, -0.939196,
		0.860094, 0.384979, 0.334708,
		0.382327, -0.920840, 0.076685,
		35.764362, 40.573959, 26.225775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.233704, 41.260666, 26.102158>,  <35.496735, 41.218548, 26.172096>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.233704, 41.260666, 26.102158> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.122444, 40.889481, 26.002949>,  <36.055691, 40.666767, 25.943424>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.122444, 40.889481, 26.002949>,  <36.233704, 41.260666, 26.102158>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.122444, 40.889481, 26.002949> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470875, 0.093328, -0.877249,
		0.837204, -0.360792, 0.410997,
		-0.278147, -0.927965, -0.248023,
		36.039001, 40.611092, 25.928541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.814278, 40.958778, 25.712257>,  <36.233704, 41.260666, 26.102158>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.814278, 40.958778, 25.712257> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.497673, 40.734646, 25.614653>,  <36.307713, 40.600166, 25.556089>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.497673, 40.734646, 25.614653>,  <36.814278, 40.958778, 25.712257>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.497673, 40.734646, 25.614653> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271441, 0.035411, -0.961803,
		0.547573, -0.827508, 0.124070,
		-0.791507, -0.560336, -0.244010,
		36.260220, 40.566544, 25.541451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.049503, 40.381092, 25.309799>,  <36.814278, 40.958778, 25.712257>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.049503, 40.381092, 25.309799> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.666702, 40.431263, 25.205172>,  <36.437023, 40.461365, 25.142395>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.666702, 40.431263, 25.205172>,  <37.049503, 40.381092, 25.309799>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.666702, 40.431263, 25.205172> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276522, 0.121932, -0.953241,
		-0.087667, -0.984582, -0.151372,
		-0.957001, 0.125426, -0.261569,
		36.379601, 40.468891, 25.126701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.987827, 39.958248, 24.746031>,  <37.049503, 40.381092, 25.309799>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.987827, 39.958248, 24.746031> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.673920, 40.202065, 24.701139>,  <36.485573, 40.348354, 24.674206>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.673920, 40.202065, 24.701139>,  <36.987827, 39.958248, 24.746031>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.673920, 40.202065, 24.701139> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248386, 0.143410, -0.957986,
		-0.567836, -0.779676, -0.263945,
		-0.784772, 0.609539, -0.112227,
		36.438488, 40.384926, 24.667471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.486835, 39.587143, 24.300228>,  <36.987827, 39.958248, 24.746031>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.486835, 39.587143, 24.300228> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.391449, 39.975052, 24.279518>,  <36.334217, 40.207798, 24.267092>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.391449, 39.975052, 24.279518>,  <36.486835, 39.587143, 24.300228>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.391449, 39.975052, 24.279518> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135766, -0.019497, -0.990549,
		-0.961614, -0.243244, -0.127012,
		-0.238468, 0.969769, -0.051773,
		36.319908, 40.265984, 24.263987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.922348, 39.679310, 23.839571>,  <36.486835, 39.587143, 24.300228>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.922348, 39.679310, 23.839571> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.058903, 40.055000, 23.825045>,  <36.140835, 40.280415, 23.816330>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.058903, 40.055000, 23.825045>,  <35.922348, 39.679310, 23.839571>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.058903, 40.055000, 23.825045> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053635, -0.058039, -0.996872,
		-0.938393, 0.338367, -0.070188,
		0.341382, 0.939223, -0.036315,
		36.161316, 40.336765, 23.814150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.481972, 39.945126, 23.385397>,  <35.922348, 39.679310, 23.839571>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.481972, 39.945126, 23.385397> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.792873, 40.196419, 23.371523>,  <35.979412, 40.347195, 23.363199>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.792873, 40.196419, 23.371523>,  <35.481972, 39.945126, 23.385397>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.792873, 40.196419, 23.371523> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045620, 0.001290, -0.998958,
		-0.627535, 0.778023, 0.029663,
		0.777251, 0.628234, -0.034684,
		36.026051, 40.384888, 23.361118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.407856, 40.313381, 22.759201>,  <35.481972, 39.945126, 23.385397>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.407856, 40.313381, 22.759201> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.778057, 40.421921, 22.864893>,  <36.000175, 40.487045, 22.928308>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.778057, 40.421921, 22.864893>,  <35.407856, 40.313381, 22.759201>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.778057, 40.421921, 22.864893> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233625, 0.140098, -0.962181,
		-0.298108, 0.952229, 0.066266,
		0.925500, 0.271353, 0.264229,
		36.055706, 40.503326, 22.944162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.616547, 40.985336, 22.543091>,  <35.407856, 40.313381, 22.759201>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.616547, 40.985336, 22.543091> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.956062, 40.774189, 22.555113>,  <36.159771, 40.647499, 22.562326>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.956062, 40.774189, 22.555113>,  <35.616547, 40.985336, 22.543091>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.956062, 40.774189, 22.555113> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259503, 0.366390, -0.893542,
		0.460663, 0.766230, 0.447974,
		0.848792, -0.527873, 0.030057,
		36.210701, 40.615826, 22.564131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.990826, 41.413738, 22.126448>,  <35.616547, 40.985336, 22.543091>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.990826, 41.413738, 22.126448> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.234726, 41.097122, 22.142784>,  <36.381065, 40.907154, 22.152586>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.234726, 41.097122, 22.142784>,  <35.990826, 41.413738, 22.126448>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.234726, 41.097122, 22.142784> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334906, 0.210602, -0.918414,
		0.718362, 0.573680, 0.393506,
		0.609749, -0.791541, 0.040841,
		36.417652, 40.859661, 22.155037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.530037, 41.662659, 21.812386>,  <35.990826, 41.413738, 22.126448>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.530037, 41.662659, 21.812386> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.561390, 41.264435, 21.791506>,  <36.580204, 41.025501, 21.778978>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.561390, 41.264435, 21.791506>,  <36.530037, 41.662659, 21.812386>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.561390, 41.264435, 21.791506> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226952, 0.068804, -0.971472,
		0.970746, 0.064304, 0.231336,
		0.078386, -0.995556, -0.052197,
		36.584908, 40.965767, 21.775846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.106770, 41.490524, 21.487881>,  <36.530037, 41.662659, 21.812386>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.106770, 41.490524, 21.487881> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.881878, 41.165741, 21.425106>,  <36.746944, 40.970871, 21.387442>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.881878, 41.165741, 21.425106>,  <37.106770, 41.490524, 21.487881>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.881878, 41.165741, 21.425106> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262300, 0.004887, -0.964974,
		0.784284, -0.583696, 0.210229,
		-0.562224, -0.811957, -0.156936,
		36.713211, 40.922153, 21.378025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.563099, 41.094913, 21.027504>,  <37.106770, 41.490524, 21.487881>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.563099, 41.094913, 21.027504> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.194859, 40.941494, 20.998150>,  <36.973915, 40.849442, 20.980537>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.194859, 40.941494, 20.998150>,  <37.563099, 41.094913, 21.027504>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.194859, 40.941494, 20.998150> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108443, -0.070560, -0.991595,
		0.375151, -0.920819, 0.106551,
		-0.920598, -0.383553, -0.073386,
		36.918678, 40.826427, 20.976133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.335320, 40.980839, 20.933645>,  <37.563099, 41.094913, 21.027504>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.335320, 40.980839, 20.933645> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.696297, 41.062153, 20.781713>,  <38.912884, 41.110943, 20.690554>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.696297, 41.062153, 20.781713>,  <38.335320, 40.980839, 20.933645>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.696297, 41.062153, 20.781713> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376782, 0.055054, 0.924664,
		0.208886, -0.977570, -0.026913,
		0.902442, 0.203290, -0.379831,
		38.967030, 41.123138, 20.667765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.870071, 40.597935, 21.302235>,  <38.335320, 40.980839, 20.933645>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.870071, 40.597935, 21.302235> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.041843, 40.935570, 21.173794>,  <39.144905, 41.138149, 21.096729>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.041843, 40.935570, 21.173794>,  <38.870071, 40.597935, 21.302235>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.041843, 40.935570, 21.173794> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229963, 0.241633, 0.942725,
		0.873331, -0.478676, -0.090344,
		0.429429, 0.844087, -0.321103,
		39.170673, 41.188797, 21.077463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.577118, 40.562031, 21.502239>,  <38.870071, 40.597935, 21.302235>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.577118, 40.562031, 21.502239> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.494305, 40.948193, 21.438822>,  <39.444618, 41.179890, 21.400772>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.494305, 40.948193, 21.438822>,  <39.577118, 40.562031, 21.502239>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.494305, 40.948193, 21.438822> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412357, 0.233064, 0.880706,
		0.887186, 0.116961, -0.446342,
		-0.207034, 0.965402, -0.158541,
		39.432194, 41.237812, 21.391260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.106026, 40.870319, 21.891649>,  <39.577118, 40.562031, 21.502239>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.106026, 40.870319, 21.891649> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.851582, 41.172966, 21.831120>,  <39.698917, 41.354553, 21.794802>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.851582, 41.172966, 21.831120>,  <40.106026, 40.870319, 21.891649>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.851582, 41.172966, 21.831120> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177527, 0.334364, 0.925572,
		0.750901, 0.561900, -0.347012,
		-0.636107, 0.756617, -0.151322,
		39.660748, 41.399952, 21.785723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.391560, 41.470909, 22.105930>,  <40.106026, 40.870319, 21.891649>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.391560, 41.470909, 22.105930> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.997921, 41.541962, 22.106050>,  <39.761738, 41.584595, 22.106123>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.997921, 41.541962, 22.106050>,  <40.391560, 41.470909, 22.105930>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.997921, 41.541962, 22.106050> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010668, 0.057415, 0.998293,
		0.177310, 0.982421, -0.058397,
		-0.984097, 0.177630, 0.000300,
		39.702690, 41.595249, 22.106140>
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
