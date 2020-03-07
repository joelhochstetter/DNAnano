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
	<1.454315, 3.674857, 0.960011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.157394, 3.406832, 0.960489>,  <0.979242, 3.246017, 0.960776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.157394, 3.406832, 0.960489>,  <1.454315, 3.674857, 0.960011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.157394, 3.406832, 0.960489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651092, -0.721704, -0.234994,
		0.158323, -0.173659, 0.971996,
		-0.742302, -0.670064, 0.001195,
		0.934704, 3.205812, 0.960848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.498795, 3.065096, 1.432884>,  <1.454315, 3.674857, 0.960011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.498795, 3.065096, 1.432884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.313625, 2.993872, 1.085552>,  <1.202524, 2.951137, 0.877153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.313625, 2.993872, 1.085552>,  <1.498795, 3.065096, 1.432884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.313625, 2.993872, 1.085552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665948, -0.716376, -0.208130,
		-0.584991, -0.674611, 0.450207,
		-0.462924, -0.178061, -0.868329,
		1.174748, 2.940454, 0.825053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.485396, 2.415540, 1.371867>,  <1.498795, 3.065096, 1.432884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.485396, 2.415540, 1.371867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.450497, 2.565905, 1.002851>,  <1.429557, 2.656124, 0.781442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.450497, 2.565905, 1.002851>,  <1.485396, 2.415540, 1.371867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.450497, 2.565905, 1.002851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.755028, -0.579168, -0.307404,
		-0.649862, -0.723363, -0.233294,
		-0.087248, 0.375913, -0.922538,
		1.424322, 2.678679, 0.726090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.854311, 2.232342, 2.042945>,  <1.485396, 2.415540, 1.371867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.854311, 2.232342, 2.042945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.923443, 2.097754, 2.413224>,  <1.964922, 2.017000, 2.635392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.923443, 2.097754, 2.413224>,  <1.854311, 2.232342, 2.042945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.923443, 2.097754, 2.413224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080208, -0.931911, -0.353706,
		0.981681, 0.135379, -0.134074,
		0.172830, -0.336473, 0.925698,
		1.975292, 1.996812, 2.690933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.423567, 1.707337, 2.077941>,  <1.854311, 2.232342, 2.042945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.423567, 1.707337, 2.077941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.164654, 1.649693, 2.377342>,  <2.009306, 1.615106, 2.556983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.164654, 1.649693, 2.377342>,  <2.423567, 1.707337, 2.077941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.164654, 1.649693, 2.377342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296262, -0.857198, -0.421237,
		0.702321, -0.494412, 0.512154,
		-0.647282, -0.144112, 0.748504,
		1.970469, 1.606459, 2.601893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.588379, 1.056146, 2.282347>,  <2.423567, 1.707337, 2.077941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.588379, 1.056146, 2.282347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.225815, 1.116541, 2.440145>,  <2.008276, 1.152778, 2.534823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.225815, 1.116541, 2.440145>,  <2.588379, 1.056146, 2.282347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.225815, 1.116541, 2.440145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236102, -0.955514, -0.176771,
		0.350253, -0.253368, 0.901736,
		-0.906409, 0.150987, 0.394493,
		1.953892, 1.161837, 2.558492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.406821, 0.413305, 2.636128>,  <2.588379, 1.056146, 2.282347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.406821, 0.413305, 2.636128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.060337, 0.605196, 2.580209>,  <1.852447, 0.720331, 2.546657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.060337, 0.605196, 2.580209>,  <2.406821, 0.413305, 2.636128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.060337, 0.605196, 2.580209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415405, -0.846845, -0.332102,
		-0.277705, -0.229598, 0.932826,
		-0.866209, 0.479727, -0.139797,
		1.800474, 0.749114, 2.538270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.859578, -0.026759, 2.968323>,  <2.406821, 0.413305, 2.636128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.859578, -0.026759, 2.968323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.715290, 0.205729, 2.676552>,  <1.628717, 0.345221, 2.501489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.715290, 0.205729, 2.676552>,  <1.859578, -0.026759, 2.968323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.715290, 0.205729, 2.676552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519098, -0.774867, -0.360720,
		-0.774867, 0.248526, 0.581220,
		0.360720, -0.581220, 0.729428,
		1.607074, 0.380094, 2.457723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<1.010855, -0.444851, 1.389107> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.807396, -0.115025, 1.488197>,  <0.685321, 0.082871, 1.547652>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.807396, -0.115025, 1.488197>,  <1.010855, -0.444851, 1.389107>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.807396, -0.115025, 1.488197> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.839872, 0.411883, 0.353507,
		0.189456, 0.387869, -0.902033,
		-0.508647, 0.824567, 0.247727,
		0.654802, 0.132345, 1.562515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.374574, 0.165121, 1.079232>,  <1.010855, -0.444851, 1.389107>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.374574, 0.165121, 1.079232> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.177071, 0.218495, 1.422953>,  <1.058569, 0.250520, 1.629185>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.177071, 0.218495, 1.422953>,  <1.374574, 0.165121, 1.079232>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.177071, 0.218495, 1.422953> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.773650, 0.518614, 0.364011,
		-0.397074, 0.844532, -0.359302,
		-0.493758, 0.133435, 0.859301,
		1.028943, 0.258526, 1.680743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.657270, 0.894476, 1.303955>,  <1.374574, 0.165121, 1.079232>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.657270, 0.894476, 1.303955> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.411484, 0.717424, 1.565187>,  <1.264012, 0.611194, 1.721927>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.411484, 0.717424, 1.565187>,  <1.657270, 0.894476, 1.303955>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.411484, 0.717424, 1.565187> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367959, 0.571461, 0.733512,
		-0.697882, 0.691023, -0.188274,
		-0.614465, -0.442628, 0.653080,
		1.227144, 0.584636, 1.761111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.102512, 1.358754, 1.644289>,  <1.657270, 0.894476, 1.303955>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.102512, 1.358754, 1.644289> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.222054, 1.054314, 1.874563>,  <1.293779, 0.871650, 2.012727>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.222054, 1.054314, 1.874563>,  <1.102512, 1.358754, 1.644289>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.222054, 1.054314, 1.874563> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262020, 0.645513, 0.717397,
		-0.917623, -0.063556, 0.392338,
		0.298854, -0.761100, 0.575684,
		1.311710, 0.825984, 2.047268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.734331, 1.434800, 2.306422>,  <1.102512, 1.358754, 1.644289>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.734331, 1.434800, 2.306422> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.055763, 1.203123, 2.361258>,  <1.248623, 1.064117, 2.394159>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.055763, 1.203123, 2.361258>,  <0.734331, 1.434800, 2.306422>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.055763, 1.203123, 2.361258> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373685, 0.670226, 0.641215,
		-0.463269, -0.464039, 0.755016,
		0.803580, -0.579193, 0.137090,
		1.296837, 1.029365, 2.402385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.781753, 1.388346, 3.012345>,  <0.734331, 1.434800, 2.306422>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.781753, 1.388346, 3.012345> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.145462, 1.313833, 2.863472>,  <1.363688, 1.269125, 2.774148>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.145462, 1.313833, 2.863472>,  <0.781753, 1.388346, 3.012345>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.145462, 1.313833, 2.863472> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399451, 0.641722, 0.654700,
		0.116878, -0.743970, 0.657912,
		0.909274, -0.186283, -0.372183,
		1.418244, 1.257949, 2.751817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.227269, 1.205270, 3.586307>,  <0.781753, 1.388346, 3.012345>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.227269, 1.205270, 3.586307> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.453201, 1.329614, 3.280540>,  <1.588760, 1.404220, 3.097080>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.453201, 1.329614, 3.280540>,  <1.227269, 1.205270, 3.586307>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.453201, 1.329614, 3.280540> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336612, 0.758969, 0.557367,
		0.753422, -0.572135, 0.324063,
		0.564843, 0.310849, -0.764411,
		1.622650, 1.422872, 3.051215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.721279, 1.553003, 3.904036>,  <1.227269, 1.205270, 3.586307>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.721279, 1.553003, 3.904036> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.778923, 1.671076, 3.526232>,  <1.813510, 1.741920, 3.299549>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.778923, 1.671076, 3.526232>,  <1.721279, 1.553003, 3.904036>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.778923, 1.671076, 3.526232> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411211, 0.850298, 0.328480,
		0.900076, -0.435731, 0.001155,
		0.144111, 0.295183, -0.944510,
		1.822156, 1.759631, 3.242879>
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
