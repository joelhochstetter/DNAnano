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
	<3.091917, -0.230583, 0.836049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.850372, -0.477585, 1.037659>,  <2.705446, -0.625786, 1.158624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.850372, -0.477585, 1.037659>,  <3.091917, -0.230583, 0.836049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.850372, -0.477585, 1.037659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502399, 0.785772, 0.360774,
		-0.618827, -0.035363, -0.784731,
		-0.603862, -0.617504, 0.504023,
		2.669214, -0.662836, 1.188866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.467412, -0.003862, 0.686544>,  <3.091917, -0.230583, 0.836049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.467412, -0.003862, 0.686544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.454422, -0.186859, 1.041992>,  <2.446628, -0.296657, 1.255261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.454422, -0.186859, 1.041992>,  <2.467412, -0.003862, 0.686544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.454422, -0.186859, 1.041992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446568, 0.802049, 0.396602,
		-0.894160, -0.383950, -0.230349,
		-0.032476, -0.457493, 0.888620,
		2.444679, -0.324107, 1.308578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.944017, 0.188928, 1.023168>,  <2.467412, -0.003862, 0.686544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.944017, 0.188928, 1.023168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.837605, 0.511276, 0.811584>,  <1.773757, 0.704685, 0.684634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.837605, 0.511276, 0.811584>,  <1.944017, 0.188928, 1.023168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.837605, 0.511276, 0.811584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.716138, 0.202093, 0.668060,
		0.645270, 0.556533, 0.523352,
		-0.266032, 0.805872, -0.528959,
		1.757795, 0.753038, 0.652897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.928148, 0.948977, 1.396518>,  <1.944017, 0.188928, 1.023168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.928148, 0.948977, 1.396518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.661869, 0.910637, 1.100502>,  <1.502102, 0.887633, 0.922892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.661869, 0.910637, 1.100502>,  <1.928148, 0.948977, 1.396518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.661869, 0.910637, 1.100502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.718316, 0.350977, 0.600697,
		0.202159, 0.931465, -0.302495,
		-0.665698, -0.095851, -0.740040,
		1.462160, 0.881882, 0.878490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.611521, 1.492227, 1.414817>,  <1.928148, 0.948977, 1.396518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.611521, 1.492227, 1.414817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.344299, 1.315254, 1.175499>,  <1.183966, 1.209070, 1.031908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.344299, 1.315254, 1.175499>,  <1.611521, 1.492227, 1.414817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.344299, 1.315254, 1.175499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.720925, 0.583985, 0.373134,
		0.184308, 0.680599, -0.709094,
		-0.668055, -0.442432, -0.598294,
		1.143883, 1.182525, 0.996011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.215601, 2.020057, 0.994505>,  <1.611521, 1.492227, 1.414817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.215601, 2.020057, 0.994505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.007526, 1.682396, 1.046371>,  <0.882681, 1.479800, 1.077491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.007526, 1.682396, 1.046371>,  <1.215601, 2.020057, 0.994505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.007526, 1.682396, 1.046371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.760168, 0.526841, 0.380242,
		-0.389295, 0.099229, -0.915753,
		-0.520187, -0.844152, 0.129665,
		0.851470, 1.429150, 1.085271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.560442, 2.174415, 0.769305>,  <1.215601, 2.020057, 0.994505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.560442, 2.174415, 0.769305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.486679, 1.838280, 0.973198>,  <0.442421, 1.636599, 1.095533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.486679, 1.838280, 0.973198>,  <0.560442, 2.174415, 0.769305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.486679, 1.838280, 0.973198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.752814, 0.454191, 0.476425,
		-0.631874, -0.295876, -0.716375,
		-0.184408, -0.840338, 0.509731,
		0.431357, 1.586178, 1.126117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.104312, 2.048835, 0.624124>,  <0.560442, 2.174415, 0.769305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.104312, 2.048835, 0.624124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.033363, 1.926018, 0.979034>,  <0.115968, 1.852327, 1.191981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.033363, 1.926018, 0.979034>,  <-0.104312, 2.048835, 0.624124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.033363, 1.926018, 0.979034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.759912, 0.463916, 0.455320,
		-0.551425, -0.830967, -0.073653,
		0.344187, -0.307044, 0.887276,
		0.136620, 1.833905, 1.245217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<-0.373062, 2.659431, 2.369818> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.448840, 2.286407, 2.492744>,  <-0.494307, 2.062593, 2.566500>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.448840, 2.286407, 2.492744>,  <-0.373062, 2.659431, 2.369818>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.448840, 2.286407, 2.492744> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731312, -0.342860, -0.589601,
		0.655204, 0.113046, 0.746946,
		-0.189445, -0.932560, 0.307315,
		-0.505673, 2.006639, 2.584939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.240781, 2.310130, 2.690455>,  <-0.373062, 2.659431, 2.369818>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.240781, 2.310130, 2.690455> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.004564, 2.056473, 2.490807>,  <-0.137166, 1.904279, 2.371017>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.004564, 2.056473, 2.490807>,  <0.240781, 2.310130, 2.690455>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.004564, 2.056473, 2.490807> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.793491, -0.343556, -0.502335,
		0.147076, -0.692699, 0.706071,
		-0.590542, -0.634143, -0.499122,
		-0.172598, 1.866230, 2.341070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.655355, 1.760602, 2.406051>,  <0.240781, 2.310130, 2.690455>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.655355, 1.760602, 2.406051> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.330523, 1.729843, 2.174667>,  <0.135624, 1.711388, 2.035837>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.330523, 1.729843, 2.174667>,  <0.655355, 1.760602, 2.406051>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.330523, 1.729843, 2.174667> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532142, -0.504400, -0.680004,
		-0.239483, -0.860039, 0.450534,
		-0.812079, -0.076898, -0.578458,
		0.086900, 1.706774, 2.001130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.433104, 1.117726, 2.317920>,  <0.655355, 1.760602, 2.406051>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.433104, 1.117726, 2.317920> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.320327, 1.316025, 1.989349>,  <0.252660, 1.435004, 1.792207>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.320327, 1.316025, 1.989349>,  <0.433104, 1.117726, 2.317920>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.320327, 1.316025, 1.989349> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498446, -0.655867, -0.566913,
		-0.819793, -0.569274, -0.062185,
		-0.281944, 0.495747, -0.821427,
		0.235744, 1.464749, 1.742921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.143252, 0.644075, 1.895531>,  <0.433104, 1.117726, 2.317920>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.143252, 0.644075, 1.895531> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.239937, 0.940018, 1.644394>,  <0.297948, 1.117584, 1.493712>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.239937, 0.940018, 1.644394>,  <0.143252, 0.644075, 1.895531>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.239937, 0.940018, 1.644394> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444625, -0.659554, -0.606051,
		-0.862487, -0.132664, -0.488381,
		0.241713, 0.739857, -0.627842,
		0.312451, 1.161975, 1.456041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.099470, 0.320492, 1.108860>,  <0.143252, 0.644075, 1.895531>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.099470, 0.320492, 1.108860> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.328650, 0.648239, 1.116470>,  <0.466159, 0.844887, 1.121036>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.328650, 0.648239, 1.116470>,  <0.099470, 0.320492, 1.108860>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.328650, 0.648239, 1.116470> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624572, -0.421473, -0.657473,
		-0.530693, 0.388583, -0.753238,
		0.572952, 0.819368, 0.019025,
		0.500536, 0.894050, 1.122178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.373204, 0.335586, 0.455275>,  <0.099470, 0.320492, 1.108860>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.373204, 0.335586, 0.455275> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.635708, 0.567680, 0.648209>,  <0.793210, 0.706937, 0.763969>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.635708, 0.567680, 0.648209>,  <0.373204, 0.335586, 0.455275>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.635708, 0.567680, 0.648209> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682552, -0.184034, -0.707286,
		-0.321628, 0.793383, -0.516817,
		0.656261, 0.580237, 0.482335,
		0.832586, 0.741751, 0.792909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.649202, 0.601935, -0.149597>,  <0.373204, 0.335586, 0.455275>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.649202, 0.601935, -0.149597> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.889556, 0.691116, 0.157448>,  <1.033769, 0.744625, 0.341675>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.889556, 0.691116, 0.157448>,  <0.649202, 0.601935, -0.149597>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.889556, 0.691116, 0.157448> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.796591, -0.087530, -0.598148,
		-0.066170, 0.970892, -0.230197,
		0.600886, 0.222952, 0.767612,
		1.069822, 0.758002, 0.387731>
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
