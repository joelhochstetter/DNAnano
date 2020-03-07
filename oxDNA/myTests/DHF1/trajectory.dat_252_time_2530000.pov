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
	<2.920310, 0.997680, 5.464383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.069511, 0.787186, 5.158718>,  <3.159032, 0.660889, 4.975319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.069511, 0.787186, 5.158718>,  <2.920310, 0.997680, 5.464383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.069511, 0.787186, 5.158718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.816547, 0.577278, 0.001034,
		0.440589, -0.624360, 0.645024,
		0.373004, -0.526237, -0.764161,
		3.181413, 0.629315, 4.929470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.674983, 0.861838, 5.610402>,  <2.920310, 0.997680, 5.464383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.674983, 0.861838, 5.610402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.573723, 0.880798, 5.223896>,  <3.512967, 0.892175, 4.991992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.573723, 0.880798, 5.223896>,  <3.674983, 0.861838, 5.610402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.573723, 0.880798, 5.223896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695828, 0.702832, -0.147820,
		0.672115, -0.709775, -0.210905,
		-0.253150, 0.047402, -0.966265,
		3.497778, 0.895019, 4.934017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.180846, 0.640316, 5.032359>,  <3.674983, 0.861838, 5.610402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.180846, 0.640316, 5.032359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.958763, 0.945633, 4.900219>,  <3.825513, 1.128823, 4.820935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.958763, 0.945633, 4.900219>,  <4.180846, 0.640316, 5.032359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.958763, 0.945633, 4.900219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.798990, 0.599802, 0.043043,
		0.230998, -0.240048, -0.942877,
		-0.555207, 0.763292, -0.330349,
		3.792201, 1.174621, 4.801114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.484936, 0.998079, 4.401141>,  <4.180846, 0.640316, 5.032359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.484936, 0.998079, 4.401141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.250774, 1.250351, 4.604923>,  <4.110278, 1.401714, 4.727192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.250774, 1.250351, 4.604923>,  <4.484936, 0.998079, 4.401141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.250774, 1.250351, 4.604923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.758706, 0.647656, 0.070046,
		-0.285776, 0.427532, -0.857641,
		-0.585404, 0.630680, 0.509455,
		4.075153, 1.439555, 4.757760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.411470, 1.684998, 4.116155>,  <4.484936, 0.998079, 4.401141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.411470, 1.684998, 4.116155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.368244, 1.739532, 4.510056>,  <4.342308, 1.772253, 4.746396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.368244, 1.739532, 4.510056>,  <4.411470, 1.684998, 4.116155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.368244, 1.739532, 4.510056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731876, 0.681294, -0.014008,
		-0.672814, 0.719202, -0.173406,
		-0.108066, 0.136336, 0.984751,
		4.335824, 1.780433, 4.805481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.507656, 2.409904, 4.213775>,  <4.411470, 1.684998, 4.116155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.507656, 2.409904, 4.213775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.554775, 2.254272, 4.579231>,  <4.583047, 2.160893, 4.798505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.554775, 2.254272, 4.579231>,  <4.507656, 2.409904, 4.213775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.554775, 2.254272, 4.579231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.735373, 0.652473, 0.183046,
		-0.667346, 0.650304, 0.362979,
		0.117798, -0.389080, 0.913641,
		4.590115, 2.137548, 4.853323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.427694, 2.950706, 4.743204>,  <4.507656, 2.409904, 4.213775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.427694, 2.950706, 4.743204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.670338, 2.666992, 4.886837>,  <4.815924, 2.496764, 4.973017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.670338, 2.666992, 4.886837>,  <4.427694, 2.950706, 4.743204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.670338, 2.666992, 4.886837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620729, 0.704772, 0.343498,
		-0.496709, 0.014524, 0.867796,
		0.606610, -0.709285, 0.359082,
		4.852321, 2.454207, 4.994562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.602240, 3.219959, 5.451972>,  <4.427694, 2.950706, 4.743204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.602240, 3.219959, 5.451972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.873310, 2.939774, 5.362434>,  <5.035953, 2.771662, 5.308712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.873310, 2.939774, 5.362434>,  <4.602240, 3.219959, 5.451972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.873310, 2.939774, 5.362434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.735094, 0.637101, 0.231818,
		-0.019768, -0.321645, 0.946654,
		0.677677, -0.700462, -0.223845,
		5.076613, 2.729635, 5.295281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<0.707549, 4.016651, 0.315743> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.062044, 3.851746, 0.400238>,  <1.274741, 3.752803, 0.450935>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.062044, 3.851746, 0.400238>,  <0.707549, 4.016651, 0.315743>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.062044, 3.851746, 0.400238> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405434, -0.910895, -0.076770,
		0.224065, -0.017606, -0.974415,
		0.886238, -0.412263, 0.211238,
		1.327916, 3.728067, 0.463609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.813713, 3.475025, -0.196857>,  <0.707549, 4.016651, 0.315743>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.813713, 3.475025, -0.196857> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.037727, 3.368729, 0.117020>,  <1.172136, 3.304951, 0.305346>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.037727, 3.368729, 0.117020>,  <0.813713, 3.475025, -0.196857>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.037727, 3.368729, 0.117020> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350418, -0.934244, -0.066295,
		0.750711, -0.237842, -0.616332,
		0.560036, -0.265742, 0.784691,
		1.205738, 3.289006, 0.352427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.397855, 2.961398, -0.271321>,  <0.813713, 3.475025, -0.196857>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.397855, 2.961398, -0.271321> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.196987, 2.904312, 0.069843>,  <1.076466, 2.870060, 0.274542>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.196987, 2.904312, 0.069843>,  <1.397855, 2.961398, -0.271321>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.196987, 2.904312, 0.069843> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274817, -0.908822, -0.313875,
		0.819939, -0.392013, 0.417163,
		-0.502171, -0.142716, 0.852911,
		1.046336, 2.861497, 0.325717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.490916, 2.256841, 0.115245>,  <1.397855, 2.961398, -0.271321>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.490916, 2.256841, 0.115245> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.141228, 2.400589, 0.245838>,  <0.931415, 2.486838, 0.324194>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.141228, 2.400589, 0.245838>,  <1.490916, 2.256841, 0.115245>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.141228, 2.400589, 0.245838> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430260, -0.884987, -0.177972,
		0.224975, -0.296059, 0.928297,
		-0.874221, 0.359369, 0.326482,
		0.878961, 2.508400, 0.343783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.964145, 1.785031, 0.121674>,  <1.490916, 2.256841, 0.115245>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.964145, 1.785031, 0.121674> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.706148, 2.074097, 0.221066>,  <0.551350, 2.247536, 0.280700>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.706148, 2.074097, 0.221066>,  <0.964145, 1.785031, 0.121674>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.706148, 2.074097, 0.221066> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.750531, -0.660243, -0.027985,
		0.143833, -0.204541, 0.968233,
		-0.644993, 0.722664, 0.248479,
		0.512650, 2.290896, 0.295609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.433158, 1.409927, 0.545329>,  <0.964145, 1.785031, 0.121674>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.433158, 1.409927, 0.545329> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.265774, 1.745148, 0.405296>,  <0.165343, 1.946280, 0.321276>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.265774, 1.745148, 0.405296>,  <0.433158, 1.409927, 0.545329>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.265774, 1.745148, 0.405296> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.890142, -0.454987, -0.025177,
		-0.180382, 0.301087, 0.936380,
		-0.418461, 0.838053, -0.350082,
		0.140236, 1.996564, 0.300271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.149935, 1.574424, 0.956128>,  <0.433158, 1.409927, 0.545329>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.149935, 1.574424, 0.956128> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.206104, 1.738831, 0.595829>,  <-0.239806, 1.837474, 0.379649>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.206104, 1.738831, 0.595829>,  <-0.149935, 1.574424, 0.956128>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.206104, 1.738831, 0.595829> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.953040, -0.302666, 0.010468,
		-0.268323, 0.859918, 0.434216,
		-0.140424, 0.411016, -0.900748,
		-0.248231, 1.862135, 0.325605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.811573, 1.827711, 1.057405>,  <-0.149935, 1.574424, 0.956128>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.811573, 1.827711, 1.057405> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.737551, 1.822449, 0.664349>,  <-0.693138, 1.819292, 0.428515>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.737551, 1.822449, 0.664349>,  <-0.811573, 1.827711, 1.057405>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.737551, 1.822449, 0.664349> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.943493, -0.282095, -0.173906,
		-0.274910, 0.959297, -0.064614,
		0.185055, -0.013154, -0.982640,
		-0.682034, 1.818502, 0.369557>
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
