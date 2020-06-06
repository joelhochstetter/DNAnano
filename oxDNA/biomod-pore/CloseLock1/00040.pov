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
	<24.535622, 35.044960, 34.460777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.468206, 35.043228, 34.855053>,  <24.427757, 35.042191, 35.091618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.468206, 35.043228, 34.855053>,  <24.535622, 35.044960, 34.460777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.468206, 35.043228, 34.855053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.984904, 0.039312, 0.168578,
		-0.039479, 0.999218, -0.002363,
		-0.168539, -0.004328, 0.985685,
		24.417645, 35.041931, 35.150757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.844183, 35.668125, 34.766418>,  <24.535622, 35.044960, 34.460777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.844183, 35.668125, 34.766418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.834097, 35.330669, 34.980946>,  <24.828045, 35.128197, 35.109661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.834097, 35.330669, 34.980946>,  <24.844183, 35.668125, 34.766418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.834097, 35.330669, 34.980946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.964280, 0.120984, 0.235642,
		-0.263683, 0.523102, 0.810454,
		-0.025213, -0.843639, 0.536318,
		24.826532, 35.077576, 35.141842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.972683, 35.610390, 35.520351>,  <24.844183, 35.668125, 34.766418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.972683, 35.610390, 35.520351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.107183, 35.295811, 35.313107>,  <25.187883, 35.107063, 35.188759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.107183, 35.295811, 35.313107>,  <24.972683, 35.610390, 35.520351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.107183, 35.295811, 35.313107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.937196, 0.225268, 0.266302,
		-0.092719, -0.575114, 0.812802,
		0.336252, -0.786447, -0.518108,
		25.208059, 35.059875, 35.157673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.357624, 34.975830, 35.941296>,  <24.972683, 35.610390, 35.520351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.357624, 34.975830, 35.941296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.508383, 35.015408, 35.572914>,  <25.598839, 35.039154, 35.351887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.508383, 35.015408, 35.572914>,  <25.357624, 34.975830, 35.941296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.508383, 35.015408, 35.572914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.886431, 0.249879, 0.389615,
		0.268676, -0.963209, 0.006475,
		0.376899, 0.098940, -0.920955,
		25.621452, 35.045090, 35.296627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.041903, 34.531876, 35.792316>,  <25.357624, 34.975830, 35.941296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.041903, 34.531876, 35.792316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.018192, 34.881668, 35.599751>,  <26.003965, 35.091545, 35.484211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.018192, 34.881668, 35.599751>,  <26.041903, 34.531876, 35.792316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.018192, 34.881668, 35.599751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.887793, 0.266680, 0.375107,
		0.456410, -0.405163, -0.792170,
		-0.059277, 0.874485, -0.481417,
		26.000410, 35.144012, 35.455326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.753628, 34.250851, 35.603966>,  <26.041903, 34.531876, 35.792316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.753628, 34.250851, 35.603966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.944433, 33.945698, 35.429398>,  <27.058916, 33.762604, 35.324657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.944433, 33.945698, 35.429398>,  <26.753628, 34.250851, 35.603966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.944433, 33.945698, 35.429398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174869, 0.404252, -0.897776,
		0.861324, 0.504567, 0.059428,
		0.477012, -0.762884, -0.436425,
		27.087538, 33.716831, 35.298470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.184967, 34.621449, 35.178715>,  <26.753628, 34.250851, 35.603966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.184967, 34.621449, 35.178715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.123392, 34.249775, 35.044300>,  <27.086447, 34.026772, 34.963650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.123392, 34.249775, 35.044300>,  <27.184967, 34.621449, 35.178715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.123392, 34.249775, 35.044300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207867, 0.362936, -0.908333,
		0.965968, -0.069974, -0.249016,
		-0.153937, -0.929183, -0.336039,
		27.077211, 33.971020, 34.943489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.614075, 34.491787, 34.619884>,  <27.184967, 34.621449, 35.178715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.614075, 34.491787, 34.619884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.329062, 34.215702, 34.569443>,  <27.158052, 34.050053, 34.539177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.329062, 34.215702, 34.569443>,  <27.614075, 34.491787, 34.619884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.329062, 34.215702, 34.569443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254978, 0.422159, -0.869924,
		0.653668, -0.587698, -0.476791,
		-0.712534, -0.690212, -0.126101,
		27.115301, 34.008636, 34.531612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.540693, 34.496113, 33.891338>,  <27.614075, 34.491787, 34.619884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.540693, 34.496113, 33.891338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.244497, 34.250835, 34.001369>,  <27.066780, 34.103668, 34.067387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.244497, 34.250835, 34.001369>,  <27.540693, 34.496113, 33.891338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.244497, 34.250835, 34.001369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434576, 0.124659, -0.891966,
		0.512659, -0.780033, -0.358789,
		-0.740489, -0.613196, 0.275076,
		27.022350, 34.066875, 34.083893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.437243, 33.976562, 33.332085>,  <27.540693, 34.496113, 33.891338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.437243, 33.976562, 33.332085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.102888, 34.040939, 33.541996>,  <26.902275, 34.079567, 33.667942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.102888, 34.040939, 33.541996>,  <27.437243, 33.976562, 33.332085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.102888, 34.040939, 33.541996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478826, 0.253623, -0.840477,
		-0.268366, -0.953820, -0.134936,
		-0.835886, 0.160945, 0.524777,
		26.852123, 34.089222, 33.699429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.854887, 33.641094, 33.000790>,  <27.437243, 33.976562, 33.332085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.854887, 33.641094, 33.000790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.728527, 33.949074, 33.222557>,  <26.652712, 34.133862, 33.355618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.728527, 33.949074, 33.222557>,  <26.854887, 33.641094, 33.000790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.728527, 33.949074, 33.222557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384325, 0.430415, -0.816724,
		-0.867469, -0.471079, 0.159944,
		-0.315899, 0.769953, 0.554419,
		26.633757, 34.180061, 33.388882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.224041, 33.734875, 32.766445>,  <26.854887, 33.641094, 33.000790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.224041, 33.734875, 32.766445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.262005, 34.062695, 32.992485>,  <26.284782, 34.259384, 33.128109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.262005, 34.062695, 32.992485>,  <26.224041, 33.734875, 32.766445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.262005, 34.062695, 32.992485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504855, 0.528871, -0.682215,
		-0.857971, -0.220545, 0.463946,
		0.094909, 0.819546, 0.565099,
		26.290478, 34.308559, 33.162014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.589241, 33.906052, 32.886524>,  <26.224041, 33.734875, 32.766445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.589241, 33.906052, 32.886524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.817289, 34.231796, 32.929943>,  <25.954119, 34.427242, 32.955994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.817289, 34.231796, 32.929943>,  <25.589241, 33.906052, 32.886524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.817289, 34.231796, 32.929943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596638, 0.501235, -0.626727,
		-0.564786, 0.292551, 0.771642,
		0.570123, 0.814357, 0.108543,
		25.988327, 34.476105, 32.962505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.125128, 34.426308, 32.675583>,  <25.589241, 33.906052, 32.886524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.125128, 34.426308, 32.675583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.473007, 34.622231, 32.699959>,  <25.681734, 34.739784, 32.714584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.473007, 34.622231, 32.699959>,  <25.125128, 34.426308, 32.675583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.473007, 34.622231, 32.699959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295670, 0.615852, -0.730278,
		-0.395227, 0.617103, 0.680427,
		0.869698, 0.489807, 0.060943,
		25.733917, 34.769173, 32.718243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.066645, 35.222134, 32.877396>,  <25.125128, 34.426308, 32.675583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.066645, 35.222134, 32.877396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.410736, 35.198078, 32.674854>,  <25.617191, 35.183647, 32.553329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.410736, 35.198078, 32.674854>,  <25.066645, 35.222134, 32.877396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.410736, 35.198078, 32.674854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360261, 0.631082, -0.686985,
		0.360861, 0.773382, 0.521210,
		0.860227, -0.060135, -0.506352,
		25.668804, 35.180038, 32.522949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.102650, 35.859669, 32.492908>,  <25.066645, 35.222134, 32.877396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.102650, 35.859669, 32.492908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.364473, 35.624943, 32.302242>,  <25.521566, 35.484108, 32.187843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.364473, 35.624943, 32.302242>,  <25.102650, 35.859669, 32.492908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.364473, 35.624943, 32.302242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110472, 0.549488, -0.828166,
		0.747898, 0.594740, 0.294845,
		0.654557, -0.586811, -0.476663,
		25.560841, 35.448898, 32.159245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.390493, 36.372578, 31.955250>,  <25.102650, 35.859669, 32.492908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.390493, 36.372578, 31.955250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.483112, 35.996906, 31.853798>,  <25.538683, 35.771503, 31.792927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.483112, 35.996906, 31.853798>,  <25.390493, 36.372578, 31.955250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.483112, 35.996906, 31.853798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085616, 0.240031, -0.966982,
		0.969049, 0.245615, -0.024831,
		0.231545, -0.939180, -0.253630,
		25.552576, 35.715153, 31.777708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.023590, 36.403027, 31.479248>,  <25.390493, 36.372578, 31.955250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.023590, 36.403027, 31.479248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.830727, 36.062496, 31.396528>,  <25.715010, 35.858177, 31.346897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.830727, 36.062496, 31.396528>,  <26.023590, 36.403027, 31.479248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.830727, 36.062496, 31.396528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019483, 0.246410, -0.968970,
		0.875868, -0.463167, -0.135395,
		-0.482157, -0.851327, -0.206799,
		25.686079, 35.807098, 31.334488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.398710, 36.091335, 30.835339>,  <26.023590, 36.403027, 31.479248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.398710, 36.091335, 30.835339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.060192, 35.878605, 30.847622>,  <25.857082, 35.750965, 30.854992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.060192, 35.878605, 30.847622>,  <26.398710, 36.091335, 30.835339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.060192, 35.878605, 30.847622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028752, -0.011963, -0.999515,
		0.531939, -0.846767, -0.005167,
		-0.846294, -0.531830, 0.030709,
		25.806303, 35.719055, 30.856834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.486008, 35.457340, 30.360434>,  <26.398710, 36.091335, 30.835339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.486008, 35.457340, 30.360434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.088108, 35.485271, 30.390373>,  <25.849369, 35.502029, 30.408337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.088108, 35.485271, 30.390373>,  <26.486008, 35.457340, 30.360434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.088108, 35.485271, 30.390373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092779, -0.306125, -0.947460,
		-0.043249, -0.949427, 0.310996,
		-0.994747, 0.069831, 0.074847,
		25.789684, 35.506222, 30.412827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.307493, 35.095291, 29.757345>,  <26.486008, 35.457340, 30.360434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.307493, 35.095291, 29.757345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.973368, 35.283134, 29.871689>,  <25.772892, 35.395840, 29.940294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.973368, 35.283134, 29.871689>,  <26.307493, 35.095291, 29.757345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.973368, 35.283134, 29.871689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307694, 0.031555, -0.950962,
		-0.455603, -0.882309, 0.118139,
		-0.835315, 0.469612, 0.285857,
		25.722773, 35.424019, 29.957445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.695902, 34.810158, 29.359430>,  <26.307493, 35.095291, 29.757345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.695902, 34.810158, 29.359430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.555042, 35.164310, 29.480820>,  <25.470526, 35.376801, 29.553654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.555042, 35.164310, 29.480820>,  <25.695902, 34.810158, 29.359430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.555042, 35.164310, 29.480820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522910, 0.082803, -0.848357,
		-0.776244, -0.457440, 0.433814,
		-0.352151, 0.885377, 0.303475,
		25.449396, 35.429924, 29.571861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.092922, 34.844002, 29.104933>,  <25.695902, 34.810158, 29.359430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.092922, 34.844002, 29.104933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.153404, 35.232933, 29.176172>,  <25.189693, 35.466290, 29.218916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.153404, 35.232933, 29.176172>,  <25.092922, 34.844002, 29.104933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.153404, 35.232933, 29.176172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588304, 0.233307, -0.774252,
		-0.794377, 0.012295, 0.607301,
		0.151206, 0.972325, 0.178100,
		25.198767, 35.524632, 29.229603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.445705, 35.155071, 29.049000>,  <25.092922, 34.844002, 29.104933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.445705, 35.155071, 29.049000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.745396, 35.415936, 29.002783>,  <24.925209, 35.572453, 28.975052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.745396, 35.415936, 29.002783>,  <24.445705, 35.155071, 29.049000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.745396, 35.415936, 29.002783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444024, 0.365143, -0.818238,
		-0.491434, 0.664346, 0.563149,
		0.749223, 0.652161, -0.115542,
		24.970163, 35.611584, 28.968121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.137125, 35.723553, 28.768175>,  <24.445705, 35.155071, 29.049000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.137125, 35.723553, 28.768175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.518896, 35.797283, 28.674290>,  <24.747959, 35.841522, 28.617958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.518896, 35.797283, 28.674290>,  <24.137125, 35.723553, 28.768175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.518896, 35.797283, 28.674290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296675, 0.500648, -0.813226,
		-0.032389, 0.845799, 0.532517,
		0.954429, 0.184324, -0.234712,
		24.805225, 35.852581, 28.603876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.261639, 36.437103, 28.704273>,  <24.137125, 35.723553, 28.768175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.261639, 36.437103, 28.704273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.466417, 36.196743, 28.458727>,  <24.589285, 36.052528, 28.311399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.466417, 36.196743, 28.458727>,  <24.261639, 36.437103, 28.704273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.466417, 36.196743, 28.458727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333169, 0.519782, -0.786654,
		0.791777, 0.607245, 0.065899,
		0.511945, -0.600899, -0.613867,
		24.620001, 36.016472, 28.274567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.687065, 36.820728, 28.219002>,  <24.261639, 36.437103, 28.704273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.687065, 36.820728, 28.219002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.561380, 36.463230, 28.090946>,  <24.485970, 36.248730, 28.014112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.561380, 36.463230, 28.090946>,  <24.687065, 36.820728, 28.219002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.561380, 36.463230, 28.090946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548918, 0.446171, -0.706839,
		0.774571, -0.046368, -0.630785,
		-0.314213, -0.893746, -0.320139,
		24.467117, 36.195107, 27.994905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.378948, 37.435158, 28.387247>,  <24.687065, 36.820728, 28.219002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.378948, 37.435158, 28.387247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.727774, 37.429375, 28.582918>,  <24.937069, 37.425903, 28.700321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.727774, 37.429375, 28.582918>,  <24.378948, 37.435158, 28.387247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.727774, 37.429375, 28.582918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085547, 0.988678, -0.123276,
		-0.481858, 0.149353, 0.863427,
		0.872063, -0.014462, 0.489180,
		24.989393, 37.425037, 28.729671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.539688, 38.048542, 28.677753>,  <24.378948, 37.435158, 28.387247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.539688, 38.048542, 28.677753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.919203, 37.927719, 28.714785>,  <25.146912, 37.855225, 28.737003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.919203, 37.927719, 28.714785>,  <24.539688, 38.048542, 28.677753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.919203, 37.927719, 28.714785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297941, 0.952955, 0.055754,
		-0.105064, -0.025315, 0.994143,
		0.948785, -0.302054, 0.092579,
		25.203838, 37.837101, 28.742558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.046926, 38.310085, 29.204985>,  <24.539688, 38.048542, 28.677753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.046926, 38.310085, 29.204985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.230360, 38.410011, 29.546110>,  <25.340420, 38.469967, 29.750786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.230360, 38.410011, 29.546110>,  <25.046926, 38.310085, 29.204985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.230360, 38.410011, 29.546110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.868518, 0.077125, -0.489621,
		-0.188086, 0.965218, -0.181597,
		0.458585, 0.249811, 0.852815,
		25.367935, 38.484955, 29.801954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.271292, 39.022617, 29.216280>,  <25.046926, 38.310085, 29.204985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.271292, 39.022617, 29.216280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.508844, 38.786079, 29.434498>,  <25.651377, 38.644157, 29.565428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.508844, 38.786079, 29.434498>,  <25.271292, 39.022617, 29.216280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.508844, 38.786079, 29.434498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733125, 0.118440, -0.669701,
		0.331408, 0.797676, 0.503867,
		0.593882, -0.591341, 0.545545,
		25.687010, 38.608677, 29.598162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.995878, 39.313084, 29.192007>,  <25.271292, 39.022617, 29.216280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.995878, 39.313084, 29.192007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.991817, 38.916111, 29.240973>,  <25.989380, 38.677929, 29.270351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.991817, 38.916111, 29.240973>,  <25.995878, 39.313084, 29.192007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.991817, 38.916111, 29.240973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.714824, -0.092806, -0.693118,
		0.699230, 0.080465, 0.710354,
		-0.010154, -0.992428, 0.122411,
		25.988771, 38.618382, 29.277697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.965418, 39.351997, 28.383867>,  <25.995878, 39.313084, 29.192007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.965418, 39.351997, 28.383867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.298903, 39.567516, 28.335506>,  <26.498993, 39.696827, 28.306490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.298903, 39.567516, 28.335506>,  <25.965418, 39.351997, 28.383867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.298903, 39.567516, 28.335506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505365, -0.656248, 0.560309,
		0.222555, -0.528235, -0.819413,
		0.833712, 0.538802, -0.120900,
		26.549017, 39.729156, 28.299236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.500795, 38.967155, 28.150019>,  <25.965418, 39.351997, 28.383867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.500795, 38.967155, 28.150019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.701834, 39.273369, 28.310698>,  <26.822456, 39.457096, 28.407104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.701834, 39.273369, 28.310698>,  <26.500795, 38.967155, 28.150019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.701834, 39.273369, 28.310698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693770, -0.634384, 0.340941,
		0.515830, 0.107330, -0.849941,
		0.502596, 0.765531, 0.401697,
		26.852613, 39.503029, 28.431206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.214382, 39.031147, 27.806400>,  <26.500795, 38.967155, 28.150019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.214382, 39.031147, 27.806400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.177269, 39.156521, 28.184427>,  <27.155001, 39.231747, 28.411243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.177269, 39.156521, 28.184427>,  <27.214382, 39.031147, 27.806400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.177269, 39.156521, 28.184427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696557, -0.657798, 0.286548,
		0.711477, 0.684878, -0.157297,
		-0.092781, 0.313439, 0.945065,
		27.149435, 39.250553, 28.467947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.918699, 39.120117, 28.074339>,  <27.214382, 39.031147, 27.806400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.918699, 39.120117, 28.074339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.691458, 39.114536, 28.403475>,  <27.555113, 39.111187, 28.600956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.691458, 39.114536, 28.403475>,  <27.918699, 39.120117, 28.074339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.691458, 39.114536, 28.403475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607436, -0.681688, 0.407827,
		0.555229, 0.731510, 0.395745,
		-0.568104, -0.013952, 0.822838,
		27.521027, 39.110352, 28.650326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.354841, 39.048508, 28.528761>,  <27.918699, 39.120117, 28.074339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.354841, 39.048508, 28.528761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.040474, 38.939053, 28.750553>,  <27.851852, 38.873379, 28.883629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.040474, 38.939053, 28.750553>,  <28.354841, 39.048508, 28.528761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.040474, 38.939053, 28.750553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525258, -0.768595, 0.365193,
		0.326242, 0.578258, 0.747786,
		-0.785920, -0.273639, 0.554482,
		27.804697, 38.856960, 28.916899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.645895, 38.986469, 29.294647>,  <28.354841, 39.048508, 28.528761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.645895, 38.986469, 29.294647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.318655, 38.768833, 29.220160>,  <28.122311, 38.638252, 29.175467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.318655, 38.768833, 29.220160>,  <28.645895, 38.986469, 29.294647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.318655, 38.768833, 29.220160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419704, -0.786273, 0.453456,
		-0.393141, 0.292815, 0.871607,
		-0.818101, -0.544089, -0.186220,
		28.073225, 38.605606, 29.164293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.513229, 38.822575, 29.909527>,  <28.645895, 38.986469, 29.294647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.513229, 38.822575, 29.909527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.323906, 38.561657, 29.672716>,  <28.210312, 38.405106, 29.530630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.323906, 38.561657, 29.672716>,  <28.513229, 38.822575, 29.909527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.323906, 38.561657, 29.672716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347251, -0.755809, 0.555130,
		-0.809565, 0.057167, 0.584240,
		-0.473309, -0.652292, -0.592025,
		28.181913, 38.365971, 29.495108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.397930, 38.224094, 30.352940>,  <28.513229, 38.822575, 29.909527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.397930, 38.224094, 30.352940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.343031, 38.072773, 29.986759>,  <28.310091, 37.981979, 29.767052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.343031, 38.072773, 29.986759>,  <28.397930, 38.224094, 30.352940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.343031, 38.072773, 29.986759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028135, -0.922334, 0.385367,
		-0.990137, 0.078647, 0.115945,
		-0.137248, -0.378304, -0.915450,
		28.301857, 37.959282, 29.712124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.916256, 37.595966, 30.381477>,  <28.397930, 38.224094, 30.352940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.916256, 37.595966, 30.381477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.078251, 37.532372, 30.021320>,  <28.175447, 37.494213, 29.805225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.078251, 37.532372, 30.021320>,  <27.916256, 37.595966, 30.381477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.078251, 37.532372, 30.021320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101155, -0.970929, 0.216945,
		-0.908710, -0.178939, -0.377131,
		0.404987, -0.158992, -0.900392,
		28.199747, 37.484673, 29.751204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.478493, 37.047493, 30.010139>,  <27.916256, 37.595966, 30.381477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.478493, 37.047493, 30.010139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.842211, 37.053795, 29.843796>,  <28.060442, 37.057575, 29.743990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.842211, 37.053795, 29.843796>,  <27.478493, 37.047493, 30.010139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.842211, 37.053795, 29.843796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148300, -0.945950, 0.288418,
		-0.388836, -0.323928, -0.862483,
		0.909293, 0.015759, -0.415858,
		28.114998, 37.058521, 29.719038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.469635, 36.386688, 29.711956>,  <27.478493, 37.047493, 30.010139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.469635, 36.386688, 29.711956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.856123, 36.482914, 29.748949>,  <28.088015, 36.540649, 29.771145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.856123, 36.482914, 29.748949>,  <27.469635, 36.386688, 29.711956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.856123, 36.482914, 29.748949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187632, -0.902589, 0.387462,
		0.176682, -0.357020, -0.917235,
		0.966218, 0.240560, 0.092483,
		28.145988, 36.555080, 29.776693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.730423, 35.834476, 29.621166>,  <27.469635, 36.386688, 29.711956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.730423, 35.834476, 29.621166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.064089, 35.981247, 29.785866>,  <28.264288, 36.069309, 29.884686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.064089, 35.981247, 29.785866>,  <27.730423, 35.834476, 29.621166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.064089, 35.981247, 29.785866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178338, -0.885923, 0.428178,
		0.521884, -0.283741, -0.804442,
		0.834166, 0.366922, 0.411747,
		28.314339, 36.091324, 29.909389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.269253, 35.265465, 29.451225>,  <27.730423, 35.834476, 29.621166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.269253, 35.265465, 29.451225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.350496, 35.501621, 29.763681>,  <28.399242, 35.643314, 29.951155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.350496, 35.501621, 29.763681>,  <28.269253, 35.265465, 29.451225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.350496, 35.501621, 29.763681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031037, -0.793487, 0.607796,
		0.978665, -0.147692, -0.142838,
		0.203107, 0.590395, 0.781141,
		28.411428, 35.678741, 29.998024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.791780, 35.023502, 29.730066>,  <28.269253, 35.265465, 29.451225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.791780, 35.023502, 29.730066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.624172, 35.235344, 30.025074>,  <28.523607, 35.362450, 30.202080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.624172, 35.235344, 30.025074>,  <28.791780, 35.023502, 29.730066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.624172, 35.235344, 30.025074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071919, -0.829077, 0.554490,
		0.905123, 0.179302, 0.385491,
		-0.419023, 0.529606, 0.737521,
		28.498465, 35.394226, 30.246330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.187904, 34.923035, 30.329601>,  <28.791780, 35.023502, 29.730066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.187904, 34.923035, 30.329601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.869186, 35.101021, 30.493126>,  <28.677956, 35.207813, 30.591240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.869186, 35.101021, 30.493126>,  <29.187904, 34.923035, 30.329601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.869186, 35.101021, 30.493126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025097, -0.700344, 0.713364,
		0.603729, 0.558145, 0.569197,
		-0.796794, 0.444964, 0.408810,
		28.630148, 35.234509, 30.615768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.327021, 35.063137, 31.081652>,  <29.187904, 34.923035, 30.329601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.327021, 35.063137, 31.081652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.928938, 35.077599, 31.045303>,  <28.690088, 35.086273, 31.023495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.928938, 35.077599, 31.045303>,  <29.327021, 35.063137, 31.081652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.928938, 35.077599, 31.045303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091379, -0.674787, 0.732334,
		-0.034842, 0.737127, 0.674855,
		-0.995206, 0.036152, -0.090869,
		28.630377, 35.088444, 31.018042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.063425, 35.241493, 31.788950>,  <29.327021, 35.063137, 31.081652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.063425, 35.241493, 31.788950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.764616, 35.065628, 31.589487>,  <28.585331, 34.960110, 31.469809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.764616, 35.065628, 31.589487>,  <29.063425, 35.241493, 31.788950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.764616, 35.065628, 31.589487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241400, -0.519494, 0.819666,
		-0.619423, 0.732684, 0.281940,
		-0.747022, -0.439659, -0.498656,
		28.540510, 34.933731, 31.439890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.536198, 35.095268, 32.194275>,  <29.063425, 35.241493, 31.788950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.536198, 35.095268, 32.194275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.465294, 34.841671, 31.893177>,  <28.422750, 34.689514, 31.712517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.465294, 34.841671, 31.893177>,  <28.536198, 35.095268, 32.194275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.465294, 34.841671, 31.893177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121044, -0.745010, 0.655979,
		-0.976692, 0.207395, 0.055320,
		-0.177261, -0.633993, -0.752749,
		28.412115, 34.651474, 31.667353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.811850, 34.848377, 32.154770>,  <28.536198, 35.095268, 32.194275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.811850, 34.848377, 32.154770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.052475, 34.579857, 31.981573>,  <28.196850, 34.418747, 31.877655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.052475, 34.579857, 31.981573>,  <27.811850, 34.848377, 32.154770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.052475, 34.579857, 31.981573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157030, -0.630835, 0.759861,
		-0.783240, -0.389111, -0.484900,
		0.601562, -0.671298, -0.432993,
		28.232944, 34.378468, 31.851675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.645823, 34.275860, 32.425003>,  <27.811850, 34.848377, 32.154770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.645823, 34.275860, 32.425003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.969944, 34.123146, 32.247173>,  <28.164417, 34.031517, 32.140476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.969944, 34.123146, 32.247173>,  <27.645823, 34.275860, 32.425003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.969944, 34.123146, 32.247173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017143, -0.742885, 0.669200,
		-0.585758, -0.549878, -0.595418,
		0.810305, -0.381781, -0.444577,
		28.213036, 34.008610, 32.113800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.500423, 33.534229, 32.450153>,  <27.645823, 34.275860, 32.425003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.500423, 33.534229, 32.450153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.893011, 33.564411, 32.379700>,  <28.128565, 33.582520, 32.337429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.893011, 33.564411, 32.379700>,  <27.500423, 33.534229, 32.450153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.893011, 33.564411, 32.379700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188552, -0.543998, 0.817627,
		-0.034124, -0.835687, -0.548145,
		0.981470, 0.075453, -0.176134,
		28.187452, 33.587048, 32.326859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.800188, 32.810932, 32.393730>,  <27.500423, 33.534229, 32.450153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.800188, 32.810932, 32.393730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.115547, 33.041191, 32.480503>,  <28.304762, 33.179348, 32.532566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.115547, 33.041191, 32.480503>,  <27.800188, 32.810932, 32.393730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.115547, 33.041191, 32.480503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306533, -0.673360, 0.672774,
		0.533355, -0.463916, -0.707329,
		0.788397, 0.575647, 0.216934,
		28.352066, 33.213886, 32.545582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.377558, 32.356663, 32.423260>,  <27.800188, 32.810932, 32.393730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.377558, 32.356663, 32.423260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.493698, 32.681824, 32.625206>,  <28.563381, 32.876919, 32.746376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.493698, 32.681824, 32.625206>,  <28.377558, 32.356663, 32.423260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.493698, 32.681824, 32.625206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187953, -0.565767, 0.802858,
		0.938281, -0.138218, -0.317057,
		0.290350, 0.812898, 0.504869,
		28.580803, 32.925694, 32.776669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.133661, 32.221016, 32.611584>,  <28.377558, 32.356663, 32.423260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.133661, 32.221016, 32.611584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.965748, 32.486485, 32.859238>,  <28.865000, 32.645767, 33.007828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.965748, 32.486485, 32.859238>,  <29.133661, 32.221016, 32.611584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.965748, 32.486485, 32.859238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498991, -0.401050, 0.768224,
		0.758150, 0.631427, -0.162812,
		-0.419782, 0.663671, 0.619132,
		28.839813, 32.685585, 33.044979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.681593, 32.432442, 33.118427>,  <29.133661, 32.221016, 32.611584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.681593, 32.432442, 33.118427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.331802, 32.549362, 33.273270>,  <29.121927, 32.619514, 33.366177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.331802, 32.549362, 33.273270>,  <29.681593, 32.432442, 33.118427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.331802, 32.549362, 33.273270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335823, -0.211043, 0.917978,
		0.350020, 0.932750, 0.086391,
		-0.874476, 0.292299, 0.387108,
		29.069460, 32.637051, 33.389400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.835468, 32.974583, 33.647995>,  <29.681593, 32.432442, 33.118427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.835468, 32.974583, 33.647995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.485840, 32.790695, 33.710796>,  <29.276062, 32.680363, 33.748478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.485840, 32.790695, 33.710796>,  <29.835468, 32.974583, 33.647995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.485840, 32.790695, 33.710796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333983, -0.333976, 0.881428,
		-0.352776, 0.822870, 0.445459,
		-0.874073, -0.459723, 0.157006,
		29.223618, 32.652779, 33.757896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.537348, 33.070942, 33.654812>,  <29.835468, 32.974583, 33.647995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.537348, 33.070942, 33.654812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.859240, 33.282261, 33.546509>,  <31.052374, 33.409054, 33.481525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.859240, 33.282261, 33.546509>,  <30.537348, 33.070942, 33.654812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.859240, 33.282261, 33.546509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016698, 0.435775, 0.899901,
		0.593411, -0.728696, 0.341858,
		0.804727, 0.528302, -0.270761,
		31.100658, 33.440750, 33.465279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.140085, 32.916386, 34.014992>,  <30.537348, 33.070942, 33.654812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.140085, 32.916386, 34.014992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.119169, 33.303974, 33.918362>,  <31.106619, 33.536526, 33.860386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.119169, 33.303974, 33.918362>,  <31.140085, 32.916386, 34.014992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.119169, 33.303974, 33.918362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194231, 0.247153, 0.949310,
		0.979561, 0.002719, -0.201128,
		-0.052291, 0.968973, -0.241573,
		31.103481, 33.594666, 33.845890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.748453, 33.309132, 34.266102>,  <31.140085, 32.916386, 34.014992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.748453, 33.309132, 34.266102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.412584, 33.524467, 34.237431>,  <31.211063, 33.653671, 34.220230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.412584, 33.524467, 34.237431>,  <31.748453, 33.309132, 34.266102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.412584, 33.524467, 34.237431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017360, 0.158513, 0.987204,
		0.542816, 0.827683, -0.142445,
		-0.839672, 0.538344, -0.071675,
		31.160683, 33.685970, 34.215927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.907063, 33.949242, 34.438908>,  <31.748453, 33.309132, 34.266102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.907063, 33.949242, 34.438908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.527517, 33.849747, 34.516666>,  <31.299789, 33.790051, 34.563324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.527517, 33.849747, 34.516666>,  <31.907063, 33.949242, 34.438908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.527517, 33.849747, 34.516666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132045, 0.246626, 0.960073,
		-0.286747, 0.936646, -0.201170,
		-0.948862, -0.248735, 0.194399,
		31.242859, 33.775127, 34.574986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.469627, 34.421833, 34.990879>,  <31.907063, 33.949242, 34.438908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.469627, 34.421833, 34.990879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.319443, 34.052483, 35.022881>,  <31.229332, 33.830872, 35.042084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.319443, 34.052483, 35.022881>,  <31.469627, 34.421833, 34.990879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.319443, 34.052483, 35.022881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021021, 0.094785, 0.995276,
		-0.926599, 0.372007, -0.054998,
		-0.375463, -0.923378, 0.080008,
		31.206804, 33.775471, 35.046883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.822737, 34.400410, 35.346340>,  <31.469627, 34.421833, 34.990879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.822737, 34.400410, 35.346340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.994360, 34.046692, 35.420025>,  <31.097334, 33.834461, 35.464237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.994360, 34.046692, 35.420025>,  <30.822737, 34.400410, 35.346340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.994360, 34.046692, 35.420025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037335, 0.186401, 0.981764,
		-0.902505, -0.428111, 0.046961,
		0.429057, -0.884294, 0.184211,
		31.123077, 33.781403, 35.475288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.502159, 34.261623, 35.979137>,  <30.822737, 34.400410, 35.346340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.502159, 34.261623, 35.979137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.814251, 34.011932, 35.963272>,  <31.001507, 33.862118, 35.953754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.814251, 34.011932, 35.963272>,  <30.502159, 34.261623, 35.979137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.814251, 34.011932, 35.963272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089670, 0.048879, 0.994771,
		-0.619030, -0.779708, 0.094112,
		0.780231, -0.624232, -0.039659,
		31.048321, 33.824661, 35.951374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.446018, 33.886143, 36.593918>,  <30.502159, 34.261623, 35.979137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.446018, 33.886143, 36.593918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.827459, 33.817825, 36.494743>,  <31.056324, 33.776836, 36.435238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.827459, 33.817825, 36.494743>,  <30.446018, 33.886143, 36.593918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.827459, 33.817825, 36.494743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234502, -0.095117, 0.967451,
		-0.188816, -0.980705, -0.050652,
		0.953603, -0.170792, -0.247937,
		31.113541, 33.766586, 36.420361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.571331, 33.241653, 36.967785>,  <30.446018, 33.886143, 36.593918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.571331, 33.241653, 36.967785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.901068, 33.458118, 36.901333>,  <31.098909, 33.587997, 36.861462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.901068, 33.458118, 36.901333>,  <30.571331, 33.241653, 36.967785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.901068, 33.458118, 36.901333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151644, 0.071633, 0.985836,
		0.545401, -0.837859, -0.023014,
		0.824343, 0.541166, -0.166126,
		31.148371, 33.620468, 36.851494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.133286, 32.868305, 37.312374>,  <30.571331, 33.241653, 36.967785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.133286, 32.868305, 37.312374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.210928, 33.255974, 37.251686>,  <31.257513, 33.488575, 37.215271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.210928, 33.255974, 37.251686>,  <31.133286, 32.868305, 37.312374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.210928, 33.255974, 37.251686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202302, 0.111793, 0.972921,
		0.959894, -0.219545, -0.174366,
		0.194108, 0.969176, -0.151724,
		31.269159, 33.546726, 37.206169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.635588, 33.025810, 37.753716>,  <31.133286, 32.868305, 37.312374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.635588, 33.025810, 37.753716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.483723, 33.386612, 37.671501>,  <31.392603, 33.603092, 37.622173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.483723, 33.386612, 37.671501>,  <31.635588, 33.025810, 37.753716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.483723, 33.386612, 37.671501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257530, 0.316435, 0.912988,
		0.888557, 0.293696, -0.352431,
		-0.379663, 0.902004, -0.205535,
		31.369823, 33.657211, 37.609840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.126362, 33.328331, 38.009502>,  <31.635588, 33.025810, 37.753716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.126362, 33.328331, 38.009502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.824677, 33.589188, 37.978836>,  <31.643665, 33.745701, 37.960438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.824677, 33.589188, 37.978836>,  <32.126362, 33.328331, 38.009502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.824677, 33.589188, 37.978836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181275, 0.319005, 0.930256,
		0.631113, 0.687713, -0.358814,
		-0.754212, 0.652140, -0.076663,
		31.598413, 33.784828, 37.955837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.397972, 34.020565, 38.207775>,  <32.126362, 33.328331, 38.009502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.397972, 34.020565, 38.207775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.000130, 34.024235, 38.249096>,  <31.761423, 34.026436, 38.273888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.000130, 34.024235, 38.249096>,  <32.397972, 34.020565, 38.207775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.000130, 34.024235, 38.249096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103549, 0.143883, 0.984162,
		-0.005830, 0.989552, -0.144058,
		-0.994607, 0.009179, 0.103306,
		31.701748, 34.026989, 38.280087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.227177, 34.666054, 38.563274>,  <32.397972, 34.020565, 38.207775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.227177, 34.666054, 38.563274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.923906, 34.411079, 38.618176>,  <31.741943, 34.258095, 38.651115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.923906, 34.411079, 38.618176>,  <32.227177, 34.666054, 38.563274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.923906, 34.411079, 38.618176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017001, 0.229750, 0.973101,
		-0.651825, 0.735451, -0.185029,
		-0.758179, -0.637437, 0.137254,
		31.696453, 34.219849, 38.659351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.790596, 35.100838, 38.946548>,  <32.227177, 34.666054, 38.563274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.790596, 35.100838, 38.946548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.698303, 34.716846, 39.010059>,  <31.642927, 34.486454, 39.048164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.698303, 34.716846, 39.010059>,  <31.790596, 35.100838, 38.946548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.698303, 34.716846, 39.010059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036143, 0.171521, 0.984517,
		-0.972345, 0.221423, -0.074272,
		-0.230734, -0.959975, 0.158775,
		31.629084, 34.428852, 39.057693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.338669, 35.028587, 39.528374>,  <31.790596, 35.100838, 38.946548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.338669, 35.028587, 39.528374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.469250, 34.653088, 39.484234>,  <31.547598, 34.427788, 39.457748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.469250, 34.653088, 39.484234>,  <31.338669, 35.028587, 39.528374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.469250, 34.653088, 39.484234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104662, -0.080132, 0.991274,
		-0.939401, -0.335154, 0.072092,
		0.326453, -0.938749, -0.110354,
		31.567186, 34.371464, 39.451126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.957874, 34.551311, 40.099609>,  <31.338669, 35.028587, 39.528374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.957874, 34.551311, 40.099609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.265356, 34.320843, 39.988525>,  <31.449846, 34.182564, 39.921875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.265356, 34.320843, 39.988525>,  <30.957874, 34.551311, 40.099609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.265356, 34.320843, 39.988525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144170, -0.266926, 0.952872,
		-0.623144, -0.772515, -0.122121,
		0.768705, -0.576170, -0.277707,
		31.495968, 34.147991, 39.905212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.785465, 33.906387, 40.438988>,  <30.957874, 34.551311, 40.099609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.785465, 33.906387, 40.438988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.177912, 33.916409, 40.362274>,  <31.413380, 33.922421, 40.316246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.177912, 33.916409, 40.362274>,  <30.785465, 33.906387, 40.438988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.177912, 33.916409, 40.362274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188270, -0.350912, 0.917287,
		-0.044320, -0.936073, -0.349002,
		0.981117, 0.025053, -0.191787,
		31.472246, 33.923923, 40.304737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.060480, 33.248268, 40.737064>,  <30.785465, 33.906387, 40.438988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.060480, 33.248268, 40.737064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.343416, 33.529915, 40.712093>,  <31.513178, 33.698902, 40.697109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.343416, 33.529915, 40.712093>,  <31.060480, 33.248268, 40.737064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.343416, 33.529915, 40.712093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363074, -0.286116, 0.886744,
		0.606506, -0.649894, -0.458026,
		0.707338, 0.704113, -0.062428,
		31.555618, 33.741150, 40.693363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.564302, 33.015160, 41.115246>,  <31.060480, 33.248268, 40.737064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.564302, 33.015160, 41.115246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.737463, 33.375160, 41.094879>,  <31.841360, 33.591160, 41.082657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.737463, 33.375160, 41.094879>,  <31.564302, 33.015160, 41.115246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.737463, 33.375160, 41.094879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566887, -0.227883, 0.791649,
		0.700882, -0.371572, -0.608851,
		0.432902, 0.900002, -0.050921,
		31.867334, 33.645161, 41.079601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.294865, 32.864895, 41.156013>,  <31.564302, 33.015160, 41.115246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.294865, 32.864895, 41.156013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.255623, 33.248371, 41.262814>,  <32.232079, 33.478458, 41.326893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.255623, 33.248371, 41.262814>,  <32.294865, 32.864895, 41.156013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.255623, 33.248371, 41.262814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497957, -0.185005, 0.847238,
		0.861635, 0.216070, -0.459237,
		-0.098102, 0.958690, 0.267001,
		32.226192, 33.535976, 41.342915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.927376, 33.011078, 41.369839>,  <32.294865, 32.864895, 41.156013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.927376, 33.011078, 41.369839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.738354, 33.327744, 41.524734>,  <32.624939, 33.517742, 41.617672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.738354, 33.327744, 41.524734>,  <32.927376, 33.011078, 41.369839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.738354, 33.327744, 41.524734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620696, -0.012961, 0.783944,
		0.625640, 0.610818, -0.485258,
		-0.472558, 0.791665, 0.387242,
		32.596588, 33.565243, 41.640907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.422466, 33.412411, 41.657578>,  <32.927376, 33.011078, 41.369839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.422466, 33.412411, 41.657578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.075546, 33.495003, 41.838757>,  <32.867393, 33.544556, 41.947464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.075546, 33.495003, 41.838757>,  <33.422466, 33.412411, 41.657578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.075546, 33.495003, 41.838757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462774, -0.000776, 0.886476,
		0.183388, 0.978451, -0.094879,
		-0.867300, 0.206477, 0.452944,
		32.815357, 33.556946, 41.974640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.640789, 33.824089, 42.199902>,  <33.422466, 33.412411, 41.657578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.640789, 33.824089, 42.199902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.273918, 33.713909, 42.315075>,  <33.053795, 33.647800, 42.384178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.273918, 33.713909, 42.315075>,  <33.640789, 33.824089, 42.199902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.273918, 33.713909, 42.315075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272282, 0.094355, 0.957580,
		-0.290933, 0.956674, -0.011541,
		-0.917181, -0.275449, 0.287936,
		32.998764, 33.631275, 42.401455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.316616, 34.508476, 42.610882>,  <33.640789, 33.824089, 42.199902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.316616, 34.508476, 42.610882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.179558, 34.147018, 42.713665>,  <33.097324, 33.930145, 42.775337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.179558, 34.147018, 42.713665>,  <33.316616, 34.508476, 42.610882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.179558, 34.147018, 42.713665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184036, 0.203655, 0.961590,
		-0.921262, 0.376776, 0.096521,
		-0.342647, -0.903640, 0.256960,
		33.076763, 33.875927, 42.790752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.887066, 34.591591, 43.272041>,  <33.316616, 34.508476, 42.610882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.887066, 34.591591, 43.272041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.988777, 34.205235, 43.252422>,  <33.049805, 33.973423, 43.240650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.988777, 34.205235, 43.252422>,  <32.887066, 34.591591, 43.272041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.988777, 34.205235, 43.252422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105078, -0.022825, 0.994202,
		-0.961407, -0.257955, 0.095690,
		0.254275, -0.965887, -0.049049,
		33.065060, 33.915470, 43.237709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.540192, 34.250946, 43.820389>,  <32.887066, 34.591591, 43.272041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.540192, 34.250946, 43.820389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.818352, 33.972706, 43.748203>,  <32.985249, 33.805763, 43.704891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.818352, 33.972706, 43.748203>,  <32.540192, 34.250946, 43.820389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.818352, 33.972706, 43.748203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055924, -0.197981, 0.978609,
		-0.716446, -0.690614, -0.098775,
		0.695397, -0.695597, -0.180465,
		33.026970, 33.764027, 43.694065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.431992, 33.688370, 44.340065>,  <32.540192, 34.250946, 43.820389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.431992, 33.688370, 44.340065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.809868, 33.650066, 44.214600>,  <33.036594, 33.627083, 44.139320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.809868, 33.650066, 44.214600>,  <32.431992, 33.688370, 44.340065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.809868, 33.650066, 44.214600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272992, -0.300419, 0.913906,
		-0.181744, -0.948988, -0.257663,
		0.944693, -0.095757, -0.313666,
		33.093277, 33.621338, 44.120499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.676376, 33.119354, 44.649246>,  <32.431992, 33.688370, 44.340065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.676376, 33.119354, 44.649246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.018272, 33.286667, 44.526302>,  <33.223408, 33.387054, 44.452538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.018272, 33.286667, 44.526302>,  <32.676376, 33.119354, 44.649246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.018272, 33.286667, 44.526302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452118, -0.309063, 0.836701,
		0.254982, -0.854121, -0.453279,
		0.854736, 0.418279, -0.307358,
		33.274693, 33.412151, 44.434093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.199821, 32.690727, 44.876148>,  <32.676376, 33.119354, 44.649246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.199821, 32.690727, 44.876148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.411747, 33.011513, 44.765762>,  <33.538902, 33.203983, 44.699532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.411747, 33.011513, 44.765762>,  <33.199821, 32.690727, 44.876148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.411747, 33.011513, 44.765762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532576, -0.061364, 0.844155,
		0.660048, -0.594212, -0.459618,
		0.529811, 0.801964, -0.275961,
		33.570690, 33.252102, 44.682976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.929306, 32.554867, 45.113796>,  <33.199821, 32.690727, 44.876148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.929306, 32.554867, 45.113796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.896854, 32.949295, 45.055725>,  <33.877380, 33.185951, 45.020882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.896854, 32.949295, 45.055725>,  <33.929306, 32.554867, 45.113796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.896854, 32.949295, 45.055725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568939, 0.165412, 0.805573,
		0.818368, -0.017236, -0.574436,
		-0.081134, 0.986074, -0.145174,
		33.872513, 33.245117, 45.012173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.571865, 32.806736, 45.220245>,  <33.929306, 32.554867, 45.113796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.571865, 32.806736, 45.220245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.348190, 33.134892, 45.268032>,  <34.213985, 33.331783, 45.296703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.348190, 33.134892, 45.268032>,  <34.571865, 32.806736, 45.220245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.348190, 33.134892, 45.268032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548330, 0.257911, 0.795497,
		0.621803, 0.510342, -0.594064,
		-0.559191, 0.820386, 0.119466,
		34.180431, 33.381008, 45.303871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.052792, 33.469414, 45.377846>,  <34.571865, 32.806736, 45.220245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.052792, 33.469414, 45.377846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.689903, 33.550453, 45.525311>,  <34.472172, 33.599075, 45.613789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.689903, 33.550453, 45.525311>,  <35.052792, 33.469414, 45.377846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.689903, 33.550453, 45.525311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410297, 0.232833, 0.881728,
		0.092801, 0.951180, -0.294356,
		-0.907218, 0.202599, 0.368659,
		34.417736, 33.611233, 45.635910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.192047, 33.980392, 45.768375>,  <35.052792, 33.469414, 45.377846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.192047, 33.980392, 45.768375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.814270, 33.901173, 45.873295>,  <34.587605, 33.853642, 45.936245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.814270, 33.901173, 45.873295>,  <35.192047, 33.980392, 45.768375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.814270, 33.901173, 45.873295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205188, 0.268135, 0.941276,
		-0.256752, 0.942804, -0.212601,
		-0.944445, -0.198052, 0.262297,
		34.530937, 33.841759, 45.951984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.887341, 34.569965, 46.106380>,  <35.192047, 33.980392, 45.768375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.887341, 34.569965, 46.106380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.695961, 34.248276, 46.247414>,  <34.581131, 34.055264, 46.332031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.695961, 34.248276, 46.247414>,  <34.887341, 34.569965, 46.106380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.695961, 34.248276, 46.247414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370836, 0.178907, 0.911303,
		-0.795968, 0.566764, 0.212636,
		-0.478451, -0.804221, 0.352581,
		34.552425, 34.007008, 46.353188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.484783, 34.867859, 46.764462>,  <34.887341, 34.569965, 46.106380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.484783, 34.867859, 46.764462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.508667, 34.468586, 46.767719>,  <34.522995, 34.229023, 46.769672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.508667, 34.468586, 46.767719>,  <34.484783, 34.867859, 46.764462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.508667, 34.468586, 46.767719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362631, 0.029289, 0.931472,
		-0.930018, -0.052663, 0.363721,
		0.059708, -0.998183, 0.008142,
		34.526581, 34.169132, 46.770161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.122952, 34.625698, 47.397476>,  <34.484783, 34.867859, 46.764462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.122952, 34.625698, 47.397476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.361412, 34.316746, 47.309803>,  <34.504486, 34.131374, 47.257198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.361412, 34.316746, 47.309803>,  <34.122952, 34.625698, 47.397476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.361412, 34.316746, 47.309803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300735, -0.038309, 0.952938,
		-0.744424, -0.634008, 0.209443,
		0.596147, -0.772377, -0.219186,
		34.540257, 34.085033, 47.244045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.169765, 34.211658, 47.997345>,  <34.122952, 34.625698, 47.397476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.169765, 34.211658, 47.997345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.476414, 34.058540, 47.791134>,  <34.660404, 33.966671, 47.667408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.476414, 34.058540, 47.791134>,  <34.169765, 34.211658, 47.997345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.476414, 34.058540, 47.791134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528403, -0.080050, 0.845212,
		-0.364808, -0.920360, 0.140900,
		0.766620, -0.382792, -0.515523,
		34.706398, 33.943703, 47.636478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.408787, 33.710972, 48.435719>,  <34.169765, 34.211658, 47.997345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.408787, 33.710972, 48.435719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.712765, 33.800117, 48.191483>,  <34.895149, 33.853607, 48.044941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.712765, 33.800117, 48.191483>,  <34.408787, 33.710972, 48.435719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.712765, 33.800117, 48.191483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632551, -0.037433, 0.773613,
		0.149557, -0.974130, -0.169422,
		0.759942, 0.222867, -0.610589,
		34.940746, 33.866978, 48.008305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.882862, 33.310547, 48.716850>,  <34.408787, 33.710972, 48.435719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.882862, 33.310547, 48.716850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.072517, 33.584057, 48.494987>,  <35.186310, 33.748165, 48.361870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.072517, 33.584057, 48.494987>,  <34.882862, 33.310547, 48.716850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.072517, 33.584057, 48.494987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.808837, -0.089416, 0.581194,
		0.347813, -0.724191, -0.595461,
		0.474139, 0.683778, -0.554652,
		35.214760, 33.789192, 48.328590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.547108, 32.981304, 48.447475>,  <34.882862, 33.310547, 48.716850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.547108, 32.981304, 48.447475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.569885, 33.379894, 48.472111>,  <35.583553, 33.619049, 48.486893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.569885, 33.379894, 48.472111>,  <35.547108, 32.981304, 48.447475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.569885, 33.379894, 48.472111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704170, -0.083816, 0.705067,
		0.707744, 0.003221, -0.706462,
		0.056942, 0.996476, 0.061589,
		35.586967, 33.678837, 48.490589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.268688, 33.148724, 48.578888>,  <35.547108, 32.981304, 48.447475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.268688, 33.148724, 48.578888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.074512, 33.479168, 48.693352>,  <35.958008, 33.677433, 48.762032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.074512, 33.479168, 48.693352>,  <36.268688, 33.148724, 48.578888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.074512, 33.479168, 48.693352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558446, 0.041159, 0.828519,
		0.672671, 0.562001, -0.481319,
		-0.485439, 0.826112, 0.286161,
		35.928879, 33.727001, 48.779202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.720360, 33.746243, 48.746994>,  <36.268688, 33.148724, 48.578888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.720360, 33.746243, 48.746994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.395214, 33.815453, 48.969460>,  <36.200127, 33.856979, 49.102940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.395214, 33.815453, 48.969460>,  <36.720360, 33.746243, 48.746994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.395214, 33.815453, 48.969460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580637, 0.165252, 0.797215,
		0.046034, 0.970955, -0.234793,
		-0.812860, 0.173028, 0.556165,
		36.151356, 33.867363, 49.136311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.886467, 34.307114, 49.110146>,  <36.720360, 33.746243, 48.746994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.886467, 34.307114, 49.110146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.597076, 34.129951, 49.321964>,  <36.423443, 34.023655, 49.449055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.597076, 34.129951, 49.321964>,  <36.886467, 34.307114, 49.110146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.597076, 34.129951, 49.321964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514580, 0.165366, 0.841345,
		-0.460208, 0.881184, 0.108274,
		-0.723475, -0.442909, 0.529543,
		36.380035, 33.997078, 49.480827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.128738, 34.391148, 49.771347>,  <36.886467, 34.307114, 49.110146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.128738, 34.391148, 49.771347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.795494, 34.186253, 49.854820>,  <36.595547, 34.063316, 49.904903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.795494, 34.186253, 49.854820>,  <37.128738, 34.391148, 49.771347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.795494, 34.186253, 49.854820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248517, -0.009605, 0.968580,
		-0.494135, 0.858792, 0.135301,
		-0.833108, -0.512234, 0.208678,
		36.545563, 34.032581, 49.917423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.804951, 34.754135, 50.355297>,  <37.128738, 34.391148, 49.771347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.804951, 34.754135, 50.355297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.671612, 34.377258, 50.341713>,  <36.591610, 34.151131, 50.333561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.671612, 34.377258, 50.341713>,  <36.804951, 34.754135, 50.355297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.671612, 34.377258, 50.341713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297309, -0.139237, 0.944574,
		-0.894701, 0.304770, 0.326536,
		-0.333344, -0.942193, -0.033965,
		36.571609, 34.094601, 50.331524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.479877, 34.653496, 50.992115>,  <36.804951, 34.754135, 50.355297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.479877, 34.653496, 50.992115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.521557, 34.278076, 50.860497>,  <36.546566, 34.052826, 50.781525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.521557, 34.278076, 50.860497>,  <36.479877, 34.653496, 50.992115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.521557, 34.278076, 50.860497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478903, -0.242619, 0.843675,
		-0.871662, -0.245493, 0.424192,
		0.104199, -0.938546, -0.329050,
		36.552818, 33.996513, 50.761780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.246479, 34.216110, 51.534981>,  <36.479877, 34.653496, 50.992115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.246479, 34.216110, 51.534981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.505119, 34.008900, 51.310997>,  <36.660305, 33.884575, 51.176609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.505119, 34.008900, 51.310997>,  <36.246479, 34.216110, 51.534981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.505119, 34.008900, 51.310997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498219, -0.269079, 0.824242,
		-0.577652, -0.811939, 0.084103,
		0.646603, -0.518027, -0.559958,
		36.699100, 33.853493, 51.143009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.228535, 33.415318, 51.532745>,  <36.246479, 34.216110, 51.534981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.228535, 33.415318, 51.532745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.594753, 33.566452, 51.477592>,  <36.814484, 33.657131, 51.444500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.594753, 33.566452, 51.477592>,  <36.228535, 33.415318, 51.532745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.594753, 33.566452, 51.477592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306517, -0.433479, 0.847433,
		0.260418, -0.818131, -0.512683,
		0.915549, 0.377833, -0.137885,
		36.869419, 33.679802, 51.436226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.717064, 32.873425, 51.618732>,  <36.228535, 33.415318, 51.532745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.717064, 32.873425, 51.618732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.834293, 33.241196, 51.723618>,  <36.904633, 33.461861, 51.786549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.834293, 33.241196, 51.723618>,  <36.717064, 32.873425, 51.618732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.834293, 33.241196, 51.723618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141856, -0.313038, 0.939087,
		0.945508, -0.238025, -0.222170,
		0.293074, 0.919430, 0.262215,
		36.922215, 33.517025, 51.802280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.359489, 32.723682, 51.886982>,  <36.717064, 32.873425, 51.618732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.359489, 32.723682, 51.886982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.153408, 33.033741, 52.033245>,  <37.029758, 33.219776, 52.121002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.153408, 33.033741, 52.033245>,  <37.359489, 32.723682, 51.886982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.153408, 33.033741, 52.033245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081482, -0.380410, 0.921221,
		0.853186, 0.504411, 0.132828,
		-0.515203, 0.775150, 0.365661,
		36.998848, 33.266285, 52.142944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.414894, 33.004906, 52.624256>,  <37.359489, 32.723682, 51.886982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.414894, 33.004906, 52.624256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.811199, 32.991966, 52.676922>,  <38.048985, 32.984203, 52.708523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.811199, 32.991966, 52.676922>,  <37.414894, 33.004906, 52.624256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.811199, 32.991966, 52.676922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114070, -0.723799, 0.680517,
		0.073285, -0.689252, -0.720805,
		0.990766, -0.032351, 0.131667,
		38.108429, 32.982262, 52.716423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.638100, 32.299019, 52.545441>,  <37.414894, 33.004906, 52.624256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.638100, 32.299019, 52.545441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.832821, 32.522121, 52.814346>,  <37.949654, 32.655983, 52.975689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.832821, 32.522121, 52.814346>,  <37.638100, 32.299019, 52.545441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.832821, 32.522121, 52.814346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235029, -0.657590, 0.715777,
		0.841302, -0.506440, -0.189024,
		0.486799, 0.557758, 0.672259,
		37.978859, 32.689449, 53.016026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.943661, 31.667856, 52.326080>,  <37.638100, 32.299019, 52.545441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.943661, 31.667856, 52.326080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.170528, 31.350092, 52.239151>,  <38.306648, 31.159433, 52.186993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.170528, 31.350092, 52.239151>,  <37.943661, 31.667856, 52.326080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.170528, 31.350092, 52.239151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029722, 0.283441, -0.958529,
		0.823063, 0.537191, 0.184371,
		0.567172, -0.794410, -0.217323,
		38.340679, 31.111769, 52.173954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.592091, 31.906273, 52.043072>,  <37.943661, 31.667856, 52.326080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.592091, 31.906273, 52.043072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.465134, 31.551640, 51.908474>,  <38.388962, 31.338860, 51.827713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.465134, 31.551640, 51.908474>,  <38.592091, 31.906273, 52.043072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.465134, 31.551640, 51.908474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029362, 0.363862, -0.930990,
		0.947840, -0.285607, -0.141518,
		-0.317390, -0.886585, -0.336497,
		38.369915, 31.285664, 51.807526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.872581, 31.805058, 51.437744>,  <38.592091, 31.906273, 52.043072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.872581, 31.805058, 51.437744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.575527, 31.541340, 51.390717>,  <38.397293, 31.383110, 51.362499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.575527, 31.541340, 51.390717>,  <38.872581, 31.805058, 51.437744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.575527, 31.541340, 51.390717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046948, 0.226374, -0.972908,
		0.668047, -0.716998, -0.199066,
		-0.742636, -0.659294, -0.117567,
		38.352737, 31.343552, 51.355446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.970898, 31.411736, 50.859196>,  <38.872581, 31.805058, 51.437744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.970898, 31.411736, 50.859196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.572861, 31.433699, 50.892132>,  <38.334038, 31.446877, 50.911892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.572861, 31.433699, 50.892132>,  <38.970898, 31.411736, 50.859196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.572861, 31.433699, 50.892132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040527, 0.532934, -0.845186,
		-0.090290, -0.844373, -0.528092,
		-0.995090, 0.054910, 0.082339,
		38.274334, 31.450172, 50.916832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.488705, 31.186117, 50.276512>,  <38.970898, 31.411736, 50.859196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.488705, 31.186117, 50.276512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.304821, 31.518715, 50.401272>,  <38.194489, 31.718273, 50.476128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.304821, 31.518715, 50.401272>,  <38.488705, 31.186117, 50.276512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.304821, 31.518715, 50.401272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066799, 0.317836, -0.945789,
		-0.885551, -0.455626, -0.090571,
		-0.459713, 0.831495, 0.311896,
		38.166908, 31.768164, 50.494839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.902596, 31.322029, 49.718906>,  <38.488705, 31.186117, 50.276512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.902596, 31.322029, 49.718906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.888840, 31.670122, 49.915482>,  <37.880585, 31.878977, 50.033428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.888840, 31.670122, 49.915482>,  <37.902596, 31.322029, 49.718906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.888840, 31.670122, 49.915482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219754, 0.473113, -0.853154,
		-0.974949, -0.137339, 0.174965,
		-0.034394, 0.870231, 0.491442,
		37.878521, 31.931190, 50.062916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.202866, 31.649109, 49.706516>,  <37.902596, 31.322029, 49.718906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.202866, 31.649109, 49.706516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.509644, 31.904104, 49.735924>,  <37.693710, 32.057102, 49.753571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.509644, 31.904104, 49.735924>,  <37.202866, 31.649109, 49.706516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.509644, 31.904104, 49.735924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254529, 0.407371, -0.877077,
		-0.589078, 0.653955, 0.474690,
		0.766943, 0.637489, 0.073523,
		37.739727, 32.095352, 49.757980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.001255, 32.308784, 49.381310>,  <37.202866, 31.649109, 49.706516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.001255, 32.308784, 49.381310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.389450, 32.398357, 49.417095>,  <37.622368, 32.452103, 49.438568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.389450, 32.398357, 49.417095>,  <37.001255, 32.308784, 49.381310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.389450, 32.398357, 49.417095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050970, 0.553117, -0.831543,
		-0.235695, 0.802444, 0.548208,
		0.970490, 0.223933, 0.089467,
		37.680595, 32.465538, 49.443935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.025482, 33.046078, 49.167599>,  <37.001255, 32.308784, 49.381310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.025482, 33.046078, 49.167599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.405479, 32.923012, 49.146255>,  <37.633480, 32.849171, 49.133450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.405479, 32.923012, 49.146255>,  <37.025482, 33.046078, 49.167599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.405479, 32.923012, 49.146255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154560, 0.611787, -0.775776,
		0.271323, 0.728738, 0.628749,
		0.949997, -0.307665, -0.053359,
		37.690479, 32.830711, 49.130249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.443199, 33.642380, 48.974442>,  <37.025482, 33.046078, 49.167599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.443199, 33.642380, 48.974442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.694920, 33.344475, 48.885616>,  <37.845951, 33.165733, 48.832321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.694920, 33.344475, 48.885616>,  <37.443199, 33.642380, 48.974442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.694920, 33.344475, 48.885616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303687, 0.498671, -0.811851,
		0.715370, 0.443462, 0.539989,
		0.629301, -0.744761, -0.222061,
		37.883709, 33.121048, 48.818996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.092701, 33.938370, 48.774235>,  <37.443199, 33.642380, 48.974442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.092701, 33.938370, 48.774235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.112709, 33.579597, 48.598503>,  <38.124714, 33.364334, 48.493065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.112709, 33.579597, 48.598503>,  <38.092701, 33.938370, 48.774235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.112709, 33.579597, 48.598503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108554, 0.442160, -0.890343,
		0.992832, -0.003159, 0.119481,
		0.050017, -0.896931, -0.439333,
		38.127712, 33.310516, 48.466702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.785732, 33.883461, 48.308243>,  <38.092701, 33.938370, 48.774235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.785732, 33.883461, 48.308243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.535118, 33.597164, 48.184849>,  <38.384750, 33.425385, 48.110813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.535118, 33.597164, 48.184849>,  <38.785732, 33.883461, 48.308243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.535118, 33.597164, 48.184849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144140, 0.282564, -0.948357,
		0.765948, -0.638644, -0.073869,
		-0.626535, -0.715745, -0.308484,
		38.347157, 33.382442, 48.092304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.098217, 33.535828, 47.699635>,  <38.785732, 33.883461, 48.308243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.098217, 33.535828, 47.699635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.701694, 33.491119, 47.671871>,  <38.463779, 33.464294, 47.655212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.701694, 33.491119, 47.671871>,  <39.098217, 33.535828, 47.699635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.701694, 33.491119, 47.671871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060000, 0.085466, -0.994533,
		0.117102, -0.990051, -0.078016,
		-0.991306, -0.111781, -0.069412,
		38.404301, 33.457588, 47.651047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.972744, 33.134357, 47.126305>,  <39.098217, 33.535828, 47.699635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.972744, 33.134357, 47.126305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.607922, 33.290749, 47.175774>,  <38.389030, 33.384583, 47.205456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.607922, 33.290749, 47.175774>,  <38.972744, 33.134357, 47.126305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.607922, 33.290749, 47.175774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113116, 0.050024, -0.992322,
		-0.394163, -0.919039, -0.001399,
		-0.912053, 0.390979, 0.123676,
		38.334305, 33.408043, 47.212875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.607407, 32.856159, 46.627342>,  <38.972744, 33.134357, 47.126305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.607407, 32.856159, 46.627342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.370022, 33.166519, 46.712929>,  <38.227592, 33.352737, 46.764278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.370022, 33.166519, 46.712929>,  <38.607407, 32.856159, 46.627342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.370022, 33.166519, 46.712929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243236, 0.080511, -0.966620,
		-0.767229, -0.625694, 0.140948,
		-0.593461, 0.775902, 0.213962,
		38.191982, 33.399288, 46.777119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.028843, 32.723026, 46.336296>,  <38.607407, 32.856159, 46.627342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.028843, 32.723026, 46.336296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.032799, 33.120537, 46.380661>,  <38.035172, 33.359043, 46.407280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.032799, 33.120537, 46.380661>,  <38.028843, 32.723026, 46.336296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.032799, 33.120537, 46.380661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266150, 0.109532, -0.957688,
		-0.963881, -0.020052, 0.265578,
		0.009885, 0.993781, 0.110913,
		38.035763, 33.418671, 46.413937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.396816, 33.038860, 46.173363>,  <38.028843, 32.723026, 46.336296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.396816, 33.038860, 46.173363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.612232, 33.374252, 46.140068>,  <37.741482, 33.575489, 46.120090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.612232, 33.374252, 46.140068>,  <37.396816, 33.038860, 46.173363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.612232, 33.374252, 46.140068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188911, 0.023873, -0.981704,
		-0.821153, 0.544409, 0.171254,
		0.538536, 0.838481, -0.083241,
		37.773792, 33.625797, 46.115097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.983711, 33.635860, 45.944744>,  <37.396816, 33.038860, 46.173363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.983711, 33.635860, 45.944744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.363964, 33.723965, 45.857304>,  <37.592117, 33.776825, 45.804840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.363964, 33.723965, 45.857304>,  <36.983711, 33.635860, 45.944744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.363964, 33.723965, 45.857304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242815, 0.089323, -0.965952,
		-0.193232, 0.971344, 0.138395,
		0.950633, 0.220257, -0.218597,
		37.649155, 33.790043, 45.791725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.972721, 34.261181, 45.599567>,  <36.983711, 33.635860, 45.944744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.972721, 34.261181, 45.599567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.318405, 34.085907, 45.500660>,  <37.525814, 33.980743, 45.441315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.318405, 34.085907, 45.500660>,  <36.972721, 34.261181, 45.599567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.318405, 34.085907, 45.500660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147244, 0.249672, -0.957070,
		0.481109, 0.863515, 0.151248,
		0.864207, -0.438184, -0.247267,
		37.577667, 33.954453, 45.426479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.466682, 34.760174, 45.247177>,  <36.972721, 34.261181, 45.599567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.466682, 34.760174, 45.247177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.544941, 34.380081, 45.150196>,  <37.591896, 34.152027, 45.092007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.544941, 34.380081, 45.150196>,  <37.466682, 34.760174, 45.247177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.544941, 34.380081, 45.150196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243761, 0.192348, -0.950570,
		0.949896, 0.245075, -0.193998,
		0.195646, -0.950232, -0.242450,
		37.603634, 34.095013, 45.077461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.737209, 34.880653, 44.688961>,  <37.466682, 34.760174, 45.247177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.737209, 34.880653, 44.688961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.652435, 34.490814, 44.659977>,  <37.601570, 34.256912, 44.642586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.652435, 34.490814, 44.659977>,  <37.737209, 34.880653, 44.688961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.652435, 34.490814, 44.659977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083397, 0.091908, -0.992269,
		0.973719, -0.204255, -0.100757,
		-0.211937, -0.974594, -0.072459,
		37.588856, 34.198437, 44.638241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.182594, 34.680477, 44.160896>,  <37.737209, 34.880653, 44.688961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.182594, 34.680477, 44.160896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.899918, 34.398434, 44.184227>,  <37.730312, 34.229206, 44.198227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.899918, 34.398434, 44.184227>,  <38.182594, 34.680477, 44.160896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.899918, 34.398434, 44.184227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128402, 0.046743, -0.990620,
		0.695769, -0.707556, -0.123570,
		-0.706695, -0.705109, 0.058330,
		37.687908, 34.186901, 44.201725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.305889, 34.232143, 43.589893>,  <38.182594, 34.680477, 44.160896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.305889, 34.232143, 43.589893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.932186, 34.126579, 43.685829>,  <37.707966, 34.063240, 43.743389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.932186, 34.126579, 43.685829>,  <38.305889, 34.232143, 43.589893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.932186, 34.126579, 43.685829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245252, -0.012747, -0.969376,
		0.258884, -0.964463, -0.052815,
		-0.934254, -0.263909, 0.239836,
		37.651909, 34.047405, 43.757778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.125469, 33.948895, 43.026070>,  <38.305889, 34.232143, 43.589893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.125469, 33.948895, 43.026070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.771267, 33.930218, 43.210979>,  <37.558746, 33.919010, 43.321926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.771267, 33.930218, 43.210979>,  <38.125469, 33.948895, 43.026070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.771267, 33.930218, 43.210979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453011, -0.134314, -0.881329,
		0.103246, -0.989838, 0.097781,
		-0.885507, -0.046697, 0.462275,
		37.505615, 33.916210, 43.349663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.793129, 33.375191, 42.770370>,  <38.125469, 33.948895, 43.026070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.793129, 33.375191, 42.770370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.523777, 33.655155, 42.865604>,  <37.362164, 33.823132, 42.922745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.523777, 33.655155, 42.865604>,  <37.793129, 33.375191, 42.770370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.523777, 33.655155, 42.865604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479000, -0.167749, -0.861638,
		-0.563129, -0.694254, 0.448215,
		-0.673383, 0.699908, 0.238083,
		37.321762, 33.865128, 42.937031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.105759, 33.096714, 42.545303>,  <37.793129, 33.375191, 42.770370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.105759, 33.096714, 42.545303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.043015, 33.491673, 42.553741>,  <37.005367, 33.728649, 42.558804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.043015, 33.491673, 42.553741>,  <37.105759, 33.096714, 42.545303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.043015, 33.491673, 42.553741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581133, -0.075009, -0.810344,
		-0.798548, -0.139371, 0.585574,
		-0.156862, 0.987395, 0.021094,
		36.995956, 33.787891, 42.560070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.450642, 33.134575, 42.595570>,  <37.105759, 33.096714, 42.545303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.450642, 33.134575, 42.595570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.567913, 33.491955, 42.459454>,  <36.638275, 33.706383, 42.377785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.567913, 33.491955, 42.459454>,  <36.450642, 33.134575, 42.595570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.567913, 33.491955, 42.459454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.748071, -0.007262, -0.663578,
		-0.595344, 0.449107, 0.666234,
		0.293179, 0.893448, -0.340287,
		36.655869, 33.759991, 42.357368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.844486, 33.381611, 42.418255>,  <36.450642, 33.134575, 42.595570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.844486, 33.381611, 42.418255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.117355, 33.607498, 42.232468>,  <36.281078, 33.743031, 42.120995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.117355, 33.607498, 42.232468>,  <35.844486, 33.381611, 42.418255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.117355, 33.607498, 42.232468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630119, 0.131791, -0.765233,
		-0.370931, 0.814690, 0.445747,
		0.682173, 0.564722, -0.464466,
		36.322006, 33.776917, 42.093128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.511955, 33.950378, 42.217514>,  <35.844486, 33.381611, 42.418255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.511955, 33.950378, 42.217514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.829296, 33.912834, 41.976921>,  <36.019699, 33.890308, 41.832565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.829296, 33.912834, 41.976921>,  <35.511955, 33.950378, 42.217514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.829296, 33.912834, 41.976921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606691, -0.040490, -0.793906,
		0.050165, 0.994762, -0.089069,
		0.793353, -0.093864, -0.601482,
		36.067303, 33.884674, 41.796478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.309837, 34.355068, 41.730705>,  <35.511955, 33.950378, 42.217514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.309837, 34.355068, 41.730705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.603378, 34.123924, 41.587852>,  <35.779503, 33.985237, 41.502140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.603378, 34.123924, 41.587852>,  <35.309837, 34.355068, 41.730705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.603378, 34.123924, 41.587852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525139, -0.149075, -0.837858,
		0.430922, 0.802408, -0.412853,
		0.733850, -0.577857, -0.357136,
		35.823532, 33.950565, 41.480713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.463982, 34.637920, 41.064720>,  <35.309837, 34.355068, 41.730705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.463982, 34.637920, 41.064720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.629421, 34.274178, 41.046776>,  <35.728683, 34.055931, 41.036011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.629421, 34.274178, 41.046776>,  <35.463982, 34.637920, 41.064720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.629421, 34.274178, 41.046776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421031, -0.147342, -0.894999,
		0.807261, 0.389056, -0.443807,
		0.413596, -0.909354, -0.044861,
		35.753502, 34.001369, 41.033318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.713387, 34.632477, 40.414494>,  <35.463982, 34.637920, 41.064720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.713387, 34.632477, 40.414494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.631832, 34.270882, 40.564819>,  <35.582901, 34.053925, 40.655014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.631832, 34.270882, 40.564819>,  <35.713387, 34.632477, 40.414494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.631832, 34.270882, 40.564819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388283, -0.277723, -0.878696,
		0.898704, -0.325070, -0.294382,
		-0.203882, -0.903991, 0.375810,
		35.570667, 33.999683, 40.677563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.900795, 34.142719, 39.913853>,  <35.713387, 34.632477, 40.414494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.900795, 34.142719, 39.913853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.672451, 33.905651, 40.141136>,  <35.535446, 33.763409, 40.277508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.672451, 33.905651, 40.141136>,  <35.900795, 34.142719, 39.913853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.672451, 33.905651, 40.141136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319224, -0.477389, -0.818655,
		0.756453, -0.648719, 0.083324,
		-0.570855, -0.592675, 0.568209,
		35.501194, 33.727848, 40.311600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.936092, 33.373470, 39.762871>,  <35.900795, 34.142719, 39.913853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.936092, 33.373470, 39.762871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.572273, 33.434559, 39.917480>,  <35.353981, 33.471210, 40.010246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.572273, 33.434559, 39.917480>,  <35.936092, 33.373470, 39.762871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.572273, 33.434559, 39.917480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408141, -0.503624, -0.761435,
		0.078372, -0.850317, 0.520402,
		-0.909548, 0.152722, 0.386520,
		35.299408, 33.480377, 40.033436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.615108, 32.971806, 39.278324>,  <35.936092, 33.373470, 39.762871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.615108, 32.971806, 39.278324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.319633, 33.089985, 39.520664>,  <35.142349, 33.160892, 39.666069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.319633, 33.089985, 39.520664>,  <35.615108, 32.971806, 39.278324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.319633, 33.089985, 39.520664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669768, -0.422836, -0.610427,
		0.075827, -0.856693, 0.510223,
		-0.738689, 0.295444, 0.605847,
		35.098026, 33.178619, 39.702419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.194710, 32.383068, 39.557571>,  <35.615108, 32.971806, 39.278324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.194710, 32.383068, 39.557571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.956532, 32.704296, 39.548504>,  <34.813625, 32.897034, 39.543064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.956532, 32.704296, 39.548504>,  <35.194710, 32.383068, 39.557571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.956532, 32.704296, 39.548504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554977, -0.431568, -0.711161,
		-0.580898, -0.410878, 0.702664,
		-0.595448, 0.803074, -0.022670,
		34.777897, 32.945217, 39.541702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.525017, 32.117271, 39.496513>,  <35.194710, 32.383068, 39.557571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.525017, 32.117271, 39.496513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.517513, 32.497444, 39.372360>,  <34.513012, 32.725548, 39.297871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.517513, 32.497444, 39.372360>,  <34.525017, 32.117271, 39.496513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.517513, 32.497444, 39.372360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435800, -0.287163, -0.853004,
		-0.899848, 0.119263, 0.419583,
		-0.018757, 0.950428, -0.310378,
		34.511887, 32.782574, 39.279247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.757118, 32.220459, 39.236652>,  <34.525017, 32.117271, 39.496513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.757118, 32.220459, 39.236652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.995274, 32.506336, 39.089836>,  <34.138168, 32.677864, 39.001747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.995274, 32.506336, 39.089836>,  <33.757118, 32.220459, 39.236652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.995274, 32.506336, 39.089836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464077, -0.067003, -0.883257,
		-0.655853, 0.696219, 0.291780,
		0.595390, 0.714696, -0.367043,
		34.173889, 32.720745, 38.979725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.411415, 32.598125, 38.825436>,  <33.757118, 32.220459, 39.236652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.411415, 32.598125, 38.825436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.774563, 32.696651, 38.689728>,  <33.992451, 32.755768, 38.608303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.774563, 32.696651, 38.689728>,  <33.411415, 32.598125, 38.825436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.774563, 32.696651, 38.689728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315049, -0.133102, -0.939695,
		-0.276617, 0.960007, -0.043239,
		0.907869, 0.246314, -0.339268,
		34.046925, 32.770546, 38.587948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.320374, 33.041481, 38.274323>,  <33.411415, 32.598125, 38.825436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.320374, 33.041481, 38.274323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.688484, 32.896828, 38.214558>,  <33.909351, 32.810036, 38.178699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.688484, 32.896828, 38.214558>,  <33.320374, 33.041481, 38.274323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.688484, 32.896828, 38.214558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234751, -0.204800, -0.950236,
		0.313034, 0.909550, -0.273364,
		0.920273, -0.361629, -0.149408,
		33.964565, 32.788338, 38.169735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.537216, 33.306416, 37.668003>,  <33.320374, 33.041481, 38.274323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.537216, 33.306416, 37.668003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.783623, 32.991646, 37.682278>,  <33.931469, 32.802784, 37.690842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.783623, 32.991646, 37.682278>,  <33.537216, 33.306416, 37.668003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.783623, 32.991646, 37.682278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105912, -0.127635, -0.986150,
		0.780579, 0.603707, -0.161970,
		0.616019, -0.786922, 0.035690,
		33.968430, 32.755569, 37.692986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.044601, 33.396484, 37.097725>,  <33.537216, 33.306416, 37.668003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.044601, 33.396484, 37.097725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.040314, 33.008049, 37.193115>,  <34.037743, 32.774986, 37.250351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.040314, 33.008049, 37.193115>,  <34.044601, 33.396484, 37.097725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.040314, 33.008049, 37.193115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123485, -0.235382, -0.964026,
		0.992288, -0.039782, -0.117392,
		-0.010720, -0.971088, 0.238479,
		34.037098, 32.716721, 37.264660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.447243, 33.066544, 36.528698>,  <34.044601, 33.396484, 37.097725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.447243, 33.066544, 36.528698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.233128, 32.791821, 36.725376>,  <34.104660, 32.626987, 36.843384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.233128, 32.791821, 36.725376>,  <34.447243, 33.066544, 36.528698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.233128, 32.791821, 36.725376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236451, -0.437008, -0.867822,
		0.810901, -0.580795, 0.071528,
		-0.535285, -0.686805, 0.491700,
		34.072540, 32.585777, 36.872887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.773682, 32.394733, 36.387775>,  <34.447243, 33.066544, 36.528698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.773682, 32.394733, 36.387775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.385815, 32.341488, 36.469772>,  <34.153095, 32.309540, 36.518970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.385815, 32.341488, 36.469772>,  <34.773682, 32.394733, 36.387775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.385815, 32.341488, 36.469772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142442, -0.373790, -0.916510,
		0.198622, -0.917912, 0.343493,
		-0.969670, -0.133112, 0.204993,
		34.094913, 32.301556, 36.531269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.282955, 32.708023, 36.741062>,  <34.773682, 32.394733, 36.387775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.282955, 32.708023, 36.741062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.477413, 32.880928, 36.437267>,  <35.594090, 32.984669, 36.254990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.477413, 32.880928, 36.437267>,  <35.282955, 32.708023, 36.741062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.477413, 32.880928, 36.437267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.846819, -0.018422, 0.531562,
		0.215780, -0.901562, -0.375001,
		0.486144, 0.432258, -0.759484,
		35.623257, 33.010605, 36.209423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.809357, 32.272079, 36.596058>,  <35.282955, 32.708023, 36.741062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.809357, 32.272079, 36.596058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.893009, 32.647606, 36.486595>,  <35.943199, 32.872921, 36.420918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.893009, 32.647606, 36.486595>,  <35.809357, 32.272079, 36.596058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.893009, 32.647606, 36.486595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.887124, -0.064397, 0.457016,
		0.411432, -0.338344, -0.846314,
		0.209128, 0.938817, -0.273658,
		35.955750, 32.929253, 36.404499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.552559, 32.322861, 36.472412>,  <35.809357, 32.272079, 36.596058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.552559, 32.322861, 36.472412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.464153, 32.711334, 36.508076>,  <36.411110, 32.944420, 36.529472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.464153, 32.711334, 36.508076>,  <36.552559, 32.322861, 36.472412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.464153, 32.711334, 36.508076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.886177, 0.161815, 0.434173,
		0.407236, 0.174968, -0.896407,
		-0.221018, 0.971186, 0.089156,
		36.397846, 33.002689, 36.534821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.121967, 32.672504, 36.304726>,  <36.552559, 32.322861, 36.472412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.121967, 32.672504, 36.304726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.942818, 32.940434, 36.541618>,  <36.835327, 33.101192, 36.683754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.942818, 32.940434, 36.541618>,  <37.121967, 32.672504, 36.304726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.942818, 32.940434, 36.541618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.864984, 0.156961, 0.476620,
		0.226295, 0.725738, -0.649689,
		-0.447877, 0.669827, 0.592232,
		36.808456, 33.141380, 36.719288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.642460, 33.178936, 36.478802>,  <37.121967, 32.672504, 36.304726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.642460, 33.178936, 36.478802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.376976, 33.243824, 36.770874>,  <37.217686, 33.282757, 36.946117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.376976, 33.243824, 36.770874>,  <37.642460, 33.178936, 36.478802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.376976, 33.243824, 36.770874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741007, 0.275645, 0.612314,
		-0.101940, 0.947472, -0.303158,
		-0.663714, 0.162223, 0.730183,
		37.177860, 33.292492, 36.989929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.009041, 33.720459, 36.936420>,  <37.642460, 33.178936, 36.478802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.009041, 33.720459, 36.936420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.698059, 33.604065, 37.159451>,  <37.511471, 33.534229, 37.293270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.698059, 33.604065, 37.159451>,  <38.009041, 33.720459, 36.936420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.698059, 33.604065, 37.159451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487593, 0.281113, 0.826576,
		-0.397261, 0.914497, -0.076673,
		-0.777456, -0.290981, 0.557578,
		37.464821, 33.516769, 37.326725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.716663, 34.286396, 37.340775>,  <38.009041, 33.720459, 36.936420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.716663, 34.286396, 37.340775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.674606, 33.927265, 37.511814>,  <37.649372, 33.711784, 37.614437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.674606, 33.927265, 37.511814>,  <37.716663, 34.286396, 37.340775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.674606, 33.927265, 37.511814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559107, 0.302222, 0.772050,
		-0.822401, 0.320254, 0.470206,
		-0.105146, -0.897831, 0.427604,
		37.643063, 33.657917, 37.640095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.525105, 34.482292, 38.064697>,  <37.716663, 34.286396, 37.340775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.525105, 34.482292, 38.064697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.647137, 34.102100, 38.088436>,  <37.720356, 33.873985, 38.102680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.647137, 34.102100, 38.088436>,  <37.525105, 34.482292, 38.064697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.647137, 34.102100, 38.088436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587638, 0.236926, 0.773659,
		-0.749405, -0.201152, 0.630817,
		0.305080, -0.950476, 0.059349,
		37.738659, 33.816959, 38.106239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.318142, 34.239510, 38.725788>,  <37.525105, 34.482292, 38.064697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.318142, 34.239510, 38.725788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.599716, 33.973122, 38.627029>,  <37.768661, 33.813290, 38.567776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.599716, 33.973122, 38.627029>,  <37.318142, 34.239510, 38.725788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.599716, 33.973122, 38.627029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420158, 0.110175, 0.900738,
		-0.572664, -0.737796, 0.357370,
		0.703934, -0.665972, -0.246898,
		37.810898, 33.773331, 38.552959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.356857, 33.778809, 39.277798>,  <37.318142, 34.239510, 38.725788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.356857, 33.778809, 39.277798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.702110, 33.752178, 39.077568>,  <37.909260, 33.736202, 38.957428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.702110, 33.752178, 39.077568>,  <37.356857, 33.778809, 39.277798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.702110, 33.752178, 39.077568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503171, 0.029476, 0.863684,
		-0.042746, -0.997346, 0.058941,
		0.863129, -0.066576, -0.500576,
		37.961048, 33.732208, 38.927395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.715084, 33.318394, 39.687340>,  <37.356857, 33.778809, 39.277798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.715084, 33.318394, 39.687340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.017624, 33.467422, 39.472260>,  <38.199150, 33.556839, 39.343212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.017624, 33.467422, 39.472260>,  <37.715084, 33.318394, 39.687340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.017624, 33.467422, 39.472260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604782, -0.084963, 0.791846,
		0.249333, -0.924106, -0.289586,
		0.756354, 0.372570, -0.537699,
		38.244530, 33.579193, 39.310951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.246918, 32.813877, 39.649670>,  <37.715084, 33.318394, 39.687340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.246918, 32.813877, 39.649670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.426743, 33.162834, 39.572918>,  <38.534637, 33.372208, 39.526867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.426743, 33.162834, 39.572918>,  <38.246918, 32.813877, 39.649670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.426743, 33.162834, 39.572918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619788, -0.149962, 0.770308,
		0.643237, -0.465230, -0.608117,
		0.449565, 0.872394, -0.191883,
		38.561611, 33.424553, 39.515354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.011425, 32.747822, 39.670879>,  <38.246918, 32.813877, 39.649670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.011425, 32.747822, 39.670879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.958408, 33.134407, 39.758862>,  <38.926598, 33.366360, 39.811649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.958408, 33.134407, 39.758862>,  <39.011425, 32.747822, 39.670879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.958408, 33.134407, 39.758862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519682, -0.121207, 0.845718,
		0.844017, 0.226397, -0.486189,
		-0.132538, 0.966464, 0.219955,
		38.918648, 33.424347, 39.824848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.589218, 32.890339, 40.067337>,  <39.011425, 32.747822, 39.670879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.589218, 32.890339, 40.067337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.399185, 33.241558, 40.090401>,  <39.285164, 33.452290, 40.104240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.399185, 33.241558, 40.090401>,  <39.589218, 32.890339, 40.067337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.399185, 33.241558, 40.090401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283078, 0.090465, 0.954821,
		0.833165, 0.469941, -0.291535,
		-0.475083, 0.878050, 0.057658,
		39.256660, 33.504974, 40.107697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.122444, 33.395981, 40.191612>,  <39.589218, 32.890339, 40.067337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.122444, 33.395981, 40.191612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.778877, 33.550205, 40.326435>,  <39.572739, 33.642738, 40.407330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.778877, 33.550205, 40.326435>,  <40.122444, 33.395981, 40.191612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.778877, 33.550205, 40.326435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389775, 0.065273, 0.918594,
		0.332173, 0.920371, -0.206346,
		-0.858916, 0.385561, 0.337056,
		39.521202, 33.665874, 40.427551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.286060, 33.911163, 40.578171>,  <40.122444, 33.395981, 40.191612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.286060, 33.911163, 40.578171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.920952, 33.798084, 40.696106>,  <39.701885, 33.730236, 40.766865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.920952, 33.798084, 40.696106>,  <40.286060, 33.911163, 40.578171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.920952, 33.798084, 40.696106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296923, 0.036470, 0.954205,
		-0.280502, 0.958516, 0.050650,
		-0.912773, -0.282696, 0.294836,
		39.647121, 33.713276, 40.784557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.090088, 34.459698, 41.012241>,  <40.286060, 33.911163, 40.578171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.090088, 34.459698, 41.012241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.870720, 34.143856, 41.122337>,  <39.739098, 33.954350, 41.188396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.870720, 34.143856, 41.122337>,  <40.090088, 34.459698, 41.012241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.870720, 34.143856, 41.122337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198009, 0.197171, 0.960165,
		-0.812420, 0.581076, 0.048216,
		-0.548422, -0.789604, 0.275244,
		39.706192, 33.906975, 41.204910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.765144, 34.589329, 41.614082>,  <40.090088, 34.459698, 41.012241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.765144, 34.589329, 41.614082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.717915, 34.193020, 41.640724>,  <39.689575, 33.955235, 41.656708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.717915, 34.193020, 41.640724>,  <39.765144, 34.589329, 41.614082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.717915, 34.193020, 41.640724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171852, 0.045668, 0.984064,
		-0.978021, 0.127643, 0.164873,
		-0.118079, -0.990768, 0.066600,
		39.682491, 33.895790, 41.660706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.526497, 34.484375, 42.262436>,  <39.765144, 34.589329, 41.614082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.526497, 34.484375, 42.262436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.604992, 34.103809, 42.167519>,  <39.652088, 33.875469, 42.110569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.604992, 34.103809, 42.167519>,  <39.526497, 34.484375, 42.262436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.604992, 34.103809, 42.167519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154084, -0.209076, 0.965684,
		-0.968374, -0.226067, 0.105569,
		0.196237, -0.951410, -0.237297,
		39.663864, 33.818386, 42.096329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.952549, 33.961617, 42.581120>,  <39.526497, 34.484375, 42.262436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.952549, 33.961617, 42.581120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.303661, 33.779739, 42.520790>,  <39.514328, 33.670612, 42.484592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.303661, 33.779739, 42.520790>,  <38.952549, 33.961617, 42.581120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.303661, 33.779739, 42.520790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076661, -0.177447, 0.981140,
		-0.472883, -0.872791, -0.120902,
		0.877784, -0.454695, -0.150821,
		39.566998, 33.643330, 42.475544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.958477, 33.464962, 43.040119>,  <38.952549, 33.961617, 42.581120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.958477, 33.464962, 43.040119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.347656, 33.467876, 42.947765>,  <39.581165, 33.469624, 42.892353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.347656, 33.467876, 42.947765>,  <38.958477, 33.464962, 43.040119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.347656, 33.467876, 42.947765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230947, -0.052953, 0.971524,
		-0.005144, -0.998570, -0.053204,
		0.972953, 0.007290, -0.230889,
		39.639542, 33.470062, 42.878498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.254295, 32.881721, 43.429592>,  <38.958477, 33.464962, 43.040119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.254295, 32.881721, 43.429592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.538418, 33.150703, 43.346386>,  <39.708893, 33.312092, 43.296463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.538418, 33.150703, 43.346386>,  <39.254295, 32.881721, 43.429592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.538418, 33.150703, 43.346386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279750, 0.001490, 0.960072,
		0.645913, -0.740138, -0.187060,
		0.710307, 0.672453, -0.208016,
		39.751511, 33.352440, 43.283981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.932365, 32.651859, 43.651772>,  <39.254295, 32.881721, 43.429592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.932365, 32.651859, 43.651772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.941460, 33.051418, 43.668243>,  <39.946915, 33.291153, 43.678127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.941460, 33.051418, 43.668243>,  <39.932365, 32.651859, 43.651772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.941460, 33.051418, 43.668243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221012, -0.045195, 0.974223,
		0.975006, -0.013047, -0.221795,
		0.022735, 0.998893, 0.041182,
		39.948280, 33.351086, 43.680599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.155781, 32.808666, 44.363884>,  <39.932365, 32.651859, 43.651772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.155781, 32.808666, 44.363884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.125023, 33.177353, 44.211823>,  <40.106567, 33.398567, 44.120586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.125023, 33.177353, 44.211823>,  <40.155781, 32.808666, 44.363884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.125023, 33.177353, 44.211823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256397, 0.386740, 0.885829,
		0.963508, -0.029358, -0.266064,
		-0.076892, 0.921721, -0.380154,
		40.101955, 33.453869, 44.097775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.744827, 33.237743, 44.650494>,  <40.155781, 32.808666, 44.363884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.744827, 33.237743, 44.650494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.461266, 33.498806, 44.543537>,  <40.291126, 33.655441, 44.479362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.461266, 33.498806, 44.543537>,  <40.744827, 33.237743, 44.650494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.461266, 33.498806, 44.543537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229940, 0.572261, 0.787175,
		0.666768, 0.496550, -0.555750,
		-0.708906, 0.652653, -0.267389,
		40.248592, 33.694603, 44.463322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.063046, 33.920128, 44.530762>,  <40.744827, 33.237743, 44.650494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.063046, 33.920128, 44.530762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.681122, 33.970448, 44.638477>,  <40.451969, 34.000641, 44.703106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.681122, 33.970448, 44.638477>,  <41.063046, 33.920128, 44.530762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.681122, 33.970448, 44.638477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292609, 0.556898, 0.777332,
		-0.052175, 0.820998, -0.568541,
		-0.954808, 0.125803, 0.269288,
		40.394680, 34.008190, 44.719265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.988205, 34.587624, 44.816418>,  <41.063046, 33.920128, 44.530762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.988205, 34.587624, 44.816418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.674316, 34.374546, 44.943195>,  <40.485985, 34.246700, 45.019260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.674316, 34.374546, 44.943195>,  <40.988205, 34.587624, 44.816418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.674316, 34.374546, 44.943195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083831, 0.415421, 0.905758,
		-0.614154, 0.737337, -0.281334,
		-0.784721, -0.532690, 0.316944,
		40.438900, 34.214741, 45.038280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.468014, 35.043400, 45.253860>,  <40.988205, 34.587624, 44.816418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.468014, 35.043400, 45.253860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.394920, 34.675438, 45.392651>,  <40.351063, 34.454662, 45.475925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.394920, 34.675438, 45.392651>,  <40.468014, 35.043400, 45.253860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.394920, 34.675438, 45.392651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006268, 0.351818, 0.936047,
		-0.983143, 0.173221, -0.058523,
		-0.182733, -0.919901, 0.346973,
		40.340099, 34.399467, 45.496742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.073738, 35.118938, 45.744240>,  <40.468014, 35.043400, 45.253860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.073738, 35.118938, 45.744240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.183250, 34.743793, 45.829517>,  <40.248959, 34.518707, 45.880684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.183250, 34.743793, 45.829517>,  <40.073738, 35.118938, 45.744240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.183250, 34.743793, 45.829517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037067, 0.231791, 0.972059,
		-0.961076, -0.258233, 0.098225,
		0.273785, -0.937864, 0.213197,
		40.265385, 34.462433, 45.893475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.597504, 34.870640, 46.262970>,  <40.073738, 35.118938, 45.744240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.597504, 34.870640, 46.262970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.917404, 34.633701, 46.302010>,  <40.109344, 34.491539, 46.325436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.917404, 34.633701, 46.302010>,  <39.597504, 34.870640, 46.262970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.917404, 34.633701, 46.302010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047416, 0.099745, 0.993883,
		-0.598458, -0.799486, 0.051685,
		0.799750, -0.592346, 0.097602,
		40.157330, 34.455997, 46.331291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.412960, 34.494221, 46.798424>,  <39.597504, 34.870640, 46.262970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.412960, 34.494221, 46.798424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.811428, 34.476151, 46.768486>,  <40.050510, 34.465309, 46.750523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.811428, 34.476151, 46.768486>,  <39.412960, 34.494221, 46.798424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.811428, 34.476151, 46.768486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074304, -0.013589, 0.997143,
		-0.046067, -0.998886, -0.010180,
		0.996171, -0.045179, -0.074848,
		40.110279, 34.462601, 46.746033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.539188, 34.162670, 47.373768>,  <39.412960, 34.494221, 46.798424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.539188, 34.162670, 47.373768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.901695, 34.312325, 47.295082>,  <40.119202, 34.402119, 47.247871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.901695, 34.312325, 47.295082>,  <39.539188, 34.162670, 47.373768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.901695, 34.312325, 47.295082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145619, 0.160543, 0.976228,
		0.396825, -0.913371, 0.091014,
		0.906270, 0.374138, -0.196712,
		40.173576, 34.424564, 47.236069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.027008, 33.926197, 47.903103>,  <39.539188, 34.162670, 47.373768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.027008, 33.926197, 47.903103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.202759, 34.255589, 47.759533>,  <40.308208, 34.453224, 47.673393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.202759, 34.255589, 47.759533>,  <40.027008, 33.926197, 47.903103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.202759, 34.255589, 47.759533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095318, 0.354559, 0.930162,
		0.893230, -0.442905, 0.077293,
		0.439379, 0.823482, -0.358920,
		40.334572, 34.502632, 47.651855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.560543, 34.087299, 48.480640>,  <40.027008, 33.926197, 47.903103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.560543, 34.087299, 48.480640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.491001, 34.409798, 48.254456>,  <40.449276, 34.603298, 48.118744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.491001, 34.409798, 48.254456>,  <40.560543, 34.087299, 48.480640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.491001, 34.409798, 48.254456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028635, 0.569821, 0.821269,
		0.984355, 0.158974, -0.075980,
		-0.173856, 0.806244, -0.565459,
		40.438843, 34.651672, 48.084820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.928886, 34.513878, 48.748447>,  <40.560543, 34.087299, 48.480640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.928886, 34.513878, 48.748447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.677471, 34.751236, 48.547325>,  <40.526623, 34.893650, 48.426651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.677471, 34.751236, 48.547325>,  <40.928886, 34.513878, 48.748447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.677471, 34.751236, 48.547325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030062, 0.627449, 0.778077,
		0.777197, 0.504167, -0.376538,
		-0.628539, 0.593400, -0.502807,
		40.488911, 34.929256, 48.396484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.223949, 35.212376, 48.727810>,  <40.928886, 34.513878, 48.748447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.223949, 35.212376, 48.727810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.826611, 35.221786, 48.682732>,  <40.588207, 35.227432, 48.655685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.826611, 35.221786, 48.682732>,  <41.223949, 35.212376, 48.727810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.826611, 35.221786, 48.682732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078958, 0.573147, 0.815640,
		0.083784, 0.819115, -0.567478,
		-0.993351, 0.023531, -0.112696,
		40.528606, 35.228848, 48.648922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.096874, 35.875748, 48.674858>,  <41.223949, 35.212376, 48.727810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.096874, 35.875748, 48.674858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.754936, 35.701736, 48.787991>,  <40.549774, 35.597332, 48.855869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.754936, 35.701736, 48.787991>,  <41.096874, 35.875748, 48.674858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.754936, 35.701736, 48.787991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063939, 0.452614, 0.889411,
		-0.514932, 0.778392, -0.359098,
		-0.854843, -0.435026, 0.282835,
		40.498482, 35.571228, 48.872841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.673069, 36.390030, 48.981724>,  <41.096874, 35.875748, 48.674858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.673069, 36.390030, 48.981724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.526562, 36.039280, 49.106266>,  <40.438660, 35.828831, 49.180992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.526562, 36.039280, 49.106266>,  <40.673069, 36.390030, 48.981724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.526562, 36.039280, 49.106266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113452, 0.374195, 0.920384,
		-0.923569, 0.301779, -0.236537,
		-0.366264, -0.876873, 0.311358,
		40.416683, 35.776218, 49.199673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.185349, 36.926666, 49.162045>,  <40.673069, 36.390030, 48.981724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.185349, 36.926666, 49.162045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.080368, 37.312283, 49.145370>,  <40.017380, 37.543652, 49.135365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.080368, 37.312283, 49.145370>,  <40.185349, 36.926666, 49.162045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.080368, 37.312283, 49.145370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016992, -0.047809, -0.998712,
		-0.964796, -0.261402, 0.028928,
		-0.262448, 0.964045, -0.041684,
		40.001633, 37.601498, 49.132866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.621456, 36.840420, 48.812790>,  <40.185349, 36.926666, 49.162045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.621456, 36.840420, 48.812790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.758152, 37.211136, 48.750473>,  <39.840168, 37.433567, 48.713081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.758152, 37.211136, 48.750473>,  <39.621456, 36.840420, 48.812790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.758152, 37.211136, 48.750473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260048, -0.066051, -0.963334,
		-0.903101, 0.369720, 0.218439,
		0.341735, 0.926793, -0.155796,
		39.860672, 37.489174, 48.703735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.255993, 37.204948, 48.352798>,  <39.621456, 36.840420, 48.812790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.255993, 37.204948, 48.352798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.568352, 37.454269, 48.336330>,  <39.755768, 37.603863, 48.326450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.568352, 37.454269, 48.336330>,  <39.255993, 37.204948, 48.352798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.568352, 37.454269, 48.336330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230252, 0.225952, -0.946536,
		-0.580677, 0.748624, 0.319962,
		0.780896, 0.623304, -0.041167,
		39.802620, 37.641262, 48.323978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.097980, 37.686810, 47.871143>,  <39.255993, 37.204948, 48.352798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.097980, 37.686810, 47.871143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.493328, 37.747494, 47.866909>,  <39.730537, 37.783905, 47.864368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.493328, 37.747494, 47.866909>,  <39.097980, 37.686810, 47.871143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.493328, 37.747494, 47.866909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041240, 0.200399, -0.978846,
		-0.146382, 0.967897, 0.204325,
		0.988368, 0.151712, -0.010581,
		39.789837, 37.793007, 47.863735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.215565, 38.229458, 47.330227>,  <39.097980, 37.686810, 47.871143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.215565, 38.229458, 47.330227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.564396, 38.050144, 47.408726>,  <39.773697, 37.942554, 47.455826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.564396, 38.050144, 47.408726>,  <39.215565, 38.229458, 47.330227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.564396, 38.050144, 47.408726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153427, -0.130343, -0.979526,
		0.464688, 0.884336, -0.044890,
		0.872081, -0.448286, 0.196250,
		39.826019, 37.915657, 47.467602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.693432, 38.525177, 46.897243>,  <39.215565, 38.229458, 47.330227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.693432, 38.525177, 46.897243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.841690, 38.169533, 47.004650>,  <39.930645, 37.956146, 47.069092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.841690, 38.169533, 47.004650>,  <39.693432, 38.525177, 46.897243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.841690, 38.169533, 47.004650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069369, -0.261796, -0.962627,
		0.926182, 0.375416, -0.035356,
		0.370642, -0.889115, 0.268512,
		39.952881, 37.902798, 47.085205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.274719, 38.357376, 46.445805>,  <39.693432, 38.525177, 46.897243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.274719, 38.357376, 46.445805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.138889, 38.012524, 46.596226>,  <40.057392, 37.805611, 46.686478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.138889, 38.012524, 46.596226>,  <40.274719, 38.357376, 46.445805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.138889, 38.012524, 46.596226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052156, -0.381936, -0.922716,
		0.939131, -0.332947, 0.084732,
		-0.339578, -0.862132, 0.376053,
		40.037018, 37.753883, 46.709042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.645157, 37.895126, 46.037640>,  <40.274719, 38.357376, 46.445805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.645157, 37.895126, 46.037640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.346004, 37.696377, 46.213726>,  <40.166512, 37.577126, 46.319378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.346004, 37.696377, 46.213726>,  <40.645157, 37.895126, 46.037640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.346004, 37.696377, 46.213726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075799, -0.594886, -0.800228,
		0.659492, -0.631843, 0.407241,
		-0.747880, -0.496876, 0.440216,
		40.121639, 37.547314, 46.345791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.792652, 37.301865, 45.797115>,  <40.645157, 37.895126, 46.037640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.792652, 37.301865, 45.797115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.410427, 37.281502, 45.913254>,  <40.181091, 37.269283, 45.982937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.410427, 37.281502, 45.913254>,  <40.792652, 37.301865, 45.797115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.410427, 37.281502, 45.913254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252287, -0.368215, -0.894857,
		0.152463, -0.928346, 0.339011,
		-0.955566, -0.050905, 0.290348,
		40.123756, 37.266232, 46.000359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.622063, 36.581882, 45.808285>,  <40.792652, 37.301865, 45.797115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.622063, 36.581882, 45.808285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.299152, 36.815437, 45.773918>,  <40.105408, 36.955570, 45.753300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.299152, 36.815437, 45.773918>,  <40.622063, 36.581882, 45.808285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.299152, 36.815437, 45.773918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176116, -0.377282, -0.909198,
		-0.563285, -0.718842, 0.407402,
		-0.807276, 0.583888, -0.085918,
		40.056969, 36.990604, 45.748142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.062428, 36.139931, 45.662895>,  <40.622063, 36.581882, 45.808285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.062428, 36.139931, 45.662895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.908554, 36.493778, 45.557472>,  <39.816231, 36.706089, 45.494217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.908554, 36.493778, 45.557472>,  <40.062428, 36.139931, 45.662895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.908554, 36.493778, 45.557472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250194, -0.374773, -0.892719,
		-0.888494, -0.277473, 0.365496,
		-0.384684, 0.884621, -0.263561,
		39.793148, 36.759163, 45.478405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.358147, 36.087666, 45.458519>,  <40.062428, 36.139931, 45.662895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.358147, 36.087666, 45.458519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.507458, 36.418575, 45.290581>,  <39.597046, 36.617123, 45.189816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.507458, 36.418575, 45.290581>,  <39.358147, 36.087666, 45.458519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.507458, 36.418575, 45.290581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351520, -0.292690, -0.889251,
		-0.858543, 0.479524, 0.181550,
		0.373279, 0.827278, -0.419849,
		39.619442, 36.666759, 45.164627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.839024, 36.257580, 44.933746>,  <39.358147, 36.087666, 45.458519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.839024, 36.257580, 44.933746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.148975, 36.481636, 44.816578>,  <39.334946, 36.616070, 44.746277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.148975, 36.481636, 44.816578>,  <38.839024, 36.257580, 44.933746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.148975, 36.481636, 44.816578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218240, -0.197835, -0.955632,
		-0.593236, 0.804429, -0.031054,
		0.774882, 0.560138, -0.292922,
		39.381439, 36.649677, 44.728703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.700649, 36.490108, 44.336441>,  <38.839024, 36.257580, 44.933746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.700649, 36.490108, 44.336441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.086880, 36.591270, 44.312122>,  <39.318619, 36.651970, 44.297531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.086880, 36.591270, 44.312122>,  <38.700649, 36.490108, 44.336441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.086880, 36.591270, 44.312122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016608, -0.173312, -0.984727,
		-0.259582, 0.951841, -0.163146,
		0.965578, 0.252908, -0.060797,
		39.376553, 36.667141, 44.293884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.730556, 37.002911, 43.895424>,  <38.700649, 36.490108, 44.336441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.730556, 37.002911, 43.895424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.086281, 36.820354, 43.883854>,  <39.299713, 36.710819, 43.876911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.086281, 36.820354, 43.883854>,  <38.730556, 37.002911, 43.895424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.086281, 36.820354, 43.883854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105266, -0.142743, -0.984146,
		0.445029, 0.878253, -0.174985,
		0.889308, -0.456394, -0.028926,
		39.353073, 36.683437, 43.875175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.135921, 37.423660, 43.442226>,  <38.730556, 37.002911, 43.895424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.135921, 37.423660, 43.442226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.306675, 37.062485, 43.462090>,  <39.409126, 36.845779, 43.474007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.306675, 37.062485, 43.462090>,  <39.135921, 37.423660, 43.442226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.306675, 37.062485, 43.462090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069367, -0.087443, -0.993752,
		0.901641, 0.420774, -0.099962,
		0.426886, -0.902941, 0.049655,
		39.434742, 36.791603, 43.476986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.550507, 37.418396, 42.881943>,  <39.135921, 37.423660, 43.442226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.550507, 37.418396, 42.881943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.542961, 37.034992, 42.995712>,  <39.538433, 36.804951, 43.063972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.542961, 37.034992, 42.995712>,  <39.550507, 37.418396, 42.881943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.542961, 37.034992, 42.995712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005221, -0.284566, -0.958642,
		0.999808, -0.016601, 0.010373,
		-0.018866, -0.958513, 0.284424,
		39.537300, 36.747437, 43.081039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.984997, 37.151478, 42.452595>,  <39.550507, 37.418396, 42.881943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.984997, 37.151478, 42.452595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.793858, 36.816910, 42.559978>,  <39.679176, 36.616169, 42.624409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.793858, 36.816910, 42.559978>,  <39.984997, 37.151478, 42.452595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.793858, 36.816910, 42.559978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130278, -0.234753, -0.963285,
		0.868731, -0.495274, 0.003208,
		-0.477844, -0.836418, 0.268461,
		39.650505, 36.565983, 42.640518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.209911, 36.637749, 42.062737>,  <39.984997, 37.151478, 42.452595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.209911, 36.637749, 42.062737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.844345, 36.505295, 42.156635>,  <39.625004, 36.425823, 42.212975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.844345, 36.505295, 42.156635>,  <40.209911, 36.637749, 42.062737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.844345, 36.505295, 42.156635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138302, -0.289685, -0.947077,
		0.381613, -0.898016, 0.218952,
		-0.913917, -0.331136, 0.234745,
		39.570171, 36.405952, 42.227058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.123260, 35.957489, 41.626949>,  <40.209911, 36.637749, 42.062737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.123260, 35.957489, 41.626949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.769550, 36.111950, 41.731972>,  <39.557323, 36.204628, 41.794987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.769550, 36.111950, 41.731972>,  <40.123260, 35.957489, 41.626949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.769550, 36.111950, 41.731972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356812, -0.196062, -0.913370,
		-0.301225, -0.901357, 0.311159,
		-0.884279, 0.386155, 0.262556,
		39.504265, 36.227795, 41.810738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.710480, 35.595619, 41.186039>,  <40.123260, 35.957489, 41.626949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.710480, 35.595619, 41.186039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.483150, 35.901329, 41.307949>,  <39.346752, 36.084755, 41.381096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.483150, 35.901329, 41.307949>,  <39.710480, 35.595619, 41.186039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.483150, 35.901329, 41.307949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468853, 0.003588, -0.883269,
		-0.676155, -0.644879, 0.356294,
		-0.568323, 0.764276, 0.304779,
		39.312653, 36.130611, 41.399384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.087868, 35.314705, 41.165920>,  <39.710480, 35.595619, 41.186039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.087868, 35.314705, 41.165920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.071880, 35.712894, 41.131424>,  <39.062286, 35.951809, 41.110725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.071880, 35.712894, 41.131424>,  <39.087868, 35.314705, 41.165920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.071880, 35.712894, 41.131424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460721, -0.094946, -0.882452,
		-0.886645, 0.004457, 0.462430,
		-0.039973, 0.995473, -0.086237,
		39.059887, 36.011536, 41.105553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.460445, 35.452290, 40.860912>,  <39.087868, 35.314705, 41.165920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.460445, 35.452290, 40.860912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.686367, 35.774158, 40.787704>,  <38.821918, 35.967281, 40.743778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.686367, 35.774158, 40.787704>,  <38.460445, 35.452290, 40.860912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.686367, 35.774158, 40.787704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168642, -0.104558, -0.980116,
		-0.807809, 0.584440, 0.076646,
		0.564805, 0.804672, -0.183024,
		38.855808, 36.015560, 40.732796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.001049, 35.777924, 40.407467>,  <38.460445, 35.452290, 40.860912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.001049, 35.777924, 40.407467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.364292, 35.941727, 40.372513>,  <38.582237, 36.040009, 40.351540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.364292, 35.941727, 40.372513>,  <38.001049, 35.777924, 40.407467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.364292, 35.941727, 40.372513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072770, -0.051184, -0.996034,
		-0.412356, 0.910870, -0.016681,
		0.908112, 0.409507, -0.087390,
		38.636726, 36.064579, 40.346294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.960438, 36.445038, 40.066490>,  <38.001049, 35.777924, 40.407467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.960438, 36.445038, 40.066490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.332081, 36.316380, 39.993484>,  <38.555065, 36.239185, 39.949680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.332081, 36.316380, 39.993484>,  <37.960438, 36.445038, 40.066490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.332081, 36.316380, 39.993484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166339, 0.077318, -0.983033,
		0.330300, 0.943698, 0.018334,
		0.929103, -0.321646, -0.182512,
		38.610813, 36.219887, 39.938732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.199032, 36.902107, 39.543892>,  <37.960438, 36.445038, 40.066490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.199032, 36.902107, 39.543892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.446617, 36.588135, 39.532795>,  <38.595169, 36.399754, 39.526134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.446617, 36.588135, 39.532795>,  <38.199032, 36.902107, 39.543892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.446617, 36.588135, 39.532795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025227, 0.055177, -0.998158,
		0.785013, 0.617126, 0.053955,
		0.618966, -0.784928, -0.027746,
		38.632305, 36.352657, 39.524471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.631866, 37.062103, 39.059849>,  <38.199032, 36.902107, 39.543892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.631866, 37.062103, 39.059849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.671722, 36.666862, 39.106724>,  <38.695637, 36.429718, 39.134850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.671722, 36.666862, 39.106724>,  <38.631866, 37.062103, 39.059849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.671722, 36.666862, 39.106724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027657, -0.114982, -0.992983,
		0.994639, 0.102185, 0.015871,
		0.099643, -0.988098, 0.117192,
		38.701614, 36.370434, 39.141880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.262444, 36.779476, 38.700680>,  <38.631866, 37.062103, 39.059849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.262444, 36.779476, 38.700680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.995869, 36.483635, 38.738312>,  <38.835926, 36.306129, 38.760891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.995869, 36.483635, 38.738312>,  <39.262444, 36.779476, 38.700680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.995869, 36.483635, 38.738312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033083, -0.155398, -0.987298,
		0.744830, -0.654856, 0.128031,
		-0.666434, -0.739605, 0.094081,
		38.795940, 36.261753, 38.766537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.500240, 36.309334, 38.237404>,  <39.262444, 36.779476, 38.700680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.500240, 36.309334, 38.237404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.122932, 36.196835, 38.307991>,  <38.896549, 36.129333, 38.350342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.122932, 36.196835, 38.307991>,  <39.500240, 36.309334, 38.237404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.122932, 36.196835, 38.307991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125375, -0.190417, -0.973665,
		0.307447, -0.940552, 0.144353,
		-0.943270, -0.281252, 0.176465,
		38.839951, 36.112457, 38.360931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.380028, 35.699238, 37.802746>,  <39.500240, 36.309334, 38.237404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.380028, 35.699238, 37.802746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.020508, 35.845638, 37.899246>,  <38.804794, 35.933479, 37.957146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.020508, 35.845638, 37.899246>,  <39.380028, 35.699238, 37.802746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.020508, 35.845638, 37.899246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256140, 0.008131, -0.966606,
		-0.355737, -0.930580, 0.086438,
		-0.898802, 0.365998, 0.241251,
		38.750866, 35.955437, 37.971622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.841030, 35.281624, 37.311954>,  <39.380028, 35.699238, 37.802746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.841030, 35.281624, 37.311954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.581009, 35.560589, 37.432652>,  <38.424995, 35.727966, 37.505070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.581009, 35.560589, 37.432652>,  <38.841030, 35.281624, 37.311954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.581009, 35.560589, 37.432652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396487, 0.027455, -0.917630,
		-0.648252, -0.716142, 0.258668,
		-0.650052, 0.697414, 0.301739,
		38.385994, 35.769814, 37.523174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.179295, 35.047733, 37.115246>,  <38.841030, 35.281624, 37.311954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.179295, 35.047733, 37.115246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.205730, 35.445370, 37.149708>,  <38.221592, 35.683952, 37.170383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.205730, 35.445370, 37.149708>,  <38.179295, 35.047733, 37.115246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.205730, 35.445370, 37.149708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374067, 0.104727, -0.921470,
		-0.925044, 0.028671, 0.378776,
		0.066088, 0.994088, 0.086152,
		38.225555, 35.743595, 37.175552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.481899, 35.346249, 36.957859>,  <38.179295, 35.047733, 37.115246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.481899, 35.346249, 36.957859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.734295, 35.650883, 36.898739>,  <37.885731, 35.833664, 36.863266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.734295, 35.650883, 36.898739>,  <37.481899, 35.346249, 36.957859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.734295, 35.650883, 36.898739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381767, 0.138969, -0.913751,
		-0.675359, 0.632991, 0.378435,
		0.630987, 0.761584, -0.147802,
		37.923592, 35.879356, 36.854397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.058899, 35.889259, 36.673069>,  <37.481899, 35.346249, 36.957859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.058899, 35.889259, 36.673069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.436657, 35.966286, 36.566456>,  <37.663311, 36.012501, 36.502487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.436657, 35.966286, 36.566456>,  <37.058899, 35.889259, 36.673069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.436657, 35.966286, 36.566456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303141, 0.195879, -0.932597,
		-0.127380, 0.961535, 0.243363,
		0.944394, 0.192567, -0.266529,
		37.719975, 36.024055, 36.486496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.964485, 36.527523, 36.299389>,  <37.058899, 35.889259, 36.673069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.964485, 36.527523, 36.299389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.299225, 36.339752, 36.186733>,  <37.500069, 36.227089, 36.119141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.299225, 36.339752, 36.186733>,  <36.964485, 36.527523, 36.299389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.299225, 36.339752, 36.186733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211977, 0.196469, -0.957322,
		0.504729, 0.860835, 0.064906,
		0.836848, -0.469430, -0.281641,
		37.550278, 36.198925, 36.102242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.253376, 36.917938, 35.787048>,  <36.964485, 36.527523, 36.299389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.253376, 36.917938, 35.787048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.439533, 36.571136, 35.715809>,  <37.551228, 36.363056, 35.673065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.439533, 36.571136, 35.715809>,  <37.253376, 36.917938, 35.787048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.439533, 36.571136, 35.715809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086787, 0.155547, -0.984009,
		0.880840, 0.473405, -0.002854,
		0.465391, -0.867002, -0.178098,
		37.579151, 36.311035, 35.662380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.882595, 37.154476, 35.311687>,  <37.253376, 36.917938, 35.787048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.882595, 37.154476, 35.311687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.805229, 36.762177, 35.300991>,  <37.758812, 36.526794, 35.294575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.805229, 36.762177, 35.300991>,  <37.882595, 37.154476, 35.311687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.805229, 36.762177, 35.300991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032712, 0.033683, -0.998897,
		0.980572, -0.192325, -0.038597,
		-0.193413, -0.980753, -0.026738,
		37.747204, 36.467949, 35.292969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.372398, 36.892223, 34.911503>,  <37.882595, 37.154476, 35.311687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.372398, 36.892223, 34.911503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.053467, 36.651768, 34.889980>,  <37.862106, 36.507496, 34.877068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.053467, 36.651768, 34.889980>,  <38.372398, 36.892223, 34.911503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.053467, 36.651768, 34.889980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046218, 0.149702, -0.987650,
		0.601768, -0.784999, -0.147146,
		-0.797333, -0.601137, -0.053805,
		37.814266, 36.471428, 34.873840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.481613, 36.666611, 34.183815>,  <38.372398, 36.892223, 34.911503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.481613, 36.666611, 34.183815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.103577, 36.578236, 34.280136>,  <37.876755, 36.525211, 34.337929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.103577, 36.578236, 34.280136>,  <38.481613, 36.666611, 34.183815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.103577, 36.578236, 34.280136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270018, 0.112863, -0.956218,
		0.184091, -0.968735, -0.166324,
		-0.945093, -0.220941, 0.240799,
		37.820049, 36.511955, 34.352375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.472309, 36.425934, 33.343842>,  <38.481613, 36.666611, 34.183815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.472309, 36.425934, 33.343842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.659641, 36.762470, 33.451775>,  <38.772041, 36.964394, 33.516533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.659641, 36.762470, 33.451775>,  <38.472309, 36.425934, 33.343842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.659641, 36.762470, 33.451775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032288, 0.288894, -0.956816,
		-0.882962, 0.456822, 0.108134,
		0.468334, 0.841341, 0.269832,
		38.800140, 37.014874, 33.532722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.102928, 36.140900, 33.547890>,  <38.472309, 36.425934, 33.343842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.102928, 36.140900, 33.547890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.256969, 35.912746, 33.838093>,  <39.349396, 35.775856, 34.012215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.256969, 35.912746, 33.838093>,  <39.102928, 36.140900, 33.547890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.256969, 35.912746, 33.838093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.900272, 0.059276, -0.431272,
		0.202985, 0.819237, 0.536328,
		0.385106, -0.570383, 0.725504,
		39.372501, 35.741631, 34.055744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.761814, 36.209156, 33.465744>,  <39.102928, 36.140900, 33.547890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.761814, 36.209156, 33.465744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.783096, 35.941956, 33.762646>,  <39.795864, 35.781635, 33.940788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.783096, 35.941956, 33.762646>,  <39.761814, 36.209156, 33.465744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.783096, 35.941956, 33.762646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.982941, -0.096017, -0.156866,
		0.176057, 0.737938, 0.651500,
		0.053202, -0.668003, 0.742254,
		39.799057, 35.741554, 33.985321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.259792, 36.350201, 33.966194>,  <39.761814, 36.209156, 33.465744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.259792, 36.350201, 33.966194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.265984, 35.956585, 33.895283>,  <40.269699, 35.720417, 33.852737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.265984, 35.956585, 33.895283>,  <40.259792, 36.350201, 33.966194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.265984, 35.956585, 33.895283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.980851, 0.049367, -0.188402,
		0.194146, -0.170967, 0.965959,
		0.015476, -0.984039, -0.177278,
		40.270626, 35.661373, 33.842098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.790298, 36.080639, 34.423698>,  <40.259792, 36.350201, 33.966194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.790298, 36.080639, 34.423698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.748703, 35.827919, 34.116447>,  <40.723747, 35.676289, 33.932098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.748703, 35.827919, 34.116447>,  <40.790298, 36.080639, 34.423698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.748703, 35.827919, 34.116447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.988282, -0.152405, -0.008437,
		-0.111735, -0.760000, 0.640246,
		-0.103988, -0.631801, -0.768124,
		40.717506, 35.638378, 33.886009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.424244, 36.091797, 34.288746>,  <40.790298, 36.080639, 34.423698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.424244, 36.091797, 34.288746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.274494, 35.837425, 34.018803>,  <41.184643, 35.684803, 33.856834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.274494, 35.837425, 34.018803>,  <41.424244, 36.091797, 34.288746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.274494, 35.837425, 34.018803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.921449, -0.173657, -0.347528,
		0.103809, -0.751956, 0.650989,
		-0.374374, -0.635929, -0.674862,
		41.162182, 35.646648, 33.816345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.796227, 35.386692, 34.328503>,  <41.424244, 36.091797, 34.288746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.796227, 35.386692, 34.328503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.653721, 35.458012, 33.961617>,  <41.568218, 35.500801, 33.741486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.653721, 35.458012, 33.961617>,  <41.796227, 35.386692, 34.328503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.653721, 35.458012, 33.961617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.907199, -0.169073, -0.385234,
		-0.223763, -0.969342, -0.101517,
		-0.356259, 0.178297, -0.917218,
		41.546844, 35.511501, 33.686451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.843628, 34.793251, 33.686108>,  <41.796227, 35.386692, 34.328503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.843628, 34.793251, 33.686108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.891857, 35.189201, 33.656170>,  <41.920795, 35.426773, 33.638206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.891857, 35.189201, 33.656170>,  <41.843628, 34.793251, 33.686108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.891857, 35.189201, 33.656170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.971997, -0.133045, -0.193705,
		-0.201702, -0.049391, -0.978201,
		0.120577, 0.989879, -0.074843,
		41.928032, 35.486164, 33.633717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.581829, 35.031055, 33.896896>,  <41.843628, 34.793251, 33.686108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.581829, 35.031055, 33.896896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.870274, 35.212189, 33.687157>,  <43.043339, 35.320869, 33.561314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.870274, 35.212189, 33.687157>,  <42.581829, 35.031055, 33.896896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.870274, 35.212189, 33.687157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229289, -0.558197, -0.797397,
		-0.653781, 0.695237, -0.298690,
		0.721108, 0.452837, -0.524349,
		43.086605, 35.348042, 33.529850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.274673, 35.311062, 33.292747>,  <42.581829, 35.031055, 33.896896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.274673, 35.311062, 33.292747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.659863, 35.270592, 33.192795>,  <42.890976, 35.246311, 33.132824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.659863, 35.270592, 33.192795>,  <42.274673, 35.311062, 33.292747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.659863, 35.270592, 33.192795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263262, -0.552461, -0.790873,
		-0.058033, 0.827376, -0.558642,
		0.962977, -0.101172, -0.249877,
		42.948757, 35.240242, 33.117832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.402493, 35.448746, 32.554150>,  <42.274673, 35.311062, 33.292747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.402493, 35.448746, 32.554150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.715088, 35.224758, 32.664211>,  <42.902645, 35.090366, 32.730247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.715088, 35.224758, 32.664211>,  <42.402493, 35.448746, 32.554150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.715088, 35.224758, 32.664211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080875, -0.528208, -0.845255,
		0.618656, 0.638304, -0.458076,
		0.781488, -0.559969, 0.275156,
		42.949535, 35.056767, 32.746758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.809235, 35.514450, 31.951042>,  <42.402493, 35.448746, 32.554150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.809235, 35.514450, 31.951042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.945271, 35.201019, 32.159023>,  <43.026894, 35.012962, 32.283813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.945271, 35.201019, 32.159023>,  <42.809235, 35.514450, 31.951042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.945271, 35.201019, 32.159023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184428, -0.486599, -0.853936,
		0.922131, 0.386310, -0.020974,
		0.340090, -0.783573, 0.519954,
		43.047298, 34.965946, 32.315010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.463451, 35.356468, 31.651993>,  <42.809235, 35.514450, 31.951042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.463451, 35.356468, 31.651993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.328289, 35.026245, 31.832783>,  <43.247192, 34.828114, 31.941256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.328289, 35.026245, 31.832783>,  <43.463451, 35.356468, 31.651993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.328289, 35.026245, 31.832783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189674, -0.530100, -0.826449,
		0.921869, -0.193535, 0.335710,
		-0.337906, -0.825554, 0.451974,
		43.226917, 34.778580, 31.968374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.757900, 34.913113, 31.348789>,  <43.463451, 35.356468, 31.651993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.757900, 34.913113, 31.348789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.487667, 34.677246, 31.525822>,  <43.325527, 34.535725, 31.632040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.487667, 34.677246, 31.525822>,  <43.757900, 34.913113, 31.348789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.487667, 34.677246, 31.525822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046214, -0.632973, -0.772793,
		0.735832, -0.501634, 0.454878,
		-0.675585, -0.589668, 0.442580,
		43.284992, 34.500347, 31.658596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.062401, 34.296925, 31.222866>,  <43.757900, 34.913113, 31.348789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.062401, 34.296925, 31.222866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.686699, 34.202850, 31.322849>,  <43.461277, 34.146404, 31.382839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.686699, 34.202850, 31.322849>,  <44.062401, 34.296925, 31.222866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.686699, 34.202850, 31.322849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001372, -0.730863, -0.682523,
		0.343205, -0.640723, 0.686793,
		-0.939260, -0.235187, 0.249957,
		43.404922, 34.132294, 31.397837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.971878, 33.590611, 31.243101>,  <44.062401, 34.296925, 31.222866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.971878, 33.590611, 31.243101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.581573, 33.676594, 31.226662>,  <43.347393, 33.728184, 31.216797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.581573, 33.676594, 31.226662>,  <43.971878, 33.590611, 31.243101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.581573, 33.676594, 31.226662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125742, -0.704353, -0.698624,
		-0.179125, -0.676520, 0.714307,
		-0.975758, 0.214960, -0.041100,
		43.288845, 33.741081, 31.214333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.615494, 33.009495, 31.350311>,  <43.971878, 33.590611, 31.243101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.615494, 33.009495, 31.350311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.371815, 33.253765, 31.147942>,  <43.225609, 33.400326, 31.026520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.371815, 33.253765, 31.147942>,  <43.615494, 33.009495, 31.350311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.371815, 33.253765, 31.147942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132476, -0.707373, -0.694315,
		-0.781878, -0.355949, 0.511827,
		-0.609193, 0.610675, -0.505925,
		43.189056, 33.436966, 30.996164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.051796, 32.579739, 31.150505>,  <43.615494, 33.009495, 31.350311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.051796, 32.579739, 31.150505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.029346, 32.904129, 30.917555>,  <43.015877, 33.098763, 30.777784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.029346, 32.904129, 30.917555>,  <43.051796, 32.579739, 31.150505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.029346, 32.904129, 30.917555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059669, -0.584979, -0.808851,
		-0.996639, -0.010646, 0.081221,
		-0.056124, 0.810979, -0.582377,
		43.012508, 33.147423, 30.742842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.523151, 32.364506, 30.793072>,  <43.051796, 32.579739, 31.150505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.523151, 32.364506, 30.793072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.685055, 32.667118, 30.587616>,  <42.782196, 32.848686, 30.464342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.685055, 32.667118, 30.587616>,  <42.523151, 32.364506, 30.793072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.685055, 32.667118, 30.587616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082778, -0.529088, -0.844520,
		-0.910667, 0.384349, -0.151531,
		0.404763, 0.756533, -0.513638,
		42.806484, 32.894077, 30.433525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.089863, 32.476280, 30.210398>,  <42.523151, 32.364506, 30.793072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.089863, 32.476280, 30.210398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.441395, 32.635563, 30.105261>,  <42.652313, 32.731133, 30.042179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.441395, 32.635563, 30.105261>,  <42.089863, 32.476280, 30.210398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.441395, 32.635563, 30.105261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151147, -0.290161, -0.944966,
		-0.452558, 0.870194, -0.194816,
		0.878832, 0.398206, -0.262842,
		42.705044, 32.755024, 30.026409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.936852, 32.924564, 29.636826>,  <42.089863, 32.476280, 30.210398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.936852, 32.924564, 29.636826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.328201, 32.842007, 29.631308>,  <42.563011, 32.792473, 29.627996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.328201, 32.842007, 29.631308>,  <41.936852, 32.924564, 29.636826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.328201, 32.842007, 29.631308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065162, -0.244219, -0.967528,
		0.196327, 0.947501, -0.252386,
		0.978371, -0.206398, -0.013795,
		42.621712, 32.780087, 29.627169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.074081, 33.212063, 29.001837>,  <41.936852, 32.924564, 29.636826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.074081, 33.212063, 29.001837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.378494, 32.971218, 29.098417>,  <42.561142, 32.826710, 29.156366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.378494, 32.971218, 29.098417>,  <42.074081, 33.212063, 29.001837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.378494, 32.971218, 29.098417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090494, -0.467090, -0.879567,
		0.642377, 0.647525, -0.409955,
		0.761028, -0.602112, 0.241451,
		42.606804, 32.790585, 29.170853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.479492, 33.136368, 28.440941>,  <42.074081, 33.212063, 29.001837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.479492, 33.136368, 28.440941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.622730, 32.818829, 28.637543>,  <42.708672, 32.628304, 28.755503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.622730, 32.818829, 28.637543>,  <42.479492, 33.136368, 28.440941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.622730, 32.818829, 28.637543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136714, -0.565319, -0.813464,
		0.923623, 0.224101, -0.310967,
		0.358093, -0.793847, 0.491504,
		42.730160, 32.580673, 28.784994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.094082, 32.819633, 28.114332>,  <42.479492, 33.136368, 28.440941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.094082, 32.819633, 28.114332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.976940, 32.514725, 28.345219>,  <42.906654, 32.331779, 28.483751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.976940, 32.514725, 28.345219>,  <43.094082, 32.819633, 28.114332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.976940, 32.514725, 28.345219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148946, -0.632681, -0.759954,
		0.944486, -0.136579, 0.298818,
		-0.292850, -0.762274, 0.577215,
		42.889084, 32.286041, 28.518383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.549358, 32.287693, 28.031254>,  <43.094082, 32.819633, 28.114332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.549358, 32.287693, 28.031254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.223362, 32.105526, 28.174574>,  <43.027763, 31.996225, 28.260567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.223362, 32.105526, 28.174574>,  <43.549358, 32.287693, 28.031254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.223362, 32.105526, 28.174574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135759, -0.751178, -0.645988,
		0.563342, -0.477835, 0.674033,
		-0.814994, -0.455418, 0.358300,
		42.978863, 31.968901, 28.282064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.638901, 31.612391, 27.684750>,  <43.549358, 32.287693, 28.031254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.638901, 31.612391, 27.684750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.268745, 31.584698, 27.833805>,  <43.046650, 31.568081, 27.923239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.268745, 31.584698, 27.833805>,  <43.638901, 31.612391, 27.684750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.268745, 31.584698, 27.833805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195513, -0.755069, -0.625816,
		0.324695, -0.651979, 0.685198,
		-0.925391, -0.069234, 0.372638,
		42.991127, 31.563927, 27.945597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.509212, 30.901356, 27.777664>,  <43.638901, 31.612391, 27.684750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.509212, 30.901356, 27.777664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.156956, 31.084631, 27.729456>,  <42.945602, 31.194597, 27.700531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.156956, 31.084631, 27.729456>,  <43.509212, 30.901356, 27.777664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.156956, 31.084631, 27.729456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315188, -0.756514, -0.573012,
		-0.353723, -0.466634, 0.810637,
		-0.880646, 0.458190, -0.120519,
		42.892761, 31.222088, 27.693300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.989090, 30.377443, 27.613749>,  <43.509212, 30.901356, 27.777664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.989090, 30.377443, 27.613749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.822453, 30.711815, 27.470825>,  <42.722469, 30.912437, 27.385071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.822453, 30.711815, 27.470825>,  <42.989090, 30.377443, 27.613749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.822453, 30.711815, 27.470825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311262, -0.500441, -0.807883,
		-0.854145, -0.225344, 0.468675,
		-0.416595, 0.835930, -0.357308,
		42.697475, 30.962593, 27.363632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.227009, 30.328367, 27.396172>,  <42.989090, 30.377443, 27.613749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.227009, 30.328367, 27.396172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.452084, 30.568258, 27.168591>,  <42.587128, 30.712193, 27.032042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.452084, 30.568258, 27.168591>,  <42.227009, 30.328367, 27.396172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.452084, 30.568258, 27.168591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278615, -0.510399, -0.813552,
		-0.778305, 0.616293, -0.120101,
		0.562686, 0.599729, -0.568954,
		42.620888, 30.748177, 26.997904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.988396, 30.298353, 26.781944>,  <42.227009, 30.328367, 27.396172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.988396, 30.298353, 26.781944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.344849, 30.449656, 26.681694>,  <42.558720, 30.540436, 26.621544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.344849, 30.449656, 26.681694>,  <41.988396, 30.298353, 26.781944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.344849, 30.449656, 26.681694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072168, -0.427159, -0.901292,
		-0.447973, 0.821255, -0.353356,
		0.891130, 0.378254, -0.250623,
		42.612186, 30.563131, 26.606506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.939617, 30.560938, 26.061647>,  <41.988396, 30.298353, 26.781944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.939617, 30.560938, 26.061647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.308018, 30.460930, 26.181145>,  <42.529057, 30.400925, 26.252842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.308018, 30.460930, 26.181145>,  <41.939617, 30.560938, 26.061647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.308018, 30.460930, 26.181145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133212, -0.518511, -0.844630,
		0.366075, 0.817702, -0.444244,
		0.921002, -0.250019, 0.298742,
		42.584320, 30.385923, 26.270767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.291016, 30.952341, 25.485891>,  <41.939617, 30.560938, 26.061647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.291016, 30.952341, 25.485891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.591930, 30.989578, 25.746780>,  <42.772480, 31.011921, 25.903313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.591930, 30.989578, 25.746780>,  <42.291016, 30.952341, 25.485891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.591930, 30.989578, 25.746780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647535, 0.287016, 0.705918,
		-0.121483, -0.953392, 0.276199,
		0.752290, 0.093091, 0.652222,
		42.817619, 31.017506, 25.942448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.394932, 31.163937, 24.855511>,  <42.291016, 30.952341, 25.485891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.394932, 31.163937, 24.855511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.593056, 31.432541, 25.075962>,  <42.711929, 31.593704, 25.208233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.593056, 31.432541, 25.075962>,  <42.394932, 31.163937, 24.855511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.593056, 31.432541, 25.075962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404565, -0.739725, 0.537711,
		0.768762, -0.043366, -0.638063,
		0.495310, 0.671510, 0.551128,
		42.741650, 31.633993, 25.241301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.127483, 31.010349, 24.846182>,  <42.394932, 31.163937, 24.855511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.127483, 31.010349, 24.846182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.113598, 31.212811, 25.190880>,  <43.105267, 31.334288, 25.397699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.113598, 31.212811, 25.190880>,  <43.127483, 31.010349, 24.846182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.113598, 31.212811, 25.190880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246900, -0.831195, 0.498152,
		0.968419, 0.230056, -0.096118,
		-0.034710, 0.506151, 0.861746,
		43.103184, 31.364656, 25.449404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.854275, 31.068235, 24.594654>,  <43.127483, 31.010349, 24.846182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.854275, 31.068235, 24.594654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.787731, 30.789173, 24.873394>,  <43.747803, 30.621737, 25.040638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.787731, 30.789173, 24.873394>,  <43.854275, 31.068235, 24.594654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.787731, 30.789173, 24.873394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663749, 0.443391, 0.602364,
		-0.729219, 0.562744, 0.389305,
		-0.166363, -0.697656, 0.696850,
		43.737823, 30.579876, 25.082449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.629845, 31.269680, 25.265594>,  <43.854275, 31.068235, 24.594654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.629845, 31.269680, 25.265594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.854637, 30.950689, 25.353416>,  <43.989513, 30.759295, 25.406111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.854637, 30.950689, 25.353416>,  <43.629845, 31.269680, 25.265594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.854637, 30.950689, 25.353416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640955, 0.587636, 0.493822,
		-0.522832, -0.136793, 0.841388,
		0.561981, -0.797478, 0.219557,
		44.023232, 30.711445, 25.419283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.836288, 31.323038, 25.944374>,  <43.629845, 31.269680, 25.265594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.836288, 31.323038, 25.944374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.122459, 31.129139, 25.743105>,  <44.294163, 31.012800, 25.622343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.122459, 31.129139, 25.743105>,  <43.836288, 31.323038, 25.944374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.122459, 31.129139, 25.743105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682276, 0.639872, 0.353643,
		0.150537, -0.596307, 0.788515,
		0.715429, -0.484748, -0.503170,
		44.337090, 30.983715, 25.592154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.334732, 30.941607, 26.405272>,  <43.836288, 31.323038, 25.944374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.334732, 30.941607, 26.405272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.478718, 31.081329, 26.059229>,  <44.565109, 31.165163, 25.851603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.478718, 31.081329, 26.059229>,  <44.334732, 30.941607, 26.405272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.478718, 31.081329, 26.059229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687548, 0.527466, 0.499057,
		0.630640, -0.774444, -0.050300,
		0.359960, 0.349309, -0.865108,
		44.586704, 31.186121, 25.799696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.017605, 30.796597, 26.447161>,  <44.334732, 30.941607, 26.405272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.017605, 30.796597, 26.447161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.970219, 31.123074, 26.220959>,  <44.941788, 31.318960, 26.085238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.970219, 31.123074, 26.220959>,  <45.017605, 30.796597, 26.447161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.970219, 31.123074, 26.220959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545698, 0.529316, 0.649644,
		0.829566, -0.231635, -0.508100,
		-0.118465, 0.816192, -0.565505,
		44.934681, 31.367931, 26.051308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.691074, 31.185003, 26.364029>,  <45.017605, 30.796597, 26.447161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.691074, 31.185003, 26.364029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.372837, 31.426304, 26.341703>,  <45.181892, 31.571085, 26.328308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.372837, 31.426304, 26.341703>,  <45.691074, 31.185003, 26.364029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.372837, 31.426304, 26.341703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478963, 0.682731, 0.551791,
		0.370975, 0.412269, -0.832113,
		-0.795595, 0.603252, -0.055815,
		45.134159, 31.607279, 26.324959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.053406, 31.876850, 26.309929>,  <45.691074, 31.185003, 26.364029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.053406, 31.876850, 26.309929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.672073, 31.925716, 26.420366>,  <45.443272, 31.955036, 26.486629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.672073, 31.925716, 26.420366>,  <46.053406, 31.876850, 26.309929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.672073, 31.925716, 26.420366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285414, 0.662836, 0.692234,
		-0.098439, 0.738732, -0.666772,
		-0.953336, 0.122163, 0.276093,
		45.386074, 31.962366, 26.503195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.906483, 32.622623, 26.297218>,  <46.053406, 31.876850, 26.309929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.906483, 32.622623, 26.297218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.635788, 32.455112, 26.539429>,  <45.473373, 32.354607, 26.684755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.635788, 32.455112, 26.539429>,  <45.906483, 32.622623, 26.297218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.635788, 32.455112, 26.539429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290934, 0.603414, 0.742461,
		-0.676306, 0.678616, -0.286515,
		-0.676733, -0.418774, 0.605525,
		45.432770, 32.329479, 26.721087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.389660, 33.120632, 26.615343>,  <45.906483, 32.622623, 26.297218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.389660, 33.120632, 26.615343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.383713, 32.802288, 26.857464>,  <45.380142, 32.611282, 27.002735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.383713, 32.802288, 26.857464>,  <45.389660, 33.120632, 26.615343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.383713, 32.802288, 26.857464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065473, 0.604842, 0.793649,
		-0.997744, -0.027830, -0.061101,
		-0.014870, -0.795859, 0.605300,
		45.379253, 32.563530, 27.039053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.822582, 33.159115, 27.016342>,  <45.389660, 33.120632, 26.615343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.822582, 33.159115, 27.016342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.033154, 32.892609, 27.227610>,  <45.159496, 32.732704, 27.354370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.033154, 32.892609, 27.227610>,  <44.822582, 33.159115, 27.016342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.033154, 32.892609, 27.227610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037456, 0.602440, 0.797284,
		-0.849393, -0.439497, 0.292187,
		0.526430, -0.666264, 0.528171,
		45.191082, 32.692730, 27.386061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.416786, 33.132481, 27.605900>,  <44.822582, 33.159115, 27.016342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.416786, 33.132481, 27.605900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.774120, 32.986286, 27.710489>,  <44.988522, 32.898571, 27.773243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.774120, 32.986286, 27.710489>,  <44.416786, 33.132481, 27.605900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.774120, 32.986286, 27.710489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029102, 0.533575, 0.845252,
		-0.448446, -0.762704, 0.466025,
		0.893336, -0.365487, 0.261476,
		45.042122, 32.876640, 27.788933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.292896, 33.012367, 28.293550>,  <44.416786, 33.132481, 27.605900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.292896, 33.012367, 28.293550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.688679, 33.010662, 28.235649>,  <44.926147, 33.009640, 28.200909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.688679, 33.010662, 28.235649>,  <44.292896, 33.012367, 28.293550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.688679, 33.010662, 28.235649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139917, 0.285963, 0.947971,
		0.037355, -0.958231, 0.283544,
		0.989458, -0.004261, -0.144755,
		44.985516, 33.009384, 28.192223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.519428, 32.679096, 28.857325>,  <44.292896, 33.012367, 28.293550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.519428, 32.679096, 28.857325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.811291, 32.913727, 28.716734>,  <44.986408, 33.054504, 28.632380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.811291, 32.913727, 28.716734>,  <44.519428, 32.679096, 28.857325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.811291, 32.913727, 28.716734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279618, 0.213125, 0.936158,
		0.624033, -0.781351, -0.008509,
		0.729655, 0.586573, -0.351476,
		45.030186, 33.089699, 28.611292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.020630, 32.633022, 29.387236>,  <44.519428, 32.679096, 28.857325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.020630, 32.633022, 29.387236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.123302, 32.969349, 29.196594>,  <45.184906, 33.171143, 29.082209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.123302, 32.969349, 29.196594>,  <45.020630, 32.633022, 29.387236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.123302, 32.969349, 29.196594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146379, 0.453617, 0.879093,
		0.955348, -0.295409, -0.006644,
		0.256678, 0.840812, -0.476604,
		45.200306, 33.221592, 29.053614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.723507, 32.825306, 29.701025>,  <45.020630, 32.633022, 29.387236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.723507, 32.825306, 29.701025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.580902, 33.151005, 29.517763>,  <45.495338, 33.346424, 29.407806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.580902, 33.151005, 29.517763>,  <45.723507, 32.825306, 29.701025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.580902, 33.151005, 29.517763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182620, 0.541650, 0.820527,
		0.916270, 0.208858, -0.341802,
		-0.356511, 0.814244, -0.458156,
		45.473949, 33.395279, 29.380316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.226692, 33.318394, 29.853191>,  <45.723507, 32.825306, 29.701025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.226692, 33.318394, 29.853191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.890182, 33.508724, 29.750549>,  <45.688274, 33.622921, 29.688965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.890182, 33.508724, 29.750549>,  <46.226692, 33.318394, 29.853191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.890182, 33.508724, 29.750549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009899, 0.488140, 0.872709,
		0.540515, 0.731649, -0.415371,
		-0.841276, 0.475824, -0.256604,
		45.637798, 33.651470, 29.673569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.379288, 33.969398, 30.030796>,  <46.226692, 33.318394, 29.853191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.379288, 33.969398, 30.030796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.979542, 33.955376, 30.028215>,  <45.739693, 33.946964, 30.026667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.979542, 33.955376, 30.028215>,  <46.379288, 33.969398, 30.030796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.979542, 33.955376, 30.028215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024930, 0.558107, 0.829395,
		-0.025474, 0.829028, -0.558626,
		-0.999365, -0.035054, -0.006450,
		45.679733, 33.944859, 30.026279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.240631, 34.621109, 30.238539>,  <46.379288, 33.969398, 30.030796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.240631, 34.621109, 30.238539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.892170, 34.429981, 30.283764>,  <45.683094, 34.315304, 30.310898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.892170, 34.429981, 30.283764>,  <46.240631, 34.621109, 30.238539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.892170, 34.429981, 30.283764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087317, 0.377349, 0.921946,
		-0.483183, 0.793285, -0.370450,
		-0.871155, -0.477815, 0.113061,
		45.630825, 34.286636, 30.317682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.720757, 35.123352, 30.580259>,  <46.240631, 34.621109, 30.238539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.720757, 35.123352, 30.580259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.572464, 34.762527, 30.668671>,  <45.483490, 34.546032, 30.721718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.572464, 34.762527, 30.668671>,  <45.720757, 35.123352, 30.580259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.572464, 34.762527, 30.668671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201436, 0.310418, 0.929013,
		-0.906633, 0.299889, -0.296788,
		-0.370729, -0.902057, 0.221027,
		45.461246, 34.491909, 30.734980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.236553, 35.256302, 31.029741>,  <45.720757, 35.123352, 30.580259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.236553, 35.256302, 31.029741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.303951, 34.866791, 31.090897>,  <45.344391, 34.633083, 31.127590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.303951, 34.866791, 31.090897>,  <45.236553, 35.256302, 31.029741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.303951, 34.866791, 31.090897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184556, 0.121195, 0.975321,
		-0.968270, -0.192556, -0.159294,
		0.168499, -0.973773, 0.152887,
		45.354500, 34.574657, 31.136763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.628620, 34.829811, 31.444824>,  <45.236553, 35.256302, 31.029741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.628620, 34.829811, 31.444824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.974972, 34.631298, 31.469986>,  <45.182781, 34.512192, 31.485083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.974972, 34.631298, 31.469986>,  <44.628620, 34.829811, 31.444824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.974972, 34.631298, 31.469986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031723, 0.071016, 0.996971,
		-0.499247, -0.865251, 0.045747,
		0.865879, -0.496283, 0.062903,
		45.234737, 34.482414, 31.488857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.520447, 34.632542, 32.127762>,  <44.628620, 34.829811, 31.444824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.520447, 34.632542, 32.127762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.903000, 34.539135, 32.057556>,  <45.132530, 34.483089, 32.015430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.903000, 34.539135, 32.057556>,  <44.520447, 34.632542, 32.127762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.903000, 34.539135, 32.057556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220396, 0.182432, 0.958199,
		-0.191738, -0.955085, 0.225941,
		0.956380, -0.233520, -0.175518,
		45.189915, 34.469078, 32.004902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.718472, 34.154240, 32.658794>,  <44.520447, 34.632542, 32.127762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.718472, 34.154240, 32.658794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.063496, 34.325932, 32.551651>,  <45.270512, 34.428947, 32.487366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.063496, 34.325932, 32.551651>,  <44.718472, 34.154240, 32.658794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.063496, 34.325932, 32.551651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096740, 0.379736, 0.920023,
		0.496618, -0.819489, 0.286022,
		0.862562, 0.429230, -0.267861,
		45.322266, 34.454700, 32.471294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.087463, 34.149673, 33.265293>,  <44.718472, 34.154240, 32.658794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.087463, 34.149673, 33.265293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.296688, 34.413662, 33.049572>,  <45.422222, 34.572056, 32.920139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.296688, 34.413662, 33.049572>,  <45.087463, 34.149673, 33.265293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.296688, 34.413662, 33.049572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263987, 0.476195, 0.838778,
		0.810384, -0.581098, 0.074853,
		0.523057, 0.659972, -0.539303,
		45.453606, 34.611652, 32.887779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.731094, 34.157063, 33.632824>,  <45.087463, 34.149673, 33.265293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.731094, 34.157063, 33.632824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.684563, 34.481064, 33.402916>,  <45.656643, 34.675465, 33.264973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.684563, 34.481064, 33.402916>,  <45.731094, 34.157063, 33.632824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.684563, 34.481064, 33.402916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330604, 0.577275, 0.746628,
		0.936572, -0.103163, -0.334948,
		-0.116333, 0.810006, -0.574766,
		45.649662, 34.724068, 33.230488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.462238, 34.463058, 33.443615>,  <45.731094, 34.157063, 33.632824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.462238, 34.463058, 33.443615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.191093, 34.756504, 33.424370>,  <46.028408, 34.932571, 33.412823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.191093, 34.756504, 33.424370>,  <46.462238, 34.463058, 33.443615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.191093, 34.756504, 33.424370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501746, 0.509457, 0.699074,
		0.537360, 0.449736, -0.713429,
		-0.677860, 0.733615, -0.048108,
		45.987736, 34.976589, 33.409939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.430908, 34.922180, 34.165375>,  <46.462238, 34.463058, 33.443615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.430908, 34.922180, 34.165375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.609207, 34.700584, 34.446629>,  <46.716187, 34.567627, 34.615383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.609207, 34.700584, 34.446629>,  <46.430908, 34.922180, 34.165375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.609207, 34.700584, 34.446629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.781929, 0.623351, -0.004575,
		-0.435767, 0.551844, 0.711038,
		0.445751, -0.553988, 0.703139,
		46.742931, 34.534389, 34.657570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.716946, 35.344929, 34.689850>,  <46.430908, 34.922180, 34.165375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.716946, 35.344929, 34.689850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.935490, 35.010563, 34.710770>,  <47.066616, 34.809944, 34.723320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.935490, 35.010563, 34.710770>,  <46.716946, 35.344929, 34.689850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.935490, 35.010563, 34.710770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.832752, 0.548847, 0.072736,
		-0.089504, 0.003811, 0.995979,
		0.546363, -0.835914, 0.052297,
		47.099400, 34.759789, 34.726460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.031483, 35.172199, 35.275330>,  <46.716946, 35.344929, 34.689850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.031483, 35.172199, 35.275330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.257549, 35.042282, 34.971989>,  <47.393188, 34.964333, 34.789986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.257549, 35.042282, 34.971989>,  <47.031483, 35.172199, 35.275330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.257549, 35.042282, 34.971989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667886, 0.719738, 0.189489,
		0.484272, -0.613585, 0.623694,
		0.565163, -0.324792, -0.758354,
		47.427097, 34.944843, 34.744484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.680023, 35.191322, 35.478619>,  <47.031483, 35.172199, 35.275330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.680023, 35.191322, 35.478619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.689175, 35.229717, 35.080570>,  <47.694664, 35.252754, 34.841740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.689175, 35.229717, 35.080570>,  <47.680023, 35.191322, 35.478619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.689175, 35.229717, 35.080570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571196, 0.815663, 0.091811,
		0.820495, -0.570509, -0.036166,
		0.022880, 0.095989, -0.995120,
		47.696037, 35.258514, 34.782036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<34.280785, 37.290417, 43.759090> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.208336, 36.901707, 43.819550>,  <34.164867, 36.668480, 43.855827>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.208336, 36.901707, 43.819550>,  <34.280785, 37.290417, 43.759090>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.208336, 36.901707, 43.819550> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112944, -0.132123, -0.984778,
		0.976953, -0.195441, -0.085825,
		-0.181126, -0.971775, 0.151151,
		34.153999, 36.610176, 43.864895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.786118, 36.759621, 43.262127>,  <34.280785, 37.290417, 43.759090>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.786118, 36.759621, 43.262127> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.464214, 36.561039, 43.392292>,  <34.271072, 36.441891, 43.470390>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.464214, 36.561039, 43.392292>,  <34.786118, 36.759621, 43.262127>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.464214, 36.561039, 43.392292> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136121, -0.379252, -0.915226,
		0.577786, -0.780831, 0.237627,
		-0.804757, -0.496459, 0.325414,
		34.222786, 36.412102, 43.489918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.766235, 36.235668, 42.754456>,  <34.786118, 36.759621, 43.262127>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.766235, 36.235668, 42.754456> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.409424, 36.240765, 42.935177>,  <34.195339, 36.243820, 43.043610>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.409424, 36.240765, 42.935177>,  <34.766235, 36.235668, 42.754456>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.409424, 36.240765, 42.935177> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436778, -0.281412, -0.854419,
		0.116261, -0.959503, 0.256589,
		-0.892025, 0.012737, 0.451807,
		34.141815, 36.244587, 43.070721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.466675, 35.579754, 42.525188>,  <34.766235, 36.235668, 42.754456>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.466675, 35.579754, 42.525188> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.157867, 35.808693, 42.635757>,  <33.972584, 35.946056, 42.702099>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.157867, 35.808693, 42.635757>,  <34.466675, 35.579754, 42.525188>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.157867, 35.808693, 42.635757> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377234, -0.062573, -0.924002,
		-0.511554, -0.817620, 0.264216,
		-0.772015, 0.572348, 0.276424,
		33.926262, 35.980396, 42.718685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.806538, 35.255260, 42.364880>,  <34.466675, 35.579754, 42.525188>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.806538, 35.255260, 42.364880> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.717522, 35.644901, 42.380886>,  <33.664112, 35.878685, 42.390488>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.717522, 35.644901, 42.380886>,  <33.806538, 35.255260, 42.364880>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.717522, 35.644901, 42.380886> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372453, -0.047016, -0.926859,
		-0.900975, -0.221164, 0.373270,
		-0.222537, 0.974103, 0.040013,
		33.650761, 35.937134, 42.392891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.062889, 35.298374, 42.127560>,  <33.806538, 35.255260, 42.364880>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.062889, 35.298374, 42.127560> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.201252, 35.671169, 42.084213>,  <33.284271, 35.894848, 42.058205>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.201252, 35.671169, 42.084213>,  <33.062889, 35.298374, 42.127560>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.201252, 35.671169, 42.084213> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624940, 0.142707, -0.767518,
		-0.699854, 0.333213, 0.631801,
		0.345909, 0.931989, -0.108364,
		33.305023, 35.950768, 42.051704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.451992, 35.779011, 42.066708>,  <33.062889, 35.298374, 42.127560>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.451992, 35.779011, 42.066708> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.766743, 35.973446, 41.914635>,  <32.955593, 36.090107, 41.823391>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.766743, 35.973446, 41.914635>,  <32.451992, 35.779011, 42.066708>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.766743, 35.973446, 41.914635> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522977, 0.198238, -0.828973,
		-0.327587, 0.851129, 0.410202,
		0.786881, 0.486088, -0.380180,
		33.002808, 36.119270, 41.800579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.152950, 36.325100, 41.644787>,  <32.451992, 35.779011, 42.066708>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.152950, 36.325100, 41.644787> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.520889, 36.248695, 41.507736>,  <32.741653, 36.202854, 41.425507>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.520889, 36.248695, 41.507736>,  <32.152950, 36.325100, 41.644787>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.520889, 36.248695, 41.507736> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347531, 0.008293, -0.937632,
		0.181936, 0.981554, -0.058752,
		0.919849, -0.191007, -0.342629,
		32.796844, 36.191395, 41.404949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.242699, 36.778439, 41.039520>,  <32.152950, 36.325100, 41.644787>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.242699, 36.778439, 41.039520> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.545582, 36.521297, 40.993244>,  <32.727310, 36.367012, 40.965481>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.545582, 36.521297, 40.993244>,  <32.242699, 36.778439, 41.039520>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.545582, 36.521297, 40.993244> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034384, 0.137639, -0.989885,
		0.652271, 0.753524, 0.082117,
		0.757205, -0.642850, -0.115687,
		32.772743, 36.328442, 40.958538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.740902, 37.053455, 40.591694>,  <32.242699, 36.778439, 41.039520>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.740902, 37.053455, 40.591694> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.799484, 36.657921, 40.580700>,  <32.834633, 36.420601, 40.574104>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.799484, 36.657921, 40.580700>,  <32.740902, 37.053455, 40.591694>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.799484, 36.657921, 40.580700> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158486, 0.050877, -0.986050,
		0.976439, 0.140056, 0.164168,
		0.146454, -0.988836, -0.027481,
		32.843422, 36.361271, 40.572456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.338787, 36.934563, 40.186981>,  <32.740902, 37.053455, 40.591694>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.338787, 36.934563, 40.186981> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.133507, 36.591267, 40.184399>,  <33.010338, 36.385288, 40.182850>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.133507, 36.591267, 40.184399>,  <33.338787, 36.934563, 40.186981>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.133507, 36.591267, 40.184399> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068906, -0.033704, -0.997054,
		0.855498, -0.512133, 0.076435,
		-0.513201, -0.858245, -0.006456,
		32.979546, 36.333794, 40.182461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.627937, 36.727703, 39.606178>,  <33.338787, 36.934563, 40.186981>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.627937, 36.727703, 39.606178> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.352272, 36.441368, 39.651134>,  <33.186874, 36.269566, 39.678108>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.352272, 36.441368, 39.651134>,  <33.627937, 36.727703, 39.606178>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.352272, 36.441368, 39.651134> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227958, -0.361407, -0.904113,
		0.687819, -0.597458, 0.412248,
		-0.689159, -0.715841, 0.112387,
		33.145523, 36.226616, 39.684849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.922817, 36.106167, 39.503094>,  <33.627937, 36.727703, 39.606178>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.922817, 36.106167, 39.503094> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.537094, 36.040081, 39.420322>,  <33.305660, 36.000427, 39.370659>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.537094, 36.040081, 39.420322>,  <33.922817, 36.106167, 39.503094>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.537094, 36.040081, 39.420322> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256633, -0.390554, -0.884085,
		0.065249, -0.905632, 0.419014,
		-0.964303, -0.165219, -0.206932,
		33.247803, 35.990517, 39.358242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.893967, 35.463425, 39.211437>,  <33.922817, 36.106167, 39.503094>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.893967, 35.463425, 39.211437> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.574768, 35.670410, 39.087872>,  <33.383247, 35.794601, 39.013733>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.574768, 35.670410, 39.087872>,  <33.893967, 35.463425, 39.211437>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.574768, 35.670410, 39.087872> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225042, -0.219650, -0.949268,
		-0.559064, -0.827034, 0.058830,
		-0.797999, 0.517463, -0.308916,
		33.335369, 35.825649, 38.995197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.571278, 34.969524, 38.730312>,  <33.893967, 35.463425, 39.211437>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.571278, 34.969524, 38.730312> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.429459, 35.336620, 38.658707>,  <33.344368, 35.556877, 38.615742>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.429459, 35.336620, 38.658707>,  <33.571278, 34.969524, 38.730312>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.429459, 35.336620, 38.658707> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101196, -0.152664, -0.983084,
		-0.929546, -0.366665, -0.038745,
		-0.354548, 0.917742, -0.179013,
		33.323093, 35.611942, 38.605003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.154320, 34.812778, 38.199932>,  <33.571278, 34.969524, 38.730312>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.154320, 34.812778, 38.199932> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.190220, 35.210831, 38.183613>,  <33.211758, 35.449661, 38.173820>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.190220, 35.210831, 38.183613>,  <33.154320, 34.812778, 38.199932>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.190220, 35.210831, 38.183613> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111578, -0.050750, -0.992459,
		-0.989695, 0.084519, -0.115589,
		0.089748, 0.995129, -0.040796,
		33.217144, 35.509369, 38.171375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.729649, 34.942890, 37.611061>,  <33.154320, 34.812778, 38.199932>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.729649, 34.942890, 37.611061> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.970600, 35.259876, 37.649284>,  <33.115173, 35.450069, 37.672218>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.970600, 35.259876, 37.649284>,  <32.729649, 34.942890, 37.611061>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.970600, 35.259876, 37.649284> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164241, -0.005905, -0.986402,
		-0.781128, 0.609885, -0.133713,
		0.602382, 0.792468, 0.095556,
		33.151314, 35.497616, 37.677952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.511700, 35.285900, 37.111252>,  <32.729649, 34.942890, 37.611061>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.511700, 35.285900, 37.111252> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.880497, 35.411427, 37.201984>,  <33.101776, 35.486744, 37.256424>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.880497, 35.411427, 37.201984>,  <32.511700, 35.285900, 37.111252>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.880497, 35.411427, 37.201984> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248896, -0.031558, -0.968016,
		-0.296620, 0.948959, -0.107203,
		0.921991, 0.313816, 0.226831,
		33.157093, 35.505569, 37.270035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.568707, 35.856800, 36.736614>,  <32.511700, 35.285900, 37.111252>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.568707, 35.856800, 36.736614> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.939892, 35.732937, 36.819557>,  <33.162601, 35.658619, 36.869324>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.939892, 35.732937, 36.819557>,  <32.568707, 35.856800, 36.736614>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.939892, 35.732937, 36.819557> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261457, 0.144454, -0.954344,
		0.265562, 0.939813, 0.215009,
		0.927964, -0.309653, 0.207359,
		33.218281, 35.640041, 36.881763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.007214, 36.337502, 36.361874>,  <32.568707, 35.856800, 36.736614>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.007214, 36.337502, 36.361874> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.249535, 36.030170, 36.444508>,  <33.394928, 35.845772, 36.494087>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.249535, 36.030170, 36.444508>,  <33.007214, 36.337502, 36.361874>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.249535, 36.030170, 36.444508> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291608, -0.027160, -0.956152,
		0.740252, 0.639476, 0.207599,
		0.605798, -0.768331, 0.206581,
		33.431274, 35.799671, 36.506481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.513756, 36.569874, 36.161720>,  <33.007214, 36.337502, 36.361874>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.513756, 36.569874, 36.161720> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.543041, 36.171272, 36.177795>,  <33.560612, 35.932110, 36.187439>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.543041, 36.171272, 36.177795>,  <33.513756, 36.569874, 36.161720>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.543041, 36.171272, 36.177795> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261269, -0.019721, -0.965065,
		0.962485, 0.081156, 0.258912,
		0.073214, -0.996506, 0.040185,
		33.565006, 35.872322, 36.189850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.139126, 36.497360, 35.766460>,  <33.513756, 36.569874, 36.161720>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.139126, 36.497360, 35.766460> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.944374, 36.147995, 35.762535>,  <33.827522, 35.938374, 35.760178>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.944374, 36.147995, 35.762535>,  <34.139126, 36.497360, 35.766460>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.944374, 36.147995, 35.762535> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254897, -0.131321, -0.958009,
		0.835452, -0.468934, 0.286569,
		-0.486875, -0.873416, -0.009818,
		33.798313, 35.885971, 35.759590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.528049, 37.094917, 35.683182>,  <34.139126, 36.497360, 35.766460>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.528049, 37.094917, 35.683182> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.786083, 37.301414, 35.457844>,  <34.940903, 37.425312, 35.322639>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.786083, 37.301414, 35.457844>,  <34.528049, 37.094917, 35.683182>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.786083, 37.301414, 35.457844> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364919, 0.439609, 0.820718,
		0.671345, -0.735006, 0.095196,
		0.645082, 0.516246, -0.563347,
		34.979607, 37.456287, 35.288841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.187893, 37.047531, 36.019070>,  <34.528049, 37.094917, 35.683182>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.187893, 37.047531, 36.019070> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.202084, 37.376427, 35.791855>,  <35.210598, 37.573765, 35.655525>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.202084, 37.376427, 35.791855>,  <35.187893, 37.047531, 36.019070>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.202084, 37.376427, 35.791855> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149297, 0.557654, 0.816537,
		0.988156, -0.113774, -0.102975,
		0.035476, 0.822239, -0.568035,
		35.212727, 37.623100, 35.621445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.785809, 37.305672, 36.127018>,  <35.187893, 37.047531, 36.019070>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.785809, 37.305672, 36.127018> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.602371, 37.625252, 35.971394>,  <35.492310, 37.817001, 35.878017>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.602371, 37.625252, 35.971394>,  <35.785809, 37.305672, 36.127018>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.602371, 37.625252, 35.971394> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255957, 0.538016, 0.803135,
		0.850985, 0.268733, -0.451229,
		-0.458597, 0.798950, -0.389059,
		35.464790, 37.864937, 35.854675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.246986, 37.871841, 36.298656>,  <35.785809, 37.305672, 36.127018>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.246986, 37.871841, 36.298656> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.884014, 38.015274, 36.211037>,  <35.666229, 38.101334, 36.158466>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.884014, 38.015274, 36.211037>,  <36.246986, 37.871841, 36.298656>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.884014, 38.015274, 36.211037> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016709, 0.551673, 0.833893,
		0.419864, 0.753042, -0.506598,
		-0.907433, 0.358586, -0.219045,
		35.611786, 38.122849, 36.145325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.256870, 38.547798, 36.388218>,  <36.246986, 37.871841, 36.298656>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.256870, 38.547798, 36.388218> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.868889, 38.479252, 36.457302>,  <35.636101, 38.438122, 36.498753>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.868889, 38.479252, 36.457302>,  <36.256870, 38.547798, 36.388218>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.868889, 38.479252, 36.457302> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009874, 0.681559, 0.731697,
		-0.243104, 0.711415, -0.659386,
		-0.969950, -0.171368, 0.172714,
		35.577904, 38.427841, 36.509117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.021851, 39.224892, 36.520416>,  <36.256870, 38.547798, 36.388218>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.021851, 39.224892, 36.520416> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.722771, 38.983665, 36.631599>,  <35.543324, 38.838928, 36.698311>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.722771, 38.983665, 36.631599>,  <36.021851, 39.224892, 36.520416>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.722771, 38.983665, 36.631599> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040150, 0.458877, 0.887592,
		-0.662825, 0.652490, -0.367314,
		-0.747697, -0.603066, 0.277957,
		35.498463, 38.802746, 36.714985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.448589, 39.646919, 36.957142>,  <36.021851, 39.224892, 36.520416>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.448589, 39.646919, 36.957142> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.373486, 39.266182, 37.054089>,  <35.328423, 39.037739, 37.112255>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.373486, 39.266182, 37.054089>,  <35.448589, 39.646919, 36.957142>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.373486, 39.266182, 37.054089> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146309, 0.271106, 0.951365,
		-0.971257, 0.143168, -0.190166,
		-0.187760, -0.951843, 0.242366,
		35.317158, 38.980629, 37.126797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.908779, 39.721378, 37.413189>,  <35.448589, 39.646919, 36.957142>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.908779, 39.721378, 37.413189> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.048397, 39.351379, 37.473244>,  <35.132168, 39.129379, 37.509277>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.048397, 39.351379, 37.473244>,  <34.908779, 39.721378, 37.413189>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.048397, 39.351379, 37.473244> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225135, 0.072752, 0.971607,
		-0.909660, -0.372937, -0.182857,
		0.349045, -0.925000, 0.150141,
		35.153111, 39.073879, 37.518288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.531742, 39.458282, 38.007698>,  <34.908779, 39.721378, 37.413189>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.531742, 39.458282, 38.007698> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.873814, 39.252003, 37.986824>,  <35.079056, 39.128235, 37.974300>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.873814, 39.252003, 37.986824>,  <34.531742, 39.458282, 38.007698>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.873814, 39.252003, 37.986824> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074732, 0.023051, 0.996937,
		-0.512915, -0.856461, 0.058251,
		0.855181, -0.515697, -0.052182,
		35.130367, 39.097294, 37.971169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.396618, 38.814022, 38.323189>,  <34.531742, 39.458282, 38.007698>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.396618, 38.814022, 38.323189> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.788635, 38.892185, 38.337814>,  <35.023846, 38.939083, 38.346592>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.788635, 38.892185, 38.337814>,  <34.396618, 38.814022, 38.323189>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.788635, 38.892185, 38.337814> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045214, 0.039971, 0.998177,
		0.193591, -0.979907, 0.048009,
		0.980040, 0.195409, 0.036567,
		35.082649, 38.950806, 38.348785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.535976, 38.570377, 38.985519>,  <34.396618, 38.814022, 38.323189>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.535976, 38.570377, 38.985519> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.879566, 38.763813, 38.918228>,  <35.085720, 38.879875, 38.877853>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.879566, 38.763813, 38.918228>,  <34.535976, 38.570377, 38.985519>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.879566, 38.763813, 38.918228> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165687, 0.048348, 0.984992,
		0.484469, -0.873957, -0.038595,
		0.858975, 0.483593, -0.168227,
		35.137260, 38.908890, 38.867760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.062153, 38.249454, 39.401966>,  <34.535976, 38.570377, 38.985519>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.062153, 38.249454, 39.401966> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.183365, 38.626015, 39.342709>,  <35.256092, 38.851952, 39.307156>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.183365, 38.626015, 39.342709>,  <35.062153, 38.249454, 39.401966>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.183365, 38.626015, 39.342709> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155753, 0.104438, 0.982259,
		0.940168, -0.320726, -0.114978,
		0.303028, 0.941397, -0.148143,
		35.274273, 38.908432, 39.298267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.771236, 38.224453, 39.606106>,  <35.062153, 38.249454, 39.401966>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.771236, 38.224453, 39.606106> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.631702, 38.597351, 39.644554>,  <35.547981, 38.821091, 39.667622>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.631702, 38.597351, 39.644554>,  <35.771236, 38.224453, 39.606106>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.631702, 38.597351, 39.644554> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423706, 0.065397, 0.903436,
		0.835937, 0.355872, -0.417809,
		-0.348831, 0.932244, 0.096117,
		35.527054, 38.877026, 39.673389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.317524, 38.520111, 39.982853>,  <35.771236, 38.224453, 39.606106>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.317524, 38.520111, 39.982853> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.999416, 38.757404, 40.032841>,  <35.808552, 38.899780, 40.062832>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.999416, 38.757404, 40.032841>,  <36.317524, 38.520111, 39.982853>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.999416, 38.757404, 40.032841> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256974, 0.143160, 0.955756,
		0.549097, 0.792198, -0.266297,
		-0.795272, 0.593234, 0.124965,
		35.760834, 38.935375, 40.070332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.613960, 39.130821, 40.398556>,  <36.317524, 38.520111, 39.982853>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.613960, 39.130821, 40.398556> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.216133, 39.111881, 40.435650>,  <35.977436, 39.100517, 40.457905>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.216133, 39.111881, 40.435650>,  <36.613960, 39.130821, 40.398556>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.216133, 39.111881, 40.435650> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093062, -0.004817, 0.995649,
		-0.046701, 0.998866, 0.009197,
		-0.994564, -0.047354, 0.092731,
		35.917763, 39.097675, 40.463470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.480965, 39.426762, 40.971642>,  <36.613960, 39.130821, 40.398556>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.480965, 39.426762, 40.971642> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.123146, 39.249092, 40.951672>,  <35.908455, 39.142490, 40.939690>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.123146, 39.249092, 40.951672>,  <36.480965, 39.426762, 40.971642>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.123146, 39.249092, 40.951672> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000263, -0.111164, 0.993802,
		-0.446966, 0.889020, 0.099325,
		-0.894551, -0.444169, -0.049921,
		35.854782, 39.115841, 40.936695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.113850, 39.750519, 41.433144>,  <36.480965, 39.426762, 40.971642>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.113850, 39.750519, 41.433144> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.955711, 39.386944, 41.380188>,  <35.860828, 39.168797, 41.348415>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.955711, 39.386944, 41.380188>,  <36.113850, 39.750519, 41.433144>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.955711, 39.386944, 41.380188> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025860, -0.155085, 0.987563,
		-0.918168, 0.387007, 0.084818,
		-0.395347, -0.908942, -0.132386,
		35.837109, 39.114262, 41.340473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.612202, 39.671810, 41.983913>,  <36.113850, 39.750519, 41.433144>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.612202, 39.671810, 41.983913> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.664818, 39.293854, 41.863991>,  <35.696388, 39.067081, 41.792038>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.664818, 39.293854, 41.863991>,  <35.612202, 39.671810, 41.983913>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.664818, 39.293854, 41.863991> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046334, -0.307964, 0.950269,
		-0.990228, -0.111103, -0.084288,
		0.131536, -0.944889, -0.299807,
		35.704277, 39.010387, 41.774048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<34.945202, 39.171154, 42.338772> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.268173, 38.961330, 42.230774>,  <35.461956, 38.835438, 42.165974>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.268173, 38.961330, 42.230774>,  <34.945202, 39.171154, 42.338772>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.268173, 38.961330, 42.230774> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154781, -0.253267, 0.954934,
		-0.569299, -0.812831, -0.123304,
		0.807429, -0.524557, -0.269996,
		35.510403, 38.803963, 42.149776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.828636, 38.415283, 42.626583>,  <34.945202, 39.171154, 42.338772>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.828636, 38.415283, 42.626583> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.217663, 38.479614, 42.559357>,  <35.451080, 38.518215, 42.519020>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.217663, 38.479614, 42.559357>,  <34.828636, 38.415283, 42.626583>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.217663, 38.479614, 42.559357> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215145, -0.347132, 0.912804,
		0.088465, -0.923923, -0.372211,
		0.972567, 0.160831, -0.168068,
		35.509434, 38.527863, 42.508938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.145683, 37.891327, 42.997150>,  <34.828636, 38.415283, 42.626583>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.145683, 37.891327, 42.997150> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.450500, 38.145283, 42.946247>,  <35.633392, 38.297657, 42.915703>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.450500, 38.145283, 42.946247>,  <35.145683, 37.891327, 42.997150>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.450500, 38.145283, 42.946247> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354670, -0.244828, 0.902368,
		0.541752, -0.732782, -0.411748,
		0.762046, 0.634894, -0.127260,
		35.679115, 38.335751, 42.908070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.786037, 37.504223, 43.148209>,  <35.145683, 37.891327, 42.997150>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.786037, 37.504223, 43.148209> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.848911, 37.896366, 43.195869>,  <35.886635, 38.131653, 43.224468>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.848911, 37.896366, 43.195869>,  <35.786037, 37.504223, 43.148209>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.848911, 37.896366, 43.195869> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468505, -0.180238, 0.864880,
		0.869365, -0.080119, -0.487632,
		0.157183, 0.980355, 0.119156,
		35.896065, 38.190472, 43.231617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.493847, 37.569328, 43.307903>,  <35.786037, 37.504223, 43.148209>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.493847, 37.569328, 43.307903> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.306030, 37.897125, 43.439335>,  <36.193340, 38.093803, 43.518196>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.306030, 37.897125, 43.439335>,  <36.493847, 37.569328, 43.307903>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.306030, 37.897125, 43.439335> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342488, -0.173961, 0.923276,
		0.813774, 0.546057, -0.198982,
		-0.469546, 0.819487, 0.328583,
		36.165165, 38.142971, 43.537910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.906685, 37.730492, 43.892502>,  <36.493847, 37.569328, 43.307903>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.906685, 37.730492, 43.892502> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.621826, 38.010155, 43.917908>,  <36.450912, 38.177952, 43.933151>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.621826, 38.010155, 43.917908>,  <36.906685, 37.730492, 43.892502>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.621826, 38.010155, 43.917908> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264711, 0.183627, 0.946683,
		0.650215, 0.690988, -0.315842,
		-0.712144, 0.699154, 0.063515,
		36.408184, 38.219902, 43.936962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.163017, 38.199150, 44.323513>,  <36.906685, 37.730492, 43.892502>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.163017, 38.199150, 44.323513> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.770897, 38.276669, 44.338745>,  <36.535625, 38.323181, 44.347885>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.770897, 38.276669, 44.338745>,  <37.163017, 38.199150, 44.323513>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.770897, 38.276669, 44.338745> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040251, 0.007280, 0.999163,
		0.193358, 0.981014, -0.014937,
		-0.980302, 0.193798, 0.038079,
		36.476807, 38.334808, 44.350170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.048790, 38.867992, 44.594765>,  <37.163017, 38.199150, 44.323513>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.048790, 38.867992, 44.594765> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.713852, 38.658821, 44.658516>,  <36.512890, 38.533318, 44.696766>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.713852, 38.658821, 44.658516>,  <37.048790, 38.867992, 44.594765>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.713852, 38.658821, 44.658516> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182765, 0.006985, 0.983132,
		-0.515225, 0.852345, 0.089725,
		-0.837341, -0.522933, 0.159378,
		36.462650, 38.501942, 44.706329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.610653, 39.257252, 45.071026>,  <37.048790, 38.867992, 44.594765>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.610653, 39.257252, 45.071026> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.537544, 38.864067, 45.078918>,  <36.493679, 38.628159, 45.083652>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.537544, 38.864067, 45.078918>,  <36.610653, 39.257252, 45.071026>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.537544, 38.864067, 45.078918> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262300, -0.029415, 0.964538,
		-0.947520, 0.181465, 0.263206,
		-0.182772, -0.982957, 0.019727,
		36.482712, 38.569180, 45.084835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.306316, 39.282471, 45.678291>,  <36.610653, 39.257252, 45.071026>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.306316, 39.282471, 45.678291> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.401943, 38.898479, 45.619938>,  <36.459320, 38.668083, 45.584927>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.401943, 38.898479, 45.619938>,  <36.306316, 39.282471, 45.678291>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.401943, 38.898479, 45.619938> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097856, -0.125655, 0.987236,
		-0.966060, -0.250291, 0.063901,
		0.239067, -0.959982, -0.145882,
		36.473663, 38.610485, 45.576172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.881241, 38.871780, 46.139500>,  <36.306316, 39.282471, 45.678291>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.881241, 38.871780, 46.139500> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.190891, 38.636208, 46.046642>,  <36.376682, 38.494865, 45.990929>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.190891, 38.636208, 46.046642>,  <35.881241, 38.871780, 46.139500>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.190891, 38.636208, 46.046642> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198142, -0.122864, 0.972442,
		-0.601225, -0.798789, 0.021580,
		0.774124, -0.588932, -0.232142,
		36.423130, 38.459526, 45.977001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.898998, 38.299206, 46.613640>,  <35.881241, 38.871780, 46.139500>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.898998, 38.299206, 46.613640> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.282162, 38.309792, 46.499298>,  <36.512058, 38.316143, 46.430695>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.282162, 38.309792, 46.499298>,  <35.898998, 38.299206, 46.613640>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.282162, 38.309792, 46.499298> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287039, -0.072801, 0.955149,
		0.004472, -0.996995, -0.077334,
		0.957908, 0.026469, -0.285851,
		36.569534, 38.317730, 46.413544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.300713, 37.825180, 47.060284>,  <35.898998, 38.299206, 46.613640>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.300713, 37.825180, 47.060284> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.607166, 38.018597, 46.890942>,  <36.791039, 38.134647, 46.789337>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.607166, 38.018597, 46.890942>,  <36.300713, 37.825180, 47.060284>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.607166, 38.018597, 46.890942> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517410, -0.073330, 0.852590,
		0.381222, -0.872242, -0.306372,
		0.766131, 0.483546, -0.423352,
		36.837006, 38.163662, 46.763935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.867840, 37.437241, 47.127781>,  <36.300713, 37.825180, 47.060284>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.867840, 37.437241, 47.127781> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.006603, 37.809601, 47.082035>,  <37.089859, 38.033016, 47.054588>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.006603, 37.809601, 47.082035>,  <36.867840, 37.437241, 47.127781>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.006603, 37.809601, 47.082035> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495692, -0.078457, 0.864948,
		0.796207, -0.356747, -0.488657,
		0.346906, 0.930901, -0.114368,
		37.110676, 38.088871, 47.047726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.587933, 37.366657, 47.459793>,  <36.867840, 37.437241, 47.127781>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.587933, 37.366657, 47.459793> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.513519, 37.757122, 47.415062>,  <37.468872, 37.991402, 47.388222>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.513519, 37.757122, 47.415062>,  <37.587933, 37.366657, 47.459793>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.513519, 37.757122, 47.415062> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413190, 0.180989, 0.892478,
		0.891440, 0.119825, -0.437009,
		-0.186035, 0.976158, -0.111830,
		37.457710, 38.049969, 47.381512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.224617, 37.695656, 47.635479>,  <37.587933, 37.366657, 47.459793>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.224617, 37.695656, 47.635479> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.956764, 37.990376, 47.672825>,  <37.796051, 38.167210, 47.695232>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.956764, 37.990376, 47.672825>,  <38.224617, 37.695656, 47.635479>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.956764, 37.990376, 47.672825> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418973, 0.270962, 0.866627,
		0.613234, 0.619438, -0.490144,
		-0.669631, 0.736802, 0.093365,
		37.755875, 38.211414, 47.700836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.625511, 38.267872, 47.798458>,  <38.224617, 37.695656, 47.635479>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.625511, 38.267872, 47.798458> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.245548, 38.327412, 47.908382>,  <38.017570, 38.363136, 47.974339>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.245548, 38.327412, 47.908382>,  <38.625511, 38.267872, 47.798458>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.245548, 38.327412, 47.908382> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311443, 0.377460, 0.872082,
		0.026074, 0.913985, -0.404909,
		-0.949907, 0.148845, 0.274813,
		37.960575, 38.372066, 47.990826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.747997, 38.761456, 48.334194>,  <38.625511, 38.267872, 47.798458>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.747997, 38.761456, 48.334194> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.378220, 38.617313, 48.384064>,  <38.156353, 38.530827, 48.413986>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.378220, 38.617313, 48.384064>,  <38.747997, 38.761456, 48.334194>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.378220, 38.617313, 48.384064> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049078, 0.211805, 0.976079,
		-0.378142, 0.908451, -0.178117,
		-0.924446, -0.360355, 0.124677,
		38.100887, 38.509209, 48.421467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.352516, 39.178001, 48.717724>,  <38.747997, 38.761456, 48.334194>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.352516, 39.178001, 48.717724> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.151535, 38.835312, 48.764324>,  <38.030945, 38.629700, 48.792286>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.151535, 38.835312, 48.764324>,  <38.352516, 39.178001, 48.717724>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.151535, 38.835312, 48.764324> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058851, 0.100548, 0.993190,
		-0.862600, 0.505886, -0.000102,
		-0.502451, -0.856720, 0.116505,
		38.000801, 38.578297, 48.799274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.146038, 39.361156, 49.321175>,  <38.352516, 39.178001, 48.717724>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.146038, 39.361156, 49.321175> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.033859, 38.978176, 49.293930>,  <37.966553, 38.748386, 49.277584>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.033859, 38.978176, 49.293930>,  <38.146038, 39.361156, 49.321175>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.033859, 38.978176, 49.293930> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010151, -0.067995, 0.997634,
		-0.959816, 0.280476, 0.009349,
		-0.280448, -0.957450, -0.068109,
		37.949726, 38.690941, 49.273499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.514153, 39.263557, 49.847916>,  <38.146038, 39.361156, 49.321175>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.514153, 39.263557, 49.847916> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.660572, 38.897709, 49.779247>,  <37.748425, 38.678200, 49.738045>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.660572, 38.897709, 49.779247>,  <37.514153, 39.263557, 49.847916>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.660572, 38.897709, 49.779247> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092580, -0.147769, 0.984679,
		-0.925978, -0.376336, 0.030585,
		0.366051, -0.914623, -0.171672,
		37.770386, 38.623322, 49.727745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.138920, 38.811905, 50.185482>,  <37.514153, 39.263557, 49.847916>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.138920, 38.811905, 50.185482> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.500301, 38.648563, 50.133293>,  <37.717129, 38.550560, 50.101978>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.500301, 38.648563, 50.133293>,  <37.138920, 38.811905, 50.185482>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.500301, 38.648563, 50.133293> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073046, -0.153259, 0.985483,
		-0.422417, -0.899868, -0.108634,
		0.903453, -0.408349, -0.130471,
		37.771336, 38.526058, 50.094151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.163990, 38.090195, 50.500790>,  <37.138920, 38.811905, 50.185482>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.163990, 38.090195, 50.500790> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.540123, 38.220428, 50.461243>,  <37.765800, 38.298569, 50.437515>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.540123, 38.220428, 50.461243>,  <37.163990, 38.090195, 50.500790>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.540123, 38.220428, 50.461243> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170474, -0.199327, 0.964991,
		0.294480, -0.924263, -0.242937,
		0.940330, 0.325585, -0.098865,
		37.822224, 38.318104, 50.431583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.822533, 37.554417, 50.862465>,  <37.163990, 38.090195, 50.500790>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.822533, 37.554417, 50.862465> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.203323, 37.448734, 50.800568>,  <37.431797, 37.385326, 50.763432>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.203323, 37.448734, 50.800568>,  <36.822533, 37.554417, 50.862465>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.203323, 37.448734, 50.800568> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061851, -0.660907, 0.747914,
		-0.299870, -0.702423, -0.645507,
		0.951973, -0.264202, -0.154741,
		37.488914, 37.369473, 50.754147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.692879, 37.106567, 51.373970>,  <36.822533, 37.554417, 50.862465>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.692879, 37.106567, 51.373970> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.477863, 36.777264, 51.446960>,  <36.348854, 36.579681, 51.490753>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.477863, 36.777264, 51.446960>,  <36.692879, 37.106567, 51.373970>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.477863, 36.777264, 51.446960> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126689, -0.135092, -0.982700,
		0.833669, -0.551354, -0.031681,
		-0.537537, -0.823261, 0.182473,
		36.316601, 36.530285, 51.501701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.988716, 36.573261, 50.920712>,  <36.692879, 37.106567, 51.373970>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.988716, 36.573261, 50.920712> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.625248, 36.434231, 51.013245>,  <36.407169, 36.350811, 51.068764>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.625248, 36.434231, 51.013245>,  <36.988716, 36.573261, 50.920712>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.625248, 36.434231, 51.013245> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176390, -0.182614, -0.967233,
		0.378433, -0.919697, 0.104626,
		-0.908667, -0.347578, 0.231332,
		36.352650, 36.329956, 51.082645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.870235, 35.833611, 50.594585>,  <36.988716, 36.573261, 50.920712>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.870235, 35.833611, 50.594585> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.501316, 35.967796, 50.671341>,  <36.279964, 36.048309, 50.717392>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.501316, 35.967796, 50.671341>,  <36.870235, 35.833611, 50.594585>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.501316, 35.967796, 50.671341> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295415, -0.291840, -0.909703,
		-0.249176, -0.895707, 0.368267,
		-0.922302, 0.335468, 0.191886,
		36.224625, 36.068436, 50.728905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.429352, 35.423267, 50.254120>,  <36.870235, 35.833611, 50.594585>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.429352, 35.423267, 50.254120> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.203270, 35.751797, 50.285034>,  <36.067619, 35.948914, 50.303585>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.203270, 35.751797, 50.285034>,  <36.429352, 35.423267, 50.254120>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.203270, 35.751797, 50.285034> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351498, -0.155005, -0.923267,
		-0.746320, -0.549002, 0.376303,
		-0.565205, 0.821322, 0.077290,
		36.033707, 35.998192, 50.308220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.790462, 35.325729, 49.822010>,  <36.429352, 35.423267, 50.254120>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.790462, 35.325729, 49.822010> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.806301, 35.721832, 49.875408>,  <35.815804, 35.959496, 49.907448>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.806301, 35.721832, 49.875408>,  <35.790462, 35.325729, 49.822010>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.806301, 35.721832, 49.875408> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289684, 0.139239, -0.946940,
		-0.956303, -0.001176, 0.292376,
		0.039597, 0.990258, 0.133496,
		35.818180, 36.018909, 49.915459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.059429, 35.599857, 49.597145>,  <35.790462, 35.325729, 49.822010>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.059429, 35.599857, 49.597145> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.334309, 35.889687, 49.576160>,  <35.499237, 36.063583, 49.563572>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.334309, 35.889687, 49.576160>,  <35.059429, 35.599857, 49.597145>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.334309, 35.889687, 49.576160> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288211, 0.205633, -0.935227,
		-0.666856, 0.657803, 0.350141,
		0.687196, 0.724576, -0.052458,
		35.540466, 36.107059, 49.560425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.689552, 36.119976, 49.168869>,  <35.059429, 35.599857, 49.597145>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.689552, 36.119976, 49.168869> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.063396, 36.260025, 49.143829>,  <35.287704, 36.344055, 49.128803>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.063396, 36.260025, 49.143829>,  <34.689552, 36.119976, 49.168869>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.063396, 36.260025, 49.143829> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140602, 0.202014, -0.969238,
		-0.326706, 0.914661, 0.238032,
		0.934609, 0.350123, -0.062604,
		35.343781, 36.365063, 49.125050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.629745, 36.668175, 48.765965>,  <34.689552, 36.119976, 49.168869>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.629745, 36.668175, 48.765965> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.020920, 36.587273, 48.745064>,  <35.255627, 36.538731, 48.732525>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.020920, 36.587273, 48.745064>,  <34.629745, 36.668175, 48.765965>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.020920, 36.587273, 48.745064> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003398, 0.234701, -0.972062,
		0.208865, 0.950794, 0.228836,
		0.977939, -0.202252, -0.052251,
		35.314301, 36.526596, 48.729389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.103245, 37.234531, 48.427155>,  <34.629745, 36.668175, 48.765965>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.103245, 37.234531, 48.427155> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.310867, 36.895554, 48.382587>,  <35.435440, 36.692165, 48.355846>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.310867, 36.895554, 48.382587>,  <35.103245, 37.234531, 48.427155>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.310867, 36.895554, 48.382587> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039763, 0.154154, -0.987246,
		0.853816, 0.508004, 0.113711,
		0.519055, -0.847448, -0.111419,
		35.466583, 36.641319, 48.349163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.617588, 37.322090, 47.898190>,  <35.103245, 37.234531, 48.427155>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.617588, 37.322090, 47.898190> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.598999, 36.922615, 47.906834>,  <35.587845, 36.682930, 47.912022>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.598999, 36.922615, 47.906834>,  <35.617588, 37.322090, 47.898190>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.598999, 36.922615, 47.906834> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074503, -0.025040, -0.996906,
		0.996137, -0.044722, 0.075569,
		-0.046476, -0.998685, 0.021612,
		35.585056, 36.623009, 47.913319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.048534, 37.123886, 47.364655>,  <35.617588, 37.322090, 47.898190>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.048534, 37.123886, 47.364655> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.815014, 36.809120, 47.444603>,  <35.674904, 36.620262, 47.492573>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.815014, 36.809120, 47.444603>,  <36.048534, 37.123886, 47.364655>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.815014, 36.809120, 47.444603> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004359, -0.249208, -0.968440,
		0.811888, -0.564502, 0.148918,
		-0.583798, -0.786914, 0.199869,
		35.639874, 36.573048, 47.504562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.285480, 36.515884, 46.955063>,  <36.048534, 37.123886, 47.364655>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.285480, 36.515884, 46.955063> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.908455, 36.427116, 47.054920>,  <35.682240, 36.373856, 47.114834>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.908455, 36.427116, 47.054920>,  <36.285480, 36.515884, 46.955063>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.908455, 36.427116, 47.054920> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203879, -0.209784, -0.956255,
		0.264586, -0.952230, 0.152490,
		-0.942564, -0.221923, 0.249645,
		35.625687, 36.360538, 47.129814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.127983, 36.017586, 46.587906>,  <36.285480, 36.515884, 46.955063>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.127983, 36.017586, 46.587906> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.768333, 36.157707, 46.692875>,  <35.552544, 36.241779, 46.755856>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.768333, 36.157707, 46.692875>,  <36.127983, 36.017586, 46.587906>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.768333, 36.157707, 46.692875> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318450, -0.112244, -0.941271,
		-0.300273, -0.929888, 0.212474,
		-0.899125, 0.350300, 0.262419,
		35.498596, 36.262798, 46.771599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.668598, 35.547134, 46.259327>,  <36.127983, 36.017586, 46.587906>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.668598, 35.547134, 46.259327> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.433868, 35.860790, 46.340080>,  <35.293030, 36.048985, 46.388535>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.433868, 35.860790, 46.340080>,  <35.668598, 35.547134, 46.259327>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.433868, 35.860790, 46.340080> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475654, -0.132063, -0.869662,
		-0.655275, -0.606371, 0.450477,
		-0.586829, 0.784139, 0.201886,
		35.257820, 36.096031, 46.400646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.063049, 35.398159, 45.927826>,  <35.668598, 35.547134, 46.259327>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.063049, 35.398159, 45.927826> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.985710, 35.777103, 46.029907>,  <34.939308, 36.004471, 46.091156>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.985710, 35.777103, 46.029907>,  <35.063049, 35.398159, 45.927826>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.985710, 35.777103, 46.029907> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602886, 0.090492, -0.792679,
		-0.774045, -0.307118, 0.553653,
		-0.193345, 0.947359, 0.255202,
		34.927708, 36.061310, 46.106468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.346851, 35.459171, 45.968594>,  <35.063049, 35.398159, 45.927826>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.346851, 35.459171, 45.968594> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.544670, 35.793400, 45.872887>,  <34.663361, 35.993935, 45.815464>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.544670, 35.793400, 45.872887>,  <34.346851, 35.459171, 45.968594>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.544670, 35.793400, 45.872887> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532272, 0.073533, -0.843374,
		-0.687102, 0.544444, 0.481115,
		0.494548, 0.835568, -0.239268,
		34.693035, 36.044071, 45.801105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.858917, 35.808304, 45.574711>,  <34.346851, 35.459171, 45.968594>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.858917, 35.808304, 45.574711> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.169949, 36.050064, 45.505352>,  <34.356567, 36.195122, 45.463737>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.169949, 36.050064, 45.505352>,  <33.858917, 35.808304, 45.574711>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.169949, 36.050064, 45.505352> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440476, 0.326802, -0.836171,
		-0.448716, 0.726568, 0.520339,
		0.777583, 0.604400, -0.173394,
		34.403225, 36.231384, 45.453335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.578526, 36.437599, 45.439205>,  <33.858917, 35.808304, 45.574711>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.578526, 36.437599, 45.439205> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.939095, 36.437725, 45.266029>,  <34.155437, 36.437801, 45.162125>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.939095, 36.437725, 45.266029>,  <33.578526, 36.437599, 45.439205>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.939095, 36.437725, 45.266029> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372945, 0.508453, -0.776136,
		0.219884, 0.861090, 0.458449,
		0.901423, 0.000316, -0.432940,
		34.209522, 36.437820, 45.136147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.510567, 36.986713, 44.966007>,  <33.578526, 36.437599, 45.439205>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.510567, 36.986713, 44.966007> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.820198, 36.755096, 44.863617>,  <34.005978, 36.616127, 44.802185>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.820198, 36.755096, 44.863617>,  <33.510567, 36.986713, 44.966007>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.820198, 36.755096, 44.863617> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168113, 0.201803, -0.964890,
		0.610366, 0.789929, 0.058867,
		0.774075, -0.579040, -0.255971,
		34.052422, 36.581383, 44.786827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.831432, 37.264729, 44.374535>,  <33.510567, 36.986713, 44.966007>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.831432, 37.264729, 44.374535> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.987225, 36.898975, 44.330338>,  <34.080700, 36.679523, 44.303818>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.987225, 36.898975, 44.330338>,  <33.831432, 37.264729, 44.374535>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.987225, 36.898975, 44.330338> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296392, -0.010848, -0.955005,
		0.872041, 0.404706, -0.275241,
		0.389482, -0.914382, -0.110492,
		34.104069, 36.624660, 44.297192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<42.829037, 31.857506, 26.681166> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.613255, 31.525852, 26.739855>,  <42.483788, 31.326860, 26.775068>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.613255, 31.525852, 26.739855>,  <42.829037, 31.857506, 26.681166>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.613255, 31.525852, 26.739855> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195806, 0.293004, 0.935846,
		-0.818933, 0.476115, -0.320412,
		-0.539453, -0.829134, 0.146724,
		42.451420, 31.277113, 26.783873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.129608, 31.986618, 26.856531>,  <42.829037, 31.857506, 26.681166>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.129608, 31.986618, 26.856531> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.282021, 31.652054, 27.014130>,  <42.373466, 31.451315, 27.108688>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.282021, 31.652054, 27.014130>,  <42.129608, 31.986618, 26.856531>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.282021, 31.652054, 27.014130> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031486, 0.437636, 0.898601,
		-0.924027, -0.329986, 0.193087,
		0.381028, -0.836411, 0.393998,
		42.396328, 31.401131, 27.132328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.760109, 31.851715, 27.521791>,  <42.129608, 31.986618, 26.856531>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.760109, 31.851715, 27.521791> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.111286, 31.662870, 27.553595>,  <42.321995, 31.549564, 27.572678>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.111286, 31.662870, 27.553595>,  <41.760109, 31.851715, 27.521791>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.111286, 31.662870, 27.553595> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137863, 0.408343, 0.902358,
		-0.458479, -0.781261, 0.423590,
		0.877947, -0.472110, 0.079510,
		42.374672, 31.521238, 27.577448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.731613, 31.603584, 28.287500>,  <41.760109, 31.851715, 27.521791>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.731613, 31.603584, 28.287500> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.121574, 31.567537, 28.206076>,  <42.355553, 31.545910, 28.157221>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.121574, 31.567537, 28.206076>,  <41.731613, 31.603584, 28.287500>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.121574, 31.567537, 28.206076> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220962, 0.502993, 0.835568,
		0.027092, -0.859580, 0.510283,
		0.974906, -0.090116, -0.203561,
		42.414047, 31.540503, 28.145008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.071732, 31.321283, 28.816273>,  <41.731613, 31.603584, 28.287500>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.071732, 31.321283, 28.816273> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.382019, 31.492855, 28.631111>,  <42.568192, 31.595798, 28.520014>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.382019, 31.492855, 28.631111>,  <42.071732, 31.321283, 28.816273>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.382019, 31.492855, 28.631111> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281618, 0.421150, 0.862162,
		0.564759, -0.799157, 0.205900,
		0.775718, 0.428929, -0.462905,
		42.614735, 31.621534, 28.492239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.336079, 31.568657, 29.336761>,  <42.071732, 31.321283, 28.816273>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.336079, 31.568657, 29.336761> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.564808, 31.746065, 29.060701>,  <42.702045, 31.852510, 28.895065>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.564808, 31.746065, 29.060701>,  <42.336079, 31.568657, 29.336761>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.564808, 31.746065, 29.060701> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392858, 0.590486, 0.704975,
		0.720194, -0.674253, 0.163414,
		0.571825, 0.443520, -0.690150,
		42.736355, 31.879122, 28.853657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.109543, 31.567198, 29.474684>,  <42.336079, 31.568657, 29.336761>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.109543, 31.567198, 29.474684> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.007935, 31.885376, 29.254597>,  <42.946968, 32.076283, 29.122543>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.007935, 31.885376, 29.254597>,  <43.109543, 31.567198, 29.474684>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.007935, 31.885376, 29.254597> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258788, 0.604035, 0.753771,
		0.931935, 0.049083, -0.359289,
		-0.254021, 0.795445, -0.550219,
		42.931728, 32.124008, 29.089531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.621670, 32.020508, 29.471254>,  <43.109543, 31.567198, 29.474684>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.621670, 32.020508, 29.471254> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.305164, 32.252499, 29.393763>,  <43.115261, 32.391693, 29.347267>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.305164, 32.252499, 29.393763>,  <43.621670, 32.020508, 29.471254>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.305164, 32.252499, 29.393763> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241607, 0.587577, 0.772256,
		0.561721, 0.564250, -0.605054,
		-0.791262, 0.579978, -0.193728,
		43.067787, 32.426491, 29.335644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.932507, 32.663296, 29.499302>,  <43.621670, 32.020508, 29.471254>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.932507, 32.663296, 29.499302> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.535343, 32.700794, 29.528555>,  <43.297047, 32.723293, 29.546106>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.535343, 32.700794, 29.528555>,  <43.932507, 32.663296, 29.499302>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.535343, 32.700794, 29.528555> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107433, 0.443882, 0.889622,
		0.050933, 0.891168, -0.450805,
		-0.992907, 0.093742, 0.073133,
		43.237473, 32.728916, 29.550495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.801102, 33.313091, 29.672443>,  <43.932507, 32.663296, 29.499302>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.801102, 33.313091, 29.672443> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.448017, 33.164074, 29.787006>,  <43.236164, 33.074665, 29.855743>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.448017, 33.164074, 29.787006>,  <43.801102, 33.313091, 29.672443>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.448017, 33.164074, 29.787006> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006456, 0.619046, 0.785328,
		-0.469867, 0.691371, -0.548845,
		-0.882713, -0.372543, 0.286406,
		43.183205, 33.052311, 29.872929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.403198, 33.854008, 29.685888>,  <43.801102, 33.313091, 29.672443>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.403198, 33.854008, 29.685888> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.224709, 33.579639, 29.915808>,  <43.117615, 33.415016, 30.053759>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.224709, 33.579639, 29.915808>,  <43.403198, 33.854008, 29.685888>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.224709, 33.579639, 29.915808> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057121, 0.662807, 0.746608,
		-0.893097, 0.300321, -0.334940,
		-0.446223, -0.685925, 0.574797,
		43.090843, 33.373863, 30.088247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.762627, 34.113121, 29.938728>,  <43.403198, 33.854008, 29.685888>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.762627, 34.113121, 29.938728> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.832024, 33.819836, 30.201727>,  <42.873661, 33.643864, 30.359526>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.832024, 33.819836, 30.201727>,  <42.762627, 34.113121, 29.938728>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.832024, 33.819836, 30.201727> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001294, 0.667791, 0.744348,
		-0.984835, -0.128286, 0.116804,
		0.173490, -0.733211, 0.657497,
		42.884071, 33.599873, 30.398975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.329041, 34.199589, 30.402811>,  <42.762627, 34.113121, 29.938728>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.329041, 34.199589, 30.402811> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.597221, 33.965557, 30.585312>,  <42.758129, 33.825138, 30.694813>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.597221, 33.965557, 30.585312>,  <42.329041, 34.199589, 30.402811>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.597221, 33.965557, 30.585312> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024866, 0.596874, 0.801950,
		-0.741533, -0.549016, 0.385629,
		0.670455, -0.585083, 0.456253,
		42.798359, 33.790031, 30.722187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.083557, 34.142040, 31.049574>,  <42.329041, 34.199589, 30.402811>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.083557, 34.142040, 31.049574> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.456921, 34.006950, 31.098042>,  <42.680939, 33.925896, 31.127121>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.456921, 34.006950, 31.098042>,  <42.083557, 34.142040, 31.049574>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.456921, 34.006950, 31.098042> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051367, 0.459998, 0.886433,
		-0.355109, -0.821184, 0.446716,
		0.933412, -0.337727, 0.121167,
		42.736946, 33.905632, 31.134392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.171162, 33.778164, 31.640732>,  <42.083557, 34.142040, 31.049574>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.171162, 33.778164, 31.640732> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.547222, 33.888931, 31.561306>,  <42.772858, 33.955391, 31.513651>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.547222, 33.888931, 31.561306>,  <42.171162, 33.778164, 31.640732>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.547222, 33.888931, 31.561306> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096915, 0.341358, 0.934924,
		0.326679, -0.898216, 0.294091,
		0.940153, 0.276918, -0.198565,
		42.829269, 33.972008, 31.501736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.488831, 33.651455, 32.220413>,  <42.171162, 33.778164, 31.640732>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.488831, 33.651455, 32.220413> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.726376, 33.922012, 32.046139>,  <42.868904, 34.084347, 31.941574>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.726376, 33.922012, 32.046139>,  <42.488831, 33.651455, 32.220413>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.726376, 33.922012, 32.046139> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146018, 0.441915, 0.885093,
		0.791205, -0.589243, 0.163672,
		0.593864, 0.676391, -0.435685,
		42.904533, 34.124928, 31.915434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.050827, 33.636158, 32.646542>,  <42.488831, 33.651455, 32.220413>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.050827, 33.636158, 32.646542> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.080662, 33.973392, 32.433506>,  <43.098560, 34.175732, 32.305687>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.080662, 33.973392, 32.433506>,  <43.050827, 33.636158, 32.646542>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.080662, 33.973392, 32.433506> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184117, 0.513249, 0.838258,
		0.980071, -0.160579, -0.116946,
		0.074584, 0.843084, -0.532585,
		43.103039, 34.226318, 32.273731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.626450, 33.929710, 32.797401>,  <43.050827, 33.636158, 32.646542>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.626450, 33.929710, 32.797401> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.399563, 34.234501, 32.672405>,  <43.263432, 34.417377, 32.597408>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.399563, 34.234501, 32.672405>,  <43.626450, 33.929710, 32.797401>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.399563, 34.234501, 32.672405> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176541, 0.483110, 0.857577,
		0.804423, 0.431267, -0.408550,
		-0.567219, 0.761980, -0.312489,
		43.229397, 34.463097, 32.578659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.013535, 34.419025, 33.063087>,  <43.626450, 33.929710, 32.797401>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.013535, 34.419025, 33.063087> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.669128, 34.597225, 32.964958>,  <43.462486, 34.704144, 32.906082>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.669128, 34.597225, 32.964958>,  <44.013535, 34.419025, 33.063087>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.669128, 34.597225, 32.964958> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193259, 0.732789, 0.652434,
		0.470426, 0.514346, -0.717040,
		-0.861017, 0.445497, -0.245321,
		43.410824, 34.730873, 32.891361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.149117, 35.063591, 32.755997>,  <44.013535, 34.419025, 33.063087>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.149117, 35.063591, 32.755997> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.776875, 35.097733, 32.898369>,  <43.553528, 35.118217, 32.983791>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.776875, 35.097733, 32.898369>,  <44.149117, 35.063591, 32.755997>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.776875, 35.097733, 32.898369> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308763, 0.705277, 0.638161,
		-0.196558, 0.703775, -0.682690,
		-0.930607, 0.085354, 0.355928,
		43.497692, 35.123341, 33.005146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.143612, 35.760487, 32.828495>,  <44.149117, 35.063591, 32.755997>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.143612, 35.760487, 32.828495> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.836544, 35.625198, 33.046227>,  <43.652302, 35.544025, 33.176865>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.836544, 35.625198, 33.046227>,  <44.143612, 35.760487, 32.828495>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.836544, 35.625198, 33.046227> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120282, 0.758246, 0.640777,
		-0.629456, 0.557378, -0.541401,
		-0.767670, -0.338220, 0.544325,
		43.606243, 35.523731, 33.209522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.956505, 35.712414, 32.932175>,  <44.143612, 35.760487, 32.828495>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.956505, 35.712414, 32.932175> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.286564, 35.576424, 33.112640>,  <45.484600, 35.494831, 33.220921>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.286564, 35.576424, 33.112640>,  <44.956505, 35.712414, 32.932175>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.286564, 35.576424, 33.112640> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196731, -0.575711, -0.793633,
		0.529553, 0.743623, -0.408164,
		0.825149, -0.339972, 0.451164,
		45.534107, 35.474430, 33.247990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.451164, 35.798943, 32.460995>,  <44.956505, 35.712414, 32.932175>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.451164, 35.798943, 32.460995> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.560284, 35.491138, 32.691971>,  <45.625755, 35.306458, 32.830555>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.560284, 35.491138, 32.691971>,  <45.451164, 35.798943, 32.460995>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.560284, 35.491138, 32.691971> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016850, -0.603936, -0.796855,
		0.961923, 0.207651, -0.177720,
		0.272799, -0.769508, 0.577441,
		45.642124, 35.260284, 32.865204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.997242, 35.478653, 32.057945>,  <45.451164, 35.798943, 32.460995>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.997242, 35.478653, 32.057945> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.856865, 35.208691, 32.317589>,  <45.772636, 35.046715, 32.473373>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.856865, 35.208691, 32.317589>,  <45.997242, 35.478653, 32.057945>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.856865, 35.208691, 32.317589> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127014, -0.652481, -0.747085,
		0.927742, -0.344631, 0.143263,
		-0.350945, -0.674906, 0.649107,
		45.751583, 35.006218, 32.512321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.455135, 34.961082, 31.937885>,  <45.997242, 35.478653, 32.057945>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.455135, 34.961082, 31.937885> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.123348, 34.801270, 32.094017>,  <45.924278, 34.705379, 32.187698>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.123348, 34.801270, 32.094017>,  <46.455135, 34.961082, 31.937885>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.123348, 34.801270, 32.094017> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144421, -0.521650, -0.840847,
		0.539564, -0.753826, 0.374990,
		-0.829466, -0.399534, 0.390331,
		45.874508, 34.681408, 32.211117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.474117, 34.283848, 31.883356>,  <46.455135, 34.961082, 31.937885>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.474117, 34.283848, 31.883356> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.083290, 34.362862, 31.915144>,  <45.848793, 34.410271, 31.934216>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.083290, 34.362862, 31.915144>,  <46.474117, 34.283848, 31.883356>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.083290, 34.362862, 31.915144> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156598, -0.413797, -0.896799,
		-0.144268, -0.888679, 0.435243,
		-0.977069, 0.197537, 0.079468,
		45.790169, 34.422123, 31.938984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.086853, 33.639336, 31.874109>,  <46.474117, 34.283848, 31.883356>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.086853, 33.639336, 31.874109> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.860123, 33.943066, 31.746275>,  <45.724083, 34.125305, 31.669575>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.860123, 33.943066, 31.746275>,  <46.086853, 33.639336, 31.874109>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.860123, 33.943066, 31.746275> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014427, -0.378717, -0.925400,
		-0.823712, -0.529150, 0.203711,
		-0.566824, 0.759325, -0.319588,
		45.690075, 34.170864, 31.650398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.716362, 33.338108, 31.328653>,  <46.086853, 33.639336, 31.874109>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.716362, 33.338108, 31.328653> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.600273, 33.712162, 31.247372>,  <45.530621, 33.936596, 31.198603>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.600273, 33.712162, 31.247372>,  <45.716362, 33.338108, 31.328653>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.600273, 33.712162, 31.247372> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228192, -0.273846, -0.934311,
		-0.929355, -0.224787, 0.292867,
		-0.290221, 0.935136, -0.203205,
		45.513206, 33.992702, 31.186411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.006920, 33.320221, 30.959047>,  <45.716362, 33.338108, 31.328653>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.006920, 33.320221, 30.959047> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.145939, 33.688263, 30.886812>,  <45.229351, 33.909088, 30.843472>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.145939, 33.688263, 30.886812>,  <45.006920, 33.320221, 30.959047>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.145939, 33.688263, 30.886812> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218442, -0.107842, -0.969873,
		-0.911862, 0.376527, 0.163510,
		0.347550, 0.920107, -0.180587,
		45.250202, 33.964294, 30.832636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.518295, 33.629089, 30.483528>,  <45.006920, 33.320221, 30.959047>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.518295, 33.629089, 30.483528> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.859211, 33.829720, 30.424160>,  <45.063759, 33.950100, 30.388538>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.859211, 33.829720, 30.424160>,  <44.518295, 33.629089, 30.483528>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.859211, 33.829720, 30.424160> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118484, -0.091250, -0.988754,
		-0.509480, 0.860287, -0.018342,
		0.852286, 0.501577, -0.148420,
		45.114899, 33.980194, 30.379635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.373756, 34.012394, 29.936491>,  <44.518295, 33.629089, 30.483528>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.373756, 34.012394, 29.936491> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.773170, 34.017178, 29.957573>,  <45.012821, 34.020046, 29.970222>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.773170, 34.017178, 29.957573>,  <44.373756, 34.012394, 29.936491>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.773170, 34.017178, 29.957573> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053931, -0.284032, -0.957297,
		0.003520, 0.958740, -0.284261,
		0.998538, 0.011961, 0.052706,
		45.072731, 34.020767, 29.973385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.659893, 34.442566, 29.409147>,  <44.373756, 34.012394, 29.936491>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.659893, 34.442566, 29.409147> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.959183, 34.193092, 29.499638>,  <45.138756, 34.043407, 29.553932>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.959183, 34.193092, 29.499638>,  <44.659893, 34.442566, 29.409147>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.959183, 34.193092, 29.499638> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098722, -0.232522, -0.967568,
		0.656059, 0.746292, -0.112407,
		0.748225, -0.623685, 0.226224,
		45.183651, 34.005985, 29.567505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.080574, 34.543163, 28.897594>,  <44.659893, 34.442566, 29.409147>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.080574, 34.543163, 28.897594> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.182995, 34.185452, 29.044397>,  <45.244446, 33.970825, 29.132479>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.182995, 34.185452, 29.044397>,  <45.080574, 34.543163, 28.897594>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.182995, 34.185452, 29.044397> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012363, -0.382664, -0.923805,
		0.966584, 0.232005, -0.109038,
		0.256053, -0.894283, 0.367009,
		45.259811, 33.917168, 29.154499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.519604, 34.307316, 28.401075>,  <45.080574, 34.543163, 28.897594>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.519604, 34.307316, 28.401075> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.438274, 33.978626, 28.614031>,  <45.389477, 33.781414, 28.741804>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.438274, 33.978626, 28.614031>,  <45.519604, 34.307316, 28.401075>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.438274, 33.978626, 28.614031> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088739, -0.526044, -0.845815,
		0.975083, -0.219214, 0.034036,
		-0.203319, -0.821719, 0.532390,
		45.377277, 33.732109, 28.773748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.951015, 33.864712, 28.114353>,  <45.519604, 34.307316, 28.401075>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.951015, 33.864712, 28.114353> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.671165, 33.629524, 28.276747>,  <45.503258, 33.488411, 28.374184>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.671165, 33.629524, 28.276747>,  <45.951015, 33.864712, 28.114353>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.671165, 33.629524, 28.276747> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041374, -0.533906, -0.844531,
		0.713316, -0.607648, 0.349205,
		-0.699621, -0.587969, 0.405984,
		45.461281, 33.453133, 28.398542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.266800, 33.196690, 28.116877>,  <45.951015, 33.864712, 28.114353>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.266800, 33.196690, 28.116877> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.869392, 33.152248, 28.126556>,  <45.630947, 33.125584, 28.132364>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.869392, 33.152248, 28.126556>,  <46.266800, 33.196690, 28.116877>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.869392, 33.152248, 28.126556> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053789, -0.646716, -0.760832,
		0.100178, -0.754596, 0.648498,
		-0.993515, -0.111101, 0.024198,
		45.571339, 33.118919, 28.133816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.274734, 32.439888, 28.066389>,  <46.266800, 33.196690, 28.116877>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.274734, 32.439888, 28.066389> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.893089, 32.542309, 28.004288>,  <45.664101, 32.603764, 27.967028>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.893089, 32.542309, 28.004288>,  <46.274734, 32.439888, 28.066389>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.893089, 32.542309, 28.004288> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107850, -0.777518, -0.619543,
		-0.279349, -0.574371, 0.769456,
		-0.954113, 0.256054, -0.155253,
		45.606853, 32.619125, 27.957712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.859039, 31.798378, 28.035164>,  <46.274734, 32.439888, 28.066389>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.859039, 31.798378, 28.035164> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.634811, 32.076233, 27.854836>,  <45.500275, 32.242947, 27.746639>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.634811, 32.076233, 27.854836>,  <45.859039, 31.798378, 28.035164>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.634811, 32.076233, 27.854836> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240067, -0.657339, -0.714334,
		-0.792546, -0.292208, 0.535244,
		-0.560571, 0.694637, -0.450822,
		45.466640, 32.284622, 27.719589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.237484, 31.525082, 27.830500>,  <45.859039, 31.798378, 28.035164>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.237484, 31.525082, 27.830500> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.274803, 31.851667, 27.602575>,  <45.297195, 32.047619, 27.465820>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.274803, 31.851667, 27.602575>,  <45.237484, 31.525082, 27.830500>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.274803, 31.851667, 27.602575> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245929, -0.535673, -0.807820,
		-0.964787, 0.215503, 0.150813,
		0.093301, 0.816464, -0.569809,
		45.302795, 32.096607, 27.431633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.525291, 31.842880, 27.496426>,  <45.237484, 31.525082, 27.830500>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.525291, 31.842880, 27.496426> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.801487, 31.992422, 27.248730>,  <44.967205, 32.082146, 27.100113>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.801487, 31.992422, 27.248730>,  <44.525291, 31.842880, 27.496426>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.801487, 31.992422, 27.248730> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465295, -0.425899, -0.775958,
		-0.553828, 0.823920, -0.120127,
		0.690489, 0.373853, -0.619241,
		45.008633, 32.104576, 27.062958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.145119, 32.204189, 26.858358>,  <44.525291, 31.842880, 27.496426>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.145119, 32.204189, 26.858358> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.524612, 32.117092, 26.766710>,  <44.752308, 32.064835, 26.711721>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.524612, 32.117092, 26.766710>,  <44.145119, 32.204189, 26.858358>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.524612, 32.117092, 26.766710> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299696, -0.389333, -0.870978,
		0.100446, 0.894990, -0.434629,
		0.948732, -0.217743, -0.229119,
		44.809231, 32.051769, 26.697975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.294647, 32.582443, 26.173702>,  <44.145119, 32.204189, 26.858358>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.294647, 32.582443, 26.173702> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.514381, 32.255814, 26.244629>,  <44.646221, 32.059837, 26.287184>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.514381, 32.255814, 26.244629>,  <44.294647, 32.582443, 26.173702>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.514381, 32.255814, 26.244629> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525849, -0.502739, -0.686103,
		0.649396, 0.283658, -0.705565,
		0.549334, -0.816573, 0.177315,
		44.679180, 32.010841, 26.297823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<35.680946, 40.116734, 39.158527> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.566120, 39.736492, 39.205757>,  <35.497223, 39.508347, 39.234093>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.566120, 39.736492, 39.205757>,  <35.680946, 40.116734, 39.158527>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.566120, 39.736492, 39.205757> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027459, -0.131375, -0.990952,
		0.957517, -0.281228, 0.063816,
		-0.287067, -0.950606, 0.118072,
		35.480000, 39.451309, 39.241180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.152515, 39.770447, 38.744598>,  <35.680946, 40.116734, 39.158527>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.152515, 39.770447, 38.744598> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.840069, 39.521923, 38.769360>,  <35.652599, 39.372810, 38.784214>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.840069, 39.521923, 38.769360>,  <36.152515, 39.770447, 38.744598>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.840069, 39.521923, 38.769360> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050175, -0.161278, -0.985633,
		0.622364, -0.766789, 0.157151,
		-0.781118, -0.621308, 0.061900,
		35.605732, 39.335529, 38.787930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.362770, 39.076385, 38.354965>,  <36.152515, 39.770447, 38.744598>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.362770, 39.076385, 38.354965> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.964680, 39.049534, 38.383316>,  <35.725826, 39.033421, 38.400326>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.964680, 39.049534, 38.383316>,  <36.362770, 39.076385, 38.354965>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.964680, 39.049534, 38.383316> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049814, -0.275132, -0.960115,
		0.083954, -0.959060, 0.270474,
		-0.995224, -0.067132, 0.070873,
		35.666111, 39.029396, 38.404579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.255341, 38.489887, 37.958496>,  <36.362770, 39.076385, 38.354965>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.255341, 38.489887, 37.958496> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.890137, 38.649883, 37.990524>,  <35.671013, 38.745880, 38.009743>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.890137, 38.649883, 37.990524>,  <36.255341, 38.489887, 37.958496>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.890137, 38.649883, 37.990524> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235452, -0.356444, -0.904162,
		-0.333109, -0.844370, 0.419617,
		-0.913017, 0.399984, 0.080074,
		35.616234, 38.769882, 38.014545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.743153, 37.955303, 37.809734>,  <36.255341, 38.489887, 37.958496>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.743153, 37.955303, 37.809734> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.524792, 38.276123, 37.712818>,  <35.393776, 38.468616, 37.654667>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.524792, 38.276123, 37.712818>,  <35.743153, 37.955303, 37.809734>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.524792, 38.276123, 37.712818> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027126, -0.305951, -0.951661,
		-0.837411, -0.512940, 0.188775,
		-0.545900, 0.802051, -0.242293,
		35.361023, 38.516739, 37.640129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.079319, 37.752254, 37.451637>,  <35.743153, 37.955303, 37.809734>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.079319, 37.752254, 37.451637> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.152168, 38.130337, 37.343250>,  <35.195877, 38.357185, 37.278217>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.152168, 38.130337, 37.343250>,  <35.079319, 37.752254, 37.451637>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.152168, 38.130337, 37.343250> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112297, -0.253778, -0.960722,
		-0.976843, 0.205395, 0.059926,
		0.182119, 0.945203, -0.270967,
		35.206802, 38.413898, 37.261959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.490234, 37.898865, 37.045601>,  <35.079319, 37.752254, 37.451637>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.490234, 37.898865, 37.045601> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.770058, 38.167080, 36.946815>,  <34.937954, 38.328011, 36.887543>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.770058, 38.167080, 36.946815>,  <34.490234, 37.898865, 37.045601>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.770058, 38.167080, 36.946815> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244502, -0.100133, -0.964465,
		-0.671442, 0.735084, 0.093900,
		0.699560, 0.670541, -0.246963,
		34.979927, 38.368240, 36.872726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.270947, 38.345512, 36.471096>,  <34.490234, 37.898865, 37.045601>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.270947, 38.345512, 36.471096> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.670067, 38.371716, 36.475105>,  <34.909538, 38.387436, 36.477512>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.670067, 38.371716, 36.475105>,  <34.270947, 38.345512, 36.471096>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.670067, 38.371716, 36.475105> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028860, -0.293360, -0.955566,
		-0.059653, 0.953755, -0.294606,
		0.997802, 0.065505, 0.010026,
		34.969406, 38.391369, 36.478111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.475754, 38.592388, 35.841927>,  <34.270947, 38.345512, 36.471096>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.475754, 38.592388, 35.841927> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.827988, 38.444317, 35.960278>,  <35.039330, 38.355473, 36.031288>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.827988, 38.444317, 35.960278>,  <34.475754, 38.592388, 35.841927>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.827988, 38.444317, 35.960278> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127730, -0.415844, -0.900422,
		0.456353, 0.830688, -0.318902,
		0.880583, -0.370177, 0.295875,
		35.092163, 38.333263, 36.049042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.827930, 38.845581, 35.313183>,  <34.475754, 38.592388, 35.841927>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.827930, 38.845581, 35.313183> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.025543, 38.551662, 35.499088>,  <35.144112, 38.375313, 35.610630>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.025543, 38.551662, 35.499088>,  <34.827930, 38.845581, 35.313183>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.025543, 38.551662, 35.499088> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068589, -0.499945, -0.863337,
		0.866732, 0.458397, -0.196591,
		0.494035, -0.734798, 0.464759,
		35.173756, 38.331223, 35.638515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.435375, 38.679558, 34.864201>,  <34.827930, 38.845581, 35.313183>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.435375, 38.679558, 34.864201> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.385658, 38.359264, 35.098595>,  <35.355827, 38.167088, 35.239231>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.385658, 38.359264, 35.098595>,  <35.435375, 38.679558, 34.864201>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.385658, 38.359264, 35.098595> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065333, -0.595892, -0.800403,
		0.990092, -0.061200, 0.126379,
		-0.124293, -0.800729, 0.585990,
		35.348370, 38.119045, 35.274391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.913410, 38.128124, 34.622765>,  <35.435375, 38.679558, 34.864201>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.913410, 38.128124, 34.622765> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.631599, 37.922287, 34.818245>,  <35.462513, 37.798782, 34.935532>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.631599, 37.922287, 34.818245>,  <35.913410, 38.128124, 34.622765>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.631599, 37.922287, 34.818245> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168961, -0.547193, -0.819776,
		0.689267, -0.660128, 0.298567,
		-0.704531, -0.514598, 0.488698,
		35.420238, 37.767906, 34.964855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.025337, 37.345146, 34.668324>,  <35.913410, 38.128124, 34.622765>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.025337, 37.345146, 34.668324> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.636261, 37.417397, 34.726635>,  <35.402817, 37.460747, 34.761623>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.636261, 37.417397, 34.726635>,  <36.025337, 37.345146, 34.668324>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.636261, 37.417397, 34.726635> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232114, -0.753800, -0.614743,
		-0.001147, -0.631791, 0.775138,
		-0.972687, 0.180626, 0.145783,
		35.344456, 37.471584, 34.770370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.033306, 36.756271, 34.147167>,  <36.025337, 37.345146, 34.668324>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.033306, 36.756271, 34.147167> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.133583, 36.971355, 33.825169>,  <36.193748, 37.100407, 33.631969>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.133583, 36.971355, 33.825169>,  <36.033306, 36.756271, 34.147167>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.133583, 36.971355, 33.825169> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668193, 0.505588, 0.545802,
		0.700481, -0.674719, -0.232551,
		0.250688, 0.537713, -0.804997,
		36.208790, 37.132668, 33.583668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.673306, 36.877899, 34.316998>,  <36.033306, 36.756271, 34.147167>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.673306, 36.877899, 34.316998> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.952278, 36.627728, 34.177040>,  <37.119663, 36.477627, 34.093063>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.952278, 36.627728, 34.177040>,  <36.673306, 36.877899, 34.316998>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.952278, 36.627728, 34.177040> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220002, -0.277814, 0.935104,
		-0.682045, -0.729150, -0.056162,
		0.697434, -0.625427, -0.349896,
		37.161507, 36.440098, 34.072071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.611137, 36.213219, 34.708649>,  <36.673306, 36.877899, 34.316998>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.611137, 36.213219, 34.708649> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.984108, 36.294464, 34.589100>,  <37.207890, 36.343212, 34.517372>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.984108, 36.294464, 34.589100>,  <36.611137, 36.213219, 34.708649>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.984108, 36.294464, 34.589100> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339315, -0.207683, 0.917460,
		0.124275, -0.956877, -0.262568,
		0.932427, 0.203111, -0.298873,
		37.263836, 36.355396, 34.499439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.997227, 35.497681, 34.708805>,  <36.611137, 36.213219, 34.708649>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.997227, 35.497681, 34.708805> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.230740, 35.813225, 34.785648>,  <37.370846, 36.002552, 34.831753>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.230740, 35.813225, 34.785648>,  <36.997227, 35.497681, 34.708805>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.230740, 35.813225, 34.785648> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276209, -0.415457, 0.866662,
		0.763484, -0.452880, -0.460426,
		0.583781, 0.788857, 0.192106,
		37.405872, 36.049881, 34.843281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.509464, 35.196766, 35.217209>,  <36.997227, 35.497681, 34.708805>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.509464, 35.196766, 35.217209> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.603127, 35.585495, 35.228016>,  <37.659325, 35.818733, 35.234501>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.603127, 35.585495, 35.228016>,  <37.509464, 35.196766, 35.217209>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.603127, 35.585495, 35.228016> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385118, -0.118238, 0.915262,
		0.892667, -0.203908, -0.401953,
		0.234156, 0.971824, 0.027018,
		37.673374, 35.877041, 35.236122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.270832, 35.289810, 35.434021>,  <37.509464, 35.196766, 35.217209>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.270832, 35.289810, 35.434021> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.042179, 35.605679, 35.523159>,  <37.904987, 35.795200, 35.576641>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.042179, 35.605679, 35.523159>,  <38.270832, 35.289810, 35.434021>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.042179, 35.605679, 35.523159> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403020, 0.033645, 0.914572,
		0.714713, 0.612609, -0.337485,
		-0.571630, 0.789670, 0.222847,
		37.870689, 35.842579, 35.590012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.714840, 35.709347, 35.822376>,  <38.270832, 35.289810, 35.434021>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.714840, 35.709347, 35.822376> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.360558, 35.871517, 35.912853>,  <38.147987, 35.968819, 35.967140>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.360558, 35.871517, 35.912853>,  <38.714840, 35.709347, 35.822376>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.360558, 35.871517, 35.912853> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275504, 0.066851, 0.958973,
		0.373668, 0.911682, -0.170906,
		-0.885703, 0.405422, 0.226192,
		38.094845, 35.993145, 35.980709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.936676, 36.253994, 36.238457>,  <38.714840, 35.709347, 35.822376>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.936676, 36.253994, 36.238457> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.542397, 36.206371, 36.286163>,  <38.305828, 36.177799, 36.314785>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.542397, 36.206371, 36.286163>,  <38.936676, 36.253994, 36.238457>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.542397, 36.206371, 36.286163> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083616, 0.268930, 0.959523,
		-0.146308, 0.955773, -0.255129,
		-0.985699, -0.119053, 0.119265,
		38.246685, 36.170654, 36.321941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.638321, 36.864910, 36.476673>,  <38.936676, 36.253994, 36.238457>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.638321, 36.864910, 36.476673> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.432766, 36.547123, 36.606133>,  <38.309433, 36.356453, 36.683807>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.432766, 36.547123, 36.606133>,  <38.638321, 36.864910, 36.476673>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.432766, 36.547123, 36.606133> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276140, 0.204006, 0.939217,
		-0.812201, 0.572021, 0.114548,
		-0.513883, -0.794465, 0.323652,
		38.278603, 36.308784, 36.703228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.359478, 37.009918, 37.154171>,  <38.638321, 36.864910, 36.476673>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.359478, 37.009918, 37.154171> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.320019, 36.612080, 37.167126>,  <38.296345, 36.373375, 37.174900>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.320019, 36.612080, 37.167126>,  <38.359478, 37.009918, 37.154171>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.320019, 36.612080, 37.167126> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249505, 0.006789, 0.968350,
		-0.963336, 0.103605, 0.247487,
		-0.098645, -0.994595, 0.032390,
		38.290424, 36.313702, 37.176842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.962280, 36.920097, 37.802010>,  <38.359478, 37.009918, 37.154171>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.962280, 36.920097, 37.802010> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.141232, 36.568584, 37.735569>,  <38.248600, 36.357677, 37.695705>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.141232, 36.568584, 37.735569>,  <37.962280, 36.920097, 37.802010>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.141232, 36.568584, 37.735569> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021937, -0.174885, 0.984344,
		-0.894077, -0.444015, -0.058961,
		0.447376, -0.878786, -0.166101,
		38.275444, 36.304947, 37.685738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.601036, 36.445431, 38.204525>,  <37.962280, 36.920097, 37.802010>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.601036, 36.445431, 38.204525> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.960815, 36.284046, 38.137337>,  <38.176682, 36.187214, 38.097023>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.960815, 36.284046, 38.137337>,  <37.601036, 36.445431, 38.204525>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.960815, 36.284046, 38.137337> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113375, -0.155771, 0.981265,
		-0.422067, -0.901640, -0.094365,
		0.899447, -0.403461, -0.167969,
		38.230648, 36.163010, 38.086945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.613293, 35.795174, 38.548004>,  <37.601036, 36.445431, 38.204525>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.613293, 35.795174, 38.548004> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.001446, 35.884186, 38.510399>,  <38.234337, 35.937595, 38.487835>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.001446, 35.884186, 38.510399>,  <37.613293, 35.795174, 38.548004>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.001446, 35.884186, 38.510399> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130873, -0.157144, 0.978866,
		0.203056, -0.962177, -0.181613,
		0.970382, 0.222533, -0.094014,
		38.292561, 35.950947, 38.482193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.943909, 35.317619, 38.950989>,  <37.613293, 35.795174, 38.548004>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.943909, 35.317619, 38.950989> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.196388, 35.623688, 38.900234>,  <38.347878, 35.807327, 38.869781>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.196388, 35.623688, 38.900234>,  <37.943909, 35.317619, 38.950989>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.196388, 35.623688, 38.900234> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289717, -0.080842, 0.953692,
		0.719481, -0.638731, -0.272710,
		0.631199, 0.765172, -0.126887,
		38.385750, 35.853241, 38.862167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.575512, 35.069050, 39.226677>,  <37.943909, 35.317619, 38.950989>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.575512, 35.069050, 39.226677> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.633465, 35.463684, 39.196587>,  <38.668236, 35.700466, 39.178532>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.633465, 35.463684, 39.196587>,  <38.575512, 35.069050, 39.226677>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.633465, 35.463684, 39.196587> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264429, 0.034657, 0.963782,
		0.953461, -0.159523, -0.255861,
		0.144878, 0.986586, -0.075227,
		38.676929, 35.759659, 39.174019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.246258, 34.518314, 39.150642>,  <38.575512, 35.069050, 39.226677>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.246258, 34.518314, 39.150642> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.036564, 34.199387, 39.270287>,  <38.910748, 34.008030, 39.342075>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.036564, 34.199387, 39.270287>,  <39.246258, 34.518314, 39.150642>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.036564, 34.199387, 39.270287> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327038, -0.135814, -0.935201,
		0.786273, -0.588084, -0.189554,
		-0.524233, -0.797315, 0.299113,
		38.879295, 33.960194, 39.360020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.235249, 34.156254, 38.640324>,  <39.246258, 34.518314, 39.150642>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.235249, 34.156254, 38.640324> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.939888, 33.963482, 38.829006>,  <38.762672, 33.847820, 38.942215>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.939888, 33.963482, 38.829006>,  <39.235249, 34.156254, 38.640324>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.939888, 33.963482, 38.829006> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420928, -0.217117, -0.880727,
		0.526866, -0.848883, -0.042540,
		-0.738398, -0.481931, 0.471710,
		38.718369, 33.818901, 38.970520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.055237, 33.423817, 38.318893>,  <39.235249, 34.156254, 38.640324>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.055237, 33.423817, 38.318893> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.717159, 33.520374, 38.509632>,  <38.514313, 33.578308, 38.624073>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.717159, 33.520374, 38.509632>,  <39.055237, 33.423817, 38.318893>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.717159, 33.520374, 38.509632> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534037, -0.417109, -0.735408,
		0.021370, -0.876212, 0.481452,
		-0.845191, 0.241397, 0.476843,
		38.463600, 33.592793, 38.652683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.635040, 32.863087, 38.179146>,  <39.055237, 33.423817, 38.318893>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.635040, 32.863087, 38.179146> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.377899, 33.144096, 38.301262>,  <38.223614, 33.312702, 38.374531>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.377899, 33.144096, 38.301262>,  <38.635040, 32.863087, 38.179146>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.377899, 33.144096, 38.301262> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642679, -0.277819, -0.713989,
		-0.416781, -0.655190, 0.630095,
		-0.642851, 0.702526, 0.305287,
		38.185043, 33.354855, 38.392849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.988903, 32.600651, 38.326202>,  <38.635040, 32.863087, 38.179146>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.988903, 32.600651, 38.326202> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.914452, 32.982979, 38.235195>,  <37.869781, 33.212376, 38.180592>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.914452, 32.982979, 38.235195>,  <37.988903, 32.600651, 38.326202>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.914452, 32.982979, 38.235195> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.737583, -0.288913, -0.610328,
		-0.649096, 0.054213, 0.758772,
		-0.186132, 0.955819, -0.227519,
		37.858612, 33.269726, 38.166939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.317131, 32.503746, 38.212036>,  <37.988903, 32.600651, 38.326202>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.317131, 32.503746, 38.212036> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.406738, 32.857258, 38.047722>,  <37.460503, 33.069366, 37.949135>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.406738, 32.857258, 38.047722>,  <37.317131, 32.503746, 38.212036>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.406738, 32.857258, 38.047722> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.756769, -0.107848, -0.644725,
		-0.614098, 0.455300, 0.644659,
		0.224018, 0.883782, -0.410787,
		37.473946, 33.122391, 37.924484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.687374, 32.867676, 38.159527>,  <37.317131, 32.503746, 38.212036>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.687374, 32.867676, 38.159527> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.916969, 33.077396, 37.907925>,  <37.054726, 33.203228, 37.756962>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.916969, 33.077396, 37.907925>,  <36.687374, 32.867676, 38.159527>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.916969, 33.077396, 37.907925> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.740529, 0.004491, -0.672009,
		-0.349508, 0.851523, 0.390836,
		0.573987, 0.524298, -0.629008,
		37.089165, 33.234684, 37.719223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.264320, 33.425499, 37.953346>,  <36.687374, 32.867676, 38.159527>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.264320, 33.425499, 37.953346> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.542294, 33.406918, 37.666317>,  <36.709080, 33.395771, 37.494099>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.542294, 33.406918, 37.666317>,  <36.264320, 33.425499, 37.953346>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.542294, 33.406918, 37.666317> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.715051, 0.060741, -0.696428,
		0.075936, 0.997072, 0.008996,
		0.694936, -0.046451, -0.717570,
		36.750774, 33.392982, 37.451046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.115524, 34.008438, 37.503216>,  <36.264320, 33.425499, 37.953346>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.115524, 34.008438, 37.503216> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.301338, 33.736210, 37.276577>,  <36.412827, 33.572872, 37.140594>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.301338, 33.736210, 37.276577>,  <36.115524, 34.008438, 37.503216>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.301338, 33.736210, 37.276577> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.799261, -0.046731, -0.599164,
		0.381297, 0.731190, -0.565663,
		0.464537, -0.680572, -0.566593,
		36.440701, 33.532040, 37.106598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.163857, 34.221447, 36.772079>,  <36.115524, 34.008438, 37.503216>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.163857, 34.221447, 36.772079> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.234322, 33.836586, 36.688911>,  <36.276600, 33.605671, 36.639011>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.234322, 33.836586, 36.688911>,  <36.163857, 34.221447, 36.772079>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.234322, 33.836586, 36.688911> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.706599, 0.023458, -0.707225,
		0.685336, 0.271498, -0.675724,
		0.176159, -0.962153, -0.207917,
		36.287170, 33.547939, 36.626537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.266693, 34.160233, 36.027206>,  <36.163857, 34.221447, 36.772079>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.266693, 34.160233, 36.027206> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.146851, 33.805317, 36.167469>,  <36.074947, 33.592369, 36.251625>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.146851, 33.805317, 36.167469>,  <36.266693, 34.160233, 36.027206>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.146851, 33.805317, 36.167469> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.636641, -0.087810, -0.766145,
		0.710582, -0.452780, -0.538576,
		-0.299602, -0.887288, 0.350654,
		36.056969, 33.539131, 36.272667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.070034, 33.898361, 35.485153>,  <36.266693, 34.160233, 36.027206>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.070034, 33.898361, 35.485153> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.914635, 33.637150, 35.745193>,  <35.821396, 33.480423, 35.901218>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.914635, 33.637150, 35.745193>,  <36.070034, 33.898361, 35.485153>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.914635, 33.637150, 35.745193> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.722945, -0.221434, -0.654460,
		0.571334, -0.724239, -0.386076,
		-0.388495, -0.653027, 0.650098,
		35.798088, 33.441242, 35.940224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<40.934944, 33.489582, 42.722511> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.536335, 33.469769, 42.749306>,  <40.297169, 33.457882, 42.765381>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.536335, 33.469769, 42.749306>,  <40.934944, 33.489582, 42.722511>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.536335, 33.469769, 42.749306> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053306, -0.238818, -0.969600,
		0.064021, -0.969800, 0.235348,
		-0.996524, -0.049530, 0.066986,
		40.237377, 33.454910, 42.769402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.626240, 32.966988, 42.242390>,  <40.934944, 33.489582, 42.722511>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.626240, 32.966988, 42.242390> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.286919, 33.161762, 42.325600>,  <40.083324, 33.278625, 42.375526>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.286919, 33.161762, 42.325600>,  <40.626240, 32.966988, 42.242390>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.286919, 33.161762, 42.325600> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347805, -0.216177, -0.912304,
		-0.399262, -0.846264, 0.352742,
		-0.848305, 0.486934, 0.208024,
		40.032429, 33.307842, 42.388008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.159851, 32.637547, 41.826893>,  <40.626240, 32.966988, 42.242390>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.159851, 32.637547, 41.826893> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.987221, 32.986721, 41.917862>,  <39.883644, 33.196228, 41.972443>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.987221, 32.986721, 41.917862>,  <40.159851, 32.637547, 41.826893>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.987221, 32.986721, 41.917862> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415810, 0.031220, -0.908916,
		-0.800529, -0.486827, 0.349504,
		-0.431573, 0.872941, 0.227420,
		39.857750, 33.248604, 41.986088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.365742, 32.655235, 41.773750>,  <40.159851, 32.637547, 41.826893>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.365742, 32.655235, 41.773750> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.505444, 33.026451, 41.721954>,  <39.589264, 33.249180, 41.690876>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.505444, 33.026451, 41.721954>,  <39.365742, 32.655235, 41.773750>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.505444, 33.026451, 41.721954> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498662, 0.067079, -0.864197,
		-0.793321, 0.366399, 0.486204,
		0.349255, 0.928037, -0.129494,
		39.610222, 33.304863, 41.683105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.825100, 32.970135, 41.591946>,  <39.365742, 32.655235, 41.773750>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.825100, 32.970135, 41.591946> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.106544, 33.218937, 41.454517>,  <39.275410, 33.368217, 41.372063>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.106544, 33.218937, 41.454517>,  <38.825100, 32.970135, 41.591946>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.106544, 33.218937, 41.454517> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546684, 0.164961, -0.820929,
		-0.453947, 0.765439, 0.456110,
		0.703611, 0.622006, -0.343569,
		39.317627, 33.405540, 41.351448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.431465, 33.526108, 41.315815>,  <38.825100, 32.970135, 41.591946>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.431465, 33.526108, 41.315815> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.794868, 33.589031, 41.160965>,  <39.012909, 33.626785, 41.068054>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.794868, 33.589031, 41.160965>,  <38.431465, 33.526108, 41.315815>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.794868, 33.589031, 41.160965> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417067, 0.283958, -0.863379,
		-0.025887, 0.945845, 0.323585,
		0.908507, 0.157307, -0.387130,
		39.067421, 33.636223, 41.044827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.341713, 34.134609, 40.841148>,  <38.431465, 33.526108, 41.315815>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.341713, 34.134609, 40.841148> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.678207, 33.961967, 40.710896>,  <38.880104, 33.858383, 40.632744>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.678207, 33.961967, 40.710896>,  <38.341713, 34.134609, 40.841148>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.678207, 33.961967, 40.710896> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305096, 0.118283, -0.944947,
		0.446359, 0.894275, -0.032176,
		0.841237, -0.431602, -0.325637,
		38.930580, 33.832485, 40.613205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.621773, 34.592999, 40.455059>,  <38.341713, 34.134609, 40.841148>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.621773, 34.592999, 40.455059> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.803654, 34.255634, 40.340580>,  <38.912781, 34.053215, 40.271893>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.803654, 34.255634, 40.340580>,  <38.621773, 34.592999, 40.455059>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.803654, 34.255634, 40.340580> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404463, 0.090758, -0.910040,
		0.793510, 0.529552, -0.299860,
		0.454699, -0.843408, -0.286201,
		38.940063, 34.002613, 40.254719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.014854, 34.705513, 39.837273>,  <38.621773, 34.592999, 40.455059>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.014854, 34.705513, 39.837273> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.963833, 34.308784, 39.835709>,  <38.933220, 34.070747, 39.834770>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.963833, 34.308784, 39.835709>,  <39.014854, 34.705513, 39.837273>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.963833, 34.308784, 39.835709> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318741, 0.044727, -0.946786,
		0.939220, -0.119516, -0.321840,
		-0.127552, -0.991824, -0.003914,
		38.925568, 34.011238, 39.834534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.371925, 35.254120, 39.480091>,  <39.014854, 34.705513, 39.837273>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.371925, 35.254120, 39.480091> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.148773, 35.585884, 39.491756>,  <39.014881, 35.784943, 39.498756>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.148773, 35.585884, 39.491756>,  <39.371925, 35.254120, 39.480091>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.148773, 35.585884, 39.491756> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334386, 0.192480, 0.922571,
		0.759573, 0.524440, -0.384723,
		-0.557885, 0.829406, 0.029162,
		38.981407, 35.834705, 39.500504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.823261, 35.784817, 39.888889>,  <39.371925, 35.254120, 39.480091>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.823261, 35.784817, 39.888889> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.453766, 35.937656, 39.878235>,  <39.232067, 36.029362, 39.871841>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.453766, 35.937656, 39.878235>,  <39.823261, 35.784817, 39.888889>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.453766, 35.937656, 39.878235> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108140, 0.326872, 0.938861,
		0.367443, 0.864381, -0.343264,
		-0.923738, 0.382099, -0.026633,
		39.176643, 36.052284, 39.870243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.865704, 36.528381, 40.189587>,  <39.823261, 35.784817, 39.888889>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.865704, 36.528381, 40.189587> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.509258, 36.354633, 40.242107>,  <39.295391, 36.250385, 40.273621>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.509258, 36.354633, 40.242107>,  <39.865704, 36.528381, 40.189587>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.509258, 36.354633, 40.242107> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038532, 0.360740, 0.931870,
		-0.452145, 0.825341, -0.338197,
		-0.891112, -0.434372, 0.131305,
		39.241924, 36.224323, 40.281498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.352764, 37.125629, 40.465759>,  <39.865704, 36.528381, 40.189587>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.352764, 37.125629, 40.465759> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.248028, 36.756687, 40.579388>,  <39.185184, 36.535320, 40.647564>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.248028, 36.756687, 40.579388>,  <39.352764, 37.125629, 40.465759>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.248028, 36.756687, 40.579388> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045790, 0.305881, 0.950968,
		-0.964024, 0.235996, -0.122328,
		-0.261842, -0.922357, 0.284070,
		39.169476, 36.479980, 40.664608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.921207, 37.367569, 41.059761>,  <39.352764, 37.125629, 40.465759>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.921207, 37.367569, 41.059761> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.971275, 36.970921, 41.072536>,  <39.001316, 36.732933, 41.080200>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.971275, 36.970921, 41.072536>,  <38.921207, 37.367569, 41.059761>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.971275, 36.970921, 41.072536> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043190, 0.026716, 0.998710,
		-0.991195, -0.126384, -0.039484,
		0.125166, -0.991621, 0.031939,
		39.008823, 36.673435, 41.082119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.443069, 37.066765, 41.586292>,  <38.921207, 37.367569, 41.059761>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.443069, 37.066765, 41.586292> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.736317, 36.800621, 41.529949>,  <38.912266, 36.640934, 41.496143>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.736317, 36.800621, 41.529949>,  <38.443069, 37.066765, 41.586292>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.736317, 36.800621, 41.529949> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010030, -0.196509, 0.980451,
		-0.680031, -0.720196, -0.137390,
		0.733115, -0.665358, -0.140856,
		38.956253, 36.601013, 41.487694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.265381, 36.562984, 42.085617>,  <38.443069, 37.066765, 41.586292>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.265381, 36.562984, 42.085617> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.642765, 36.468170, 41.992931>,  <38.869194, 36.411282, 41.937321>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.642765, 36.468170, 41.992931>,  <38.265381, 36.562984, 42.085617>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.642765, 36.468170, 41.992931> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147651, -0.325354, 0.933993,
		-0.296775, -0.915402, -0.271962,
		0.943464, -0.237030, -0.231717,
		38.925804, 36.397060, 41.923416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.422886, 35.917679, 42.548634>,  <38.265381, 36.562984, 42.085617>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.422886, 35.917679, 42.548634> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.778160, 36.073372, 42.450966>,  <38.991325, 36.166786, 42.392365>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.778160, 36.073372, 42.450966>,  <38.422886, 35.917679, 42.548634>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.778160, 36.073372, 42.450966> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271033, -0.014711, 0.962458,
		0.371029, -0.921021, -0.118561,
		0.888188, 0.389234, -0.244169,
		39.044617, 36.190144, 42.377716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.861393, 35.531223, 42.872715>,  <38.422886, 35.917679, 42.548634>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.861393, 35.531223, 42.872715> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.097950, 35.851368, 42.833382>,  <39.239883, 36.043457, 42.809780>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.097950, 35.851368, 42.833382>,  <38.861393, 35.531223, 42.872715>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.097950, 35.851368, 42.833382> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285593, -0.093848, 0.953745,
		0.754116, -0.592122, -0.284080,
		0.591393, 0.800365, -0.098334,
		39.275368, 36.091476, 42.803883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.380947, 35.498463, 43.359936>,  <38.861393, 35.531223, 42.872715>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.380947, 35.498463, 43.359936> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.452759, 35.881924, 43.271606>,  <39.495846, 36.112000, 43.218609>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.452759, 35.881924, 43.271606>,  <39.380947, 35.498463, 43.359936>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.452759, 35.881924, 43.271606> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215957, 0.180587, 0.959558,
		0.959757, -0.219954, -0.174607,
		0.179527, 0.958649, -0.220820,
		39.506618, 36.169518, 43.205360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.020481, 35.634476, 43.720383>,  <39.380947, 35.498463, 43.359936>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.020481, 35.634476, 43.720383> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.842625, 35.980919, 43.629036>,  <39.735909, 36.188786, 43.574230>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.842625, 35.980919, 43.629036>,  <40.020481, 35.634476, 43.720383>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.842625, 35.980919, 43.629036> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250882, 0.365175, 0.896496,
		0.859855, 0.341329, -0.379663,
		-0.444643, 0.866108, -0.228364,
		39.709232, 36.240749, 43.560528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.507366, 36.173382, 43.830200>,  <40.020481, 35.634476, 43.720383>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.507366, 36.173382, 43.830200> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.153976, 36.360283, 43.843800>,  <39.941944, 36.472424, 43.851959>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.153976, 36.360283, 43.843800>,  <40.507366, 36.173382, 43.830200>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.153976, 36.360283, 43.843800> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211738, 0.333515, 0.918659,
		0.417907, 0.818806, -0.393586,
		-0.883471, 0.467251, 0.033994,
		39.888935, 36.500458, 43.853996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.626896, 36.837875, 44.099113>,  <40.507366, 36.173382, 43.830200>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.626896, 36.837875, 44.099113> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.238697, 36.768745, 44.166370>,  <40.005779, 36.727268, 44.206722>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.238697, 36.768745, 44.166370>,  <40.626896, 36.837875, 44.099113>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.238697, 36.768745, 44.166370> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082480, 0.417307, 0.905015,
		-0.226574, 0.892181, -0.390741,
		-0.970495, -0.172825, 0.168138,
		39.947548, 36.716900, 44.216812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.437817, 37.437469, 44.469528>,  <40.626896, 36.837875, 44.099113>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.437817, 37.437469, 44.469528> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.133778, 37.188488, 44.544147>,  <39.951355, 37.039101, 44.588921>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.133778, 37.188488, 44.544147>,  <40.437817, 37.437469, 44.469528>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.133778, 37.188488, 44.544147> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050296, 0.342583, 0.938140,
		-0.647860, 0.703695, -0.291704,
		-0.760097, -0.622455, 0.186553,
		39.905750, 37.001751, 44.600113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<33.190792, 33.842991, 46.015884> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.564407, 33.787495, 45.884232>,  <33.788578, 33.754196, 45.805241>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.564407, 33.787495, 45.884232>,  <33.190792, 33.842991, 46.015884>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.564407, 33.787495, 45.884232> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336350, -0.031603, -0.941207,
		0.120178, 0.989825, -0.076182,
		0.934038, -0.138736, -0.329129,
		33.844620, 33.745872, 45.785492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.415951, 34.418484, 45.460712>,  <33.190792, 33.842991, 46.015884>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.415951, 34.418484, 45.460712> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.661839, 34.108871, 45.400059>,  <33.809372, 33.923103, 45.363667>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.661839, 34.108871, 45.400059>,  <33.415951, 34.418484, 45.460712>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.661839, 34.108871, 45.400059> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144601, 0.078396, -0.986380,
		0.775380, 0.628271, -0.063735,
		0.614717, -0.774035, -0.151636,
		33.846252, 33.876659, 45.354568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.778488, 34.526985, 44.873642>,  <33.415951, 34.418484, 45.460712>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.778488, 34.526985, 44.873642> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.821075, 34.131546, 44.916237>,  <33.846626, 33.894283, 44.941795>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.821075, 34.131546, 44.916237>,  <33.778488, 34.526985, 44.873642>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.821075, 34.131546, 44.916237> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286810, -0.133076, -0.948699,
		0.952053, 0.070463, -0.297708,
		0.106466, -0.988598, 0.106486,
		33.853016, 33.834969, 44.948181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.224541, 34.292095, 44.454391>,  <33.778488, 34.526985, 44.873642>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.224541, 34.292095, 44.454391> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.989338, 33.976768, 44.526840>,  <33.848217, 33.787571, 44.570309>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.989338, 33.976768, 44.526840>,  <34.224541, 34.292095, 44.454391>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.989338, 33.976768, 44.526840> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135541, -0.124722, -0.982890,
		0.797419, -0.602495, -0.033512,
		-0.588007, -0.788318, 0.181118,
		33.812935, 33.740273, 44.581177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.493732, 33.772095, 43.992367>,  <34.224541, 34.292095, 44.454391>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.493732, 33.772095, 43.992367> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.121498, 33.674484, 44.101513>,  <33.898155, 33.615917, 44.167000>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.121498, 33.674484, 44.101513>,  <34.493732, 33.772095, 43.992367>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.121498, 33.674484, 44.101513> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198724, -0.289239, -0.936402,
		0.307428, -0.925631, 0.220669,
		-0.930589, -0.244024, 0.272865,
		33.842319, 33.601276, 44.183372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.243107, 33.332294, 43.559547>,  <34.493732, 33.772095, 43.992367>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.243107, 33.332294, 43.559547> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.895779, 33.413021, 43.740784>,  <33.687382, 33.461456, 43.849525>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.895779, 33.413021, 43.740784>,  <34.243107, 33.332294, 43.559547>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.895779, 33.413021, 43.740784> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483600, -0.141464, -0.863782,
		-0.110227, -0.969154, 0.220433,
		-0.868321, 0.201814, 0.453089,
		33.635281, 33.473568, 43.876709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.888721, 32.775604, 43.384666>,  <34.243107, 33.332294, 43.559547>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.888721, 32.775604, 43.384666> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.650269, 33.088531, 43.456902>,  <33.507198, 33.276287, 43.500244>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.650269, 33.088531, 43.456902>,  <33.888721, 32.775604, 43.384666>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.650269, 33.088531, 43.456902> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379636, -0.076454, -0.921971,
		-0.707466, -0.618172, 0.342572,
		-0.596128, 0.782316, 0.180592,
		33.471432, 33.323227, 43.511078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.250416, 32.645977, 43.127636>,  <33.888721, 32.775604, 43.384666>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.250416, 32.645977, 43.127636> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.172226, 33.036263, 43.167171>,  <33.125313, 33.270435, 43.190891>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.172226, 33.036263, 43.167171>,  <33.250416, 32.645977, 43.127636>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.172226, 33.036263, 43.167171> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422732, 0.007109, -0.906227,
		-0.884923, -0.218922, 0.411077,
		-0.195471, 0.975716, 0.098837,
		33.113586, 33.328976, 43.196823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.470192, 32.728294, 42.981213>,  <33.250416, 32.645977, 43.127636>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.470192, 32.728294, 42.981213> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.653877, 33.079971, 42.930401>,  <32.764088, 33.290977, 42.899914>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.653877, 33.079971, 42.930401>,  <32.470192, 32.728294, 42.981213>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.653877, 33.079971, 42.930401> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415861, 0.086400, -0.905315,
		-0.784974, 0.468559, 0.405300,
		0.459211, 0.879197, -0.127034,
		32.791641, 33.343731, 42.892292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.917322, 33.242664, 42.924480>,  <32.470192, 32.728294, 42.981213>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.917322, 33.242664, 42.924480> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.244675, 33.386402, 42.745094>,  <32.441086, 33.472645, 42.637463>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.244675, 33.386402, 42.745094>,  <31.917322, 33.242664, 42.924480>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.244675, 33.386402, 42.745094> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468229, -0.035507, -0.882894,
		-0.333190, 0.932528, 0.139198,
		0.818380, 0.359348, -0.448467,
		32.490189, 33.494205, 42.610554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.739861, 33.900402, 42.646282>,  <31.917322, 33.242664, 42.924480>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.739861, 33.900402, 42.646282> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.059986, 33.773022, 42.443073>,  <32.252064, 33.696594, 42.321148>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.059986, 33.773022, 42.443073>,  <31.739861, 33.900402, 42.646282>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.059986, 33.773022, 42.443073> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452700, 0.234632, -0.860239,
		0.393138, 0.918444, 0.043619,
		0.800316, -0.318447, -0.508022,
		32.300079, 33.677486, 42.290668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.901766, 34.493511, 42.254631>,  <31.739861, 33.900402, 42.646282>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.901766, 34.493511, 42.254631> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.114231, 34.219704, 42.054913>,  <32.241711, 34.055420, 41.935081>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.114231, 34.219704, 42.054913>,  <31.901766, 34.493511, 42.254631>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.114231, 34.219704, 42.054913> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369364, 0.343281, -0.863556,
		0.762519, 0.643113, -0.070497,
		0.531164, -0.684517, -0.499301,
		32.273579, 34.014347, 41.905121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.142807, 34.834026, 41.731319>,  <31.901766, 34.493511, 42.254631>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.142807, 34.834026, 41.731319> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.153831, 34.450977, 41.616642>,  <32.160446, 34.221146, 41.547836>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.153831, 34.450977, 41.616642>,  <32.142807, 34.834026, 41.731319>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.153831, 34.450977, 41.616642> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418535, 0.249398, -0.873286,
		0.907783, 0.144061, -0.393926,
		0.027562, -0.957626, -0.286694,
		32.162102, 34.163689, 41.530632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.362110, 34.839500, 41.086689>,  <32.142807, 34.834026, 41.731319>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.362110, 34.839500, 41.086689> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.176369, 34.485241, 41.086014>,  <32.064922, 34.272686, 41.085609>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.176369, 34.485241, 41.086014>,  <32.362110, 34.839500, 41.086689>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.176369, 34.485241, 41.086014> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252801, 0.134373, -0.958142,
		0.848802, -0.444492, -0.286290,
		-0.464356, -0.885647, -0.001688,
		32.037064, 34.219547, 41.085506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.011044, 35.091232, 40.687805>,  <32.362110, 34.839500, 41.086689>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.011044, 35.091232, 40.687805> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.966351, 35.486397, 40.644829>,  <32.939533, 35.723495, 40.619045>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.966351, 35.486397, 40.644829>,  <33.011044, 35.091232, 40.687805>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.966351, 35.486397, 40.644829> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468120, 0.147695, 0.871235,
		0.876572, 0.047054, -0.478965,
		-0.111736, 0.987913, -0.107438,
		32.932831, 35.782772, 40.612598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.706562, 35.418800, 40.844429>,  <33.011044, 35.091232, 40.687805>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.706562, 35.418800, 40.844429> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.430031, 35.705494, 40.881001>,  <33.264111, 35.877510, 40.902943>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.430031, 35.705494, 40.881001>,  <33.706562, 35.418800, 40.844429>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.430031, 35.705494, 40.881001> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277247, 0.146289, 0.949596,
		0.667230, 0.681833, -0.299846,
		-0.691330, 0.716731, 0.091428,
		33.222633, 35.920513, 40.908428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.020157, 36.026054, 40.998695>,  <33.706562, 35.418800, 40.844429>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.020157, 36.026054, 40.998695> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.644314, 36.080311, 41.124382>,  <33.418808, 36.112865, 41.199795>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.644314, 36.080311, 41.124382>,  <34.020157, 36.026054, 40.998695>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.644314, 36.080311, 41.124382> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339738, 0.258788, 0.904216,
		0.041334, 0.956363, -0.289243,
		-0.939611, 0.135642, 0.314216,
		33.362431, 36.121002, 41.218647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.948254, 36.773907, 41.240486>,  <34.020157, 36.026054, 40.998695>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.948254, 36.773907, 41.240486> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.657333, 36.567848, 41.421886>,  <33.482780, 36.444214, 41.530727>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.657333, 36.567848, 41.421886>,  <33.948254, 36.773907, 41.240486>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.657333, 36.567848, 41.421886> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325770, 0.322464, 0.888758,
		-0.604075, 0.794130, -0.066710,
		-0.727301, -0.515145, 0.453497,
		33.439144, 36.413303, 41.557934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.888596, 37.074085, 41.822254>,  <33.948254, 36.773907, 41.240486>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.888596, 37.074085, 41.822254> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.702560, 36.731251, 41.910892>,  <33.590939, 36.525551, 41.964073>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.702560, 36.731251, 41.910892>,  <33.888596, 37.074085, 41.822254>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.702560, 36.731251, 41.910892> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144493, 0.173462, 0.974183,
		-0.873395, 0.485095, 0.043168,
		-0.465084, -0.857084, 0.221594,
		33.563034, 36.474125, 41.977371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.371643, 37.181377, 42.407291>,  <33.888596, 37.074085, 41.822254>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.371643, 37.181377, 42.407291> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.464020, 36.792194, 42.405594>,  <33.519444, 36.558685, 42.404575>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.464020, 36.792194, 42.405594>,  <33.371643, 37.181377, 42.407291>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.464020, 36.792194, 42.405594> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048630, 0.007182, 0.998791,
		-0.971752, -0.230867, 0.048974,
		0.230940, -0.972959, -0.004248,
		33.533302, 36.500305, 42.404320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.034683, 36.900661, 42.990940>,  <33.371643, 37.181377, 42.407291>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.034683, 36.900661, 42.990940> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.313148, 36.622997, 42.917736>,  <33.480228, 36.456398, 42.873814>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.313148, 36.622997, 42.917736>,  <33.034683, 36.900661, 42.990940>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.313148, 36.622997, 42.917736> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289673, 0.038371, 0.956356,
		-0.656843, -0.718796, 0.227793,
		0.696166, -0.694161, -0.183012,
		33.521999, 36.414749, 42.862831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.920467, 36.322052, 43.485455>,  <33.034683, 36.900661, 42.990940>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.920467, 36.322052, 43.485455> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.298073, 36.303806, 43.354755>,  <33.524635, 36.292858, 43.276337>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.298073, 36.303806, 43.354755>,  <32.920467, 36.322052, 43.485455>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.298073, 36.303806, 43.354755> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329778, 0.102025, 0.938529,
		-0.009475, -0.993735, 0.111356,
		0.944011, -0.045615, -0.326746,
		33.581276, 36.290123, 43.256733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.176582, 35.840504, 43.939571>,  <32.920467, 36.322052, 43.485455>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.176582, 35.840504, 43.939571> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.492275, 36.021812, 43.773846>,  <33.681690, 36.130596, 43.674412>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.492275, 36.021812, 43.773846>,  <33.176582, 35.840504, 43.939571>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.492275, 36.021812, 43.773846> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447694, 0.037106, 0.893417,
		0.420332, -0.890601, -0.173641,
		0.789234, 0.453270, -0.414313,
		33.729046, 36.157795, 43.649551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.815002, 35.356796, 44.054520>,  <33.176582, 35.840504, 43.939571>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.815002, 35.356796, 44.054520> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.906746, 35.743469, 44.009068>,  <33.961792, 35.975475, 43.981796>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.906746, 35.743469, 44.009068>,  <33.815002, 35.356796, 44.054520>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.906746, 35.743469, 44.009068> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480007, -0.010780, 0.877198,
		0.846751, -0.255738, -0.466489,
		0.229361, 0.966686, -0.113628,
		33.975555, 36.033474, 43.974979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.463886, 35.394833, 44.198624>,  <33.815002, 35.356796, 44.054520>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.463886, 35.394833, 44.198624> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.349808, 35.776970, 44.229584>,  <34.281361, 36.006252, 44.248161>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.349808, 35.776970, 44.229584>,  <34.463886, 35.394833, 44.198624>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.349808, 35.776970, 44.229584> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513786, 0.084207, 0.853776,
		0.809129, 0.283256, -0.514855,
		-0.285192, 0.955340, 0.077399,
		34.264252, 36.063572, 44.252804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.989746, 35.800957, 44.323597>,  <34.463886, 35.394833, 44.198624>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.989746, 35.800957, 44.323597> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.693188, 36.024395, 44.472351>,  <34.515255, 36.158459, 44.561604>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.693188, 36.024395, 44.472351>,  <34.989746, 35.800957, 44.323597>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.693188, 36.024395, 44.472351> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408049, -0.064698, 0.910665,
		0.532758, 0.826910, -0.179970,
		-0.741394, 0.558600, 0.371888,
		34.470768, 36.191975, 44.583916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.366066, 36.387218, 44.580624>,  <34.989746, 35.800957, 44.323597>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.366066, 36.387218, 44.580624> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.001461, 36.382366, 44.745060>,  <34.782696, 36.379456, 44.843719>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.001461, 36.382366, 44.745060>,  <35.366066, 36.387218, 44.580624>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.001461, 36.382366, 44.745060> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408619, 0.086520, 0.908595,
		-0.046591, 0.996176, -0.073906,
		-0.911515, -0.012133, 0.411088,
		34.728008, 36.378727, 44.868385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.248558, 37.002491, 44.738411>,  <35.366066, 36.387218, 44.580624>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.248558, 37.002491, 44.738411> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.061512, 36.746346, 44.982140>,  <34.949284, 36.592659, 45.128376>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.061512, 36.746346, 44.982140>,  <35.248558, 37.002491, 44.738411>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.061512, 36.746346, 44.982140> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619511, 0.254283, 0.742662,
		-0.630512, 0.724762, 0.277804,
		-0.467613, -0.640359, 0.609326,
		34.921227, 36.554237, 45.164936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.413754, 37.750340, 44.992947>,  <35.248558, 37.002491, 44.738411>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.413754, 37.750340, 44.992947> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.741821, 37.961468, 44.904644>,  <35.938660, 38.088146, 44.851662>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.741821, 37.961468, 44.904644>,  <35.413754, 37.750340, 44.992947>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.741821, 37.961468, 44.904644> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435469, 0.325665, -0.839231,
		-0.371070, 0.784442, 0.496949,
		0.820167, 0.527819, -0.220756,
		35.987873, 38.119812, 44.838417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.210697, 38.357811, 44.590504>,  <35.413754, 37.750340, 44.992947>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.210697, 38.357811, 44.590504> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.600887, 38.330666, 44.506744>,  <35.834999, 38.314377, 44.456490>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.600887, 38.330666, 44.506744>,  <35.210697, 38.357811, 44.590504>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.600887, 38.330666, 44.506744> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177692, 0.318715, -0.931046,
		0.129923, 0.945418, 0.298839,
		0.975472, -0.067864, -0.209402,
		35.893528, 38.310307, 44.443924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.468678, 38.938004, 44.335056>,  <35.210697, 38.357811, 44.590504>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.468678, 38.938004, 44.335056> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.753040, 38.700672, 44.184017>,  <35.923656, 38.558273, 44.093395>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.753040, 38.700672, 44.184017>,  <35.468678, 38.938004, 44.335056>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.753040, 38.700672, 44.184017> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073805, 0.470997, -0.879042,
		0.699403, 0.652785, 0.291045,
		0.710906, -0.593324, -0.377596,
		35.966312, 38.522675, 44.070740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.025921, 39.362038, 43.927910>,  <35.468678, 38.938004, 44.335056>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.025921, 39.362038, 43.927910> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.054237, 38.992977, 43.776276>,  <36.071228, 38.771542, 43.685295>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.054237, 38.992977, 43.776276>,  <36.025921, 39.362038, 43.927910>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.054237, 38.992977, 43.776276> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039157, 0.377173, -0.925315,
		0.996722, 0.080348, -0.009428,
		0.070791, -0.922651, -0.379083,
		36.075474, 38.716183, 43.662552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.551582, 39.354721, 43.421684>,  <36.025921, 39.362038, 43.927910>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.551582, 39.354721, 43.421684> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.335476, 39.030064, 43.332832>,  <36.205814, 38.835266, 43.279522>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.335476, 39.030064, 43.332832>,  <36.551582, 39.354721, 43.421684>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.335476, 39.030064, 43.332832> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045439, 0.291727, -0.955422,
		0.840269, -0.506085, -0.194490,
		-0.540263, -0.811649, -0.222133,
		36.173397, 38.786568, 43.266193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.717865, 39.169304, 42.699722>,  <36.551582, 39.354721, 43.421684>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.717865, 39.169304, 42.699722> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.409897, 38.924644, 42.772499>,  <36.225117, 38.777851, 42.816166>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.409897, 38.924644, 42.772499>,  <36.717865, 39.169304, 42.699722>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.409897, 38.924644, 42.772499> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133032, -0.125014, -0.983196,
		0.624114, -0.781191, 0.014883,
		-0.769925, -0.611646, 0.181946,
		36.178921, 38.741150, 42.827084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.837444, 38.612274, 42.208778>,  <36.717865, 39.169304, 42.699722>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.837444, 38.612274, 42.208778> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.452374, 38.594017, 42.315491>,  <36.221333, 38.583061, 42.379517>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.452374, 38.594017, 42.315491>,  <36.837444, 38.612274, 42.208778>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.452374, 38.594017, 42.315491> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259260, -0.127534, -0.957350,
		0.077721, -0.990783, 0.110941,
		-0.962675, -0.045643, 0.266782,
		36.163570, 38.580326, 42.395527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.512913, 38.006771, 41.936928>,  <36.837444, 38.612274, 42.208778>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.512913, 38.006771, 41.936928> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.209312, 38.261806, 41.989704>,  <36.027153, 38.414825, 42.021370>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.209312, 38.261806, 41.989704>,  <36.512913, 38.006771, 41.936928>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.209312, 38.261806, 41.989704> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185853, -0.017941, -0.982414,
		-0.624006, -0.770170, 0.132115,
		-0.758996, 0.637586, 0.131943,
		35.981613, 38.453083, 42.029285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.924744, 37.757877, 41.530582>,  <36.512913, 38.006771, 41.936928>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.924744, 37.757877, 41.530582> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.866276, 38.148865, 41.591492>,  <35.831196, 38.383457, 41.628036>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.866276, 38.148865, 41.591492>,  <35.924744, 37.757877, 41.530582>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.866276, 38.148865, 41.591492> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339125, 0.095093, -0.935923,
		-0.929317, -0.188442, 0.317585,
		-0.146167, 0.977470, 0.152277,
		35.822426, 38.442104, 41.637177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.267284, 37.930820, 41.172874>,  <35.924744, 37.757877, 41.530582>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.267284, 37.930820, 41.172874> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.417915, 38.298981, 41.214924>,  <35.508293, 38.519878, 41.240154>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.417915, 38.298981, 41.214924>,  <35.267284, 37.930820, 41.172874>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.417915, 38.298981, 41.214924> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246621, 0.208987, -0.946310,
		-0.892954, 0.330433, 0.305690,
		0.376578, 0.920401, 0.105124,
		35.530888, 38.575100, 41.246460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.804081, 38.368965, 40.875973>,  <35.267284, 37.930820, 41.172874>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.804081, 38.368965, 40.875973> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.139538, 38.585632, 40.898880>,  <35.340813, 38.715633, 40.912624>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.139538, 38.585632, 40.898880>,  <34.804081, 38.368965, 40.875973>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.139538, 38.585632, 40.898880> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173617, 0.365493, -0.914479,
		-0.516278, 0.756974, 0.400560,
		0.838638, 0.541669, 0.057272,
		35.391129, 38.748135, 40.916061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.600975, 39.039268, 40.495399>,  <34.804081, 38.368965, 40.875973>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.600975, 39.039268, 40.495399> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.000763, 39.026489, 40.497681>,  <35.240635, 39.018822, 40.499050>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.000763, 39.026489, 40.497681>,  <34.600975, 39.039268, 40.495399>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.000763, 39.026489, 40.497681> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021487, 0.519821, -0.854005,
		0.024317, 0.853678, 0.520234,
		0.999473, -0.031945, 0.005703,
		35.300606, 39.016907, 40.499390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.767265, 39.721905, 40.251595>,  <34.600975, 39.039268, 40.495399>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.767265, 39.721905, 40.251595> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.066063, 39.466312, 40.178169>,  <35.245342, 39.312958, 40.134113>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.066063, 39.466312, 40.178169>,  <34.767265, 39.721905, 40.251595>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.066063, 39.466312, 40.178169> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088576, 0.177987, -0.980038,
		0.658901, 0.748344, 0.076357,
		0.746996, -0.638985, -0.183561,
		35.290161, 39.274616, 40.123100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.150337, 40.118610, 39.689568>,  <34.767265, 39.721905, 40.251595>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.150337, 40.118610, 39.689568> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.245457, 39.730312, 39.702858>,  <35.302528, 39.497334, 39.710831>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.245457, 39.730312, 39.702858>,  <35.150337, 40.118610, 39.689568>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.245457, 39.730312, 39.702858> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082076, -0.054169, -0.995153,
		0.967840, 0.233923, -0.092556,
		0.237803, -0.970745, 0.033227,
		35.316799, 39.439091, 39.712826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<26.007385, 36.026810, 28.262863> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.617384, 36.020294, 28.351500>,  <25.383383, 36.016384, 28.404680>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.617384, 36.020294, 28.351500>,  <26.007385, 36.026810, 28.262863>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.617384, 36.020294, 28.351500> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221546, -0.146922, 0.964018,
		0.016858, 0.989014, 0.146858,
		-0.975004, -0.016284, 0.221589,
		25.324883, 36.015408, 28.417976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.891575, 36.460331, 28.730566>,  <26.007385, 36.026810, 28.262863>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.891575, 36.460331, 28.730566> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.591732, 36.206573, 28.806067>,  <25.411825, 36.054317, 28.851366>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.591732, 36.206573, 28.806067>,  <25.891575, 36.460331, 28.730566>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.591732, 36.206573, 28.806067> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141211, 0.125321, 0.982015,
		-0.646643, 0.762780, -0.004357,
		-0.749608, -0.634398, 0.188751,
		25.366850, 36.016254, 28.862692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.614569, 36.712551, 29.317858>,  <25.891575, 36.460331, 28.730566>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.614569, 36.712551, 29.317858> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.433180, 36.356728, 29.295807>,  <25.324347, 36.143234, 29.282578>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.433180, 36.356728, 29.295807>,  <25.614569, 36.712551, 29.317858>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.433180, 36.356728, 29.295807> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033628, -0.044729, 0.998433,
		-0.890635, 0.454617, -0.009631,
		-0.453474, -0.889563, -0.055125,
		25.297138, 36.089859, 29.279270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.193357, 36.630230, 29.876310>,  <25.614569, 36.712551, 29.317858>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.193357, 36.630230, 29.876310> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.248192, 36.244225, 29.786915>,  <25.281094, 36.012619, 29.733276>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.248192, 36.244225, 29.786915>,  <25.193357, 36.630230, 29.876310>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.248192, 36.244225, 29.786915> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090753, -0.212436, 0.972952,
		-0.986393, -0.153662, 0.058456,
		0.137087, -0.965018, -0.223490,
		25.289318, 35.954720, 29.719868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.775227, 36.287312, 30.301659>,  <25.193357, 36.630230, 29.876310>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.775227, 36.287312, 30.301659> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.061687, 36.026039, 30.203295>,  <25.233564, 35.869274, 30.144276>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.061687, 36.026039, 30.203295>,  <24.775227, 36.287312, 30.301659>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.061687, 36.026039, 30.203295> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009778, -0.342910, 0.939317,
		-0.697874, -0.675100, -0.239190,
		0.716154, -0.653186, -0.245909,
		25.276533, 35.830082, 30.129522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.578089, 35.672047, 30.691092>,  <24.775227, 36.287312, 30.301659>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.578089, 35.672047, 30.691092> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.963234, 35.621498, 30.595654>,  <25.194321, 35.591167, 30.538391>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.963234, 35.621498, 30.595654>,  <24.578089, 35.672047, 30.691092>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.963234, 35.621498, 30.595654> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171626, -0.395704, 0.902199,
		-0.208428, -0.909642, -0.359318,
		0.962861, -0.126375, -0.238594,
		25.252092, 35.583584, 30.524075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.773769, 34.957924, 30.711851>,  <24.578089, 35.672047, 30.691092>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.773769, 34.957924, 30.711851> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.083994, 35.202190, 30.775845>,  <25.270128, 35.348751, 30.814241>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.083994, 35.202190, 30.775845>,  <24.773769, 34.957924, 30.711851>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.083994, 35.202190, 30.775845> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035133, -0.294795, 0.954914,
		0.630294, -0.734974, -0.250086,
		0.775561, 0.610663, 0.159985,
		25.316662, 35.385387, 30.823841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.214640, 34.598763, 31.186245>,  <24.773769, 34.957924, 30.711851>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.214640, 34.598763, 31.186245> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.380835, 34.961166, 31.218521>,  <25.480551, 35.178608, 31.237886>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.380835, 34.961166, 31.218521>,  <25.214640, 34.598763, 31.186245>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.380835, 34.961166, 31.218521> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398812, -0.261178, 0.879053,
		0.817508, -0.333056, -0.469845,
		0.415487, 0.906013, 0.080688,
		25.505482, 35.232971, 31.242727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.792828, 34.489651, 31.438232>,  <25.214640, 34.598763, 31.186245>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.792828, 34.489651, 31.438232> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.740259, 34.876076, 31.527176>,  <25.708717, 35.107933, 31.580542>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.740259, 34.876076, 31.527176>,  <25.792828, 34.489651, 31.438232>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.740259, 34.876076, 31.527176> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409407, -0.151389, 0.899704,
		0.902837, 0.209277, -0.375618,
		-0.131423, 0.966066, 0.222359,
		25.700832, 35.165897, 31.593884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.390442, 34.660378, 31.637505>,  <25.792828, 34.489651, 31.438232>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.390442, 34.660378, 31.637505> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.142719, 34.927589, 31.802525>,  <25.994085, 35.087917, 31.901537>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.142719, 34.927589, 31.802525>,  <26.390442, 34.660378, 31.637505>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.142719, 34.927589, 31.802525> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503412, -0.065374, 0.861570,
		0.602523, 0.741258, -0.295807,
		-0.619308, 0.668029, 0.412548,
		25.956926, 35.127998, 31.926289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.872389, 35.141811, 31.984625>,  <26.390442, 34.660378, 31.637505>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.872389, 35.141811, 31.984625> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.504042, 35.140400, 32.140568>,  <26.283033, 35.139553, 32.234135>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.504042, 35.140400, 32.140568>,  <26.872389, 35.141811, 31.984625>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.504042, 35.140400, 32.140568> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375379, -0.278137, 0.884155,
		0.105317, 0.960535, 0.257451,
		-0.920869, -0.003525, 0.389857,
		26.227781, 35.139343, 32.257526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.940042, 35.386612, 32.611355>,  <26.872389, 35.141811, 31.984625>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.940042, 35.386612, 32.611355> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.591284, 35.196529, 32.658642>,  <26.382029, 35.082481, 32.687016>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.591284, 35.196529, 32.658642>,  <26.940042, 35.386612, 32.611355>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.591284, 35.196529, 32.658642> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304208, -0.336449, 0.891212,
		-0.383735, 0.813008, 0.437910,
		-0.871897, -0.475205, 0.118216,
		26.329714, 35.053967, 32.694107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.739025, 35.565994, 33.184452>,  <26.940042, 35.386612, 32.611355>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.739025, 35.565994, 33.184452> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.528212, 35.235077, 33.106659>,  <26.401724, 35.036526, 33.059982>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.528212, 35.235077, 33.106659>,  <26.739025, 35.565994, 33.184452>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.528212, 35.235077, 33.106659> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160371, -0.321553, 0.933212,
		-0.834575, 0.460645, 0.302143,
		-0.527034, -0.827291, -0.194486,
		26.370102, 34.986889, 33.048313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.594687, 35.375206, 33.794907>,  <26.739025, 35.565994, 33.184452>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.594687, 35.375206, 33.794907> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.470097, 35.053886, 33.591850>,  <26.395344, 34.861095, 33.470016>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.470097, 35.053886, 33.591850>,  <26.594687, 35.375206, 33.794907>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.470097, 35.053886, 33.591850> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002686, -0.534953, 0.844877,
		-0.950251, 0.261794, 0.168782,
		-0.311474, -0.803299, -0.507637,
		26.376654, 34.812897, 33.439560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.982782, 35.015976, 34.186672>,  <26.594687, 35.375206, 33.794907>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.982782, 35.015976, 34.186672> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.196516, 34.773613, 33.950924>,  <26.324757, 34.628193, 33.809475>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.196516, 34.773613, 33.950924>,  <25.982782, 35.015976, 34.186672>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.196516, 34.773613, 33.950924> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221810, -0.572310, 0.789469,
		-0.815650, -0.552570, -0.171409,
		0.534336, -0.605910, -0.589370,
		26.356817, 34.591839, 33.774113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.736559, 34.381336, 34.376728>,  <25.982782, 35.015976, 34.186672>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.736559, 34.381336, 34.376728> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.078026, 34.311668, 34.180393>,  <26.282906, 34.269867, 34.062592>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.078026, 34.311668, 34.180393>,  <25.736559, 34.381336, 34.376728>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.078026, 34.311668, 34.180393> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259954, -0.674151, 0.691335,
		-0.451305, -0.717764, -0.530225,
		0.853667, -0.174169, -0.490833,
		26.334126, 34.259418, 34.033142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.807133, 33.640774, 34.368900>,  <25.736559, 34.381336, 34.376728>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.807133, 33.640774, 34.368900> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.177141, 33.775948, 34.299458>,  <26.399147, 33.857052, 34.257793>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.177141, 33.775948, 34.299458>,  <25.807133, 33.640774, 34.368900>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.177141, 33.775948, 34.299458> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375669, -0.745466, 0.550593,
		0.056648, -0.574528, -0.816522,
		0.925021, 0.337932, -0.173603,
		26.454647, 33.877327, 34.247375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.227833, 33.084072, 34.515572>,  <25.807133, 33.640774, 34.368900>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.227833, 33.084072, 34.515572> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.502668, 33.372292, 34.478218>,  <26.667570, 33.545223, 34.455807>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.502668, 33.372292, 34.478218>,  <26.227833, 33.084072, 34.515572>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.502668, 33.372292, 34.478218> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484956, -0.359088, 0.797417,
		0.541044, -0.593182, -0.596160,
		0.687087, 0.720549, -0.093384,
		26.708794, 33.588455, 34.450203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.839249, 32.765991, 34.465973>,  <26.227833, 33.084072, 34.515572>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.839249, 32.765991, 34.465973> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.910135, 33.134686, 34.603954>,  <26.952667, 33.355904, 34.686745>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.910135, 33.134686, 34.603954>,  <26.839249, 32.765991, 34.465973>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.910135, 33.134686, 34.603954> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560376, -0.382637, 0.734552,
		0.809057, 0.063130, -0.584329,
		0.177214, 0.921739, 0.344952,
		26.963299, 33.411209, 34.707439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.564203, 32.749550, 34.592102>,  <26.839249, 32.765991, 34.465973>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.564203, 32.749550, 34.592102> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.412779, 33.039295, 34.822578>,  <27.321924, 33.213142, 34.960865>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.412779, 33.039295, 34.822578>,  <27.564203, 32.749550, 34.592102>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.412779, 33.039295, 34.822578> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591441, -0.289534, 0.752574,
		0.711960, 0.625678, -0.318809,
		-0.378563, 0.724360, 0.576188,
		27.299210, 33.256603, 34.995434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.951298, 33.057102, 33.901127>,  <27.564203, 32.749550, 34.592102>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.951298, 33.057102, 33.901127> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.305826, 32.942493, 33.755615>,  <28.518543, 32.873730, 33.668308>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.305826, 32.942493, 33.755615>,  <27.951298, 33.057102, 33.901127>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.305826, 32.942493, 33.755615> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121840, 0.613613, -0.780150,
		0.446751, 0.735788, 0.508950,
		0.886323, -0.286523, -0.363781,
		28.571724, 32.856537, 33.646481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.383825, 33.658184, 33.804348>,  <27.951298, 33.057102, 33.901127>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.383825, 33.658184, 33.804348> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.520510, 33.369411, 33.563663>,  <28.602520, 33.196148, 33.419254>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.520510, 33.369411, 33.563663>,  <28.383825, 33.658184, 33.804348>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.520510, 33.369411, 33.563663> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203607, 0.568175, -0.797321,
		0.917484, 0.394967, 0.047163,
		0.341713, -0.721927, -0.601709,
		28.623024, 33.152832, 33.383152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.866756, 34.023529, 33.387363>,  <28.383825, 33.658184, 33.804348>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.866756, 34.023529, 33.387363> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.779200, 33.682339, 33.197830>,  <28.726665, 33.477623, 33.084110>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.779200, 33.682339, 33.197830>,  <28.866756, 34.023529, 33.387363>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.779200, 33.682339, 33.197830> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044234, 0.476431, -0.878098,
		0.974746, -0.213167, -0.066556,
		-0.218891, -0.852979, -0.473829,
		28.713531, 33.426445, 33.055683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.356680, 33.959496, 32.915718>,  <28.866756, 34.023529, 33.387363>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.356680, 33.959496, 32.915718> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.052601, 33.731594, 32.790829>,  <28.870153, 33.594852, 32.715897>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.052601, 33.731594, 32.790829>,  <29.356680, 33.959496, 32.915718>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.052601, 33.731594, 32.790829> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006679, 0.473692, -0.880665,
		0.649660, -0.671563, -0.356293,
		-0.760195, -0.569754, -0.312224,
		28.824543, 33.560669, 32.697163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.424322, 33.757065, 32.276611>,  <29.356680, 33.959496, 32.915718>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.424322, 33.757065, 32.276611> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.025797, 33.724899, 32.288597>,  <28.786682, 33.705601, 32.295788>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.025797, 33.724899, 32.288597>,  <29.424322, 33.757065, 32.276611>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.025797, 33.724899, 32.288597> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051807, 0.285189, -0.957070,
		0.068415, -0.955092, -0.288303,
		-0.996311, -0.080414, 0.029969,
		28.726904, 33.700775, 32.297588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.286098, 33.654655, 31.569223>,  <29.424322, 33.757065, 32.276611>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.286098, 33.654655, 31.569223> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.940300, 33.763706, 31.738134>,  <28.732821, 33.829136, 31.839481>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.940300, 33.763706, 31.738134>,  <29.286098, 33.654655, 31.569223>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.940300, 33.763706, 31.738134> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242994, 0.508740, -0.825916,
		-0.439997, -0.816613, -0.373558,
		-0.864498, 0.272629, 0.422277,
		28.680950, 33.845493, 31.864817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.798773, 33.519520, 31.028582>,  <29.286098, 33.654655, 31.569223>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.798773, 33.519520, 31.028582> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.615576, 33.768047, 31.282890>,  <28.505657, 33.917164, 31.435474>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.615576, 33.768047, 31.282890>,  <28.798773, 33.519520, 31.028582>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.615576, 33.768047, 31.282890> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229677, 0.608200, -0.759829,
		-0.858773, -0.494018, -0.135848,
		-0.457992, 0.621320, 0.635771,
		28.478178, 33.954445, 31.473621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.146053, 33.742924, 30.743887>,  <28.798773, 33.519520, 31.028582>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.146053, 33.742924, 30.743887> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.212944, 34.024498, 31.020006>,  <28.253078, 34.193443, 31.185677>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.212944, 34.024498, 31.020006>,  <28.146053, 33.742924, 30.743887>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.212944, 34.024498, 31.020006> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234735, 0.708450, -0.665581,
		-0.957567, -0.050733, 0.283711,
		0.167228, 0.703935, 0.690297,
		28.263113, 34.235680, 31.227095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.666927, 34.304634, 30.570179>,  <28.146053, 33.742924, 30.743887>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.666927, 34.304634, 30.570179> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.909307, 34.503448, 30.818624>,  <28.054735, 34.622738, 30.967691>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.909307, 34.503448, 30.818624>,  <27.666927, 34.304634, 30.570179>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.909307, 34.503448, 30.818624> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100359, 0.726781, -0.679498,
		-0.789147, 0.474076, 0.390511,
		0.605950, 0.497032, 0.621114,
		28.091093, 34.652557, 31.004959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.399853, 35.047840, 30.677877>,  <27.666927, 34.304634, 30.570179>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.399853, 35.047840, 30.677877> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.779358, 35.071190, 30.802099>,  <28.007061, 35.085201, 30.876633>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.779358, 35.071190, 30.802099>,  <27.399853, 35.047840, 30.677877>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.779358, 35.071190, 30.802099> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152107, 0.777059, -0.610772,
		-0.276973, 0.626715, 0.728364,
		0.948762, 0.058378, 0.310552,
		28.063986, 35.088703, 30.895266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.478842, 35.714050, 31.083595>,  <27.399853, 35.047840, 30.677877>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.478842, 35.714050, 31.083595> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.831865, 35.581928, 30.949736>,  <28.043678, 35.502655, 30.869419>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.831865, 35.581928, 30.949736>,  <27.478842, 35.714050, 31.083595>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.831865, 35.581928, 30.949736> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186187, 0.899030, -0.396333,
		0.431771, 0.287479, 0.854944,
		0.882558, -0.330305, -0.334651,
		28.096632, 35.482838, 30.849340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.117529, 36.313213, 31.112322>,  <27.478842, 35.714050, 31.083595>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.117529, 36.313213, 31.112322> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.239985, 36.015755, 30.874578>,  <28.313457, 35.837280, 30.731932>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.239985, 36.015755, 30.874578>,  <28.117529, 36.313213, 31.112322>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.239985, 36.015755, 30.874578> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425831, 0.665364, -0.613154,
		0.851438, -0.065386, 0.520363,
		0.306139, -0.743650, -0.594360,
		28.331827, 35.792660, 30.696270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.876345, 36.433456, 30.951208>,  <28.117529, 36.313213, 31.112322>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.876345, 36.433456, 30.951208> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.717405, 36.208248, 30.661346>,  <28.622042, 36.073124, 30.487429>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.717405, 36.208248, 30.661346>,  <28.876345, 36.433456, 30.951208>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.717405, 36.208248, 30.661346> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286717, 0.673968, -0.680853,
		0.871727, -0.478305, -0.106372,
		-0.397347, -0.563019, -0.724655,
		28.598202, 36.039341, 30.443951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.405420, 36.593651, 30.415022>,  <28.876345, 36.433456, 30.951208>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.405420, 36.593651, 30.415022> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.069836, 36.435482, 30.265469>,  <28.868484, 36.340580, 30.175737>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.069836, 36.435482, 30.265469>,  <29.405420, 36.593651, 30.415022>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.069836, 36.435482, 30.265469> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072144, 0.761792, -0.643791,
		0.539389, -0.513142, -0.667641,
		-0.838960, -0.395421, -0.373883,
		28.818148, 36.316856, 30.153303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.380541, 36.861477, 29.775749>,  <29.405420, 36.593651, 30.415022>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.380541, 36.861477, 29.775749> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.991171, 36.770245, 29.783985>,  <28.757549, 36.715508, 29.788927>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.991171, 36.770245, 29.783985>,  <29.380541, 36.861477, 29.775749>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.991171, 36.770245, 29.783985> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199688, 0.801352, -0.563879,
		0.112110, -0.553006, -0.825600,
		-0.973425, -0.228079, 0.020589,
		28.699142, 36.701820, 29.790161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.183922, 36.863785, 29.056805>,  <29.380541, 36.861477, 29.775749>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.183922, 36.863785, 29.056805> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.876629, 36.960934, 29.293728>,  <28.692253, 37.019222, 29.435883>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.876629, 36.960934, 29.293728>,  <29.183922, 36.863785, 29.056805>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.876629, 36.960934, 29.293728> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106458, 0.863888, -0.492306,
		-0.631256, -0.441262, -0.637811,
		-0.768233, 0.242871, 0.592310,
		28.646158, 37.033794, 29.471420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.895390, 37.427933, 28.694313>,  <29.183922, 36.863785, 29.056805>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.895390, 37.427933, 28.694313> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.656145, 37.422142, 29.014826>,  <28.512598, 37.418667, 29.207134>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.656145, 37.422142, 29.014826>,  <28.895390, 37.427933, 28.694313>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.656145, 37.422142, 29.014826> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473237, 0.813286, -0.338546,
		-0.646771, -0.581685, -0.493285,
		-0.598109, -0.014479, 0.801284,
		28.476713, 37.417797, 29.255211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.110487, 37.450424, 28.523533>,  <28.895390, 37.427933, 28.694313>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.110487, 37.450424, 28.523533> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.166153, 37.609543, 28.886276>,  <28.199553, 37.705013, 29.103922>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.166153, 37.609543, 28.886276>,  <28.110487, 37.450424, 28.523533>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.166153, 37.609543, 28.886276> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548232, 0.793575, -0.263970,
		-0.824666, -0.460435, 0.328520,
		0.139164, 0.397793, 0.906860,
		28.207903, 37.728882, 29.158335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.436239, 37.629936, 28.657492>,  <28.110487, 37.450424, 28.523533>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.436239, 37.629936, 28.657492> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.658531, 37.827187, 28.925220>,  <27.791906, 37.945538, 29.085857>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.658531, 37.827187, 28.925220>,  <27.436239, 37.629936, 28.657492>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.658531, 37.827187, 28.925220> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600014, 0.795172, -0.087663,
		-0.575453, -0.352884, 0.737785,
		0.555730, 0.493127, 0.669320,
		27.825251, 37.975124, 29.126017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.984900, 37.897205, 29.070536>,  <27.436239, 37.629936, 28.657492>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.984900, 37.897205, 29.070536> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.322834, 38.109730, 29.095692>,  <27.525595, 38.237244, 29.110785>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.322834, 38.109730, 29.095692>,  <26.984900, 37.897205, 29.070536>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.322834, 38.109730, 29.095692> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486529, 0.811835, -0.322823,
		-0.222576, 0.242135, 0.944368,
		0.844837, 0.531314, 0.062889,
		27.576284, 38.269123, 29.114559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.854023, 38.383423, 29.626593>,  <26.984900, 37.897205, 29.070536>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.854023, 38.383423, 29.626593> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.124863, 38.512951, 29.362267>,  <27.287367, 38.590668, 29.203671>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.124863, 38.512951, 29.362267>,  <26.854023, 38.383423, 29.626593>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.124863, 38.512951, 29.362267> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585652, 0.780853, -0.217441,
		0.445588, 0.534237, 0.718360,
		0.677099, 0.323820, -0.660816,
		27.327991, 38.610096, 29.164022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.866840, 39.150463, 29.699078>,  <26.854023, 38.383423, 29.626593>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.866840, 39.150463, 29.699078> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.017540, 39.063591, 29.338879>,  <27.107960, 39.011467, 29.122759>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.017540, 39.063591, 29.338879>,  <26.866840, 39.150463, 29.699078>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.017540, 39.063591, 29.338879> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522732, 0.752704, -0.400234,
		0.764729, 0.621507, 0.170055,
		0.376749, -0.217178, -0.900497,
		27.130564, 38.998436, 29.068729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<39.872326, 37.871960, 44.679756> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.791958, 37.499981, 44.802933>,  <39.743736, 37.276794, 44.876839>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.791958, 37.499981, 44.802933>,  <39.872326, 37.871960, 44.679756>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.791958, 37.499981, 44.802933> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137496, 0.338009, 0.931045,
		-0.969911, 0.144722, -0.195776,
		-0.200917, -0.929949, 0.307940,
		39.731682, 37.220997, 44.895313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.462875, 37.964909, 45.181347>,  <39.872326, 37.871960, 44.679756>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.462875, 37.964909, 45.181347> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.581318, 37.591824, 45.263676>,  <39.652386, 37.367973, 45.313072>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.581318, 37.591824, 45.263676>,  <39.462875, 37.964909, 45.181347>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.581318, 37.591824, 45.263676> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052901, 0.199136, 0.978543,
		-0.953688, -0.300645, 0.009625,
		0.296110, -0.932715, 0.205818,
		39.670151, 37.312008, 45.325420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.003563, 37.819313, 45.745750>,  <39.462875, 37.964909, 45.181347>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.003563, 37.819313, 45.745750> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.305565, 37.557026, 45.746170>,  <39.486767, 37.399654, 45.746422>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.305565, 37.557026, 45.746170>,  <39.003563, 37.819313, 45.745750>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.305565, 37.557026, 45.746170> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020926, 0.025689, 0.999451,
		-0.655384, -0.754570, 0.033116,
		0.755006, -0.655717, 0.001046,
		39.532066, 37.360310, 45.746483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.856922, 37.212151, 46.191422>,  <39.003563, 37.819313, 45.745750>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.856922, 37.212151, 46.191422> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.256050, 37.216766, 46.165409>,  <39.495525, 37.219536, 46.149803>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.256050, 37.216766, 46.165409>,  <38.856922, 37.212151, 46.191422>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.256050, 37.216766, 46.165409> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063197, 0.119285, 0.990847,
		0.019191, -0.992793, 0.118295,
		0.997817, 0.011539, -0.065031,
		39.555393, 37.220230, 46.145901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.117241, 36.821980, 46.836132>,  <38.856922, 37.212151, 46.191422>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.117241, 36.821980, 46.836132> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.436451, 37.015995, 46.693085>,  <39.627979, 37.132404, 46.607258>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.436451, 37.015995, 46.693085>,  <39.117241, 36.821980, 46.836132>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.436451, 37.015995, 46.693085> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344612, 0.119520, 0.931106,
		0.494364, -0.866287, -0.071770,
		0.798027, 0.485038, -0.357619,
		39.675858, 37.161507, 46.585800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.738174, 36.592655, 47.200737>,  <39.117241, 36.821980, 46.836132>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.738174, 36.592655, 47.200737> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.832336, 36.947937, 47.042915>,  <39.888836, 37.161106, 46.948223>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.832336, 36.947937, 47.042915>,  <39.738174, 36.592655, 47.200737>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.832336, 36.947937, 47.042915> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441078, 0.264116, 0.857725,
		0.866044, -0.375947, -0.329593,
		0.235409, 0.888204, -0.394558,
		39.902958, 37.214397, 46.924549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.465759, 36.737850, 47.433586>,  <39.738174, 36.592655, 47.200737>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.465759, 36.737850, 47.433586> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.309772, 37.089676, 47.324558>,  <40.216179, 37.300770, 47.259140>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.309772, 37.089676, 47.324558>,  <40.465759, 36.737850, 47.433586>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.309772, 37.089676, 47.324558> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336368, 0.411621, 0.847009,
		0.857194, 0.238622, -0.456375,
		-0.389969, 0.879561, -0.272574,
		40.192783, 37.353546, 47.242786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.920090, 37.199406, 47.594444>,  <40.465759, 36.737850, 47.433586>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.920090, 37.199406, 47.594444> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.601173, 37.436192, 47.547272>,  <40.409824, 37.578262, 47.518970>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.601173, 37.436192, 47.547272>,  <40.920090, 37.199406, 47.594444>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.601173, 37.436192, 47.547272> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131865, 0.361480, 0.923008,
		0.589016, 0.720355, -0.366264,
		-0.797290, 0.591964, -0.117928,
		40.361988, 37.613781, 47.511894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.102123, 37.853333, 47.849663>,  <40.920090, 37.199406, 47.594444>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.102123, 37.853333, 47.849663> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.703205, 37.828617, 47.865555>,  <40.463852, 37.813786, 47.875088>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.703205, 37.828617, 47.865555>,  <41.102123, 37.853333, 47.849663>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.703205, 37.828617, 47.865555> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030185, 0.148321, 0.988478,
		-0.066973, 0.987007, -0.146055,
		-0.997298, -0.061792, 0.039726,
		40.404015, 37.810078, 47.877472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.948570, 38.361866, 48.285130>,  <41.102123, 37.853333, 47.849663>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.948570, 38.361866, 48.285130> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.608192, 38.151882, 48.278027>,  <40.403965, 38.025890, 48.273766>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.608192, 38.151882, 48.278027>,  <40.948570, 38.361866, 48.285130>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.608192, 38.151882, 48.278027> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174098, 0.249988, 0.952469,
		-0.495571, 0.813585, -0.304120,
		-0.850940, -0.524962, -0.017757,
		40.352909, 37.994392, 48.272701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.491100, 38.743347, 48.578094>,  <40.948570, 38.361866, 48.285130>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.491100, 38.743347, 48.578094> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.291641, 38.397976, 48.608658>,  <40.171967, 38.190754, 48.626995>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.291641, 38.397976, 48.608658>,  <40.491100, 38.743347, 48.578094>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.291641, 38.397976, 48.608658> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364945, 0.289085, 0.885011,
		-0.786233, 0.413425, -0.459257,
		-0.498650, -0.863429, 0.076411,
		40.142048, 38.138947, 48.631580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.838165, 38.872681, 48.982246>,  <40.491100, 38.743347, 48.578094>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.838165, 38.872681, 48.982246> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.872211, 38.475864, 49.019379>,  <39.892639, 38.237774, 49.041656>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.872211, 38.475864, 49.019379>,  <39.838165, 38.872681, 48.982246>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.872211, 38.475864, 49.019379> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368426, 0.055226, 0.928015,
		-0.925753, -0.113185, -0.360792,
		0.085112, -0.992038, 0.092826,
		39.897747, 38.178253, 49.047226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.170341, 38.674847, 49.307201>,  <39.838165, 38.872681, 48.982246>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.170341, 38.674847, 49.307201> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.445492, 38.392273, 49.373871>,  <39.610580, 38.222729, 49.413872>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.445492, 38.392273, 49.373871>,  <39.170341, 38.674847, 49.307201>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.445492, 38.392273, 49.373871> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340276, -0.111033, 0.933747,
		-0.641123, -0.699017, -0.316759,
		0.687876, -0.706432, 0.166673,
		39.651855, 38.180344, 49.423874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.937748, 38.521572, 50.081539>,  <39.170341, 38.674847, 49.307201>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.937748, 38.521572, 50.081539> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.611198, 38.360409, 50.247040>,  <38.415268, 38.263710, 50.346340>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.611198, 38.360409, 50.247040>,  <38.937748, 38.521572, 50.081539>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.611198, 38.360409, 50.247040> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276430, -0.356419, -0.892498,
		0.507066, -0.842988, 0.179595,
		-0.816376, -0.402910, 0.413755,
		38.366287, 38.239536, 50.371166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.831280, 37.816441, 49.837833>,  <38.937748, 38.521572, 50.081539>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.831280, 37.816441, 49.837833> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.500797, 38.022282, 49.929543>,  <38.302509, 38.145786, 49.984570>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.500797, 38.022282, 49.929543>,  <38.831280, 37.816441, 49.837833>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.500797, 38.022282, 49.929543> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328229, -0.108937, -0.938296,
		-0.457878, -0.850478, 0.258913,
		-0.826205, 0.514608, 0.229272,
		38.252937, 38.176662, 49.998325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.400970, 37.463261, 49.562500>,  <38.831280, 37.816441, 49.837833>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.400970, 37.463261, 49.562500> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.212532, 37.812771, 49.610809>,  <38.099468, 38.022476, 49.639793>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.212532, 37.812771, 49.610809>,  <38.400970, 37.463261, 49.562500>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.212532, 37.812771, 49.610809> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388402, -0.082555, -0.917784,
		-0.791967, -0.479273, 0.378268,
		-0.471097, 0.873775, 0.120770,
		38.071201, 38.074902, 49.647041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.785778, 37.394012, 49.196777>,  <38.400970, 37.463261, 49.562500>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.785778, 37.394012, 49.196777> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.815495, 37.792236, 49.219933>,  <37.833324, 38.031170, 49.233826>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.815495, 37.792236, 49.219933>,  <37.785778, 37.394012, 49.196777>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.815495, 37.792236, 49.219933> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401690, 0.083001, -0.912007,
		-0.912757, 0.044501, 0.406071,
		0.074290, 0.995555, 0.057884,
		37.837780, 38.090904, 49.237297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.234283, 37.576511, 48.940533>,  <37.785778, 37.394012, 49.196777>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.234283, 37.576511, 48.940533> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.488720, 37.881866, 48.895580>,  <37.641380, 38.065079, 48.868610>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.488720, 37.881866, 48.895580>,  <37.234283, 37.576511, 48.940533>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.488720, 37.881866, 48.895580> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295816, 0.106746, -0.949262,
		-0.712661, 0.637056, 0.293723,
		0.636087, 0.763390, -0.112377,
		37.679546, 38.110882, 48.861866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.942261, 38.210320, 48.835503>,  <37.234283, 37.576511, 48.940533>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.942261, 38.210320, 48.835503> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.297211, 38.292259, 48.670288>,  <37.510181, 38.341423, 48.571159>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.297211, 38.292259, 48.670288>,  <36.942261, 38.210320, 48.835503>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.297211, 38.292259, 48.670288> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457960, 0.288111, -0.840990,
		-0.053279, 0.935429, 0.349477,
		0.887375, 0.204854, -0.413039,
		37.563423, 38.353714, 48.546375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.761993, 38.706539, 48.343502>,  <36.942261, 38.210320, 48.835503>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.761993, 38.706539, 48.343502> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.138447, 38.618565, 48.240818>,  <37.364319, 38.565781, 48.179207>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.138447, 38.618565, 48.240818>,  <36.761993, 38.706539, 48.343502>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.138447, 38.618565, 48.240818> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229341, 0.142486, -0.962861,
		0.248342, 0.965053, 0.083658,
		0.941132, -0.219933, -0.256711,
		37.420788, 38.552586, 48.163803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.114693, 39.306900, 47.918861>,  <36.761993, 38.706539, 48.343502>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.114693, 39.306900, 47.918861> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.269184, 38.946060, 47.841877>,  <37.361877, 38.729557, 47.795685>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.269184, 38.946060, 47.841877>,  <37.114693, 39.306900, 47.918861>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.269184, 38.946060, 47.841877> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174055, 0.133632, -0.975627,
		0.905834, 0.410312, -0.105403,
		0.386226, -0.902101, -0.192466,
		37.385052, 38.675430, 47.784138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.320839, 39.334656, 47.194767>,  <37.114693, 39.306900, 47.918861>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.320839, 39.334656, 47.194767> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.337856, 38.944813, 47.282700>,  <37.348064, 38.710907, 47.335461>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.337856, 38.944813, 47.282700>,  <37.320839, 39.334656, 47.194767>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.337856, 38.944813, 47.282700> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464791, -0.214078, -0.859151,
		0.884398, -0.065628, -0.462097,
		0.042541, -0.974609, 0.219833,
		37.350620, 38.652431, 47.348648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.645760, 39.212040, 46.712032>,  <37.320839, 39.334656, 47.194767>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.645760, 39.212040, 46.712032> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.485931, 38.863155, 46.824883>,  <37.390034, 38.653824, 46.892593>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.485931, 38.863155, 46.824883>,  <37.645760, 39.212040, 46.712032>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.485931, 38.863155, 46.824883> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383092, -0.120716, -0.915788,
		0.832815, -0.474004, -0.285902,
		-0.399574, -0.872209, 0.282121,
		37.366058, 38.601494, 46.909519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.829685, 38.783817, 46.180084>,  <37.645760, 39.212040, 46.712032>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.829685, 38.783817, 46.180084> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.509613, 38.626511, 46.361214>,  <37.317570, 38.532127, 46.469891>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.509613, 38.626511, 46.361214>,  <37.829685, 38.783817, 46.180084>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.509613, 38.626511, 46.361214> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429514, -0.151205, -0.890312,
		0.418603, -0.906904, -0.047924,
		-0.800181, -0.393271, 0.452823,
		37.269558, 38.508530, 46.497059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.683384, 38.316879, 45.716854>,  <37.829685, 38.783817, 46.180084>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.683384, 38.316879, 45.716854> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.357979, 38.331905, 45.948990>,  <37.162735, 38.340919, 46.088272>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.357979, 38.331905, 45.948990>,  <37.683384, 38.316879, 45.716854>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.357979, 38.331905, 45.948990> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576313, -0.185725, -0.795845,
		0.077887, -0.981883, 0.172739,
		-0.813509, 0.037565, 0.580337,
		37.113926, 38.343174, 46.123093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.376930, 37.736698, 45.465176>,  <37.683384, 38.316879, 45.716854>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.376930, 37.736698, 45.465176> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.098854, 37.969791, 45.633522>,  <36.932011, 38.109650, 45.734531>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.098854, 37.969791, 45.633522>,  <37.376930, 37.736698, 45.465176>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.098854, 37.969791, 45.633522> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551784, -0.057358, -0.832012,
		-0.460706, -0.810633, 0.361420,
		-0.695187, 0.582739, 0.420869,
		36.890297, 38.144611, 45.759785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.782555, 37.386147, 45.276993>,  <37.376930, 37.736698, 45.465176>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.782555, 37.386147, 45.276993> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.648365, 37.745983, 45.388847>,  <36.567852, 37.961884, 45.455959>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.648365, 37.745983, 45.388847>,  <36.782555, 37.386147, 45.276993>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.648365, 37.745983, 45.388847> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582391, 0.035271, -0.812143,
		-0.740458, -0.435312, 0.512080,
		-0.335474, 0.899588, 0.279639,
		36.547722, 38.015862, 45.472740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.015938, 37.370167, 45.273125>,  <36.782555, 37.386147, 45.276993>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.015938, 37.370167, 45.273125> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.155476, 37.740776, 45.216751>,  <36.239197, 37.963142, 45.182926>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.155476, 37.740776, 45.216751>,  <36.015938, 37.370167, 45.273125>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.155476, 37.740776, 45.216751> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625465, 0.118172, -0.771252,
		-0.697928, 0.357196, 0.620732,
		0.348841, 0.926524, -0.140938,
		36.260128, 38.018734, 45.174469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.413765, 37.066643, 45.497162>,  <36.015938, 37.370167, 45.273125>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.413765, 37.066643, 45.497162> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.146729, 36.780006, 45.577976>,  <34.986507, 36.608025, 45.626465>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.146729, 36.780006, 45.577976>,  <35.413765, 37.066643, 45.497162>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.146729, 36.780006, 45.577976> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248425, 0.041418, 0.967765,
		-0.701862, 0.696261, 0.150370,
		-0.667589, -0.716593, 0.202039,
		34.946453, 36.565029, 45.638588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.971138, 37.304337, 46.167294>,  <35.413765, 37.066643, 45.497162>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.971138, 37.304337, 46.167294> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.955036, 36.906883, 46.125206>,  <34.945374, 36.668411, 46.099953>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.955036, 36.906883, 46.125206>,  <34.971138, 37.304337, 46.167294>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.955036, 36.906883, 46.125206> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007104, -0.105586, 0.994385,
		-0.999164, 0.039281, 0.011309,
		-0.040254, -0.993634, -0.105219,
		34.942959, 36.608791, 46.093639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.413418, 37.060738, 46.598484>,  <34.971138, 37.304337, 46.167294>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.413418, 37.060738, 46.598484> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.680126, 36.770405, 46.530857>,  <34.840149, 36.596203, 46.490280>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.680126, 36.770405, 46.530857>,  <34.413418, 37.060738, 46.598484>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.680126, 36.770405, 46.530857> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056329, -0.177123, 0.982575,
		-0.743133, -0.664674, -0.077214,
		0.666769, -0.725835, -0.169066,
		34.880157, 36.552654, 46.480137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.313450, 36.605206, 47.088642>,  <34.413418, 37.060738, 46.598484>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.313450, 36.605206, 47.088642> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.676804, 36.483643, 46.973766>,  <34.894817, 36.410706, 46.904839>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.676804, 36.483643, 46.973766>,  <34.313450, 36.605206, 47.088642>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.676804, 36.483643, 46.973766> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236260, -0.193645, 0.952199,
		-0.344991, -0.932815, -0.104103,
		0.908385, -0.303905, -0.287193,
		34.949318, 36.392471, 46.887608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.388725, 36.036198, 47.468941>,  <34.313450, 36.605206, 47.088642>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.388725, 36.036198, 47.468941> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.767250, 36.112724, 47.364712>,  <34.994366, 36.158642, 47.302174>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.767250, 36.112724, 47.364712>,  <34.388725, 36.036198, 47.468941>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.767250, 36.112724, 47.364712> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244848, 0.102115, 0.964169,
		0.211070, -0.976202, 0.049789,
		0.946308, 0.191317, -0.260575,
		35.051144, 36.170120, 47.286541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.804859, 35.595020, 47.747902>,  <34.388725, 36.036198, 47.468941>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.804859, 35.595020, 47.747902> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.051773, 35.901913, 47.678249>,  <35.199921, 36.086048, 47.636456>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.051773, 35.901913, 47.678249>,  <34.804859, 35.595020, 47.747902>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.051773, 35.901913, 47.678249> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405371, -0.120472, 0.906179,
		0.674268, -0.629957, -0.385378,
		0.617282, 0.767229, -0.174136,
		35.236958, 36.132080, 47.626007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.438202, 35.366608, 48.064796>,  <34.804859, 35.595020, 47.747902>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.438202, 35.366608, 48.064796> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.499706, 35.757202, 48.004345>,  <35.536610, 35.991558, 47.968075>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.499706, 35.757202, 48.004345>,  <35.438202, 35.366608, 48.064796>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.499706, 35.757202, 48.004345> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504330, 0.053968, 0.861823,
		0.849710, -0.208736, -0.484171,
		0.153764, 0.976482, -0.151129,
		35.545837, 36.050148, 47.959007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.856834, 34.749374, 47.779049>,  <35.438202, 35.366608, 48.064796>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.856834, 34.749374, 47.779049> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.626926, 34.467976, 47.946255>,  <35.488983, 34.299137, 48.046577>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.626926, 34.467976, 47.946255>,  <35.856834, 34.749374, 47.779049>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.626926, 34.467976, 47.946255> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359399, -0.241906, -0.901284,
		0.735171, -0.668262, -0.113797,
		-0.574766, -0.703497, 0.418015,
		35.454498, 34.256927, 48.071659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.887428, 34.230495, 47.263718>,  <35.856834, 34.749374, 47.779049>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.887428, 34.230495, 47.263718> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.604141, 34.101383, 47.514874>,  <35.434170, 34.023918, 47.665565>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.604141, 34.101383, 47.514874>,  <35.887428, 34.230495, 47.263718>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.604141, 34.101383, 47.514874> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513851, -0.374208, -0.771962,
		0.484132, -0.869358, 0.099162,
		-0.708218, -0.322777, 0.627887,
		35.391674, 34.004551, 47.703239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.833454, 33.549885, 47.108002>,  <35.887428, 34.230495, 47.263718>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.833454, 33.549885, 47.108002> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.485378, 33.670994, 47.263485>,  <35.276531, 33.743660, 47.356773>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.485378, 33.670994, 47.263485>,  <35.833454, 33.549885, 47.108002>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.485378, 33.670994, 47.263485> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483507, -0.372927, -0.791926,
		-0.094816, -0.877070, 0.470912,
		-0.870190, 0.302777, 0.388710,
		35.224319, 33.761826, 47.380096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.320667, 33.092018, 46.933487>,  <35.833454, 33.549885, 47.108002>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.320667, 33.092018, 46.933487> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.079117, 33.394432, 47.034473>,  <34.934185, 33.575882, 47.095066>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.079117, 33.394432, 47.034473>,  <35.320667, 33.092018, 46.933487>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.079117, 33.394432, 47.034473> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482194, -0.094304, -0.870974,
		-0.634682, -0.647698, 0.421505,
		-0.603877, 0.756038, 0.252463,
		34.897953, 33.621243, 47.110214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.681675, 32.859978, 46.768723>,  <35.320667, 33.092018, 46.933487>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.681675, 32.859978, 46.768723> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.627899, 33.256329, 46.764908>,  <34.595634, 33.494141, 46.762619>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.627899, 33.256329, 46.764908>,  <34.681675, 32.859978, 46.768723>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.627899, 33.256329, 46.764908> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569538, -0.085145, -0.817543,
		-0.810896, -0.104476, 0.575788,
		-0.134440, 0.990876, -0.009541,
		34.587566, 33.553593, 46.762047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.077744, 32.838963, 46.583382>,  <34.681675, 32.859978, 46.768723>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.077744, 32.838963, 46.583382> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.239933, 33.192440, 46.489849>,  <34.337246, 33.404526, 46.433731>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.239933, 33.192440, 46.489849>,  <34.077744, 32.838963, 46.583382>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.239933, 33.192440, 46.489849> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507678, 0.004977, -0.861532,
		-0.760167, 0.468038, 0.450650,
		0.405473, 0.883694, -0.233830,
		34.361576, 33.457550, 46.419701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.491573, 33.160099, 46.378880>,  <34.077744, 32.838963, 46.583382>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.491573, 33.160099, 46.378880> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.801220, 33.364456, 46.229355>,  <33.987007, 33.487068, 46.139641>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.801220, 33.364456, 46.229355>,  <33.491573, 33.160099, 46.378880>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.801220, 33.364456, 46.229355> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492776, 0.115639, -0.862438,
		-0.397383, 0.851833, 0.341272,
		0.774118, 0.510889, -0.373809,
		34.033455, 33.517723, 46.117210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<39.700733, 34.837326, 49.599918> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.857380, 35.176086, 49.456028>,  <39.951366, 35.379341, 49.369694>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.857380, 35.176086, 49.456028>,  <39.700733, 34.837326, 49.599918>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.857380, 35.176086, 49.456028> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177519, -0.314067, -0.932657,
		-0.902842, 0.429103, 0.027347,
		0.391617, 0.846896, -0.359726,
		39.974865, 35.430157, 49.348110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.292374, 35.141781, 49.090023>,  <39.700733, 34.837326, 49.599918>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.292374, 35.141781, 49.090023> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.653732, 35.288643, 49.001411>,  <39.870548, 35.376759, 48.948246>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.653732, 35.288643, 49.001411>,  <39.292374, 35.141781, 49.090023>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.653732, 35.288643, 49.001411> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091821, -0.338993, -0.936298,
		-0.418862, 0.866188, -0.272532,
		0.903396, 0.367156, -0.221525,
		39.924751, 35.398788, 48.934956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.299278, 35.608498, 48.435070>,  <39.292374, 35.141781, 49.090023>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.299278, 35.608498, 48.435070> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.669205, 35.468460, 48.494595>,  <39.891163, 35.384438, 48.530308>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.669205, 35.468460, 48.494595>,  <39.299278, 35.608498, 48.435070>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.669205, 35.468460, 48.494595> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048518, -0.279445, -0.958935,
		0.377298, 0.894063, -0.241450,
		0.924820, -0.350089, 0.148812,
		39.946651, 35.363434, 48.539238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.583500, 35.702087, 47.817711>,  <39.299278, 35.608498, 48.435070>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.583500, 35.702087, 47.817711> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.862602, 35.467133, 47.981712>,  <40.030064, 35.326160, 48.080112>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.862602, 35.467133, 47.981712>,  <39.583500, 35.702087, 47.817711>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.862602, 35.467133, 47.981712> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193324, -0.396716, -0.897353,
		0.689752, 0.705401, -0.163256,
		0.697760, -0.587389, 0.410006,
		40.071930, 35.290916, 48.104713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.256851, 35.819195, 47.445728>,  <39.583500, 35.702087, 47.817711>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.256851, 35.819195, 47.445728> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.296204, 35.458702, 47.614536>,  <40.319813, 35.242405, 47.715820>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.296204, 35.458702, 47.614536>,  <40.256851, 35.819195, 47.445728>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.296204, 35.458702, 47.614536> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160125, -0.404212, -0.900540,
		0.982182, 0.156167, 0.104545,
		0.098376, -0.901235, 0.422017,
		40.325718, 35.188332, 47.741142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.819889, 35.568237, 47.222084>,  <40.256851, 35.819195, 47.445728>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.819889, 35.568237, 47.222084> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.647259, 35.230137, 47.348129>,  <40.543682, 35.027279, 47.423756>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.647259, 35.230137, 47.348129>,  <40.819889, 35.568237, 47.222084>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.647259, 35.230137, 47.348129> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209871, -0.433817, -0.876217,
		0.877323, -0.312022, 0.364619,
		-0.431577, -0.845249, 0.315113,
		40.517784, 34.976562, 47.442661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.270378, 34.957378, 46.866699>,  <40.819889, 35.568237, 47.222084>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.270378, 34.957378, 46.866699> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.916553, 34.805538, 46.975113>,  <40.704258, 34.714436, 47.040161>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.916553, 34.805538, 46.975113>,  <41.270378, 34.957378, 46.866699>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.916553, 34.805538, 46.975113> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079668, -0.449580, -0.889680,
		0.459573, -0.808568, 0.367438,
		-0.884560, -0.379600, 0.271032,
		40.651184, 34.691658, 47.056423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.378319, 34.277050, 46.769501>,  <41.270378, 34.957378, 46.866699>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.378319, 34.277050, 46.769501> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.980717, 34.320702, 46.772434>,  <40.742157, 34.346893, 46.774193>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.980717, 34.320702, 46.772434>,  <41.378319, 34.277050, 46.769501>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.980717, 34.320702, 46.772434> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052313, -0.415484, -0.908095,
		-0.096054, -0.903031, 0.418700,
		-0.994001, 0.109130, 0.007331,
		40.682518, 34.353439, 46.774632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.072914, 33.621193, 46.580177>,  <41.378319, 34.277050, 46.769501>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.072914, 33.621193, 46.580177> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.802826, 33.898331, 46.478954>,  <40.640774, 34.064613, 46.418221>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.802826, 33.898331, 46.478954>,  <41.072914, 33.621193, 46.580177>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.802826, 33.898331, 46.478954> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059804, -0.393370, -0.917433,
		-0.735184, -0.604339, 0.307048,
		-0.675224, 0.692845, -0.253057,
		40.600258, 34.106186, 46.403038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.563087, 33.222187, 46.189724>,  <41.072914, 33.621193, 46.580177>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.563087, 33.222187, 46.189724> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.474281, 33.602287, 46.102333>,  <40.420998, 33.830349, 46.049900>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.474281, 33.602287, 46.102333>,  <40.563087, 33.222187, 46.189724>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.474281, 33.602287, 46.102333> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263790, -0.274252, -0.924771,
		-0.938682, -0.147680, 0.311555,
		-0.222015, 0.950251, -0.218478,
		40.407677, 33.887363, 46.036789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.969830, 33.188072, 45.755341>,  <40.563087, 33.222187, 46.189724>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.969830, 33.188072, 45.755341> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.080112, 33.567448, 45.692802>,  <40.146282, 33.795074, 45.655277>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.080112, 33.567448, 45.692802>,  <39.969830, 33.188072, 45.755341>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.080112, 33.567448, 45.692802> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412381, -0.030219, -0.910510,
		-0.868291, 0.315505, 0.382788,
		0.275703, 0.948443, -0.156347,
		40.162823, 33.851982, 45.645897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.404694, 33.585918, 45.514565>,  <39.969830, 33.188072, 45.755341>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.404694, 33.585918, 45.514565> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.724644, 33.783779, 45.378609>,  <39.916615, 33.902496, 45.297035>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.724644, 33.783779, 45.378609>,  <39.404694, 33.585918, 45.514565>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.724644, 33.783779, 45.378609> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389985, -0.002095, -0.920819,
		-0.456199, 0.869088, 0.191231,
		0.799872, 0.494654, -0.339887,
		39.964603, 33.932175, 45.276642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.817528, 34.245323, 45.652401>,  <39.404694, 33.585918, 45.514565>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.817528, 34.245323, 45.652401> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.451202, 34.088600, 45.687675>,  <38.231407, 33.994568, 45.708839>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.451202, 34.088600, 45.687675>,  <38.817528, 34.245323, 45.652401>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.451202, 34.088600, 45.687675> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046984, 0.113543, 0.992421,
		-0.398848, 0.913015, -0.085576,
		-0.915812, -0.391805, 0.088183,
		38.176460, 33.971058, 45.714130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.458534, 34.742718, 46.064720>,  <38.817528, 34.245323, 45.652401>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.458534, 34.742718, 46.064720> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.291557, 34.379616, 46.081291>,  <38.191372, 34.161755, 46.091236>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.291557, 34.379616, 46.081291>,  <38.458534, 34.742718, 46.064720>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.291557, 34.379616, 46.081291> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043573, 0.065535, 0.996898,
		-0.907656, 0.414347, -0.066911,
		-0.417447, -0.907756, 0.041429,
		38.166325, 34.107288, 46.093719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.981544, 34.722626, 46.623802>,  <38.458534, 34.742718, 46.064720>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.981544, 34.722626, 46.623802> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.003471, 34.326519, 46.572624>,  <38.016628, 34.088856, 46.541916>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.003471, 34.326519, 46.572624>,  <37.981544, 34.722626, 46.623802>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.003471, 34.326519, 46.572624> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301887, -0.138581, 0.943217,
		-0.951766, -0.013083, -0.306545,
		0.054822, -0.990264, -0.127947,
		38.019917, 34.029438, 46.534241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.466290, 34.416794, 47.081329>,  <37.981544, 34.722626, 46.623802>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.466290, 34.416794, 47.081329> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.704430, 34.108360, 46.991013>,  <37.847313, 33.923298, 46.936825>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.704430, 34.108360, 46.991013>,  <37.466290, 34.416794, 47.081329>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.704430, 34.108360, 46.991013> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081632, -0.337616, 0.937737,
		-0.799307, -0.539852, -0.263946,
		0.595352, -0.771087, -0.225789,
		37.883034, 33.877033, 46.923275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.113674, 33.884319, 47.384766>,  <37.466290, 34.416794, 47.081329>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.113674, 33.884319, 47.384766> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.477699, 33.725101, 47.338554>,  <37.696114, 33.629570, 47.310825>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.477699, 33.725101, 47.338554>,  <37.113674, 33.884319, 47.384766>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.477699, 33.725101, 47.338554> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041799, -0.365464, 0.929887,
		-0.412358, -0.841426, -0.349233,
		0.910063, -0.398044, -0.115531,
		37.750717, 33.605690, 47.303894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.116543, 33.194500, 47.594116>,  <37.113674, 33.884319, 47.384766>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.116543, 33.194500, 47.594116> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.507740, 33.275246, 47.615219>,  <37.742458, 33.323692, 47.627880>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.507740, 33.275246, 47.615219>,  <37.116543, 33.194500, 47.594116>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.507740, 33.275246, 47.615219> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059101, -0.510535, 0.857824,
		0.200096, -0.835827, -0.511229,
		0.977992, 0.201861, 0.052758,
		37.801136, 33.335804, 47.631046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.420990, 32.542030, 47.646152>,  <37.116543, 33.194500, 47.594116>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.420990, 32.542030, 47.646152> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.670292, 32.823372, 47.782887>,  <37.819874, 32.992176, 47.864925>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.670292, 32.823372, 47.782887>,  <37.420990, 32.542030, 47.646152>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.670292, 32.823372, 47.782887> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143683, -0.532669, 0.834037,
		0.768709, -0.470698, -0.433047,
		0.623251, 0.703354, 0.341836,
		37.857265, 33.034378, 47.885437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.012573, 32.158188, 47.821083>,  <37.420990, 32.542030, 47.646152>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.012573, 32.158188, 47.821083> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.041553, 32.504513, 48.019123>,  <38.058941, 32.712307, 48.137947>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.041553, 32.504513, 48.019123>,  <38.012573, 32.158188, 47.821083>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.041553, 32.504513, 48.019123> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150494, -0.500209, 0.852726,
		0.985953, 0.012729, -0.166540,
		0.072450, 0.865811, 0.495098,
		38.063290, 32.764256, 48.167652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.615231, 32.125027, 48.338005>,  <38.012573, 32.158188, 47.821083>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.615231, 32.125027, 48.338005> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.391056, 32.420383, 48.488037>,  <38.256554, 32.597599, 48.578056>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.391056, 32.420383, 48.488037>,  <38.615231, 32.125027, 48.338005>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.391056, 32.420383, 48.488037> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044080, -0.478841, 0.876794,
		0.827025, 0.474851, 0.300907,
		-0.560434, 0.738395, 0.375082,
		38.222927, 32.641903, 48.600563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.926765, 32.237350, 48.969311>,  <38.615231, 32.125027, 48.338005>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.926765, 32.237350, 48.969311> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.574173, 32.420609, 49.015087>,  <38.362617, 32.530563, 49.042553>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.574173, 32.420609, 49.015087>,  <38.926765, 32.237350, 48.969311>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.574173, 32.420609, 49.015087> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078116, -0.380483, 0.921483,
		0.465718, 0.803328, 0.371176,
		-0.881479, 0.458146, 0.114445,
		38.309731, 32.558052, 49.049419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.925182, 32.644257, 49.593365>,  <38.926765, 32.237350, 48.969311>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.925182, 32.644257, 49.593365> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.534885, 32.584106, 49.529728>,  <38.300709, 32.548016, 49.491547>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.534885, 32.584106, 49.529728>,  <38.925182, 32.644257, 49.593365>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.534885, 32.584106, 49.529728> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120051, -0.240149, 0.963284,
		-0.183063, 0.959018, 0.216271,
		-0.975744, -0.150378, -0.159094,
		38.242161, 32.538994, 49.481998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.596722, 33.011490, 50.057362>,  <38.925182, 32.644257, 49.593365>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.596722, 33.011490, 50.057362> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.324730, 32.734772, 49.960155>,  <38.161533, 32.568741, 49.901833>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.324730, 32.734772, 49.960155>,  <38.596722, 33.011490, 50.057362>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.324730, 32.734772, 49.960155> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121372, -0.220660, 0.967770,
		-0.723117, 0.687557, 0.066080,
		-0.679978, -0.691791, -0.243013,
		38.120735, 32.527233, 49.887253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.116329, 33.101074, 50.574821>,  <38.596722, 33.011490, 50.057362>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.116329, 33.101074, 50.574821> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.033417, 32.740944, 50.421741>,  <37.983669, 32.524868, 50.329895>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.033417, 32.740944, 50.421741>,  <38.116329, 33.101074, 50.574821>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.033417, 32.740944, 50.421741> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198345, -0.344393, 0.917634,
		-0.957964, 0.266111, -0.107190,
		-0.207277, -0.900321, -0.382698,
		37.971233, 32.470848, 50.306931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.543903, 32.854080, 50.866966>,  <38.116329, 33.101074, 50.574821>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.543903, 32.854080, 50.866966> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.745834, 32.529148, 50.750156>,  <37.866993, 32.334190, 50.680073>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.745834, 32.529148, 50.750156>,  <37.543903, 32.854080, 50.866966>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.745834, 32.529148, 50.750156> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102893, -0.392507, 0.913976,
		-0.857068, -0.431350, -0.281729,
		0.504824, -0.812327, -0.292022,
		37.897282, 32.285450, 50.662548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.867199, 32.813946, 50.544342>,  <37.543903, 32.854080, 50.866966>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.867199, 32.813946, 50.544342> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.765438, 33.193493, 50.619099>,  <36.704380, 33.421223, 50.663952>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.765438, 33.193493, 50.619099>,  <36.867199, 32.813946, 50.544342>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.765438, 33.193493, 50.619099> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515161, 0.030587, -0.856547,
		-0.818467, -0.314189, 0.481038,
		-0.254404, 0.948867, 0.186892,
		36.689117, 33.478153, 50.675167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.163013, 32.818020, 50.399052>,  <36.867199, 32.813946, 50.544342>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.163013, 32.818020, 50.399052> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.255344, 33.206814, 50.381348>,  <36.310741, 33.440090, 50.370728>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.255344, 33.206814, 50.381348>,  <36.163013, 32.818020, 50.399052>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.255344, 33.206814, 50.381348> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560266, 0.095587, -0.822779,
		-0.795501, 0.214715, 0.566635,
		0.230826, 0.971988, -0.044258,
		36.324593, 33.498409, 50.368069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.630669, 33.052689, 50.103992>,  <36.163013, 32.818020, 50.399052>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.630669, 33.052689, 50.103992> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.888580, 33.353302, 50.048203>,  <36.043327, 33.533672, 50.014729>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.888580, 33.353302, 50.048203>,  <35.630669, 33.052689, 50.103992>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.888580, 33.353302, 50.048203> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494622, 0.271113, -0.825740,
		-0.582760, 0.601408, 0.546534,
		0.644779, 0.751536, -0.139476,
		36.082012, 33.578762, 50.006359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.194950, 33.684944, 49.996746>,  <35.630669, 33.052689, 50.103992>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.194950, 33.684944, 49.996746> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.561417, 33.745590, 49.848343>,  <35.781296, 33.781979, 49.759300>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.561417, 33.745590, 49.848343>,  <35.194950, 33.684944, 49.996746>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.561417, 33.745590, 49.848343> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394369, 0.506058, -0.767058,
		0.071448, 0.849069, 0.523429,
		0.916170, 0.151620, -0.371004,
		35.836269, 33.791077, 49.737041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.131458, 34.334610, 49.746532>,  <35.194950, 33.684944, 49.996746>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.131458, 34.334610, 49.746532> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.438023, 34.169804, 49.549408>,  <35.621960, 34.070919, 49.431133>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.438023, 34.169804, 49.549408>,  <35.131458, 34.334610, 49.746532>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.438023, 34.169804, 49.549408> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407505, 0.281193, -0.868833,
		0.496549, 0.866702, 0.047609,
		0.766406, -0.412017, -0.492812,
		35.667946, 34.046200, 49.401566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.220585, 34.724991, 49.118793>,  <35.131458, 34.334610, 49.746532>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.220585, 34.724991, 49.118793> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.468559, 34.423576, 49.031281>,  <35.617344, 34.242729, 48.978775>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.468559, 34.423576, 49.031281>,  <35.220585, 34.724991, 49.118793>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.468559, 34.423576, 49.031281> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229399, 0.092586, -0.968919,
		0.750372, 0.650854, -0.115464,
		0.619934, -0.753537, -0.218779,
		35.654541, 34.197514, 48.965649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.705250, 34.971458, 48.588230>,  <35.220585, 34.724991, 49.118793>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.705250, 34.971458, 48.588230> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.640091, 34.577099, 48.572872>,  <35.600994, 34.340485, 48.563656>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.640091, 34.577099, 48.572872>,  <35.705250, 34.971458, 48.588230>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.640091, 34.577099, 48.572872> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316130, 0.089018, -0.944530,
		0.934626, -0.141723, -0.326172,
		-0.162897, -0.985896, -0.038395,
		35.591221, 34.281330, 48.561352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.118576, 35.536835, 48.326618>,  <35.705250, 34.971458, 48.588230>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.118576, 35.536835, 48.326618> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.922203, 35.885029, 48.312580>,  <35.804379, 36.093945, 48.304157>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.922203, 35.885029, 48.312580>,  <36.118576, 35.536835, 48.326618>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.922203, 35.885029, 48.312580> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221487, 0.163667, 0.961331,
		0.842570, 0.464181, -0.273152,
		-0.490937, 0.870488, -0.035091,
		35.774921, 36.146175, 48.302052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.540009, 36.013721, 48.626198>,  <36.118576, 35.536835, 48.326618>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.540009, 36.013721, 48.626198> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.179535, 36.184021, 48.658714>,  <35.963249, 36.286201, 48.678226>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.179535, 36.184021, 48.658714>,  <36.540009, 36.013721, 48.626198>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.179535, 36.184021, 48.658714> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181753, 0.200915, 0.962600,
		0.393490, 0.882255, -0.258442,
		-0.901183, 0.425746, 0.081294,
		35.909180, 36.311745, 48.683102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.658463, 36.473907, 49.039829>,  <36.540009, 36.013721, 48.626198>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.658463, 36.473907, 49.039829> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.260307, 36.439213, 49.056229>,  <36.021416, 36.418396, 49.066071>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.260307, 36.439213, 49.056229>,  <36.658463, 36.473907, 49.039829>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.260307, 36.439213, 49.056229> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033448, 0.086833, 0.995661,
		-0.089920, 0.992440, -0.083531,
		-0.995387, -0.086736, 0.041003,
		35.961693, 36.413193, 49.068531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.385342, 37.067169, 49.478954>,  <36.658463, 36.473907, 49.039829>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.385342, 37.067169, 49.478954> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.119896, 36.768642, 49.499428>,  <35.960629, 36.589523, 49.511711>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.119896, 36.768642, 49.499428>,  <36.385342, 37.067169, 49.478954>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.119896, 36.768642, 49.499428> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003097, 0.071161, 0.997460,
		-0.748068, 0.661770, -0.049534,
		-0.663614, -0.746322, 0.051184,
		35.920811, 36.544746, 49.514782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.847775, 37.313194, 50.037930>,  <36.385342, 37.067169, 49.478954>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.847775, 37.313194, 50.037930> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.851028, 36.915775, 49.992676>,  <35.852982, 36.677322, 49.965523>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.851028, 36.915775, 49.992676>,  <35.847775, 37.313194, 50.037930>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.851028, 36.915775, 49.992676> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169819, -0.112871, 0.978990,
		-0.985442, 0.011249, -0.169641,
		0.008135, -0.993546, -0.113138,
		35.853470, 36.617710, 49.958733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.256588, 37.014599, 50.411999>,  <35.847775, 37.313194, 50.037930>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.256588, 37.014599, 50.411999> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.513832, 36.709084, 50.390003>,  <35.668179, 36.525772, 50.376804>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.513832, 36.709084, 50.390003>,  <35.256588, 37.014599, 50.411999>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.513832, 36.709084, 50.390003> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103994, -0.158261, 0.981906,
		-0.758676, -0.625759, -0.181210,
		0.643114, -0.763793, -0.054993,
		35.706768, 36.479946, 50.373505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.034107, 36.487988, 50.908772>,  <35.256588, 37.014599, 50.411999>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.034107, 36.487988, 50.908772> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.400578, 36.341232, 50.844261>,  <35.620461, 36.253178, 50.805557>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.400578, 36.341232, 50.844261>,  <35.034107, 36.487988, 50.908772>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.400578, 36.341232, 50.844261> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130402, -0.107608, 0.985604,
		-0.378966, -0.924018, -0.050744,
		0.916177, -0.366893, -0.161274,
		35.675430, 36.231163, 50.795879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.160736, 35.888252, 51.342323>,  <35.034107, 36.487988, 50.908772>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.160736, 35.888252, 51.342323> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.531044, 36.023918, 51.275501>,  <35.753231, 36.105320, 51.235409>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.531044, 36.023918, 51.275501>,  <35.160736, 35.888252, 51.342323>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.531044, 36.023918, 51.275501> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216157, -0.112303, 0.969878,
		0.310190, -0.933999, -0.177281,
		0.925774, 0.339168, -0.167055,
		35.808777, 36.125668, 51.225384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.588974, 35.467510, 51.731461>,  <35.160736, 35.888252, 51.342323>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.588974, 35.467510, 51.731461> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.792519, 35.805737, 51.666855>,  <35.914646, 36.008671, 51.628094>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.792519, 35.805737, 51.666855>,  <35.588974, 35.467510, 51.731461>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.792519, 35.805737, 51.666855> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341940, -0.026353, 0.939352,
		0.790026, -0.533224, -0.302542,
		0.508858, 0.845563, -0.161511,
		35.945175, 36.059406, 51.618401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<33.208946, 34.749512, 35.798302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.402573, 35.098991, 35.778965>,  <33.518749, 35.308678, 35.767365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.402573, 35.098991, 35.778965>,  <33.208946, 34.749512, 35.798302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.402573, 35.098991, 35.778965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104489, 0.112560, 0.988136,
		0.868770, -0.473273, 0.145778,
		0.484067, 0.873695, -0.048337,
		33.547794, 35.361099, 35.764465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.827042, 34.594189, 36.112614>,  <33.208946, 34.749512, 35.798302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.827042, 34.594189, 36.112614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.757832, 34.985962, 36.154125>,  <33.716305, 35.221027, 36.179031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.757832, 34.985962, 36.154125>,  <33.827042, 34.594189, 36.112614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.757832, 34.985962, 36.154125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169389, -0.074207, 0.982752,
		0.970241, 0.187623, -0.153065,
		-0.173029, 0.979434, 0.103780,
		33.705921, 35.279793, 36.185261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.201897, 34.790184, 36.735233>,  <33.827042, 34.594189, 36.112614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.201897, 34.790184, 36.735233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.962894, 35.102787, 36.663429>,  <33.819492, 35.290348, 36.620346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.962894, 35.102787, 36.663429>,  <34.201897, 34.790184, 36.735233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.962894, 35.102787, 36.663429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044793, 0.190989, 0.980570,
		0.800611, 0.593939, -0.079111,
		-0.597508, 0.781511, -0.179512,
		33.783642, 35.337242, 36.609577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.389030, 35.290253, 37.271111>,  <34.201897, 34.790184, 36.735233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.389030, 35.290253, 37.271111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.030788, 35.409958, 37.139454>,  <33.815842, 35.481781, 37.060459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.030788, 35.409958, 37.139454>,  <34.389030, 35.290253, 37.271111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.030788, 35.409958, 37.139454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195640, 0.399523, 0.895604,
		0.399523, 0.866499, -0.299266,
		-0.895604, 0.299266, -0.329141,
		33.762108, 35.499737, 37.040710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.334728, 35.950790, 37.460918>,  <34.389030, 35.290253, 37.271111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.334728, 35.950790, 37.460918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.960197, 35.828938, 37.391075>,  <33.735477, 35.755825, 37.349171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.960197, 35.828938, 37.391075>,  <34.334728, 35.950790, 37.460918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.960197, 35.828938, 37.391075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258095, 0.259950, 0.930491,
		-0.238068, 0.916311, -0.322023,
		-0.936328, -0.304632, -0.174609,
		33.679298, 35.737549, 37.338692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.981453, 36.488415, 37.818718>,  <34.334728, 35.950790, 37.460918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.981453, 36.488415, 37.818718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.726097, 36.183525, 37.775864>,  <33.572884, 36.000591, 37.750153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.726097, 36.183525, 37.775864>,  <33.981453, 36.488415, 37.818718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.726097, 36.183525, 37.775864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395563, 0.205475, 0.895159,
		-0.660297, 0.613838, -0.432679,
		-0.638387, -0.762223, -0.107137,
		33.534580, 35.954857, 37.743721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.372166, 36.805473, 38.033485>,  <33.981453, 36.488415, 37.818718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.372166, 36.805473, 38.033485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.311134, 36.411560, 38.066776>,  <33.274517, 36.175213, 38.086750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.311134, 36.411560, 38.066776>,  <33.372166, 36.805473, 38.033485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.311134, 36.411560, 38.066776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256297, 0.120763, 0.959025,
		-0.954480, 0.124994, -0.270822,
		-0.152578, -0.984781, 0.083230,
		33.265362, 36.116127, 38.091743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.735798, 36.757439, 38.323681>,  <33.372166, 36.805473, 38.033485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.735798, 36.757439, 38.323681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.915516, 36.407619, 38.396671>,  <33.023346, 36.197727, 38.440464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.915516, 36.407619, 38.396671>,  <32.735798, 36.757439, 38.323681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.915516, 36.407619, 38.396671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310802, 0.038478, 0.949696,
		-0.837578, -0.483406, -0.254524,
		0.449295, -0.874551, 0.182472,
		33.050304, 36.145256, 38.451412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.156887, 36.356586, 38.692623>,  <32.735798, 36.757439, 38.323681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.156887, 36.356586, 38.692623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.510189, 36.186981, 38.772694>,  <32.722172, 36.085217, 38.820736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.510189, 36.186981, 38.772694>,  <32.156887, 36.356586, 38.692623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.510189, 36.186981, 38.772694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296528, -0.174407, 0.938964,
		-0.363227, -0.888701, -0.279780,
		0.883254, -0.424019, 0.200175,
		32.775166, 36.059776, 38.832745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.966154, 35.827160, 39.078266>,  <32.156887, 36.356586, 38.692623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.966154, 35.827160, 39.078266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.353710, 35.876862, 39.163887>,  <32.586243, 35.906681, 39.215260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.353710, 35.876862, 39.163887>,  <31.966154, 35.827160, 39.078266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.353710, 35.876862, 39.163887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213591, -0.017177, 0.976772,
		0.125044, -0.992102, 0.009897,
		0.968888, 0.124253, 0.214052,
		32.644375, 35.914135, 39.228104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.105648, 35.453041, 39.705826>,  <31.966154, 35.827160, 39.078266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.105648, 35.453041, 39.705826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.432564, 35.683533, 39.705364>,  <32.628712, 35.821827, 39.705086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.432564, 35.683533, 39.705364>,  <32.105648, 35.453041, 39.705826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.432564, 35.683533, 39.705364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060597, -0.083952, 0.994626,
		0.573031, -0.812968, -0.103530,
		0.817290, 0.576225, -0.001156,
		32.677750, 35.856400, 39.705017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.531898, 35.146767, 40.156551>,  <32.105648, 35.453041, 39.705826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.531898, 35.146767, 40.156551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.674854, 35.520111, 40.169907>,  <32.760628, 35.744118, 40.177921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.674854, 35.520111, 40.169907>,  <32.531898, 35.146767, 40.156551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.674854, 35.520111, 40.169907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180243, -0.104008, 0.978108,
		0.916399, -0.343545, -0.205403,
		0.357388, 0.933359, 0.033391,
		32.782070, 35.800117, 40.179924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.589069, 34.446880, 40.519718>,  <32.531898, 35.146767, 40.156551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.589069, 34.446880, 40.519718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.262794, 34.227451, 40.593170>,  <32.067028, 34.095795, 40.637241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.262794, 34.227451, 40.593170>,  <32.589069, 34.446880, 40.519718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.262794, 34.227451, 40.593170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168809, -0.077898, -0.982566,
		0.553314, -0.832466, -0.029064,
		-0.815688, -0.548574, 0.183630,
		32.018089, 34.062878, 40.648258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.736332, 33.946247, 40.046375>,  <32.589069, 34.446880, 40.519718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.736332, 33.946247, 40.046375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.341675, 33.939102, 40.111137>,  <32.104881, 33.934814, 40.149994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.341675, 33.939102, 40.111137>,  <32.736332, 33.946247, 40.046375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.341675, 33.939102, 40.111137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158596, -0.121363, -0.979856,
		0.037156, -0.992447, 0.116909,
		-0.986644, -0.017866, 0.161907,
		32.045681, 33.933743, 40.159710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.431999, 33.305660, 39.631786>,  <32.736332, 33.946247, 40.046375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.431999, 33.305660, 39.631786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.152924, 33.576981, 39.723988>,  <31.985477, 33.739773, 39.779308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.152924, 33.576981, 39.723988>,  <32.431999, 33.305660, 39.631786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.152924, 33.576981, 39.723988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316165, -0.002808, -0.948700,
		-0.642857, -0.734778, 0.216414,
		-0.697692, 0.678301, 0.230506,
		31.943617, 33.780472, 39.793140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.862186, 33.135242, 39.324257>,  <32.431999, 33.305660, 39.631786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.862186, 33.135242, 39.324257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.778692, 33.524330, 39.364735>,  <31.728596, 33.757782, 39.389019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.778692, 33.524330, 39.364735>,  <31.862186, 33.135242, 39.324257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.778692, 33.524330, 39.364735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438551, -0.000616, -0.898706,
		-0.874130, -0.231969, 0.426717,
		-0.208735, 0.972723, 0.101192,
		31.716072, 33.816147, 39.395092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.182724, 33.198669, 39.033859>,  <31.862186, 33.135242, 39.324257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.182724, 33.198669, 39.033859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.294025, 33.580921, 39.072548>,  <31.360806, 33.810272, 39.095760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.294025, 33.580921, 39.072548>,  <31.182724, 33.198669, 39.033859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.294025, 33.580921, 39.072548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423040, 0.212337, -0.880880,
		-0.862329, 0.204189, 0.463351,
		0.278253, 0.955625, 0.096724,
		31.377501, 33.867607, 39.101566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.652431, 33.495728, 38.815598>,  <31.182724, 33.198669, 39.033859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.652431, 33.495728, 38.815598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.979279, 33.724121, 38.783875>,  <31.175386, 33.861156, 38.764839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.979279, 33.724121, 38.783875>,  <30.652431, 33.495728, 38.815598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.979279, 33.724121, 38.783875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284400, 0.279617, -0.917023,
		-0.501433, 0.771872, 0.390869,
		0.817118, 0.570988, -0.079311,
		31.224415, 33.895416, 38.760082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.409964, 34.040913, 38.355366>,  <30.652431, 33.495728, 38.815598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.409964, 34.040913, 38.355366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.809645, 34.032909, 38.341534>,  <31.049454, 34.028107, 38.333233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.809645, 34.032909, 38.341534>,  <30.409964, 34.040913, 38.355366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.809645, 34.032909, 38.341534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032725, 0.086671, -0.995699,
		0.022915, 0.996036, 0.085947,
		0.999202, -0.020004, -0.034582,
		31.109406, 34.026909, 38.331158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.551687, 34.566002, 37.829834>,  <30.409964, 34.040913, 38.355366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.551687, 34.566002, 37.829834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.873667, 34.330593, 37.860027>,  <31.066854, 34.189346, 37.878143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.873667, 34.330593, 37.860027>,  <30.551687, 34.566002, 37.829834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.873667, 34.330593, 37.860027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128309, 0.048445, -0.990550,
		0.579305, 0.807028, 0.114509,
		0.804949, -0.588523, 0.075484,
		31.115152, 34.154037, 37.882671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.964403, 34.818169, 37.306717>,  <30.551687, 34.566002, 37.829834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.964403, 34.818169, 37.306717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.119967, 34.465996, 37.415226>,  <31.213305, 34.254692, 37.480331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.119967, 34.465996, 37.415226>,  <30.964403, 34.818169, 37.306717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.119967, 34.465996, 37.415226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261474, -0.176864, -0.948868,
		0.883393, 0.439953, 0.161426,
		0.388907, -0.880432, 0.271276,
		31.236639, 34.201866, 37.496609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.641212, 34.783260, 37.033291>,  <30.964403, 34.818169, 37.306717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.641212, 34.783260, 37.033291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.531921, 34.402996, 37.092060>,  <31.466347, 34.174835, 37.127323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.531921, 34.402996, 37.092060>,  <31.641212, 34.783260, 37.033291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.531921, 34.402996, 37.092060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352958, -0.241162, -0.904025,
		0.894856, -0.195144, 0.401436,
		-0.273226, -0.950663, 0.146928,
		31.449953, 34.117798, 37.136139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.198730, 34.360985, 36.559807>,  <31.641212, 34.783260, 37.033291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.198730, 34.360985, 36.559807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.894047, 34.117004, 36.647232>,  <31.711237, 33.970619, 36.699688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.894047, 34.117004, 36.647232>,  <32.198730, 34.360985, 36.559807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.894047, 34.117004, 36.647232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046429, -0.387847, -0.920554,
		0.646258, -0.691043, 0.323744,
		-0.761705, -0.609946, 0.218565,
		31.665535, 33.934021, 36.712803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.407116, 33.691864, 36.380901>,  <32.198730, 34.360985, 36.559807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.407116, 33.691864, 36.380901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.008232, 33.718246, 36.366871>,  <31.768902, 33.734077, 36.358452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.008232, 33.718246, 36.366871>,  <32.407116, 33.691864, 36.380901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.008232, 33.718246, 36.366871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013490, -0.302852, -0.952942,
		-0.073475, -0.950753, 0.301116,
		-0.997206, 0.065955, -0.035078,
		31.709070, 33.738033, 36.356346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.154194, 33.103184, 36.085941>,  <32.407116, 33.691864, 36.380901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.154194, 33.103184, 36.085941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.830622, 33.334949, 36.046124>,  <31.636478, 33.474010, 36.022232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.830622, 33.334949, 36.046124>,  <32.154194, 33.103184, 36.085941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.830622, 33.334949, 36.046124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107073, -0.311691, -0.944132,
		-0.578073, -0.753077, 0.314176,
		-0.808930, 0.579417, -0.099545,
		31.587942, 33.508774, 36.016258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.267723, 32.415123, 35.627506>,  <32.154194, 33.103184, 36.085941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.267723, 32.415123, 35.627506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.511414, 32.333004, 35.321121>,  <32.657627, 32.283733, 35.137291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.511414, 32.333004, 35.321121>,  <32.267723, 32.415123, 35.627506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.511414, 32.333004, 35.321121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.792562, 0.189720, 0.579527,
		0.026342, -0.960135, 0.278294,
		0.609222, -0.205300, -0.765964,
		32.694180, 32.271416, 35.091331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.885365, 32.072914, 35.893257>,  <32.267723, 32.415123, 35.627506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.885365, 32.072914, 35.893257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.013187, 32.214447, 35.541649>,  <33.089882, 32.299366, 35.330685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.013187, 32.214447, 35.541649>,  <32.885365, 32.072914, 35.893257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.013187, 32.214447, 35.541649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.857643, 0.286436, 0.427086,
		0.402902, -0.890368, -0.211932,
		0.319558, 0.353836, -0.879023,
		33.109055, 32.320599, 35.277943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.961895, 32.496021, 36.499924>,  <32.885365, 32.072914, 35.893257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.961895, 32.496021, 36.499924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.234489, 32.212883, 36.425591>,  <33.398045, 32.042999, 36.380989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.234489, 32.212883, 36.425591>,  <32.961895, 32.496021, 36.499924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.234489, 32.212883, 36.425591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553679, 0.332641, 0.763407,
		-0.478558, -0.623142, 0.618608,
		0.681485, -0.707845, -0.185833,
		33.438934, 32.000530, 36.369843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.947582, 31.942486, 37.098770>,  <32.961895, 32.496021, 36.499924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.947582, 31.942486, 37.098770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.291847, 32.047085, 36.924011>,  <33.498405, 32.109844, 36.819157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.291847, 32.047085, 36.924011>,  <32.947582, 31.942486, 37.098770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.291847, 32.047085, 36.924011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411949, 0.146697, 0.899321,
		0.299261, -0.953991, 0.018533,
		0.860663, 0.261497, -0.436896,
		33.550045, 32.125534, 36.792942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.486469, 31.503565, 37.400543>,  <32.947582, 31.942486, 37.098770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.486469, 31.503565, 37.400543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.655781, 31.835186, 37.254391>,  <33.757366, 32.034157, 37.166698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.655781, 31.835186, 37.254391>,  <33.486469, 31.503565, 37.400543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.655781, 31.835186, 37.254391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379332, 0.204073, 0.902475,
		0.822765, -0.520601, -0.228106,
		0.423280, 0.829052, -0.365385,
		33.782764, 32.083900, 37.144775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.150406, 31.490618, 37.703911>,  <33.486469, 31.503565, 37.400543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.150406, 31.490618, 37.703911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.116512, 31.862831, 37.561405>,  <34.096176, 32.086159, 37.475903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.116512, 31.862831, 37.561405>,  <34.150406, 31.490618, 37.703911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.116512, 31.862831, 37.561405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351006, 0.362512, 0.863353,
		0.932531, -0.051893, -0.357342,
		-0.084739, 0.930533, -0.356268,
		34.091091, 32.141991, 37.454525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.793186, 31.821556, 37.858032>,  <34.150406, 31.490618, 37.703911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.793186, 31.821556, 37.858032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.531708, 32.118462, 37.799072>,  <34.374821, 32.296604, 37.763695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.531708, 32.118462, 37.799072>,  <34.793186, 31.821556, 37.858032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.531708, 32.118462, 37.799072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406586, 0.508767, 0.758844,
		0.638255, 0.436121, -0.634373,
		-0.653696, 0.742263, -0.147402,
		34.335598, 32.341141, 37.754852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.159569, 32.450481, 37.832375>,  <34.793186, 31.821556, 37.858032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.159569, 32.450481, 37.832375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.786842, 32.520824, 37.959362>,  <34.563206, 32.563030, 38.035553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.786842, 32.520824, 37.959362>,  <35.159569, 32.450481, 37.832375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.786842, 32.520824, 37.959362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362423, 0.496710, 0.788624,
		-0.019008, 0.849914, -0.526578,
		-0.931820, 0.175854, 0.317470,
		34.507298, 32.573582, 38.054604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.169128, 33.100651, 38.134678>,  <35.159569, 32.450481, 37.832375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.169128, 33.100651, 38.134678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.830307, 32.972626, 38.304417>,  <34.627014, 32.895809, 38.406258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.830307, 32.972626, 38.304417>,  <35.169128, 33.100651, 38.134678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.830307, 32.972626, 38.304417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234956, 0.490647, 0.839083,
		-0.476764, 0.810446, -0.340401,
		-0.847049, -0.320065, 0.424342,
		34.576191, 32.876606, 38.431721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.934135, 33.716118, 38.431839>,  <35.169128, 33.100651, 38.134678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.934135, 33.716118, 38.431839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.720116, 33.428905, 38.609894>,  <34.591702, 33.256577, 38.716728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.720116, 33.428905, 38.609894>,  <34.934135, 33.716118, 38.431839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.720116, 33.428905, 38.609894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144313, 0.441479, 0.885590,
		-0.832401, 0.538077, -0.132594,
		-0.535053, -0.718032, 0.445139,
		34.559601, 33.213497, 38.743435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.478882, 34.039139, 38.876797>,  <34.934135, 33.716118, 38.431839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.478882, 34.039139, 38.876797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.491508, 33.657722, 38.996635>,  <34.499084, 33.428871, 39.068539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.491508, 33.657722, 38.996635>,  <34.478882, 34.039139, 38.876797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.491508, 33.657722, 38.996635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259298, 0.297293, 0.918902,
		-0.965281, 0.048675, 0.256638,
		0.031569, -0.953545, 0.299593,
		34.500980, 33.371658, 39.086514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.177906, 34.070011, 39.461792>,  <34.478882, 34.039139, 38.876797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.177906, 34.070011, 39.461792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.373116, 33.722370, 39.493996>,  <34.490242, 33.513786, 39.513317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.373116, 33.722370, 39.493996>,  <34.177906, 34.070011, 39.461792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.373116, 33.722370, 39.493996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358037, 0.283459, 0.889641,
		-0.796014, -0.405345, 0.449508,
		0.488028, -0.869107, 0.080509,
		34.519524, 33.461639, 39.518147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.097607, 33.786240, 40.276173>,  <34.177906, 34.070011, 39.461792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.097607, 33.786240, 40.276173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.403454, 33.601913, 40.095947>,  <34.586964, 33.491318, 39.987812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.403454, 33.601913, 40.095947>,  <34.097607, 33.786240, 40.276173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.403454, 33.601913, 40.095947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520323, 0.028869, 0.853482,
		-0.380292, -0.887025, 0.261848,
		0.764619, -0.460818, -0.450561,
		34.632839, 33.463669, 39.960777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.252140, 33.194313, 40.738338>,  <34.097607, 33.786240, 40.276173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.252140, 33.194313, 40.738338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.573357, 33.276283, 40.514507>,  <34.766087, 33.325466, 40.380207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.573357, 33.276283, 40.514507>,  <34.252140, 33.194313, 40.738338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.573357, 33.276283, 40.514507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555519, 0.082442, 0.827407,
		0.215693, -0.975299, -0.047638,
		0.803041, 0.204930, -0.559579,
		34.814270, 33.337761, 40.346634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.802456, 32.955933, 41.152657>,  <34.252140, 33.194313, 40.738338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.802456, 32.955933, 41.152657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.005718, 33.178688, 40.889854>,  <35.127678, 33.312340, 40.732174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.005718, 33.178688, 40.889854>,  <34.802456, 32.955933, 41.152657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.005718, 33.178688, 40.889854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.702293, 0.173655, 0.690383,
		0.498557, -0.812232, -0.302854,
		0.508158, 0.556887, -0.657002,
		35.158165, 33.345753, 40.692753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.489494, 32.647346, 41.015221>,  <34.802456, 32.955933, 41.152657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.489494, 32.647346, 41.015221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.532909, 33.026199, 40.894447>,  <35.558960, 33.253510, 40.821983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.532909, 33.026199, 40.894447>,  <35.489494, 32.647346, 41.015221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.532909, 33.026199, 40.894447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.781475, 0.106430, 0.614793,
		0.614423, -0.302683, -0.728606,
		0.108541, 0.947130, -0.301932,
		35.565472, 33.310337, 40.803867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.132092, 32.778191, 41.022766>,  <35.489494, 32.647346, 41.015221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.132092, 32.778191, 41.022766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.983608, 33.149197, 41.040272>,  <35.894520, 33.371799, 41.050774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.983608, 33.149197, 41.040272>,  <36.132092, 32.778191, 41.022766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.983608, 33.149197, 41.040272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.789862, 0.290638, 0.540044,
		0.488182, 0.235035, -0.840498,
		-0.371210, 0.927517, 0.043761,
		35.872246, 33.427452, 41.053398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.767487, 33.169182, 40.978050>,  <36.132092, 32.778191, 41.022766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.767487, 33.169182, 40.978050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.484322, 33.408703, 41.127872>,  <36.314423, 33.552418, 41.217766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.484322, 33.408703, 41.127872>,  <36.767487, 33.169182, 40.978050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.484322, 33.408703, 41.127872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644717, 0.331275, 0.688910,
		0.288444, 0.729168, -0.620575,
		-0.707913, 0.598807, 0.374553,
		36.271946, 33.588345, 41.240238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.140953, 33.780376, 41.111656>,  <36.767487, 33.169182, 40.978050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.140953, 33.780376, 41.111656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.805763, 33.847736, 41.319286>,  <36.604649, 33.888153, 41.443867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.805763, 33.847736, 41.319286>,  <37.140953, 33.780376, 41.111656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.805763, 33.847736, 41.319286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545708, 0.262447, 0.795817,
		-0.002214, 0.950138, -0.311821,
		-0.837973, 0.168401, 0.519079,
		36.554371, 33.898258, 41.475010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.120018, 34.427235, 41.448612>,  <37.140953, 33.780376, 41.111656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.120018, 34.427235, 41.448612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.842743, 34.270824, 41.690800>,  <36.676380, 34.176979, 41.836113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.842743, 34.270824, 41.690800>,  <37.120018, 34.427235, 41.448612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.842743, 34.270824, 41.690800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483080, 0.371385, 0.792911,
		-0.534911, 0.842124, -0.068542,
		-0.693184, -0.391026, 0.605471,
		36.634789, 34.153515, 41.872440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.096153, 34.899265, 41.989738>,  <37.120018, 34.427235, 41.448612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.096153, 34.899265, 41.989738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.949669, 34.548565, 42.114441>,  <36.861778, 34.338142, 42.189262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.949669, 34.548565, 42.114441>,  <37.096153, 34.899265, 41.989738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.949669, 34.548565, 42.114441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413523, 0.146792, 0.898583,
		-0.833599, 0.457990, 0.308801,
		-0.366212, -0.876754, 0.311755,
		36.839806, 34.285538, 42.207966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.696182, 34.987625, 42.697689>,  <37.096153, 34.899265, 41.989738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.696182, 34.987625, 42.697689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.802296, 34.603870, 42.659313>,  <36.865963, 34.373619, 42.636288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.802296, 34.603870, 42.659313>,  <36.696182, 34.987625, 42.697689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.802296, 34.603870, 42.659313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329535, -0.003294, 0.944137,
		-0.906108, -0.282080, 0.315277,
		0.265284, -0.959385, -0.095940,
		36.881882, 34.316055, 42.630531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.515827, 34.836784, 43.273705>,  <36.696182, 34.987625, 42.697689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.515827, 34.836784, 43.273705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.780125, 34.555752, 43.168034>,  <36.938705, 34.387131, 43.104630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.780125, 34.555752, 43.168034>,  <36.515827, 34.836784, 43.273705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.780125, 34.555752, 43.168034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198411, -0.175951, 0.964196,
		-0.723911, -0.689505, 0.023141,
		0.660747, -0.702583, -0.264179,
		36.978348, 34.344978, 43.088779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.425224, 34.441433, 43.874363>,  <36.515827, 34.836784, 43.273705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.425224, 34.441433, 43.874363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.735497, 34.247826, 43.712353>,  <36.921661, 34.131660, 43.615147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.735497, 34.247826, 43.712353>,  <36.425224, 34.441433, 43.874363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.735497, 34.247826, 43.712353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296615, -0.286877, 0.910890,
		-0.557080, -0.826697, -0.078958,
		0.775682, -0.484018, -0.405024,
		36.968201, 34.102619, 43.590847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.447655, 33.695923, 44.176868>,  <36.425224, 34.441433, 43.874363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.447655, 33.695923, 44.176868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.803177, 33.815968, 44.038330>,  <37.016491, 33.887993, 43.955208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.803177, 33.815968, 44.038330>,  <36.447655, 33.695923, 44.176868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.803177, 33.815968, 44.038330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420237, -0.232258, 0.877187,
		0.182811, -0.925198, -0.332550,
		0.888809, 0.300109, -0.346343,
		37.069820, 33.906002, 43.934425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.858543, 33.139774, 44.334042>,  <36.447655, 33.695923, 44.176868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.858543, 33.139774, 44.334042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.100906, 33.452248, 44.273880>,  <37.246323, 33.639732, 44.237782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.100906, 33.452248, 44.273880>,  <36.858543, 33.139774, 44.334042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.100906, 33.452248, 44.273880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387789, -0.124946, 0.913240,
		0.694618, -0.611666, -0.378642,
		0.605908, 0.781187, -0.150407,
		37.282681, 33.686604, 44.228756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.445141, 32.897518, 44.563755>,  <36.858543, 33.139774, 44.334042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.445141, 32.897518, 44.563755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.475185, 33.295464, 44.590881>,  <37.493210, 33.534233, 44.607155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.475185, 33.295464, 44.590881>,  <37.445141, 32.897518, 44.563755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.475185, 33.295464, 44.590881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247109, -0.084454, 0.965300,
		0.966072, -0.055743, -0.252184,
		0.075106, 0.994867, 0.067814,
		37.497719, 33.593925, 44.611225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.203270, 33.043739, 44.739674>,  <37.445141, 32.897518, 44.563755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.203270, 33.043739, 44.739674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.994678, 33.365356, 44.853920>,  <37.869522, 33.558327, 44.922470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.994678, 33.365356, 44.853920>,  <38.203270, 33.043739, 44.739674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.994678, 33.365356, 44.853920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412332, -0.055592, 0.909336,
		0.747020, 0.591972, -0.302540,
		-0.521483, 0.804039, 0.285618,
		37.838234, 33.606567, 44.939606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.726730, 33.447872, 44.963421>,  <38.203270, 33.043739, 44.739674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.726730, 33.447872, 44.963421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.385654, 33.581646, 45.123955>,  <38.181007, 33.661911, 45.220276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.385654, 33.581646, 45.123955>,  <38.726730, 33.447872, 44.963421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.385654, 33.581646, 45.123955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417165, -0.026532, 0.908443,
		0.314463, 0.942046, -0.116891,
		-0.852694, 0.334434, 0.401332,
		38.129845, 33.681976, 45.244354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.159645, 34.053062, 45.008095>,  <38.726730, 33.447872, 44.963421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.159645, 34.053062, 45.008095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.538795, 34.091869, 44.886696>,  <39.766285, 34.115154, 44.813854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.538795, 34.091869, 44.886696>,  <39.159645, 34.053062, 45.008095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.538795, 34.091869, 44.886696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279797, -0.202276, -0.938508,
		-0.152439, 0.974512, -0.164589,
		0.947880, 0.097014, -0.303500,
		39.823158, 34.120972, 44.795647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.145977, 34.365723, 44.320915>,  <39.159645, 34.053062, 45.008095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.145977, 34.365723, 44.320915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.494205, 34.171326, 44.351696>,  <39.703140, 34.054688, 44.370163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.494205, 34.171326, 44.351696>,  <39.145977, 34.365723, 44.320915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.494205, 34.171326, 44.351696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074866, -0.285398, -0.955480,
		0.486320, 0.826049, -0.284843,
		0.870568, -0.485994, 0.076952,
		39.755375, 34.025528, 44.374783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.293003, 34.511135, 43.689053>,  <39.145977, 34.365723, 44.320915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.293003, 34.511135, 43.689053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.549526, 34.231956, 43.816544>,  <39.703442, 34.064449, 43.893040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.549526, 34.231956, 43.816544>,  <39.293003, 34.511135, 43.689053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.549526, 34.231956, 43.816544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056009, -0.456877, -0.887765,
		0.765237, 0.551478, -0.332091,
		0.641307, -0.697951, 0.318732,
		39.741917, 34.022572, 43.912163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.972786, 34.646053, 43.501759>,  <39.293003, 34.511135, 43.689053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.972786, 34.646053, 43.501759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.028076, 34.251312, 43.535259>,  <40.061253, 34.014469, 43.555359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.028076, 34.251312, 43.535259>,  <39.972786, 34.646053, 43.501759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.028076, 34.251312, 43.535259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057728, -0.076392, -0.995405,
		0.988717, 0.142428, 0.046409,
		0.138229, -0.986853, 0.083752,
		40.069546, 33.955257, 43.560383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.508240, 34.425175, 43.070133>,  <39.972786, 34.646053, 43.501759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.508240, 34.425175, 43.070133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.280296, 34.102859, 43.134594>,  <40.143532, 33.909470, 43.173271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.280296, 34.102859, 43.134594>,  <40.508240, 34.425175, 43.070133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.280296, 34.102859, 43.134594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167257, -0.305735, -0.937311,
		0.804544, -0.507177, 0.308998,
		-0.569854, -0.805790, 0.161148,
		40.109341, 33.861122, 43.182938>
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
