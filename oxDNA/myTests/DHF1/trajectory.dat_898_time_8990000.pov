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
	<1.998353, 2.785649, 2.788247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.173653, 2.594387, 2.483799>,  <2.278833, 2.479630, 2.301130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.173653, 2.594387, 2.483799>,  <1.998353, 2.785649, 2.788247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.173653, 2.594387, 2.483799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.843850, -0.510530, -0.165157,
		-0.309604, 0.714651, -0.627231,
		0.438250, -0.478156, -0.761120,
		2.305128, 2.450940, 2.255463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.701780, 2.825606, 2.139204>,  <1.998353, 2.785649, 2.788247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.701780, 2.825606, 2.139204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.873886, 2.466118, 2.173081>,  <1.977150, 2.250425, 2.193408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.873886, 2.466118, 2.173081>,  <1.701780, 2.825606, 2.139204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.873886, 2.466118, 2.173081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.878278, -0.438454, -0.190749,
		0.208565, 0.007687, -0.977978,
		0.430265, -0.898721, 0.084694,
		2.002965, 2.196501, 2.198490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.693024, 2.378906, 1.549724>,  <1.701780, 2.825606, 2.139204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.693024, 2.378906, 1.549724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.703369, 2.155628, 1.881447>,  <1.709576, 2.021662, 2.080481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.703369, 2.155628, 1.881447>,  <1.693024, 2.378906, 1.549724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.703369, 2.155628, 1.881447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.889392, -0.391609, -0.235849,
		0.456413, -0.731480, -0.506581,
		0.025863, -0.558193, 0.829308,
		1.711128, 1.988170, 2.130239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.692577, 1.620600, 1.313513>,  <1.693024, 2.378906, 1.549724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.692577, 1.620600, 1.313513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.544533, 1.717896, 1.672144>,  <1.455706, 1.776273, 1.887323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.544533, 1.717896, 1.672144>,  <1.692577, 1.620600, 1.313513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.544533, 1.717896, 1.672144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.871026, -0.426425, -0.243876,
		0.323003, -0.871204, 0.369692,
		-0.370112, 0.243238, 0.896578,
		1.433499, 1.790867, 1.941117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.463652, 1.039171, 1.806606>,  <1.692577, 1.620600, 1.313513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.463652, 1.039171, 1.806606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.234177, 1.363903, 1.850082>,  <1.096491, 1.558742, 1.876168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.234177, 1.363903, 1.850082>,  <1.463652, 1.039171, 1.806606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.234177, 1.363903, 1.850082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.818105, -0.561494, -0.124212,
		-0.039810, -0.160180, 0.986285,
		-0.573689, 0.811830, 0.108691,
		1.062070, 1.607452, 1.882690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.997735, 0.902254, 2.346468>,  <1.463652, 1.039171, 1.806606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.997735, 0.902254, 2.346468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.819786, 1.187996, 2.130400>,  <0.713017, 1.359441, 2.000759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.819786, 1.187996, 2.130400>,  <0.997735, 0.902254, 2.346468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.819786, 1.187996, 2.130400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.834714, -0.549303, -0.038982,
		-0.324565, 0.433546, 0.840652,
		-0.444872, 0.714356, -0.540171,
		0.686325, 1.402303, 1.968348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.335644, 0.819343, 2.596637>,  <0.997735, 0.902254, 2.346468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.335644, 0.819343, 2.596637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.281265, 1.040741, 2.267963>,  <0.248638, 1.173580, 2.070760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.281265, 1.040741, 2.267963>,  <0.335644, 0.819343, 2.596637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.281265, 1.040741, 2.267963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.866594, -0.468386, -0.172134,
		-0.480140, 0.688664, 0.543331,
		-0.135946, 0.553495, -0.821682,
		0.240482, 1.206789, 2.021459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.390790, 1.143635, 2.597710>,  <0.335644, 0.819343, 2.596637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.390790, 1.143635, 2.597710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.264618, 1.102730, 2.220341>,  <-0.188914, 1.078187, 1.993919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.264618, 1.102730, 2.220341>,  <-0.390790, 1.143635, 2.597710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.264618, 1.102730, 2.220341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.782135, -0.591000, -0.197443,
		-0.537371, 0.800164, -0.266403,
		0.315431, -0.102263, -0.943422,
		-0.169989, 1.072051, 1.937314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<-0.857587, 0.172983, 1.790056> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.929695, 0.344933, 1.436172>,  <-0.972960, 0.448102, 1.223842>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.929695, 0.344933, 1.436172>,  <-0.857587, 0.172983, 1.790056>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.929695, 0.344933, 1.436172> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.888071, 0.457829, 0.041502,
		0.422886, -0.778204, -0.464291,
		-0.180269, 0.429874, -0.884710,
		-0.983776, 0.473895, 1.170760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.188568, 0.134992, 1.476451>,  <-0.857587, 0.172983, 1.790056>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.188568, 0.134992, 1.476451> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.416901, 0.424332, 1.321058>,  <-0.553900, 0.597935, 1.227822>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.416901, 0.424332, 1.321058>,  <-0.188568, 0.134992, 1.476451>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.416901, 0.424332, 1.321058> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696382, 0.677182, 0.237650,
		0.434977, -0.134874, -0.890283,
		-0.570831, 0.723349, -0.388483,
		-0.588150, 0.641336, 1.204513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.119437, 0.463899, 0.917158>,  <-0.188568, 0.134992, 1.476451>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.119437, 0.463899, 0.917158> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.119759, 0.704899, 1.128592>,  <-0.263276, 0.849499, 1.255452>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.119759, 0.704899, 1.128592>,  <0.119437, 0.463899, 0.917158>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.119759, 0.704899, 1.128592> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741807, 0.665786, 0.080321,
		-0.303531, 0.440140, -0.845072,
		-0.597989, 0.602500, 0.528585,
		-0.299155, 0.885649, 1.287167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.140651, 1.150760, 0.635909>,  <0.119437, 0.463899, 0.917158>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.140651, 1.150760, 0.635909> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.039619, 1.149563, 1.022938>,  <-0.020999, 1.148845, 1.255155>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.039619, 1.149563, 1.022938>,  <0.140651, 1.150760, 0.635909>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.039619, 1.149563, 1.022938> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689418, 0.701091, 0.182137,
		-0.678901, 0.713065, -0.175018,
		-0.252579, -0.002993, 0.967572,
		-0.036154, 1.148665, 1.313209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.040399, 1.835029, 0.865363>,  <0.140651, 1.150760, 0.635909>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.040399, 1.835029, 0.865363> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.104858, 1.636215, 1.206417>,  <0.143534, 1.516927, 1.411050>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.104858, 1.636215, 1.206417>,  <0.040399, 1.835029, 0.865363>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.104858, 1.636215, 1.206417> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747071, 0.625971, 0.223706,
		-0.644916, 0.600930, 0.472194,
		0.161148, -0.497034, 0.852636,
		0.153203, 1.487105, 1.462208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.164437, 2.401709, 1.381602>,  <0.040399, 1.835029, 0.865363>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.164437, 2.401709, 1.381602> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.315018, 2.077877, 1.561764>,  <0.405366, 1.883578, 1.669861>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.315018, 2.077877, 1.561764>,  <0.164437, 2.401709, 1.381602>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.315018, 2.077877, 1.561764> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.759463, 0.548104, 0.350424,
		-0.530565, 0.210148, 0.821181,
		0.376452, -0.809580, 0.450405,
		0.427953, 1.835003, 1.696885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.360146, 2.685684, 2.008496>,  <0.164437, 2.401709, 1.381602>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.360146, 2.685684, 2.008496> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.580643, 2.354908, 1.964130>,  <0.712941, 2.156442, 1.937511>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.580643, 2.354908, 1.964130>,  <0.360146, 2.685684, 2.008496>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.580643, 2.354908, 1.964130> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.804441, 0.491496, 0.333625,
		-0.221375, -0.273131, 0.936158,
		0.551242, -0.826941, -0.110913,
		0.746015, 2.106826, 1.930856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.571260, 2.440757, 2.594864>,  <0.360146, 2.685684, 2.008496>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.571260, 2.440757, 2.594864> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.852982, 2.333714, 2.331854>,  <1.022015, 2.269488, 2.174047>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.852982, 2.333714, 2.331854>,  <0.571260, 2.440757, 2.594864>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.852982, 2.333714, 2.331854> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679047, 0.524045, 0.514074,
		0.207003, -0.808556, 0.550806,
		0.704305, -0.267608, -0.657526,
		1.064273, 2.253431, 2.134596>
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
