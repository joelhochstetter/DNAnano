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
	location <25.469, 94.9851, 44.8844>
	look_at <25.469, 29.3977, 32.8955>
	direction <0, -65.5874, -11.9889>
	angle 67.0682
}


# declare cpy_camera_pos = <25.469, 94.9851, 44.8844>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 28
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <-1, -1.16351, -0.803887>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <1, 1.16351, 0.803887>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<4.686397, 15.178015, 14.699145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.298969, 15.239412, 14.777437>,  <4.066512, 15.276251, 14.824412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.298969, 15.239412, 14.777437>,  <4.686397, 15.178015, 14.699145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.298969, 15.239412, 14.777437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247633, 0.669105, 0.700697,
		-0.023411, 0.727144, -0.686085,
		-0.968571, 0.153493, 0.195729,
		4.008398, 15.285460, 14.836156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.643375, 15.844139, 14.799823>,  <4.686397, 15.178015, 14.699145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.643375, 15.844139, 14.799823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.321989, 15.692186, 14.983185>,  <4.129158, 15.601015, 15.093203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.321989, 15.692186, 14.983185>,  <4.643375, 15.844139, 14.799823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.321989, 15.692186, 14.983185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272899, 0.449319, 0.850669,
		-0.529124, 0.808581, -0.257343,
		-0.803464, -0.379881, 0.458406,
		4.080950, 15.578222, 15.120707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.147686, 16.428139, 15.109894>,  <4.643375, 15.844139, 14.799823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.147686, 16.428139, 15.109894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.100227, 16.078209, 15.297768>,  <4.071753, 15.868251, 15.410492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.100227, 16.078209, 15.297768>,  <4.147686, 16.428139, 15.109894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.100227, 16.078209, 15.297768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246720, 0.432217, 0.867363,
		-0.961797, 0.218789, 0.164556,
		-0.118646, -0.874826, 0.469684,
		4.064634, 15.815762, 15.438673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.535165, 16.469332, 15.578745>,  <4.147686, 16.428139, 15.109894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.535165, 16.469332, 15.578745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.850100, 16.228390, 15.631304>,  <4.039062, 16.083824, 15.662839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.850100, 16.228390, 15.631304>,  <3.535165, 16.469332, 15.578745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.850100, 16.228390, 15.631304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308976, 0.569948, 0.761376,
		-0.533510, -0.558861, 0.634856,
		0.787338, -0.602357, 0.131398,
		4.086302, 16.047684, 15.670723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.520527, 16.331795, 16.288031>,  <3.535165, 16.469332, 15.578745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.520527, 16.331795, 16.288031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.896055, 16.301281, 16.153687>,  <4.121371, 16.282972, 16.073080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.896055, 16.301281, 16.153687>,  <3.520527, 16.331795, 16.288031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.896055, 16.301281, 16.153687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310371, 0.610113, 0.728994,
		0.149303, -0.788634, 0.596461,
		0.938818, -0.076283, -0.335861,
		4.177700, 16.278397, 16.052929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.078022, 16.208185, 16.864466>,  <3.520527, 16.331795, 16.288031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.078022, 16.208185, 16.864466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.275140, 16.382500, 16.563204>,  <4.393411, 16.487089, 16.382446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.275140, 16.382500, 16.563204>,  <4.078022, 16.208185, 16.864466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.275140, 16.382500, 16.563204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364719, 0.682402, 0.633488,
		0.790021, -0.586870, 0.177345,
		0.492795, 0.435787, -0.753155,
		4.422979, 16.513235, 16.337257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.684357, 16.485460, 17.121481>,  <4.078022, 16.208185, 16.864466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.684357, 16.485460, 17.121481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.721623, 16.658360, 16.762709>,  <4.743983, 16.762098, 16.547445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.721623, 16.658360, 16.762709>,  <4.684357, 16.485460, 17.121481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.721623, 16.658360, 16.762709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427532, 0.796201, 0.428114,
		0.899187, -0.423351, -0.110621,
		0.093166, 0.432248, -0.896929,
		4.749573, 16.788034, 16.493629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.457626, 16.664812, 16.986231>,  <4.684357, 16.485460, 17.121481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.457626, 16.664812, 16.986231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.201785, 16.896751, 16.784365>,  <5.048281, 17.035915, 16.663244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.201785, 16.896751, 16.784365>,  <5.457626, 16.664812, 16.986231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.201785, 16.896751, 16.784365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396265, 0.811267, 0.429907,
		0.658698, 0.074989, -0.748661,
		-0.639602, 0.579847, -0.504665,
		5.009904, 17.070705, 16.632965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.830757, 17.047274, 16.658386>,  <5.457626, 16.664812, 16.986231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.830757, 17.047274, 16.658386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.492846, 17.261126, 16.649225>,  <5.290100, 17.389437, 16.643728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.492846, 17.261126, 16.649225>,  <5.830757, 17.047274, 16.658386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.492846, 17.261126, 16.649225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495826, 0.798124, 0.342279,
		0.201271, 0.277794, -0.939319,
		-0.844776, 0.534629, -0.022902,
		5.239414, 17.421515, 16.642355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.036994, 17.715433, 16.482660>,  <5.830757, 17.047274, 16.658386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.036994, 17.715433, 16.482660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.666461, 17.768095, 16.623842>,  <5.444142, 17.799692, 16.708551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.666461, 17.768095, 16.623842>,  <6.036994, 17.715433, 16.482660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.666461, 17.768095, 16.623842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298544, 0.827973, 0.474691,
		-0.229744, 0.545094, -0.806281,
		-0.926331, 0.131653, 0.352957,
		5.388562, 17.807590, 16.729729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.894831, 18.424765, 16.327120>,  <6.036994, 17.715433, 16.482660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.894831, 18.424765, 16.327120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.645498, 18.304047, 16.615669>,  <5.495899, 18.231615, 16.788799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.645498, 18.304047, 16.615669>,  <5.894831, 18.424765, 16.327120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.645498, 18.304047, 16.615669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066296, 0.898803, 0.433310,
		-0.779142, 0.317920, -0.540245,
		-0.623331, -0.301795, 0.721372,
		5.458499, 18.213509, 16.832081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.383940, 18.858652, 16.297739>,  <5.894831, 18.424765, 16.327120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.383940, 18.858652, 16.297739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.361401, 18.689447, 16.659487>,  <5.347877, 18.587925, 16.876535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.361401, 18.689447, 16.659487>,  <5.383940, 18.858652, 16.297739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.361401, 18.689447, 16.659487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046671, 0.903703, 0.425608,
		-0.997320, 0.066190, -0.031180,
		-0.056348, -0.423012, 0.904370,
		5.344496, 18.562544, 16.930798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.667760, 19.033289, 16.559546>,  <5.383940, 18.858652, 16.297739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.667760, 19.033289, 16.559546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.943625, 18.960102, 16.839800>,  <5.109144, 18.916189, 17.007952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.943625, 18.960102, 16.839800>,  <4.667760, 19.033289, 16.559546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.943625, 18.960102, 16.839800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026701, 0.960468, 0.277106,
		-0.723639, -0.209817, 0.657513,
		0.689662, -0.182969, 0.700634,
		5.150524, 18.905212, 17.049990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.482322, 19.437262, 17.099968>,  <4.667760, 19.033289, 16.559546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.482322, 19.437262, 17.099968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.857403, 19.349897, 17.208050>,  <5.082451, 19.297480, 17.272900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.857403, 19.349897, 17.208050>,  <4.482322, 19.437262, 17.099968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.857403, 19.349897, 17.208050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096988, 0.911340, 0.400065,
		-0.333627, -0.348935, 0.875749,
		0.937703, -0.218409, 0.270206,
		5.138714, 19.284374, 17.289112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.598597, 19.823637, 17.775229>,  <4.482322, 19.437262, 17.099968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.598597, 19.823637, 17.775229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.951057, 19.755131, 17.598938>,  <5.162534, 19.714027, 17.493164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.951057, 19.755131, 17.598938>,  <4.598597, 19.823637, 17.775229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.951057, 19.755131, 17.598938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233150, 0.968280, 0.089863,
		0.411357, -0.181939, 0.893131,
		0.881151, -0.171268, -0.440728,
		5.215403, 19.703751, 17.466719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.126850, 20.147993, 18.170458>,  <4.598597, 19.823637, 17.775229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.126850, 20.147993, 18.170458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.346944, 20.121943, 17.837471>,  <5.479001, 20.106312, 17.637680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.346944, 20.121943, 17.837471>,  <5.126850, 20.147993, 18.170458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.346944, 20.121943, 17.837471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170950, 0.984623, 0.035961,
		0.817323, -0.162097, 0.552907,
		0.550235, -0.065127, -0.832466,
		5.512015, 20.102404, 17.587730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.598578, 20.663645, 18.266705>,  <5.126850, 20.147993, 18.170458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.598578, 20.663645, 18.266705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.660958, 20.576794, 17.881262>,  <5.698385, 20.524683, 17.649996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.660958, 20.576794, 17.881262>,  <5.598578, 20.663645, 18.266705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.660958, 20.576794, 17.881262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288916, 0.942904, -0.165706,
		0.944567, -0.252560, 0.209777,
		0.155949, -0.217129, -0.963605,
		5.707742, 20.511656, 17.592180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.255856, 20.994667, 18.096216>,  <5.598578, 20.663645, 18.266705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.255856, 20.994667, 18.096216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.064099, 20.938499, 17.749699>,  <5.949045, 20.904799, 17.541788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.064099, 20.938499, 17.749699>,  <6.255856, 20.994667, 18.096216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.064099, 20.938499, 17.749699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250522, 0.924146, -0.288433,
		0.841084, -0.355298, -0.407850,
		-0.479392, -0.140421, -0.866294,
		5.920282, 20.896374, 17.489811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.736916, 21.223555, 17.533625>,  <6.255856, 20.994667, 18.096216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.736916, 21.223555, 17.533625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.372903, 21.231209, 17.367985>,  <6.154496, 21.235802, 17.268600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.372903, 21.231209, 17.367985>,  <6.736916, 21.223555, 17.533625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.372903, 21.231209, 17.367985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200183, 0.895025, -0.398569,
		0.363001, -0.445606, -0.818331,
		-0.910031, 0.019135, -0.414098,
		6.099894, 21.236950, 17.243755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.851919, 21.607649, 16.966763>,  <6.736916, 21.223555, 17.533625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.851919, 21.607649, 16.966763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.452322, 21.616188, 16.982555>,  <6.212564, 21.621311, 16.992031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.452322, 21.616188, 16.982555>,  <6.851919, 21.607649, 16.966763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.452322, 21.616188, 16.982555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007714, 0.784935, -0.619530,
		-0.044217, -0.619211, -0.783979,
		-0.998992, 0.021346, 0.039484,
		6.152625, 21.622591, 16.994400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.654538, 21.764610, 16.331177>,  <6.851919, 21.607649, 16.966763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.654538, 21.764610, 16.331177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.347552, 21.853411, 16.571749>,  <6.163361, 21.906691, 16.716091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.347552, 21.853411, 16.571749>,  <6.654538, 21.764610, 16.331177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.347552, 21.853411, 16.571749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121427, 0.870812, -0.476384,
		-0.629489, -0.438637, -0.641360,
		-0.767463, 0.222000, 0.601428,
		6.117313, 21.920012, 16.752178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.020161, 21.855373, 15.890862>,  <6.654538, 21.764610, 16.331177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.020161, 21.855373, 15.890862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.981160, 22.073217, 16.224064>,  <5.957759, 22.203924, 16.423985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.981160, 22.073217, 16.224064>,  <6.020161, 21.855373, 15.890862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.981160, 22.073217, 16.224064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213742, 0.806002, -0.551974,
		-0.972012, -0.231867, 0.037819,
		-0.097502, 0.544609, 0.833003,
		5.951909, 22.236601, 16.473965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.417815, 22.233210, 15.761392>,  <6.020161, 21.855373, 15.890862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.417815, 22.233210, 15.761392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.643278, 22.420956, 16.033270>,  <5.778555, 22.533604, 16.196398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.643278, 22.420956, 16.033270>,  <5.417815, 22.233210, 15.761392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.643278, 22.420956, 16.033270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167295, 0.870683, -0.462520,
		-0.808891, 0.146992, 0.569288,
		0.563656, 0.469367, 0.679696,
		5.812375, 22.561766, 16.237179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.109295, 22.957167, 15.648055>,  <5.417815, 22.233210, 15.761392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.109295, 22.957167, 15.648055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.432995, 23.006569, 15.877789>,  <5.627215, 23.036211, 16.015629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.432995, 23.006569, 15.877789>,  <5.109295, 22.957167, 15.648055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.432995, 23.006569, 15.877789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167507, 0.888554, -0.427099,
		-0.563077, 0.441835, 0.698374,
		0.809250, 0.123507, 0.574334,
		5.675770, 23.043621, 16.050089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.074729, 23.545502, 16.124256>,  <5.109295, 22.957167, 15.648055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.074729, 23.545502, 16.124256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.466311, 23.487078, 16.067244>,  <5.701260, 23.452023, 16.033035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.466311, 23.487078, 16.067244>,  <5.074729, 23.545502, 16.124256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.466311, 23.487078, 16.067244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081818, 0.920715, -0.381561,
		0.186962, 0.361870, 0.913288,
		0.978954, -0.146061, -0.142531,
		5.759997, 23.443260, 16.024485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.765949, 23.750931, 16.792095>,  <5.074729, 23.545502, 16.124256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.765949, 23.750931, 16.792095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.809606, 23.681984, 17.183681>,  <4.835800, 23.640615, 17.418634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.809606, 23.681984, 17.183681>,  <4.765949, 23.750931, 16.792095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.809606, 23.681984, 17.183681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.950327, -0.270708, -0.153612,
		0.291492, 0.947105, 0.134258,
		0.109142, -0.172366, 0.978968,
		4.842349, 23.630274, 17.477371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.251686, 24.239933, 17.147770>,  <4.765949, 23.750931, 16.792095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.251686, 24.239933, 17.147770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.232682, 23.852350, 17.244820>,  <5.221280, 23.619801, 17.303049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.232682, 23.852350, 17.244820>,  <5.251686, 24.239933, 17.147770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.232682, 23.852350, 17.244820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.933659, -0.129403, -0.333970,
		0.354999, 0.210663, 0.910822,
		-0.047508, -0.968956, 0.242625,
		5.218430, 23.561663, 17.317608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.945670, 24.413578, 17.089493>,  <5.251686, 24.239933, 17.147770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.945670, 24.413578, 17.089493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.867393, 24.035883, 16.983574>,  <5.820426, 23.809265, 16.920023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.867393, 24.035883, 16.983574>,  <5.945670, 24.413578, 17.089493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.867393, 24.035883, 16.983574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097389, -0.287397, 0.952848,
		-0.975817, 0.160678, 0.148200,
		-0.195694, -0.944238, -0.264798,
		5.808684, 23.752611, 16.904135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.071867, 24.400242, 17.825026>,  <5.945670, 24.413578, 17.089493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.071867, 24.400242, 17.825026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.407680, 24.611025, 17.772106>,  <6.609168, 24.737495, 17.740355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.407680, 24.611025, 17.772106>,  <6.071867, 24.400242, 17.825026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.407680, 24.611025, 17.772106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239972, -0.141182, 0.960459,
		0.487443, -0.838083, -0.244982,
		0.839531, 0.526958, -0.132298,
		6.659539, 24.769112, 17.732416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.664676, 24.007250, 18.118643>,  <6.071867, 24.400242, 17.825026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.664676, 24.007250, 18.118643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.784847, 24.387867, 18.144896>,  <6.856950, 24.616238, 18.160646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.784847, 24.387867, 18.144896>,  <6.664676, 24.007250, 18.118643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.784847, 24.387867, 18.144896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251246, -0.145328, 0.956951,
		0.920119, -0.271006, -0.282732,
		0.300428, 0.951544, 0.065630,
		6.874976, 24.673330, 18.164585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.272409, 23.949289, 18.391357>,  <6.664676, 24.007250, 18.118643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.272409, 23.949289, 18.391357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.188130, 24.333960, 18.461544>,  <7.137563, 24.564762, 18.503656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.188130, 24.333960, 18.461544>,  <7.272409, 23.949289, 18.391357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.188130, 24.333960, 18.461544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159078, -0.143376, 0.976800,
		0.964521, 0.233722, -0.122772,
		-0.210697, 0.961674, 0.175469,
		7.124921, 24.622461, 18.514185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.042787, 23.300846, 17.957048>,  <7.272409, 23.949289, 18.391357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.042787, 23.300846, 17.957048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.771885, 23.452883, 17.705061>,  <6.609344, 23.544104, 17.553869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.771885, 23.452883, 17.705061>,  <7.042787, 23.300846, 17.957048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.771885, 23.452883, 17.705061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298919, -0.924521, -0.236451,
		-0.672290, 0.028172, 0.739751,
		-0.677254, 0.380090, -0.629967,
		6.568709, 23.566910, 17.516071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.815825, 23.351395, 18.172522>,  <7.042787, 23.300846, 17.957048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.815825, 23.351395, 18.172522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.106398, 23.124069, 18.017958>,  <8.280742, 22.987673, 17.925219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.106398, 23.124069, 18.017958>,  <7.815825, 23.351395, 18.172522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.106398, 23.124069, 18.017958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596880, 0.243060, 0.764628,
		-0.340630, -0.786091, 0.515783,
		0.726433, -0.568316, -0.386409,
		8.324327, 22.953575, 17.902035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.640168, 23.117205, 18.866360>,  <7.815825, 23.351395, 18.172522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.640168, 23.117205, 18.866360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.690937, 22.917923, 19.209448>,  <7.721398, 22.798353, 19.415300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.690937, 22.917923, 19.209448>,  <7.640168, 23.117205, 18.866360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.690937, 22.917923, 19.209448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419639, -0.756547, -0.501538,
		0.898774, 0.423589, 0.113043,
		0.126923, -0.498206, 0.857719,
		7.729014, 22.768461, 19.466763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.323999, 23.007940, 18.955011>,  <7.640168, 23.117205, 18.866360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.323999, 23.007940, 18.955011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.135290, 22.723213, 19.163145>,  <8.022064, 22.552378, 19.288025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.135290, 22.723213, 19.163145>,  <8.323999, 23.007940, 18.955011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.135290, 22.723213, 19.163145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426814, -0.700749, -0.571647,
		0.771531, -0.047603, 0.634409,
		-0.471774, -0.711818, 0.520332,
		7.993758, 22.509668, 19.319244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.765609, 22.495321, 19.064365>,  <8.323999, 23.007940, 18.955011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.765609, 22.495321, 19.064365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.425447, 22.301546, 19.146467>,  <8.221349, 22.185282, 19.195728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.425447, 22.301546, 19.146467>,  <8.765609, 22.495321, 19.064365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.425447, 22.301546, 19.146467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355197, -0.816431, -0.455276,
		0.388130, -0.314263, 0.866368,
		-0.850406, -0.484437, 0.205256,
		8.170324, 22.156216, 19.208044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.912382, 21.852640, 19.175825>,  <8.765609, 22.495321, 19.064365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.912382, 21.852640, 19.175825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.528958, 21.835226, 19.063206>,  <8.298904, 21.824778, 18.995634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.528958, 21.835226, 19.063206>,  <8.912382, 21.852640, 19.175825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.528958, 21.835226, 19.063206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174236, -0.871477, -0.458444,
		-0.225406, -0.488501, 0.842947,
		-0.958558, -0.043536, -0.281550,
		8.241391, 21.822165, 18.978741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.717260, 21.293270, 19.295214>,  <8.912382, 21.852640, 19.175825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.717260, 21.293270, 19.295214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.379388, 21.353571, 19.089773>,  <8.176664, 21.389751, 18.966509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.379388, 21.353571, 19.089773>,  <8.717260, 21.293270, 19.295214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.379388, 21.353571, 19.089773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158328, -0.846218, -0.508771,
		-0.511318, -0.511067, 0.690915,
		-0.844681, 0.150752, -0.513603,
		8.125983, 21.398796, 18.935692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.250627, 20.665976, 19.263851>,  <8.717260, 21.293270, 19.295214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.250627, 20.665976, 19.263851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.157257, 20.895895, 18.950132>,  <8.101235, 21.033846, 18.761902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.157257, 20.895895, 18.950132>,  <8.250627, 20.665976, 19.263851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.157257, 20.895895, 18.950132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040253, -0.800174, -0.598416,
		-0.971541, -0.171255, 0.163643,
		-0.233425, 0.574799, -0.784296,
		8.087230, 21.068335, 18.714844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.615995, 20.432550, 18.950325>,  <8.250627, 20.665976, 19.263851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.615995, 20.432550, 18.950325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.804328, 20.635090, 18.661346>,  <7.917328, 20.756613, 18.487959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.804328, 20.635090, 18.661346>,  <7.615995, 20.432550, 18.950325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.804328, 20.635090, 18.661346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055020, -0.800446, -0.596875,
		-0.880506, 0.320777, -0.349016,
		0.470832, 0.506349, -0.722446,
		7.945578, 20.786995, 18.444613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.210268, 20.266739, 18.403656>,  <7.615995, 20.432550, 18.950325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.210268, 20.266739, 18.403656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.556007, 20.403538, 18.256176>,  <7.763451, 20.485617, 18.167688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.556007, 20.403538, 18.256176>,  <7.210268, 20.266739, 18.403656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.556007, 20.403538, 18.256176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057938, -0.660555, -0.748539,
		-0.499547, 0.668360, -0.551134,
		0.864347, 0.341999, -0.368701,
		7.815311, 20.506138, 18.145565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.110702, 20.344158, 17.733273>,  <7.210268, 20.266739, 18.403656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.110702, 20.344158, 17.733273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.504381, 20.286848, 17.774895>,  <7.740588, 20.252462, 17.799868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.504381, 20.286848, 17.774895>,  <7.110702, 20.344158, 17.733273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.504381, 20.286848, 17.774895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042879, -0.762992, -0.644985,
		0.171804, 0.630330, -0.757078,
		0.984197, -0.143274, 0.104057,
		7.799640, 20.243866, 17.806112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.275683, 20.445362, 17.087637>,  <7.110702, 20.344158, 17.733273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.275683, 20.445362, 17.087637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.588679, 20.264235, 17.258595>,  <7.776476, 20.155558, 17.361168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.588679, 20.264235, 17.258595>,  <7.275683, 20.445362, 17.087637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.588679, 20.264235, 17.258595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039921, -0.721467, -0.691298,
		0.621382, 0.523871, -0.582617,
		0.782490, -0.452819, 0.427393,
		7.823426, 20.128389, 17.386812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.727967, 20.286329, 16.560387>,  <7.275683, 20.445362, 17.087637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.727967, 20.286329, 16.560387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.873286, 20.041555, 16.841398>,  <7.960478, 19.894691, 17.010006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.873286, 20.041555, 16.841398>,  <7.727967, 20.286329, 16.560387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.873286, 20.041555, 16.841398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076669, -0.731859, -0.677130,
		0.928513, 0.299862, -0.218966,
		0.363297, -0.611936, 0.702531,
		7.982275, 19.857975, 17.052158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.328689, 20.065275, 16.301313>,  <7.727967, 20.286329, 16.560387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.328689, 20.065275, 16.301313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.183111, 19.801077, 16.564005>,  <8.095765, 19.642557, 16.721619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.183111, 19.801077, 16.564005>,  <8.328689, 20.065275, 16.301313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.183111, 19.801077, 16.564005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059844, -0.720206, -0.691175,
		0.929496, -0.212247, 0.301641,
		-0.363944, -0.660496, 0.656727,
		8.073928, 19.602928, 16.761023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.802102, 19.483446, 16.408297>,  <8.328689, 20.065275, 16.301313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.802102, 19.483446, 16.408297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.478684, 19.323778, 16.581232>,  <8.284634, 19.227978, 16.684994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.478684, 19.323778, 16.581232>,  <8.802102, 19.483446, 16.408297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.478684, 19.323778, 16.581232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110296, -0.824514, -0.554988,
		0.578006, -0.401047, 0.710683,
		-0.808545, -0.399171, 0.432340,
		8.236121, 19.204027, 16.710934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.991684, 18.818497, 16.534500>,  <8.802102, 19.483446, 16.408297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.991684, 18.818497, 16.534500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.596312, 18.788418, 16.587189>,  <8.359088, 18.770370, 16.618801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.596312, 18.788418, 16.587189>,  <8.991684, 18.818497, 16.534500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.596312, 18.788418, 16.587189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008934, -0.838068, -0.545493,
		0.151411, -0.540359, 0.827700,
		-0.988431, -0.075199, 0.131721,
		8.299783, 18.765858, 16.626705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.871717, 18.137613, 16.772711>,  <8.991684, 18.818497, 16.534500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.871717, 18.137613, 16.772711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.521709, 18.258337, 16.621317>,  <8.311705, 18.330770, 16.530481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.521709, 18.258337, 16.621317>,  <8.871717, 18.137613, 16.772711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.521709, 18.258337, 16.621317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098580, -0.876564, -0.471081,
		-0.473941, -0.374895, 0.796765,
		-0.875021, 0.301809, -0.378483,
		8.259203, 18.348879, 16.507772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.342789, 17.588488, 16.945608>,  <8.871717, 18.137613, 16.772711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.342789, 17.588488, 16.945608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.238230, 17.779158, 16.609882>,  <8.175494, 17.893560, 16.408447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.238230, 17.779158, 16.609882>,  <8.342789, 17.588488, 16.945608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.238230, 17.779158, 16.609882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303461, -0.866041, -0.397346,
		-0.916288, 0.150834, 0.371034,
		-0.261397, 0.476677, -0.839315,
		8.159811, 17.922161, 16.358088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.744320, 17.323250, 16.794165>,  <8.342789, 17.588488, 16.945608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.744320, 17.323250, 16.794165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.819193, 17.493126, 16.439854>,  <7.864118, 17.595051, 16.227266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.819193, 17.493126, 16.439854>,  <7.744320, 17.323250, 16.794165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.819193, 17.493126, 16.439854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549077, -0.702465, -0.452832,
		-0.814541, 0.571123, 0.101697,
		0.187184, 0.424690, -0.885777,
		7.875349, 17.620533, 16.174120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.072433, 17.342520, 16.414244>,  <7.744320, 17.323250, 16.794165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.072433, 17.342520, 16.414244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.380976, 17.355913, 16.160036>,  <7.566102, 17.363949, 16.007511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.380976, 17.355913, 16.160036>,  <7.072433, 17.342520, 16.414244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.380976, 17.355913, 16.160036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498127, -0.589742, -0.635668,
		-0.396078, 0.806898, -0.438222,
		0.771357, 0.033484, -0.635521,
		7.612383, 17.365959, 15.969379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.689085, 17.505909, 15.804885>,  <7.072433, 17.342520, 16.414244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.689085, 17.505909, 15.804885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.040773, 17.336643, 15.717336>,  <7.251786, 17.235085, 15.664806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.040773, 17.336643, 15.717336>,  <6.689085, 17.505909, 15.804885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.040773, 17.336643, 15.717336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460442, -0.636783, -0.618467,
		0.122338, 0.644547, -0.754714,
		0.879219, -0.423164, -0.218874,
		7.304539, 17.209694, 15.651673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.642118, 17.370665, 15.015183>,  <6.689085, 17.505909, 15.804885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.642118, 17.370665, 15.015183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.945778, 17.150049, 15.153458>,  <7.127974, 17.017679, 15.236423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.945778, 17.150049, 15.153458>,  <6.642118, 17.370665, 15.015183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.945778, 17.150049, 15.153458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212513, -0.711982, -0.669268,
		0.615249, 0.434612, -0.657710,
		0.759149, -0.551538, 0.345685,
		7.173523, 16.984589, 15.257163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.041988, 17.206600, 14.385121>,  <6.642118, 17.370665, 15.015183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.041988, 17.206600, 14.385121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.111281, 16.942495, 14.677434>,  <7.152857, 16.784033, 14.852821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.111281, 16.942495, 14.677434>,  <7.041988, 17.206600, 14.385121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.111281, 16.942495, 14.677434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345193, -0.735637, -0.582821,
		0.922406, -0.151297, -0.355355,
		0.173233, -0.660263, 0.730782,
		7.163251, 16.744417, 14.896668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.131477, 16.584295, 13.979050>,  <7.041988, 17.206600, 14.385121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.131477, 16.584295, 13.979050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.078564, 16.462709, 14.356431>,  <7.046815, 16.389757, 14.582860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.078564, 16.462709, 14.356431>,  <7.131477, 16.584295, 13.979050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.078564, 16.462709, 14.356431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439030, -0.835395, -0.330708,
		0.888681, -0.457952, -0.022941,
		-0.132284, -0.303965, 0.943454,
		7.038878, 16.371519, 14.639467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.427430, 15.975544, 14.080756>,  <7.131477, 16.584295, 13.979050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.427430, 15.975544, 14.080756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.131114, 16.002209, 14.348124>,  <6.953323, 16.018208, 14.508544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.131114, 16.002209, 14.348124>,  <7.427430, 15.975544, 14.080756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.131114, 16.002209, 14.348124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370621, -0.870462, -0.323938,
		0.560240, -0.487701, 0.669537,
		-0.740791, 0.066661, 0.668419,
		6.908876, 16.022207, 14.548650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.926621, 15.555565, 13.672022>,  <7.427430, 15.975544, 14.080756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.926621, 15.555565, 13.672022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.164036, 15.772130, 13.910211>,  <8.306484, 15.902069, 14.053123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.164036, 15.772130, 13.910211>,  <7.926621, 15.555565, 13.672022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.164036, 15.772130, 13.910211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.779757, -0.570020, -0.258950,
		0.199232, 0.618019, -0.760499,
		0.593536, 0.541414, 0.595471,
		8.342096, 15.934554, 14.088852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.617727, 15.757574, 13.391244>,  <7.926621, 15.555565, 13.672022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.617727, 15.757574, 13.391244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.656040, 15.708540, 13.786374>,  <8.679029, 15.679119, 14.023452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.656040, 15.708540, 13.786374>,  <8.617727, 15.757574, 13.391244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.656040, 15.708540, 13.786374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690902, -0.706218, -0.154632,
		0.716575, 0.697301, 0.017052,
		0.095783, -0.122586, 0.987825,
		8.684775, 15.671764, 14.082722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.671396, 16.454403, 13.446969>,  <8.617727, 15.757574, 13.391244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.671396, 16.454403, 13.446969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.898867, 16.406364, 13.772468>,  <9.035349, 16.377542, 13.967767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.898867, 16.406364, 13.772468>,  <8.671396, 16.454403, 13.446969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.898867, 16.406364, 13.772468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234276, 0.971959, -0.020277,
		-0.788493, 0.202172, 0.580865,
		0.568676, -0.120095, 0.813747,
		9.069469, 16.370337, 14.016592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.552024, 16.845819, 14.166813>,  <8.671396, 16.454403, 13.446969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.552024, 16.845819, 14.166813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.930169, 16.787888, 14.049978>,  <9.157056, 16.753128, 13.979877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.930169, 16.787888, 14.049978>,  <8.552024, 16.845819, 14.166813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.930169, 16.787888, 14.049978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130522, 0.989111, -0.067995,
		0.298753, 0.026156, 0.953972,
		0.945363, -0.144828, -0.292086,
		9.213778, 16.744440, 13.962353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.807135, 17.466558, 14.358237>,  <8.552024, 16.845819, 14.166813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.807135, 17.466558, 14.358237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.057752, 17.293606, 14.098857>,  <9.208122, 17.189835, 13.943229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.057752, 17.293606, 14.098857>,  <8.807135, 17.466558, 14.358237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.057752, 17.293606, 14.098857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440990, 0.882683, -0.162476,
		0.642629, -0.184163, 0.743715,
		0.626543, -0.432383, -0.648452,
		9.245714, 17.163891, 13.904322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.386972, 17.804691, 14.635646>,  <8.807135, 17.466558, 14.358237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.386972, 17.804691, 14.635646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.425200, 17.652222, 14.267825>,  <9.448135, 17.560740, 14.047132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.425200, 17.652222, 14.267825>,  <9.386972, 17.804691, 14.635646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.425200, 17.652222, 14.267825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528566, 0.802218, -0.277603,
		0.843495, -0.459514, 0.278142,
		0.095568, -0.381173, -0.919551,
		9.453870, 17.537870, 13.991960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.082848, 17.684275, 14.503331>,  <9.386972, 17.804691, 14.635646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.082848, 17.684275, 14.503331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.886120, 17.754004, 14.162104>,  <9.768084, 17.795841, 13.957367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.886120, 17.754004, 14.162104>,  <10.082848, 17.684275, 14.503331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.886120, 17.754004, 14.162104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587782, 0.789288, -0.177586,
		0.642359, -0.588759, -0.490650,
		-0.491820, 0.174321, -0.853069,
		9.738574, 17.806299, 13.906183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.615579, 17.678728, 14.040766>,  <10.082848, 17.684275, 14.503331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.615579, 17.678728, 14.040766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.287378, 17.873077, 13.920298>,  <10.090458, 17.989687, 13.848017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.287378, 17.873077, 13.920298>,  <10.615579, 17.678728, 14.040766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.287378, 17.873077, 13.920298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550142, 0.814300, -0.185095,
		0.155310, -0.317557, -0.935434,
		-0.820501, 0.485874, -0.301170,
		10.041228, 18.018839, 13.829947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.942310, 17.114771, 14.237141>,  <10.615579, 17.678728, 14.040766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.942310, 17.114771, 14.237141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.200428, 16.809664, 14.254021>,  <11.355299, 16.626600, 14.264149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.200428, 16.809664, 14.254021>,  <10.942310, 17.114771, 14.237141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.200428, 16.809664, 14.254021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009946, 0.063624, 0.997924,
		-0.763870, -0.643535, 0.048642,
		0.645294, -0.762768, 0.042200,
		11.394016, 16.580833, 14.266681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.720855, 16.638147, 14.788330>,  <10.942310, 17.114771, 14.237141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.720855, 16.638147, 14.788330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.104835, 16.532753, 14.750231>,  <11.335222, 16.469517, 14.727371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.104835, 16.532753, 14.750231>,  <10.720855, 16.638147, 14.788330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.104835, 16.532753, 14.750231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095412, -0.012210, 0.995363,
		-0.263426, -0.964586, 0.013419,
		0.959950, -0.263485, -0.095249,
		11.392819, 16.453707, 14.721656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.769373, 16.245457, 15.356201>,  <10.720855, 16.638147, 14.788330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.769373, 16.245457, 15.356201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.147378, 16.303278, 15.238862>,  <11.374181, 16.337971, 15.168458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.147378, 16.303278, 15.238862>,  <10.769373, 16.245457, 15.356201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.147378, 16.303278, 15.238862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305023, -0.066100, 0.950048,
		0.117945, -0.987287, -0.106558,
		0.945013, 0.144556, -0.293349,
		11.430882, 16.346645, 15.150857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.228741, 15.703570, 15.599453>,  <10.769373, 16.245457, 15.356201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.228741, 15.703570, 15.599453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.449278, 16.035280, 15.562953>,  <11.581600, 16.234306, 15.541053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.449278, 16.035280, 15.562953>,  <11.228741, 15.703570, 15.599453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.449278, 16.035280, 15.562953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324114, -0.112124, 0.939350,
		0.768747, -0.547479, -0.330598,
		0.551342, 0.829274, -0.091251,
		11.614680, 16.284063, 15.535578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.941766, 15.563245, 15.900134>,  <11.228741, 15.703570, 15.599453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.941766, 15.563245, 15.900134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.883212, 15.958925, 15.903062>,  <11.848080, 16.196333, 15.904819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.883212, 15.958925, 15.903062>,  <11.941766, 15.563245, 15.900134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.883212, 15.958925, 15.903062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402257, 0.052765, 0.914005,
		0.903748, 0.136741, -0.405637,
		-0.146385, 0.989201, 0.007319,
		11.839296, 16.255686, 15.905257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.524166, 15.801523, 16.206873>,  <11.941766, 15.563245, 15.900134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.524166, 15.801523, 16.206873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.269737, 16.107685, 16.245998>,  <12.117080, 16.291382, 16.269474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.269737, 16.107685, 16.245998>,  <12.524166, 15.801523, 16.206873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.269737, 16.107685, 16.245998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296644, 0.125536, 0.946701,
		0.712331, 0.631185, -0.306903,
		-0.636071, 0.765406, 0.097814,
		12.078916, 16.337307, 16.275343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.892299, 16.281733, 16.764051>,  <12.524166, 15.801523, 16.206873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.892299, 16.281733, 16.764051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.525967, 16.438255, 16.727976>,  <12.306168, 16.532169, 16.706329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.525967, 16.438255, 16.727976>,  <12.892299, 16.281733, 16.764051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.525967, 16.438255, 16.727976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034992, 0.301508, 0.952821,
		0.400040, 0.869466, -0.289823,
		-0.915830, 0.391308, -0.090191,
		12.251218, 16.555647, 16.700918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.970493, 16.930532, 16.909115>,  <12.892299, 16.281733, 16.764051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.970493, 16.930532, 16.909115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.598680, 16.807198, 16.990002>,  <12.375591, 16.733196, 17.038534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.598680, 16.807198, 16.990002>,  <12.970493, 16.930532, 16.909115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.598680, 16.807198, 16.990002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102927, 0.309646, 0.945265,
		-0.354078, 0.899470, -0.256091,
		-0.929535, -0.308339, 0.202218,
		12.319819, 16.714697, 17.050667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.717581, 17.444695, 17.372032>,  <12.970493, 16.930532, 16.909115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.717581, 17.444695, 17.372032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.494964, 17.115837, 17.419933>,  <12.361393, 16.918524, 17.448673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.494964, 17.115837, 17.419933>,  <12.717581, 17.444695, 17.372032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.494964, 17.115837, 17.419933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065585, 0.100213, 0.992802,
		-0.828225, 0.560392, -0.001853,
		-0.556544, -0.822142, 0.119753,
		12.328000, 16.869194, 17.455858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.411870, 17.480835, 17.970585>,  <12.717581, 17.444695, 17.372032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.411870, 17.480835, 17.970585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.387194, 17.083652, 17.930124>,  <12.372388, 16.845343, 17.905848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.387194, 17.083652, 17.930124>,  <12.411870, 17.480835, 17.970585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.387194, 17.083652, 17.930124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149699, -0.090991, 0.984536,
		-0.986805, 0.075879, -0.143032,
		-0.061691, -0.992957, -0.101149,
		12.368687, 16.785765, 17.899780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.114484, 17.221930, 18.537464>,  <12.411870, 17.480835, 17.970585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.114484, 17.221930, 18.537464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.222198, 16.863529, 18.396233>,  <12.286827, 16.648489, 18.311493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.222198, 16.863529, 18.396233>,  <12.114484, 17.221930, 18.537464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.222198, 16.863529, 18.396233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094518, -0.389441, 0.916189,
		-0.958411, -0.213345, -0.189560,
		0.269287, -0.896002, -0.353080,
		12.302985, 16.594728, 18.290308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.591919, 16.761770, 18.663322>,  <12.114484, 17.221930, 18.537464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.591919, 16.761770, 18.663322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.931044, 16.550236, 18.647572>,  <12.134519, 16.423315, 18.638121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.931044, 16.550236, 18.647572>,  <11.591919, 16.761770, 18.663322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.931044, 16.550236, 18.647572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216700, -0.413266, 0.884450,
		-0.484002, -0.741314, -0.464969,
		0.847811, -0.528834, -0.039379,
		12.185387, 16.391584, 18.635757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.427161, 16.138960, 18.709843>,  <11.591919, 16.761770, 18.663322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.427161, 16.138960, 18.709843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.803581, 16.127312, 18.844646>,  <12.029433, 16.120323, 18.925529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.803581, 16.127312, 18.844646>,  <11.427161, 16.138960, 18.709843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.803581, 16.127312, 18.844646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317356, -0.420863, 0.849800,
		0.117090, -0.906657, -0.405295,
		0.941050, -0.029119, 0.337012,
		12.085896, 16.118576, 18.945749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.497538, 15.498597, 19.092724>,  <11.427161, 16.138960, 18.709843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.497538, 15.498597, 19.092724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.808222, 15.719591, 19.213705>,  <11.994633, 15.852188, 19.286295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.808222, 15.719591, 19.213705>,  <11.497538, 15.498597, 19.092724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.808222, 15.719591, 19.213705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086893, -0.381613, 0.920229,
		0.623834, -0.741033, -0.248396,
		0.776712, 0.552486, 0.302454,
		12.041235, 15.885337, 19.304441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.010974, 14.992904, 19.301563>,  <11.497538, 15.498597, 19.092724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.010974, 14.992904, 19.301563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.086583, 15.323696, 19.513363>,  <12.131948, 15.522172, 19.640444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.086583, 15.323696, 19.513363>,  <12.010974, 14.992904, 19.301563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.086583, 15.323696, 19.513363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064808, -0.527540, 0.847055,
		0.979832, -0.194428, -0.046122,
		0.189022, 0.826982, 0.529501,
		12.143290, 15.571791, 19.672213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.476295, 14.863927, 19.826530>,  <12.010974, 14.992904, 19.301563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.476295, 14.863927, 19.826530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.316560, 15.203804, 19.964254>,  <12.220718, 15.407730, 20.046888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.316560, 15.203804, 19.964254>,  <12.476295, 14.863927, 19.826530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.316560, 15.203804, 19.964254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049103, -0.394840, 0.917437,
		0.915487, 0.349461, 0.199398,
		-0.399339, 0.849693, 0.344312,
		12.196758, 15.458712, 20.067549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.755175, 15.028508, 20.436192>,  <12.476295, 14.863927, 19.826530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.755175, 15.028508, 20.436192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.407812, 15.225760, 20.456944>,  <12.199394, 15.344111, 20.469395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.407812, 15.225760, 20.456944>,  <12.755175, 15.028508, 20.436192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.407812, 15.225760, 20.456944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116446, -0.304517, 0.945362,
		0.481984, 0.814918, 0.321868,
		-0.868407, 0.493130, 0.051878,
		12.147290, 15.373699, 20.472507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.746134, 15.485529, 21.075377>,  <12.755175, 15.028508, 20.436192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.746134, 15.485529, 21.075377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.360445, 15.416972, 20.994482>,  <12.129031, 15.375838, 20.945946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.360445, 15.416972, 20.994482>,  <12.746134, 15.485529, 21.075377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.360445, 15.416972, 20.994482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200114, -0.029751, 0.979321,
		-0.173864, 0.984754, -0.005611,
		-0.964223, -0.171391, -0.202236,
		12.071178, 15.365555, 20.933811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.336147, 15.630630, 21.671320>,  <12.746134, 15.485529, 21.075377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.336147, 15.630630, 21.671320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.016449, 15.468905, 21.493448>,  <11.824630, 15.371871, 21.386726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.016449, 15.468905, 21.493448>,  <12.336147, 15.630630, 21.671320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.016449, 15.468905, 21.493448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415883, -0.162079, 0.894858,
		-0.433874, 0.900146, -0.038605,
		-0.799246, -0.404311, -0.444677,
		11.776675, 15.347612, 21.360044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.801626, 15.826936, 22.089487>,  <12.336147, 15.630630, 21.671320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.801626, 15.826936, 22.089487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.629452, 15.532331, 21.880768>,  <11.526147, 15.355568, 21.755537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.629452, 15.532331, 21.880768>,  <11.801626, 15.826936, 22.089487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.629452, 15.532331, 21.880768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380225, -0.376348, 0.844862,
		-0.818629, 0.562061, -0.118046,
		-0.430437, -0.736512, -0.521798,
		11.500320, 15.311377, 21.724228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.302032, 15.685395, 22.478891>,  <11.801626, 15.826936, 22.089487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.302032, 15.685395, 22.478891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.297799, 15.351274, 22.259018>,  <11.295259, 15.150801, 22.127094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.297799, 15.351274, 22.259018>,  <11.302032, 15.685395, 22.478891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.297799, 15.351274, 22.259018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292420, -0.523100, 0.800536,
		-0.956231, 0.169211, -0.238724,
		-0.010583, -0.835305, -0.549685,
		11.294624, 15.100682, 22.094112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.544003, 15.327730, 22.481976>,  <11.302032, 15.685395, 22.478891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.544003, 15.327730, 22.481976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.868442, 15.100755, 22.425217>,  <11.063105, 14.964570, 22.391161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.868442, 15.100755, 22.425217>,  <10.544003, 15.327730, 22.481976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.868442, 15.100755, 22.425217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123764, -0.403601, 0.906525,
		-0.571668, -0.717718, -0.397588,
		0.811097, -0.567439, -0.141899,
		11.111771, 14.930523, 22.382647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.409593, 14.626431, 22.661619>,  <10.544003, 15.327730, 22.481976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.409593, 14.626431, 22.661619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.808811, 14.601606, 22.658712>,  <11.048342, 14.586712, 22.656969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.808811, 14.601606, 22.658712>,  <10.409593, 14.626431, 22.661619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.808811, 14.601606, 22.658712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025747, -0.514408, 0.857159,
		-0.056935, -0.855297, -0.515001,
		0.998046, -0.062062, -0.007266,
		11.108225, 14.582988, 22.656532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.576820, 13.952495, 22.929255>,  <10.409593, 14.626431, 22.661619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.576820, 13.952495, 22.929255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.929280, 14.140444, 22.950405>,  <11.140756, 14.253213, 22.963097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.929280, 14.140444, 22.950405>,  <10.576820, 13.952495, 22.929255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.929280, 14.140444, 22.950405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130229, -0.348669, 0.928154,
		0.454551, -0.810956, -0.368420,
		0.881149, 0.469872, 0.052878,
		11.193625, 14.281405, 22.966269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.101440, 13.465468, 22.982222>,  <10.576820, 13.952495, 22.929255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.101440, 13.465468, 22.982222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.202413, 13.812747, 23.153109>,  <11.262996, 14.021114, 23.255642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.202413, 13.812747, 23.153109>,  <11.101440, 13.465468, 22.982222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.202413, 13.812747, 23.153109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074069, -0.457559, 0.886089,
		0.964776, -0.192031, -0.179808,
		0.252430, 0.868196, 0.427218,
		11.278142, 14.073206, 23.281275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.476503, 13.268157, 23.527164>,  <11.101440, 13.465468, 22.982222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.476503, 13.268157, 23.527164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.402772, 13.655485, 23.594547>,  <11.358533, 13.887882, 23.634977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.402772, 13.655485, 23.594547>,  <11.476503, 13.268157, 23.527164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.402772, 13.655485, 23.594547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028420, -0.176572, 0.983877,
		0.982454, 0.176569, 0.060067,
		-0.184329, 0.968321, 0.168455,
		11.347473, 13.945982, 23.645084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.028784, 13.434340, 24.030540>,  <11.476503, 13.268157, 23.527164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.028784, 13.434340, 24.030540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.716838, 13.682726, 24.062063>,  <11.529670, 13.831758, 24.080976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.716838, 13.682726, 24.062063>,  <12.028784, 13.434340, 24.030540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.716838, 13.682726, 24.062063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005491, -0.132679, 0.991144,
		0.625923, 0.772527, 0.106881,
		-0.779866, 0.620966, 0.078805,
		11.482878, 13.869016, 24.085705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.115047, 13.957924, 24.619413>,  <12.028784, 13.434340, 24.030540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.115047, 13.957924, 24.619413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.721676, 13.926656, 24.553976>,  <11.485654, 13.907895, 24.514713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.721676, 13.926656, 24.553976>,  <12.115047, 13.957924, 24.619413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.721676, 13.926656, 24.553976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158898, -0.062961, 0.985285,
		-0.087319, 0.994950, 0.049497,
		-0.983426, -0.078169, -0.163593,
		11.426648, 13.903205, 24.504898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.770455, 14.424286, 25.064638>,  <12.115047, 13.957924, 24.619413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.770455, 14.424286, 25.064638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.493909, 14.146385, 24.985308>,  <11.327981, 13.979645, 24.937710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.493909, 14.146385, 24.985308>,  <11.770455, 14.424286, 25.064638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.493909, 14.146385, 24.985308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122683, -0.157623, 0.979849,
		-0.712012, 0.701766, 0.023741,
		-0.691366, -0.694752, -0.198324,
		11.286499, 13.937960, 24.925810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.134959, 14.620189, 25.527231>,  <11.770455, 14.424286, 25.064638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.134959, 14.620189, 25.527231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.093360, 14.234372, 25.430199>,  <11.068400, 14.002882, 25.371979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.093360, 14.234372, 25.430199>,  <11.134959, 14.620189, 25.527231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.093360, 14.234372, 25.430199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233108, -0.213470, 0.948731,
		-0.966874, 0.155213, -0.202642,
		-0.103997, -0.964541, -0.242580,
		11.062160, 13.945010, 25.357424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.623585, 14.394841, 25.971685>,  <11.134959, 14.620189, 25.527231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.623585, 14.394841, 25.971685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.813066, 14.062299, 25.855444>,  <10.926756, 13.862773, 25.785698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.813066, 14.062299, 25.855444>,  <10.623585, 14.394841, 25.971685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.813066, 14.062299, 25.855444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124861, -0.390042, 0.912292,
		-0.871788, -0.395871, -0.288568,
		0.473704, -0.831356, -0.290605,
		10.955177, 13.812892, 25.768263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.210325, 13.790960, 26.133884>,  <10.623585, 14.394841, 25.971685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.210325, 13.790960, 26.133884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.580290, 13.639868, 26.116653>,  <10.802269, 13.549212, 26.106316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.580290, 13.639868, 26.116653>,  <10.210325, 13.790960, 26.133884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.580290, 13.639868, 26.116653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143099, -0.450868, 0.881046,
		-0.352218, -0.808727, -0.471066,
		0.924914, -0.377730, -0.043076,
		10.857763, 13.526548, 26.103731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.123459, 13.251955, 26.638227>,  <10.210325, 13.790960, 26.133884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.123459, 13.251955, 26.638227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.519394, 13.239244, 26.582781>,  <10.756955, 13.231618, 26.549513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.519394, 13.239244, 26.582781>,  <10.123459, 13.251955, 26.638227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.519394, 13.239244, 26.582781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095972, -0.570032, 0.815998,
		-0.104943, -0.821008, -0.561189,
		0.989837, -0.031775, -0.138615,
		10.816345, 13.229712, 26.541197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.277429, 12.504388, 26.530003>,  <10.123459, 13.251955, 26.638227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.277429, 12.504388, 26.530003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.607121, 12.702800, 26.639250>,  <10.804937, 12.821847, 26.704798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.607121, 12.702800, 26.639250>,  <10.277429, 12.504388, 26.530003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.607121, 12.702800, 26.639250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020639, -0.508327, 0.860917,
		0.565875, -0.703959, -0.429217,
		0.824232, 0.496030, 0.273120,
		10.854391, 12.851608, 26.721186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.934596, 12.116651, 26.480324>,  <10.277429, 12.504388, 26.530003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.934596, 12.116651, 26.480324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.992323, 12.393503, 26.763203>,  <11.026958, 12.559614, 26.932930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.992323, 12.393503, 26.763203>,  <10.934596, 12.116651, 26.480324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.992323, 12.393503, 26.763203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083963, -0.703536, 0.705682,
		0.985963, -0.161220, -0.043418,
		0.144317, 0.692131, 0.707197,
		11.035618, 12.601143, 26.975361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.232009, 11.740446, 26.968784>,  <10.934596, 12.116651, 26.480324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.232009, 11.740446, 26.968784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.112669, 12.073629, 27.155190>,  <11.041065, 12.273540, 27.267033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.112669, 12.073629, 27.155190>,  <11.232009, 11.740446, 26.968784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.112669, 12.073629, 27.155190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149184, -0.522943, 0.839211,
		0.942726, 0.180857, 0.280284,
		-0.298350, 0.832959, 0.466011,
		11.023164, 12.323517, 27.294992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.661852, 11.664479, 27.598167>,  <11.232009, 11.740446, 26.968784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.661852, 11.664479, 27.598167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.337328, 11.895917, 27.631643>,  <11.142613, 12.034780, 27.651730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.337328, 11.895917, 27.631643>,  <11.661852, 11.664479, 27.598167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.337328, 11.895917, 27.631643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318670, -0.557703, 0.766431,
		0.490127, 0.595144, 0.636851,
		-0.811310, 0.578595, 0.083691,
		11.093935, 12.069495, 27.656750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.574280, 11.716566, 28.339361>,  <11.661852, 11.664479, 27.598167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.574280, 11.716566, 28.339361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.214633, 11.814538, 28.194256>,  <10.998845, 11.873322, 28.107193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.214633, 11.814538, 28.194256>,  <11.574280, 11.716566, 28.339361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.214633, 11.814538, 28.194256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437544, -0.525594, 0.729594,
		-0.011966, 0.814715, 0.579739,
		-0.899118, 0.244930, -0.362762,
		10.944898, 11.888017, 28.085426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.254496, 11.761979, 28.997110>,  <11.574280, 11.716566, 28.339361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.254496, 11.761979, 28.997110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.979467, 11.738005, 28.707655>,  <10.814450, 11.723620, 28.533981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.979467, 11.738005, 28.707655>,  <11.254496, 11.761979, 28.997110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.979467, 11.738005, 28.707655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547617, -0.611634, 0.570982,
		-0.476825, 0.788867, 0.387719,
		-0.687571, -0.059936, -0.723639,
		10.773196, 11.720024, 28.490562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.712651, 11.779795, 29.379456>,  <11.254496, 11.761979, 28.997110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.712651, 11.779795, 29.379456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.599840, 11.642085, 29.021252>,  <10.532154, 11.559459, 28.806330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.599840, 11.642085, 29.021252>,  <10.712651, 11.779795, 29.379456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.599840, 11.642085, 29.021252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643458, -0.624467, 0.442721,
		-0.711634, 0.701082, -0.045410,
		-0.282027, -0.344275, -0.895509,
		10.515232, 11.538802, 28.752600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.033443, 11.923925, 29.251823>,  <10.712651, 11.779795, 29.379456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.033443, 11.923925, 29.251823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.106343, 11.607792, 29.017847>,  <10.150084, 11.418112, 28.877460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.106343, 11.607792, 29.017847>,  <10.033443, 11.923925, 29.251823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.106343, 11.607792, 29.017847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589090, -0.564081, 0.578606,
		-0.787247, 0.239133, -0.568382,
		0.182249, -0.790334, -0.584942,
		10.161018, 11.370691, 28.842365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.345682, 11.583105, 29.259165>,  <10.033443, 11.923925, 29.251823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.345682, 11.583105, 29.259165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.635727, 11.334872, 29.139771>,  <9.809753, 11.185933, 29.068134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.635727, 11.334872, 29.139771>,  <9.345682, 11.583105, 29.259165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.635727, 11.334872, 29.139771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406086, -0.735403, 0.542472,
		-0.556154, -0.272143, -0.785258,
		0.725111, -0.620581, -0.298484,
		9.853260, 11.148698, 29.050224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.037231, 10.930079, 29.198067>,  <9.345682, 11.583105, 29.259165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.037231, 10.930079, 29.198067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.426410, 10.870513, 29.268724>,  <9.659917, 10.834773, 29.311119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.426410, 10.870513, 29.268724>,  <9.037231, 10.930079, 29.198067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.426410, 10.870513, 29.268724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230734, -0.587098, 0.775937,
		-0.011842, -0.795701, -0.605573,
		0.972945, -0.148915, 0.176643,
		9.718293, 10.825838, 29.321718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.092029, 10.237967, 29.199963>,  <9.037231, 10.930079, 29.198067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.092029, 10.237967, 29.199963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.400966, 10.404222, 29.392099>,  <9.586329, 10.503976, 29.507381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.400966, 10.404222, 29.392099>,  <9.092029, 10.237967, 29.199963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.400966, 10.404222, 29.392099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101835, -0.665398, 0.739510,
		0.626989, -0.620071, -0.471589,
		0.772343, 0.415641, 0.480342,
		9.632668, 10.528914, 29.536201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.482183, 10.229589, 29.707151>,  <9.092029, 10.237967, 29.199963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.482183, 10.229589, 29.707151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.125998, 10.095999, 29.583517>,  <7.912286, 10.015844, 29.509336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.125998, 10.095999, 29.583517>,  <8.482183, 10.229589, 29.707151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.125998, 10.095999, 29.583517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348013, -0.937433, 0.010316,
		-0.293191, -0.098379, 0.950979,
		-0.890464, -0.333977, -0.309084,
		7.858859, 9.995806, 29.490791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.197747, 9.736944, 30.225151>,  <8.482183, 10.229589, 29.707151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.197747, 9.736944, 30.225151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.078387, 9.666765, 29.849880>,  <8.006771, 9.624658, 29.624718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.078387, 9.666765, 29.849880>,  <8.197747, 9.736944, 30.225151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.078387, 9.666765, 29.849880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262480, -0.960143, 0.096071,
		-0.917639, -0.217586, 0.332558,
		-0.298399, -0.175448, -0.938177,
		7.988868, 9.614131, 29.568428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.866996, 8.978136, 30.133001>,  <8.197747, 9.736944, 30.225151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.866996, 8.978136, 30.133001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.056970, 9.119462, 29.810608>,  <8.170954, 9.204258, 29.617172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.056970, 9.119462, 29.810608>,  <7.866996, 8.978136, 30.133001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.056970, 9.119462, 29.810608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502149, -0.860932, -0.081507,
		-0.722692, -0.366012, -0.586303,
		0.474934, 0.353316, -0.805981,
		8.199450, 9.225457, 29.568813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.843422, 8.518512, 29.597946>,  <7.866996, 8.978136, 30.133001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.843422, 8.518512, 29.597946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.182811, 8.720876, 29.535784>,  <8.386444, 8.842295, 29.498487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.182811, 8.720876, 29.535784>,  <7.843422, 8.518512, 29.597946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.182811, 8.720876, 29.535784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505091, -0.861747, -0.047692,
		-0.158047, -0.038028, -0.986699,
		0.848472, 0.505910, -0.155404,
		8.437352, 8.872649, 29.489162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.207012, 8.326923, 28.989101>,  <7.843422, 8.518512, 29.597946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.207012, 8.326923, 28.989101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.502363, 8.467081, 29.219587>,  <8.679574, 8.551176, 29.357880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.502363, 8.467081, 29.219587>,  <8.207012, 8.326923, 28.989101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.502363, 8.467081, 29.219587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492161, -0.864125, -0.105195,
		0.461061, 0.361264, -0.810500,
		0.738377, 0.350395, 0.576214,
		8.723876, 8.572200, 29.392452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.947783, 8.232017, 28.690838>,  <8.207012, 8.326923, 28.989101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.947783, 8.232017, 28.690838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.895828, 8.192370, 29.085463>,  <8.864655, 8.168583, 29.322237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.895828, 8.192370, 29.085463>,  <8.947783, 8.232017, 28.690838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.895828, 8.192370, 29.085463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307644, -0.949915, -0.054931,
		0.942595, 0.296375, 0.153873,
		-0.129886, -0.099115, 0.986563,
		8.856862, 8.162636, 29.381432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.615020, 8.103739, 29.169376>,  <8.947783, 8.232017, 28.690838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.615020, 8.103739, 29.169376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.299129, 7.925914, 29.338467>,  <9.109595, 7.819220, 29.439920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.299129, 7.925914, 29.338467>,  <9.615020, 8.103739, 29.169376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.299129, 7.925914, 29.338467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539105, -0.831765, 0.132411,
		0.292744, 0.332462, 0.896532,
		-0.789726, -0.444562, 0.422727,
		9.062212, 7.792546, 29.465284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.968622, 7.820379, 28.527281>,  <9.615020, 8.103739, 29.169376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.968622, 7.820379, 28.527281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.004132, 8.217916, 28.500751>,  <10.025438, 8.456437, 28.484835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.004132, 8.217916, 28.500751>,  <9.968622, 7.820379, 28.527281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.004132, 8.217916, 28.500751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226727, -0.085001, -0.970242,
		-0.969904, 0.071097, -0.232876,
		0.088776, 0.993841, -0.066324,
		10.030766, 8.516068, 28.480854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.589308, 8.108324, 27.934784>,  <9.968622, 7.820379, 28.527281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.589308, 8.108324, 27.934784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.902763, 8.341050, 28.021872>,  <10.090837, 8.480685, 28.074125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.902763, 8.341050, 28.021872>,  <9.589308, 8.108324, 27.934784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.902763, 8.341050, 28.021872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254794, 0.018613, -0.966816,
		-0.566560, 0.813108, -0.133656,
		0.783639, 0.581815, 0.217721,
		10.137855, 8.515594, 28.087187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.640252, 8.573889, 27.318899>,  <9.589308, 8.108324, 27.934784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.640252, 8.573889, 27.318899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.995135, 8.588435, 27.502872>,  <10.208065, 8.597163, 27.613256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.995135, 8.588435, 27.502872>,  <9.640252, 8.573889, 27.318899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.995135, 8.588435, 27.502872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460841, -0.022100, -0.887207,
		-0.022100, 0.999094, -0.036366,
		0.887207, 0.036366, 0.459935,
		10.261297, 8.599345, 27.640854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.981143, 9.171169, 26.932308>,  <9.640252, 8.573889, 27.318899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.981143, 9.171169, 26.932308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.279316, 8.972653, 27.110308>,  <10.458220, 8.853543, 27.217108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.279316, 8.972653, 27.110308>,  <9.981143, 9.171169, 26.932308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.279316, 8.972653, 27.110308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522948, 0.021438, -0.852095,
		0.413347, 0.867892, 0.275515,
		0.745433, -0.496291, 0.445001,
		10.502946, 8.823766, 27.243809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.466066, 9.334936, 26.450481>,  <9.981143, 9.171169, 26.932308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.466066, 9.334936, 26.450481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.640265, 9.046377, 26.665861>,  <10.744785, 8.873241, 26.795088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.640265, 9.046377, 26.665861>,  <10.466066, 9.334936, 26.450481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.640265, 9.046377, 26.665861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.755151, -0.032811, -0.654729,
		0.489988, 0.691742, 0.530476,
		0.435498, -0.721399, 0.538447,
		10.770915, 8.829958, 26.827394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.112045, 9.593493, 26.620203>,  <10.466066, 9.334936, 26.450481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.112045, 9.593493, 26.620203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.162691, 9.198588, 26.658747>,  <11.193079, 8.961646, 26.681873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.162691, 9.198588, 26.658747>,  <11.112045, 9.593493, 26.620203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.162691, 9.198588, 26.658747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.788694, 0.041279, -0.613399,
		0.601607, 0.153663, 0.783873,
		0.126614, -0.987261, 0.096360,
		11.200675, 8.902411, 26.687654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.859439, 9.318146, 26.640038>,  <11.112045, 9.593493, 26.620203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.859439, 9.318146, 26.640038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.654979, 9.012242, 26.483133>,  <11.532303, 8.828700, 26.388990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.654979, 9.012242, 26.483133>,  <11.859439, 9.318146, 26.640038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.654979, 9.012242, 26.483133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646271, -0.041107, -0.762000,
		0.566622, -0.643004, 0.515254,
		-0.511150, -0.764759, -0.392262,
		11.501634, 8.782815, 26.365454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.385492, 8.795768, 26.498020>,  <11.859439, 9.318146, 26.640038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.385492, 8.795768, 26.498020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.073087, 8.678712, 26.277338>,  <11.885643, 8.608479, 26.144928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.073087, 8.678712, 26.277338>,  <12.385492, 8.795768, 26.498020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.073087, 8.678712, 26.277338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622558, -0.294975, -0.724853,
		0.049381, -0.909589, 0.412564,
		-0.781014, -0.292639, -0.551706,
		11.838782, 8.590920, 26.111826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.663937, 8.196126, 26.102777>,  <12.385492, 8.795768, 26.498020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.663937, 8.196126, 26.102777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.328296, 8.287872, 25.905476>,  <12.126911, 8.342920, 25.787094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.328296, 8.287872, 25.905476>,  <12.663937, 8.196126, 26.102777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.328296, 8.287872, 25.905476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374760, -0.413498, -0.829804,
		-0.394292, -0.881141, 0.261008,
		-0.839100, 0.229370, -0.493255,
		12.076565, 8.356683, 25.757500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.555664, 7.642066, 25.710222>,  <12.663937, 8.196126, 26.102777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.555664, 7.642066, 25.710222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.355330, 7.939184, 25.532495>,  <12.235130, 8.117455, 25.425859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.355330, 7.939184, 25.532495>,  <12.555664, 7.642066, 25.710222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.355330, 7.939184, 25.532495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414944, -0.244455, -0.876392,
		-0.759598, -0.623293, -0.185788,
		-0.500833, 0.742797, -0.444319,
		12.205081, 8.162024, 25.399200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.327102, 7.318417, 25.194456>,  <12.555664, 7.642066, 25.710222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.327102, 7.318417, 25.194456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.337956, 7.711006, 25.118587>,  <12.344469, 7.946560, 25.073067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.337956, 7.711006, 25.118587>,  <12.327102, 7.318417, 25.194456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.337956, 7.711006, 25.118587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360785, -0.186567, -0.913798,
		-0.932254, -0.043633, -0.359164,
		0.027137, 0.981473, -0.189669,
		12.346097, 8.005448, 25.061687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.106969, 7.281192, 24.561155>,  <12.327102, 7.318417, 25.194456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.106969, 7.281192, 24.561155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.279171, 7.639733, 24.603519>,  <12.382492, 7.854858, 24.628939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.279171, 7.639733, 24.603519>,  <12.106969, 7.281192, 24.561155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.279171, 7.639733, 24.603519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315258, -0.039377, -0.948189,
		-0.845740, 0.441591, -0.299534,
		0.430506, 0.896352, 0.105912,
		12.408322, 7.908639, 24.635294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.847510, 7.571988, 24.010948>,  <12.106969, 7.281192, 24.561155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.847510, 7.571988, 24.010948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.131244, 7.834970, 24.112616>,  <12.301483, 7.992758, 24.173616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.131244, 7.834970, 24.112616>,  <11.847510, 7.571988, 24.010948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.131244, 7.834970, 24.112616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129889, 0.232495, -0.963885,
		-0.692803, 0.716729, 0.079521,
		0.709333, 0.657454, 0.254169,
		12.344044, 8.032206, 24.188866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.733520, 8.259017, 23.639841>,  <11.847510, 7.571988, 24.010948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.733520, 8.259017, 23.639841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.122585, 8.230597, 23.728273>,  <12.356025, 8.213546, 23.781334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.122585, 8.230597, 23.728273>,  <11.733520, 8.259017, 23.639841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.122585, 8.230597, 23.728273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232103, 0.327359, -0.915950,
		-0.007295, 0.942225, 0.334901,
		0.972664, -0.071050, 0.221082,
		12.414385, 8.209283, 23.794598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.969186, 8.911386, 23.523853>,  <11.733520, 8.259017, 23.639841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.969186, 8.911386, 23.523853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.303074, 8.691316, 23.514488>,  <12.503407, 8.559274, 23.508869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.303074, 8.691316, 23.514488>,  <11.969186, 8.911386, 23.523853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.303074, 8.691316, 23.514488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201024, 0.344023, -0.917190,
		0.512670, 0.760891, 0.397762,
		0.834720, -0.550176, -0.023413,
		12.553490, 8.526263, 23.507463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.552643, 9.387529, 23.507273>,  <11.969186, 8.911386, 23.523853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.552643, 9.387529, 23.507273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.676250, 9.040651, 23.351076>,  <12.750413, 8.832524, 23.257359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.676250, 9.040651, 23.351076>,  <12.552643, 9.387529, 23.507273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.676250, 9.040651, 23.351076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137571, 0.447026, -0.883879,
		0.941054, 0.219412, 0.257439,
		0.309016, -0.867194, -0.390491,
		12.768954, 8.780493, 23.233929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.173692, 9.521623, 23.059938>,  <12.552643, 9.387529, 23.507273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.173692, 9.521623, 23.059938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.060113, 9.168324, 22.910675>,  <12.991965, 8.956344, 22.821117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.060113, 9.168324, 22.910675>,  <13.173692, 9.521623, 23.059938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.060113, 9.168324, 22.910675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253988, 0.305987, -0.917530,
		0.924589, -0.355308, 0.137450,
		-0.283948, -0.883249, -0.373156,
		12.974929, 8.903349, 22.798729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.734644, 9.297895, 22.539780>,  <13.173692, 9.521623, 23.059938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.734644, 9.297895, 22.539780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.397266, 9.103309, 22.448608>,  <13.194839, 8.986557, 22.393906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.397266, 9.103309, 22.448608>,  <13.734644, 9.297895, 22.539780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.397266, 9.103309, 22.448608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148814, 0.196099, -0.969226,
		0.516193, -0.851407, -0.093005,
		-0.843445, -0.486467, -0.227926,
		13.144233, 8.957369, 22.380230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.958046, 8.903474, 22.000700>,  <13.734644, 9.297895, 22.539780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.958046, 8.903474, 22.000700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.559568, 8.919669, 21.969824>,  <13.320482, 8.929386, 21.951298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.559568, 8.919669, 21.969824>,  <13.958046, 8.903474, 22.000700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.559568, 8.919669, 21.969824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085330, 0.272142, -0.958466,
		-0.017801, -0.961405, -0.274561,
		-0.996194, 0.040490, -0.077192,
		13.260711, 8.931816, 21.946667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.752916, 8.666326, 21.259089>,  <13.958046, 8.903474, 22.000700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.752916, 8.666326, 21.259089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.433173, 8.860301, 21.400995>,  <13.241327, 8.976686, 21.486139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.433173, 8.860301, 21.400995>,  <13.752916, 8.666326, 21.259089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.433173, 8.860301, 21.400995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161707, 0.395024, -0.904327,
		-0.578685, -0.780250, -0.237348,
		-0.799359, 0.484939, 0.354767,
		13.193365, 9.005783, 21.507425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.226545, 8.488174, 20.810141>,  <13.752916, 8.666326, 21.259089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.226545, 8.488174, 20.810141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.159813, 8.846001, 20.975992>,  <13.119773, 9.060697, 21.075504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.159813, 8.846001, 20.975992>,  <13.226545, 8.488174, 20.810141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.159813, 8.846001, 20.975992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145711, 0.393538, -0.907687,
		-0.975159, -0.211847, 0.064693,
		-0.166832, 0.894566, 0.414631,
		13.109763, 9.114370, 21.100382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.692465, 8.666009, 20.418104>,  <13.226545, 8.488174, 20.810141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.692465, 8.666009, 20.418104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.834561, 8.991738, 20.601704>,  <12.919819, 9.187176, 20.711864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.834561, 8.991738, 20.601704>,  <12.692465, 8.666009, 20.418104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.834561, 8.991738, 20.601704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050356, 0.506985, -0.860483,
		-0.933417, 0.282566, 0.221108,
		0.355241, 0.814324, 0.459000,
		12.941133, 9.236035, 20.739403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.162338, 9.150654, 20.473722>,  <12.692465, 8.666009, 20.418104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.162338, 9.150654, 20.473722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.504988, 9.357027, 20.472357>,  <12.710577, 9.480851, 20.471537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.504988, 9.357027, 20.472357>,  <12.162338, 9.150654, 20.473722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.504988, 9.357027, 20.472357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283491, 0.465142, -0.838615,
		-0.431080, 0.719345, 0.544713,
		0.856623, 0.515932, -0.003415,
		12.761974, 9.511806, 20.471333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.979012, 9.673640, 19.978848>,  <12.162338, 9.150654, 20.473722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.979012, 9.673640, 19.978848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.372709, 9.723166, 20.029335>,  <12.608928, 9.752882, 20.059628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.372709, 9.723166, 20.029335>,  <11.979012, 9.673640, 19.978848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.372709, 9.723166, 20.029335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010480, 0.753471, -0.657398,
		-0.176498, 0.645718, 0.742897,
		0.984245, 0.123815, 0.126219,
		12.667983, 9.760311, 20.067200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.044537, 10.370583, 20.092134>,  <11.979012, 9.673640, 19.978848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.044537, 10.370583, 20.092134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.392050, 10.239908, 19.943277>,  <12.600558, 10.161504, 19.853964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.392050, 10.239908, 19.943277>,  <12.044537, 10.370583, 20.092134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.392050, 10.239908, 19.943277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072690, 0.659239, -0.748412,
		0.489828, 0.677259, 0.548989,
		0.868784, -0.326687, -0.372143,
		12.652685, 10.141902, 19.831635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.410178, 10.919938, 19.886312>,  <12.044537, 10.370583, 20.092134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.410178, 10.919938, 19.886312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.618115, 10.659007, 19.665684>,  <12.742878, 10.502448, 19.533306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.618115, 10.659007, 19.665684>,  <12.410178, 10.919938, 19.886312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.618115, 10.659007, 19.665684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006301, 0.648580, -0.761120,
		0.854238, 0.392189, 0.341271,
		0.519844, -0.652328, -0.551571,
		12.774069, 10.463308, 19.500212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.069052, 11.217997, 19.744740>,  <12.410178, 10.919938, 19.886312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.069052, 11.217997, 19.744740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.028309, 10.943961, 19.456219>,  <13.003863, 10.779539, 19.283106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.028309, 10.943961, 19.456219>,  <13.069052, 11.217997, 19.744740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.028309, 10.943961, 19.456219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157999, 0.704729, -0.691660,
		0.982172, -0.184415, 0.036462,
		-0.101857, -0.685090, -0.721302,
		12.997752, 10.738434, 19.239828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.532157, 11.458340, 19.274666>,  <13.069052, 11.217997, 19.744740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.532157, 11.458340, 19.274666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.324834, 11.197155, 19.053761>,  <13.200439, 11.040444, 18.921217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.324834, 11.197155, 19.053761>,  <13.532157, 11.458340, 19.274666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.324834, 11.197155, 19.053761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080989, 0.605397, -0.791793,
		0.851350, -0.455120, -0.260900,
		-0.518309, -0.652963, -0.552265,
		13.169341, 11.001266, 18.888081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.851419, 11.381640, 18.638863>,  <13.532157, 11.458340, 19.274666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.851419, 11.381640, 18.638863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.477362, 11.269281, 18.552513>,  <13.252927, 11.201866, 18.500704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.477362, 11.269281, 18.552513>,  <13.851419, 11.381640, 18.638863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.477362, 11.269281, 18.552513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027702, 0.549507, -0.835030,
		0.353181, -0.786854, -0.506087,
		-0.935145, -0.280897, -0.215873,
		13.196818, 11.185012, 18.487751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.887426, 11.055042, 17.991144>,  <13.851419, 11.381640, 18.638863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.887426, 11.055042, 17.991144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.506502, 11.174055, 18.018206>,  <13.277947, 11.245462, 18.034443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.506502, 11.174055, 18.018206>,  <13.887426, 11.055042, 17.991144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.506502, 11.174055, 18.018206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084842, 0.471184, -0.877945,
		-0.293095, -0.830337, -0.473957,
		-0.952312, 0.297532, 0.067654,
		13.220809, 11.263315, 18.038502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.582796, 10.948414, 17.304396>,  <13.887426, 11.055042, 17.991144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.582796, 10.948414, 17.304396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.327247, 11.198387, 17.483860>,  <13.173917, 11.348372, 17.591539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.327247, 11.198387, 17.483860>,  <13.582796, 10.948414, 17.304396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.327247, 11.198387, 17.483860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062632, 0.539011, -0.839967,
		-0.766757, -0.564734, -0.305219,
		-0.638874, 0.624934, 0.448661,
		13.135584, 11.385867, 17.618458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.034822, 11.034970, 16.852503>,  <13.582796, 10.948414, 17.304396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.034822, 11.034970, 16.852503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.985771, 11.372849, 17.060905>,  <12.956341, 11.575577, 17.185947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.985771, 11.372849, 17.060905>,  <13.034822, 11.034970, 16.852503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.985771, 11.372849, 17.060905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209780, 0.491047, -0.845497,
		-0.970028, -0.212978, 0.116984,
		-0.122628, 0.844697, 0.521008,
		12.948983, 11.626259, 17.217209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.464006, 11.382603, 16.550674>,  <13.034822, 11.034970, 16.852503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.464006, 11.382603, 16.550674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.659202, 11.665759, 16.754932>,  <12.776319, 11.835653, 16.877487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.659202, 11.665759, 16.754932>,  <12.464006, 11.382603, 16.550674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.659202, 11.665759, 16.754932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183004, 0.655006, -0.733128,
		-0.853450, 0.264307, 0.449182,
		0.487988, 0.707891, 0.510646,
		12.805598, 11.878126, 16.908127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.016316, 12.073062, 16.605955>,  <12.464006, 11.382603, 16.550674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.016316, 12.073062, 16.605955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.389412, 12.201279, 16.671986>,  <12.613270, 12.278209, 16.711603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.389412, 12.201279, 16.671986>,  <12.016316, 12.073062, 16.605955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.389412, 12.201279, 16.671986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172985, 0.799558, -0.575137,
		-0.316343, 0.507897, 0.801229,
		0.932740, 0.320541, 0.165076,
		12.669234, 12.297441, 16.721508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.985105, 12.783870, 16.492298>,  <12.016316, 12.073062, 16.605955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.985105, 12.783870, 16.492298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.380757, 12.731315, 16.465895>,  <12.618149, 12.699781, 16.450052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.380757, 12.731315, 16.465895>,  <11.985105, 12.783870, 16.492298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.380757, 12.731315, 16.465895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085262, 0.878265, -0.470512,
		0.119791, 0.459770, 0.879921,
		0.989131, -0.131387, -0.066007,
		12.677497, 12.691898, 16.446093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.236579, 13.395844, 16.656296>,  <11.985105, 12.783870, 16.492298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.236579, 13.395844, 16.656296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.513933, 13.196760, 16.447872>,  <12.680346, 13.077311, 16.322819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.513933, 13.196760, 16.447872>,  <12.236579, 13.395844, 16.656296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.513933, 13.196760, 16.447872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074350, 0.768682, -0.635295,
		0.716721, 0.401763, 0.569998,
		0.693386, -0.497709, -0.521059,
		12.721949, 13.047447, 16.291553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.689978, 13.911279, 16.484905>,  <12.236579, 13.395844, 16.656296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.689978, 13.911279, 16.484905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.768255, 13.615935, 16.226749>,  <12.815222, 13.438729, 16.071856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.768255, 13.615935, 16.226749>,  <12.689978, 13.911279, 16.484905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.768255, 13.615935, 16.226749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284208, 0.672573, -0.683280,
		0.938579, -0.049711, 0.341466,
		0.195694, -0.738359, -0.645391,
		12.826963, 13.394427, 16.033133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.428370, 14.069125, 16.256571>,  <12.689978, 13.911279, 16.484905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.428370, 14.069125, 16.256571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.236621, 13.876922, 15.962820>,  <13.121572, 13.761600, 15.786569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.236621, 13.876922, 15.962820>,  <13.428370, 14.069125, 16.256571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.236621, 13.876922, 15.962820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374010, 0.645145, -0.666261,
		0.793926, -0.594052, -0.129549,
		-0.479372, -0.480510, -0.734379,
		13.092810, 13.732769, 15.742506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.863063, 13.910607, 15.560266>,  <13.428370, 14.069125, 16.256571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.863063, 13.910607, 15.560266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.466562, 13.946866, 15.521892>,  <13.228662, 13.968621, 15.498867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.466562, 13.946866, 15.521892>,  <13.863063, 13.910607, 15.560266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.466562, 13.946866, 15.521892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127065, 0.852028, -0.507841,
		0.035704, -0.515588, -0.856092,
		-0.991252, 0.090647, -0.095934,
		13.169187, 13.974060, 15.493112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.674095, 13.643616, 15.459354>,  <13.863063, 13.910607, 15.560266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.674095, 13.643616, 15.459354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.984128, 13.457259, 15.288618>,  <15.170148, 13.345446, 15.186176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.984128, 13.457259, 15.288618>,  <14.674095, 13.643616, 15.459354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.984128, 13.457259, 15.288618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232444, -0.417924, 0.878242,
		-0.587554, -0.779926, -0.215631,
		0.775081, -0.465892, -0.426842,
		15.216653, 13.317492, 15.160565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.631726, 13.017597, 15.612961>,  <14.674095, 13.643616, 15.459354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.631726, 13.017597, 15.612961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.020645, 13.091829, 15.556116>,  <15.253997, 13.136369, 15.522009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.020645, 13.091829, 15.556116>,  <14.631726, 13.017597, 15.612961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.020645, 13.091829, 15.556116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203726, -0.374755, 0.904463,
		0.114594, -0.908360, -0.402182,
		0.972298, 0.185581, -0.142112,
		15.312335, 13.147504, 15.513482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.966856, 12.376772, 15.745911>,  <14.631726, 13.017597, 15.612961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.966856, 12.376772, 15.745911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.236796, 12.667850, 15.794951>,  <15.398761, 12.842498, 15.824376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.236796, 12.667850, 15.794951>,  <14.966856, 12.376772, 15.745911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.236796, 12.667850, 15.794951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372959, -0.479687, 0.794230,
		0.636770, -0.490262, -0.595120,
		0.674852, 0.727697, 0.122603,
		15.439252, 12.886160, 15.831732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.626501, 12.014389, 15.950261>,  <14.966856, 12.376772, 15.745911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.626501, 12.014389, 15.950261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.676509, 12.400367, 16.042566>,  <15.706513, 12.631953, 16.097950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.676509, 12.400367, 16.042566>,  <15.626501, 12.014389, 15.950261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.676509, 12.400367, 16.042566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316480, -0.259224, 0.912493,
		0.940324, -0.041047, -0.337794,
		0.125019, 0.964945, 0.230764,
		15.714015, 12.689850, 16.111795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.383638, 11.974769, 16.249905>,  <15.626501, 12.014389, 15.950261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.383638, 11.974769, 16.249905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.168129, 12.282189, 16.387920>,  <16.038822, 12.466641, 16.470730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.168129, 12.282189, 16.387920>,  <16.383638, 11.974769, 16.249905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.168129, 12.282189, 16.387920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346689, -0.171007, 0.922260,
		0.767808, 0.616511, -0.174314,
		-0.538774, 0.768551, 0.345038,
		16.006496, 12.512754, 16.491432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.824804, 12.387962, 16.592409>,  <16.383638, 11.974769, 16.249905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.824804, 12.387962, 16.592409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.472395, 12.493773, 16.749292>,  <16.260950, 12.557261, 16.843422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.472395, 12.493773, 16.749292>,  <16.824804, 12.387962, 16.592409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.472395, 12.493773, 16.749292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317353, -0.284365, 0.904668,
		0.350839, 0.921500, 0.166583,
		-0.881022, 0.264527, 0.392207,
		16.208088, 12.573132, 16.866955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.982712, 12.606169, 17.268156>,  <16.824804, 12.387962, 16.592409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.982712, 12.606169, 17.268156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.589855, 12.541301, 17.306313>,  <16.354141, 12.502379, 17.329206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.589855, 12.541301, 17.306313>,  <16.982712, 12.606169, 17.268156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.589855, 12.541301, 17.306313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153714, -0.399250, 0.903865,
		-0.108495, 0.902386, 0.417047,
		-0.982141, -0.162171, 0.095393,
		16.295214, 12.492649, 17.334930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.775997, 12.964968, 17.869316>,  <16.982712, 12.606169, 17.268156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.775997, 12.964968, 17.869316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.498268, 12.686539, 17.796213>,  <16.331631, 12.519482, 17.752352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.498268, 12.686539, 17.796213>,  <16.775997, 12.964968, 17.869316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.498268, 12.686539, 17.796213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106509, -0.151762, 0.982662,
		-0.711739, 0.701749, 0.031234,
		-0.694322, -0.696072, -0.182758,
		16.289972, 12.477717, 17.741386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.397509, 13.085966, 18.385157>,  <16.775997, 12.964968, 17.869316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.397509, 13.085966, 18.385157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.307272, 12.713470, 18.270681>,  <16.253130, 12.489973, 18.201996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.307272, 12.713470, 18.270681>,  <16.397509, 13.085966, 18.385157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.307272, 12.713470, 18.270681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321793, -0.206046, 0.924118,
		-0.919542, 0.300567, -0.253184,
		-0.225592, -0.931238, -0.286189,
		16.239594, 12.434099, 18.184824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.866490, 12.976254, 18.941591>,  <16.397509, 13.085966, 18.385157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.866490, 12.976254, 18.941591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.960567, 12.634192, 18.756811>,  <16.017012, 12.428954, 18.645943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.960567, 12.634192, 18.756811>,  <15.866490, 12.976254, 18.941591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.960567, 12.634192, 18.756811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097330, -0.493613, 0.864218,
		-0.967064, -0.158293, -0.199324,
		0.235189, -0.855154, -0.461949,
		16.031124, 12.377645, 18.618227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.391168, 12.483498, 19.181934>,  <15.866490, 12.976254, 18.941591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.391168, 12.483498, 19.181934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.703400, 12.274636, 19.044500>,  <15.890738, 12.149320, 18.962040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.703400, 12.274636, 19.044500>,  <15.391168, 12.483498, 19.181934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.703400, 12.274636, 19.044500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095269, -0.642652, 0.760212,
		-0.617749, -0.560676, -0.551388,
		0.780583, -0.522151, -0.343583,
		15.937573, 12.117990, 18.941425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.191774, 11.624773, 19.097118>,  <15.391168, 12.483498, 19.181934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.191774, 11.624773, 19.097118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.586823, 11.671409, 19.139097>,  <15.823852, 11.699390, 19.164284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.586823, 11.671409, 19.139097>,  <15.191774, 11.624773, 19.097118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.586823, 11.671409, 19.139097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020289, -0.568454, 0.822465,
		0.155547, -0.814412, -0.559051,
		0.987620, 0.116590, 0.104945,
		15.883108, 11.706386, 19.170580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.382575, 11.017510, 19.364378>,  <15.191774, 11.624773, 19.097118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.382575, 11.017510, 19.364378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.735963, 11.195155, 19.424040>,  <15.947995, 11.301743, 19.459837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.735963, 11.195155, 19.424040>,  <15.382575, 11.017510, 19.364378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.735963, 11.195155, 19.424040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045321, -0.397894, 0.916311,
		0.466293, -0.802773, -0.371655,
		0.883469, 0.444113, 0.149153,
		16.001003, 11.328389, 19.468786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.927733, 10.506943, 19.474716>,  <15.382575, 11.017510, 19.364378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.927733, 10.506943, 19.474716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.076477, 10.834412, 19.649757>,  <16.165724, 11.030893, 19.754782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.076477, 10.834412, 19.649757>,  <15.927733, 10.506943, 19.474716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.076477, 10.834412, 19.649757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056935, -0.490635, 0.869503,
		0.926542, -0.298417, -0.229058,
		0.371859, 0.818672, 0.437604,
		16.188034, 11.080013, 19.781038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.365114, 10.212759, 19.946379>,  <15.927733, 10.506943, 19.474716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.365114, 10.212759, 19.946379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.309391, 10.589469, 20.068790>,  <16.275957, 10.815495, 20.142237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.309391, 10.589469, 20.068790>,  <16.365114, 10.212759, 19.946379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.309391, 10.589469, 20.068790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147957, -0.285776, 0.946805,
		0.979134, 0.177175, -0.099532,
		-0.139306, 0.941775, 0.306028,
		16.267599, 10.872002, 20.160599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.778515, 10.250422, 20.439968>,  <16.365114, 10.212759, 19.946379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.778515, 10.250422, 20.439968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.509212, 10.532317, 20.529474>,  <16.347631, 10.701454, 20.583178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.509212, 10.532317, 20.529474>,  <16.778515, 10.250422, 20.439968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.509212, 10.532317, 20.529474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067335, -0.359808, 0.930593,
		0.736336, 0.611462, 0.289697,
		-0.673258, 0.704736, 0.223767,
		16.307236, 10.743738, 20.596603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.036366, 10.452971, 21.092478>,  <16.778515, 10.250422, 20.439968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.036366, 10.452971, 21.092478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.652805, 10.562684, 21.063404>,  <16.422670, 10.628511, 21.045959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.652805, 10.562684, 21.063404>,  <17.036366, 10.452971, 21.092478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.652805, 10.562684, 21.063404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190023, -0.430501, 0.882361,
		0.210726, 0.859906, 0.464926,
		-0.958898, 0.274283, -0.072684,
		16.365135, 10.644969, 21.041599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.800526, 10.894517, 21.720781>,  <17.036366, 10.452971, 21.092478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.800526, 10.894517, 21.720781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.463257, 10.743680, 21.567492>,  <16.260895, 10.653178, 21.475517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.463257, 10.743680, 21.567492>,  <16.800526, 10.894517, 21.720781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.463257, 10.743680, 21.567492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220211, -0.408031, 0.886012,
		-0.490476, 0.831451, 0.261001,
		-0.843173, -0.377093, -0.383224,
		16.210304, 10.630552, 21.452524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.360996, 10.972325, 22.314957>,  <16.800526, 10.894517, 21.720781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.360996, 10.972325, 22.314957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.209274, 10.720298, 22.043917>,  <16.118242, 10.569081, 21.881292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.209274, 10.720298, 22.043917>,  <16.360996, 10.972325, 22.314957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.209274, 10.720298, 22.043917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472260, -0.497923, 0.727354,
		-0.795676, 0.595891, -0.108693,
		-0.379303, -0.630069, -0.677601,
		16.095484, 10.531277, 21.840637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.682680, 10.955393, 22.534657>,  <16.360996, 10.972325, 22.314957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.682680, 10.955393, 22.534657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.735056, 10.645895, 22.286730>,  <15.766481, 10.460196, 22.137974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.735056, 10.645895, 22.286730>,  <15.682680, 10.955393, 22.534657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.735056, 10.645895, 22.286730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628567, -0.548268, 0.551638,
		-0.766653, 0.317365, -0.558141,
		0.130941, -0.773745, -0.619817,
		15.774338, 10.413772, 22.100784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.933232, 10.632970, 22.289223>,  <15.682680, 10.955393, 22.534657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.933232, 10.632970, 22.289223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.246613, 10.384427, 22.293636>,  <15.434641, 10.235302, 22.296284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.246613, 10.384427, 22.293636>,  <14.933232, 10.632970, 22.289223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.246613, 10.384427, 22.293636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467513, -0.577592, 0.669193,
		-0.409435, -0.529438, -0.743007,
		0.783451, -0.621356, 0.011032,
		15.481647, 10.198020, 22.296946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.621112, 10.105048, 22.439905>,  <14.933232, 10.632970, 22.289223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.621112, 10.105048, 22.439905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.991524, 9.970954, 22.509287>,  <15.213771, 9.890497, 22.550917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.991524, 9.970954, 22.509287>,  <14.621112, 10.105048, 22.439905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.991524, 9.970954, 22.509287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358147, -0.635321, 0.684177,
		-0.119160, -0.695691, -0.708389,
		0.926030, -0.335234, 0.173455,
		15.269333, 9.870383, 22.561323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.609900, 9.390762, 22.295336>,  <14.621112, 10.105048, 22.439905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.609900, 9.390762, 22.295336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.922681, 9.471519, 22.531233>,  <15.110349, 9.519972, 22.672771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.922681, 9.471519, 22.531233>,  <14.609900, 9.390762, 22.295336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.922681, 9.471519, 22.531233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396994, -0.568108, 0.720867,
		0.480572, -0.797806, -0.364083,
		0.781950, 0.201890, 0.589741,
		15.157266, 9.532085, 22.708155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.840714, 8.724869, 22.467299>,  <14.609900, 9.390762, 22.295336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.840714, 8.724869, 22.467299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.974030, 8.968686, 22.755013>,  <15.054021, 9.114977, 22.927641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.974030, 8.968686, 22.755013>,  <14.840714, 8.724869, 22.467299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.974030, 8.968686, 22.755013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241436, -0.682289, 0.690066,
		0.911386, -0.403656, -0.080237,
		0.333293, 0.609544, 0.719286,
		15.074018, 9.151549, 22.970798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.141235, 8.271409, 22.926630>,  <14.840714, 8.724869, 22.467299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.141235, 8.271409, 22.926630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.072541, 8.615697, 23.118324>,  <15.031324, 8.822269, 23.233341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.072541, 8.615697, 23.118324>,  <15.141235, 8.271409, 22.926630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.072541, 8.615697, 23.118324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164430, -0.504686, 0.847499,
		0.971323, 0.066745, 0.228201,
		-0.171736, 0.860719, 0.479238,
		15.021020, 8.873913, 23.262096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.580415, 8.146261, 23.604315>,  <15.141235, 8.271409, 22.926630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.580415, 8.146261, 23.604315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.324920, 8.451783, 23.641449>,  <15.171623, 8.635097, 23.663729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.324920, 8.451783, 23.641449>,  <15.580415, 8.146261, 23.604315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.324920, 8.451783, 23.641449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116496, -0.215267, 0.969582,
		0.760555, 0.608493, 0.226479,
		-0.638737, 0.763804, 0.092835,
		15.133299, 8.680924, 23.669300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.739761, 8.391148, 24.245819>,  <15.580415, 8.146261, 23.604315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.739761, 8.391148, 24.245819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.365417, 8.517767, 24.183897>,  <15.140811, 8.593739, 24.146744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.365417, 8.517767, 24.183897>,  <15.739761, 8.391148, 24.245819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.365417, 8.517767, 24.183897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190557, -0.085094, 0.977981,
		0.296406, 0.944752, 0.139956,
		-0.935859, 0.316549, -0.154806,
		15.084660, 8.612732, 24.137455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.512678, 9.054353, 24.659527>,  <15.739761, 8.391148, 24.245819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.512678, 9.054353, 24.659527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.217053, 8.787718, 24.620640>,  <15.039679, 8.627737, 24.597307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.217053, 8.787718, 24.620640>,  <15.512678, 9.054353, 24.659527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.217053, 8.787718, 24.620640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214688, 0.096280, 0.971925,
		-0.638512, 0.739184, -0.214265,
		-0.739061, -0.666586, -0.097218,
		14.995335, 8.587742, 24.591475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.912346, 9.375393, 24.913958>,  <15.512678, 9.054353, 24.659527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.912346, 9.375393, 24.913958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.861647, 8.978843, 24.927298>,  <14.831227, 8.740912, 24.935301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.861647, 8.978843, 24.927298>,  <14.912346, 9.375393, 24.913958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.861647, 8.978843, 24.927298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186802, 0.056874, 0.980750,
		-0.974187, 0.118078, -0.192399,
		-0.126748, -0.991374, 0.033348,
		14.823623, 8.681431, 24.937302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.211432, 9.104310, 25.205671>,  <14.912346, 9.375393, 24.913958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.211432, 9.104310, 25.205671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.498241, 8.832152, 25.266260>,  <14.670326, 8.668858, 25.302614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.498241, 8.832152, 25.266260>,  <14.211432, 9.104310, 25.205671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.498241, 8.832152, 25.266260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182643, 0.026325, 0.982827,
		-0.672697, -0.732373, -0.105394,
		0.717021, -0.680395, 0.151472,
		14.713347, 8.628034, 25.311701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.929774, 8.757841, 25.769670>,  <14.211432, 9.104310, 25.205671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.929774, 8.757841, 25.769670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.306394, 8.623538, 25.780655>,  <14.532365, 8.542956, 25.787245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.306394, 8.623538, 25.780655>,  <13.929774, 8.757841, 25.769670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.306394, 8.623538, 25.780655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031976, -0.007928, 0.999457,
		-0.335358, -0.941915, -0.018201,
		0.941548, -0.335758, 0.027460,
		14.588858, 8.522811, 25.788893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.924835, 8.123183, 26.154587>,  <13.929774, 8.757841, 25.769670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.924835, 8.123183, 26.154587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.306808, 8.241893, 26.152491>,  <14.535993, 8.313118, 26.151234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.306808, 8.241893, 26.152491>,  <13.924835, 8.123183, 26.154587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.306808, 8.241893, 26.152491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074382, -0.222174, 0.972166,
		0.287349, -0.928744, -0.234236,
		0.954934, 0.296773, -0.005240,
		14.593288, 8.330925, 26.150919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.230103, 7.566766, 26.557709>,  <13.924835, 8.123183, 26.154587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.230103, 7.566766, 26.557709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.503317, 7.858589, 26.571629>,  <14.667245, 8.033683, 26.579981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.503317, 7.858589, 26.571629>,  <14.230103, 7.566766, 26.557709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.503317, 7.858589, 26.571629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201235, -0.233775, 0.951238,
		0.702119, -0.642724, -0.306488,
		0.683033, 0.729558, 0.034800,
		14.708227, 8.077456, 26.582067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.439611, 7.542769, 27.254944>,  <14.230103, 7.566766, 26.557709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.439611, 7.542769, 27.254944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.642535, 7.861637, 27.124002>,  <14.764290, 8.052958, 27.045437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.642535, 7.861637, 27.124002>,  <14.439611, 7.542769, 27.254944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.642535, 7.861637, 27.124002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455554, 0.074372, 0.887096,
		0.731511, -0.599159, -0.325424,
		0.507309, 0.797169, -0.327353,
		14.794728, 8.100787, 27.025797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.099965, 7.456964, 27.315706>,  <14.439611, 7.542769, 27.254944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.099965, 7.456964, 27.315706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.032725, 7.851228, 27.321611>,  <14.992382, 8.087786, 27.325155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.032725, 7.851228, 27.321611>,  <15.099965, 7.456964, 27.315706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.032725, 7.851228, 27.321611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305946, 0.037929, 0.951293,
		0.937091, 0.164428, -0.307934,
		-0.168098, 0.985660, 0.014763,
		14.982296, 8.146926, 27.326040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.712906, 7.779362, 27.568586>,  <15.099965, 7.456964, 27.315706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.712906, 7.779362, 27.568586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.411057, 8.035290, 27.626795>,  <15.229947, 8.188847, 27.661720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.411057, 8.035290, 27.626795>,  <15.712906, 7.779362, 27.568586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.411057, 8.035290, 27.626795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219468, 0.037115, 0.974913,
		0.618368, 0.767628, -0.168428,
		-0.754622, 0.639820, 0.145519,
		15.184669, 8.227236, 27.670450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.916317, 8.273971, 28.051899>,  <15.712906, 7.779362, 27.568586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.916317, 8.273971, 28.051899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.517429, 8.294727, 28.073299>,  <15.278097, 8.307181, 28.086140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.517429, 8.294727, 28.073299>,  <15.916317, 8.273971, 28.051899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.517429, 8.294727, 28.073299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054540, 0.018800, 0.998335,
		0.050799, 0.998476, -0.021578,
		-0.997219, 0.051892, 0.053501,
		15.218264, 8.310295, 28.089350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.689986, 8.787288, 28.581770>,  <15.916317, 8.273971, 28.051899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.689986, 8.787288, 28.581770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.410847, 8.504256, 28.537336>,  <15.243363, 8.334437, 28.510677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.410847, 8.504256, 28.537336>,  <15.689986, 8.787288, 28.581770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.410847, 8.504256, 28.537336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155609, -0.001607, 0.987817,
		-0.699137, 0.706632, -0.108984,
		-0.697849, -0.707579, -0.111082,
		15.201492, 8.291983, 28.504011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.987201, 8.939960, 28.931421>,  <15.689986, 8.787288, 28.581770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.987201, 8.939960, 28.931421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.974854, 9.233754, 29.202591>,  <14.967446, 9.410030, 29.365294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.974854, 9.233754, 29.202591>,  <14.987201, 8.939960, 28.931421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.974854, 9.233754, 29.202591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348317, 0.643636, -0.681475,
		-0.936868, 0.215099, -0.275699,
		-0.030866, 0.734483, 0.677925,
		14.965594, 9.454099, 29.405968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.521194, 9.560680, 28.791172>,  <14.987201, 8.939960, 28.931421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.521194, 9.560680, 28.791172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.847765, 9.666136, 28.996674>,  <15.043708, 9.729409, 29.119974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.847765, 9.666136, 28.996674>,  <14.521194, 9.560680, 28.791172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.847765, 9.666136, 28.996674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275588, 0.603939, -0.747869,
		-0.507443, 0.752165, 0.420416,
		0.816427, 0.263639, 0.513752,
		15.092693, 9.745228, 29.150799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.653038, 10.264944, 28.569414>,  <14.521194, 9.560680, 28.791172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.653038, 10.264944, 28.569414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.987211, 10.150673, 28.757219>,  <15.187715, 10.082110, 28.869902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.987211, 10.150673, 28.757219>,  <14.653038, 10.264944, 28.569414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.987211, 10.150673, 28.757219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542458, 0.565830, -0.620947,
		-0.088273, 0.773449, 0.627681,
		0.835432, -0.285678, 0.469511,
		15.237841, 10.064969, 28.898073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.956963, 10.864110, 28.614908>,  <14.653038, 10.264944, 28.569414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.956963, 10.864110, 28.614908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.235373, 10.580317, 28.659056>,  <15.402420, 10.410042, 28.685545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.235373, 10.580317, 28.659056>,  <14.956963, 10.864110, 28.614908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.235373, 10.580317, 28.659056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607229, 0.499608, -0.617790,
		0.383169, 0.497019, 0.778559,
		0.696027, -0.709482, 0.110370,
		15.444181, 10.367473, 28.692167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.539545, 11.252544, 28.595520>,  <14.956963, 10.864110, 28.614908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.539545, 11.252544, 28.595520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.635337, 10.876638, 28.497955>,  <15.692812, 10.651095, 28.439417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.635337, 10.876638, 28.497955>,  <15.539545, 11.252544, 28.595520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.635337, 10.876638, 28.497955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492310, 0.334068, -0.803759,
		0.836828, 0.072403, 0.542657,
		0.239480, -0.939764, -0.243913,
		15.707181, 10.594709, 28.424782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.325613, 11.258145, 28.382166>,  <15.539545, 11.252544, 28.595520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.325613, 11.258145, 28.382166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.165457, 10.926073, 28.226997>,  <16.069363, 10.726830, 28.133896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.165457, 10.926073, 28.226997>,  <16.325613, 11.258145, 28.382166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.165457, 10.926073, 28.226997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446033, 0.193236, -0.873908,
		0.800463, -0.522933, 0.292919,
		-0.400393, -0.830182, -0.387923,
		16.045340, 10.677018, 28.110620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.876804, 10.801999, 28.136751>,  <16.325613, 11.258145, 28.382166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.876804, 10.801999, 28.136751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.578447, 10.646376, 27.920500>,  <16.399433, 10.553001, 27.790749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.578447, 10.646376, 27.920500>,  <16.876804, 10.801999, 28.136751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.578447, 10.646376, 27.920500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385707, 0.409431, -0.826799,
		0.543023, -0.825226, -0.155329,
		-0.745893, -0.389059, -0.540626,
		16.354679, 10.529658, 27.758312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.135592, 10.537472, 27.567587>,  <16.876804, 10.801999, 28.136751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.135592, 10.537472, 27.567587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.750153, 10.583744, 27.471172>,  <16.518888, 10.611507, 27.413324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.750153, 10.583744, 27.471172>,  <17.135592, 10.537472, 27.567587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.750153, 10.583744, 27.471172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267255, 0.441648, -0.856459,
		0.007377, -0.889700, -0.456487,
		-0.963598, 0.115681, -0.241035,
		16.461073, 10.618448, 27.398861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.092083, 10.267612, 26.883875>,  <17.135592, 10.537472, 27.567587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.092083, 10.267612, 26.883875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.808250, 10.534308, 26.975048>,  <16.637951, 10.694326, 27.029753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.808250, 10.534308, 26.975048>,  <17.092083, 10.267612, 26.883875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.808250, 10.534308, 26.975048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206654, 0.506176, -0.837305,
		-0.673639, -0.547031, -0.496957,
		-0.709580, 0.666740, 0.227934,
		16.595377, 10.734330, 27.043428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.745785, 10.259377, 26.254683>,  <17.092083, 10.267612, 26.883875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.745785, 10.259377, 26.254683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.601606, 10.584607, 26.437542>,  <16.515099, 10.779746, 26.547256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.601606, 10.584607, 26.437542>,  <16.745785, 10.259377, 26.254683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.601606, 10.584607, 26.437542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000817, 0.490366, -0.871516,
		-0.932779, -0.313762, -0.177416,
		-0.360447, 0.813077, 0.457147,
		16.493473, 10.828530, 26.574686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.259579, 10.548241, 25.746014>,  <16.745785, 10.259377, 26.254683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.259579, 10.548241, 25.746014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.323481, 10.841461, 26.010471>,  <16.361822, 11.017394, 26.169146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.323481, 10.841461, 26.010471>,  <16.259579, 10.548241, 25.746014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.323481, 10.841461, 26.010471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084996, 0.657045, -0.749044,
		-0.983491, 0.175858, 0.042659,
		0.159754, 0.733052, 0.661145,
		16.371407, 11.061377, 26.208815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.793405, 10.966868, 25.591507>,  <16.259579, 10.548241, 25.746014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.793405, 10.966868, 25.591507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.080851, 11.178906, 25.771547>,  <16.253319, 11.306129, 25.879572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.080851, 11.178906, 25.771547>,  <15.793405, 10.966868, 25.591507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.080851, 11.178906, 25.771547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004261, 0.643881, -0.765114,
		-0.695395, 0.551740, 0.460444,
		0.718615, 0.530094, 0.450103,
		16.296434, 11.337934, 25.906578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.680418, 11.689409, 25.475510>,  <15.793405, 10.966868, 25.591507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.680418, 11.689409, 25.475510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.073204, 11.670741, 25.548792>,  <16.308876, 11.659540, 25.592762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.073204, 11.670741, 25.548792>,  <15.680418, 11.689409, 25.475510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.073204, 11.670741, 25.548792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177790, 0.557496, -0.810918,
		-0.064291, 0.828867, 0.555740,
		0.981966, -0.046670, 0.183206,
		16.367794, 11.656740, 25.603754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.972102, 12.338162, 25.160269>,  <15.680418, 11.689409, 25.475510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.972102, 12.338162, 25.160269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.305569, 12.136662, 25.250809>,  <16.505648, 12.015760, 25.305134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.305569, 12.136662, 25.250809>,  <15.972102, 12.338162, 25.160269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.305569, 12.136662, 25.250809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390983, 0.248885, -0.886109,
		0.390044, 0.827218, 0.404446,
		0.833665, -0.503753, 0.226352,
		16.555668, 11.985536, 25.318714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.532167, 12.860858, 25.305626>,  <15.972102, 12.338162, 25.160269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.532167, 12.860858, 25.305626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.650036, 12.502469, 25.172716>,  <16.720757, 12.287436, 25.092970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.650036, 12.502469, 25.172716>,  <16.532167, 12.860858, 25.305626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.650036, 12.502469, 25.172716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335885, 0.422636, -0.841760,
		0.894623, 0.136436, 0.425482,
		0.294670, -0.895971, -0.332273,
		16.738438, 12.233678, 25.073034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.223824, 12.862342, 25.063766>,  <16.532167, 12.860858, 25.305626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.223824, 12.862342, 25.063766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.085894, 12.535646, 24.878712>,  <17.003136, 12.339629, 24.767679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.085894, 12.535646, 24.878712>,  <17.223824, 12.862342, 25.063766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.085894, 12.535646, 24.878712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385819, 0.325986, -0.863062,
		0.855710, -0.476099, 0.202705,
		-0.344824, -0.816739, -0.462638,
		16.982447, 12.290625, 24.739920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.677153, 12.873131, 24.626463>,  <17.223824, 12.862342, 25.063766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.677153, 12.873131, 24.626463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.407742, 12.614816, 24.482620>,  <17.246096, 12.459826, 24.396315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.407742, 12.614816, 24.482620>,  <17.677153, 12.873131, 24.626463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.407742, 12.614816, 24.482620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248408, 0.260454, -0.932983,
		0.696172, -0.717718, -0.015004,
		-0.673527, -0.645789, -0.359608,
		17.205683, 12.421079, 24.374737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.011784, 12.427984, 24.096544>,  <17.677153, 12.873131, 24.626463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.011784, 12.427984, 24.096544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.615751, 12.436387, 24.040979>,  <17.378132, 12.441429, 24.007641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.615751, 12.436387, 24.040979>,  <18.011784, 12.427984, 24.096544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.615751, 12.436387, 24.040979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139452, 0.026888, -0.989864,
		-0.017062, -0.999418, -0.029551,
		-0.990081, 0.021010, -0.138912,
		17.318727, 12.442689, 23.999306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.973007, 12.030705, 23.565315>,  <18.011784, 12.427984, 24.096544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.973007, 12.030705, 23.565315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.607981, 12.194187, 23.570789>,  <17.388966, 12.292276, 23.574074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.607981, 12.194187, 23.570789>,  <17.973007, 12.030705, 23.565315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.607981, 12.194187, 23.570789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025398, -0.023241, -0.999407,
		-0.408144, -0.912371, 0.031589,
		-0.912564, 0.408705, 0.013687,
		17.334211, 12.316798, 23.574896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.720884, 11.665957, 23.158865>,  <17.973007, 12.030705, 23.565315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.720884, 11.665957, 23.158865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.504662, 12.002427, 23.164858>,  <17.374928, 12.204309, 23.168453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.504662, 12.002427, 23.164858>,  <17.720884, 11.665957, 23.158865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.504662, 12.002427, 23.164858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103177, 0.083959, -0.991113,
		-0.834956, -0.534208, -0.132174,
		-0.540558, 0.841174, 0.014984,
		17.342495, 12.254779, 23.169353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.518820, 11.776872, 22.491034>,  <17.720884, 11.665957, 23.158865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.518820, 11.776872, 22.491034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.465694, 12.155304, 22.609215>,  <17.433819, 12.382363, 22.680122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.465694, 12.155304, 22.609215>,  <17.518820, 11.776872, 22.491034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.465694, 12.155304, 22.609215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130661, 0.312204, -0.940987,
		-0.982491, -0.086372, -0.165081,
		-0.132814, 0.946080, 0.295452,
		17.425850, 12.439128, 22.697851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.991186, 12.053012, 22.004213>,  <17.518820, 11.776872, 22.491034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.991186, 12.053012, 22.004213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.168772, 12.367854, 22.175497>,  <17.275322, 12.556759, 22.278267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.168772, 12.367854, 22.175497>,  <16.991186, 12.053012, 22.004213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.168772, 12.367854, 22.175497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025044, 0.466801, -0.884008,
		-0.895695, 0.403190, 0.187530,
		0.443962, 0.787105, 0.428209,
		17.301960, 12.603986, 22.303959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.697214, 12.696959, 21.669121>,  <16.991186, 12.053012, 22.004213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.697214, 12.696959, 21.669121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.039642, 12.822890, 21.833084>,  <17.245100, 12.898449, 21.931463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.039642, 12.822890, 21.833084>,  <16.697214, 12.696959, 21.669121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.039642, 12.822890, 21.833084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230560, 0.477191, -0.848015,
		-0.462584, 0.820470, 0.335923,
		0.856071, 0.314828, 0.409909,
		17.296463, 12.917338, 21.956057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.689819, 13.357971, 21.467548>,  <16.697214, 12.696959, 21.669121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.689819, 13.357971, 21.467548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.064081, 13.268792, 21.576977>,  <17.288639, 13.215285, 21.642633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.064081, 13.268792, 21.576977>,  <16.689819, 13.357971, 21.467548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.064081, 13.268792, 21.576977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324832, 0.241025, -0.914544,
		0.137957, 0.944564, 0.297937,
		0.935656, -0.222947, 0.273573,
		17.344778, 13.201908, 21.659048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.156996, 13.841635, 21.152586>,  <16.689819, 13.357971, 21.467548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.156996, 13.841635, 21.152586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.404348, 13.541109, 21.244785>,  <17.552761, 13.360794, 21.300106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.404348, 13.541109, 21.244785>,  <17.156996, 13.841635, 21.152586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.404348, 13.541109, 21.244785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438086, 0.086052, -0.894805,
		0.652444, 0.654311, 0.382353,
		0.618383, -0.751314, 0.230500,
		17.589863, 13.315715, 21.313936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.854483, 14.030962, 21.072128>,  <17.156996, 13.841635, 21.152586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.854483, 14.030962, 21.072128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.835775, 13.634067, 21.026039>,  <17.824551, 13.395929, 20.998384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.835775, 13.634067, 21.026039>,  <17.854483, 14.030962, 21.072128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.835775, 13.634067, 21.026039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481029, 0.078723, -0.873163,
		0.875456, -0.096264, 0.473614,
		-0.046770, -0.992238, -0.115224,
		17.821745, 13.336395, 20.991472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.524309, 13.905838, 20.597366>,  <17.854483, 14.030962, 21.072128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.524309, 13.905838, 20.597366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.336153, 13.553302, 20.579605>,  <18.223259, 13.341781, 20.568949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.336153, 13.553302, 20.579605>,  <18.524309, 13.905838, 20.597366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.336153, 13.553302, 20.579605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422237, -0.180604, -0.888312,
		0.774886, -0.436603, 0.457089,
		-0.470392, -0.881340, -0.044402,
		18.195036, 13.288899, 20.566284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.037258, 13.304143, 20.479939>,  <18.524309, 13.905838, 20.597366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.037258, 13.304143, 20.479939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.671337, 13.198479, 20.357725>,  <18.451784, 13.135080, 20.284397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.671337, 13.198479, 20.357725>,  <19.037258, 13.304143, 20.479939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.671337, 13.198479, 20.357725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308520, 0.031191, -0.950706,
		0.260669, -0.963974, 0.052966,
		-0.914804, -0.264161, -0.305535,
		18.396896, 13.119230, 20.266064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.069380, 12.607159, 20.048939>,  <19.037258, 13.304143, 20.479939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.069380, 12.607159, 20.048939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.727652, 12.794735, 19.959291>,  <18.522614, 12.907281, 19.905502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.727652, 12.794735, 19.959291>,  <19.069380, 12.607159, 20.048939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.727652, 12.794735, 19.959291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304217, 0.101544, -0.947175,
		-0.421411, -0.877373, -0.229411,
		-0.854321, 0.468940, -0.224119,
		18.471355, 12.935417, 19.892056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.002682, 12.567970, 19.338579>,  <19.069380, 12.607159, 20.048939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.002682, 12.567970, 19.338579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.711971, 12.835370, 19.401707>,  <18.537544, 12.995810, 19.439583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.711971, 12.835370, 19.401707>,  <19.002682, 12.567970, 19.338579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.711971, 12.835370, 19.401707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136958, 0.366187, -0.920407,
		-0.673082, -0.647315, -0.357692,
		-0.726776, 0.668499, 0.157819,
		18.493938, 13.035919, 19.449053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.489109, 12.469579, 18.816631>,  <19.002682, 12.567970, 19.338579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.489109, 12.469579, 18.816631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.460909, 12.844685, 18.952648>,  <18.443989, 13.069748, 19.034258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.460909, 12.844685, 18.952648>,  <18.489109, 12.469579, 18.816631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.460909, 12.844685, 18.952648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082963, 0.334195, -0.938846,
		-0.994056, -0.094402, 0.054238,
		-0.070502, 0.937765, 0.340040,
		18.439758, 13.126014, 19.054661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.051907, 12.744104, 18.413544>,  <18.489109, 12.469579, 18.816631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.051907, 12.744104, 18.413544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.256441, 13.044217, 18.581169>,  <18.379162, 13.224284, 18.681744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.256441, 13.044217, 18.581169>,  <18.051907, 12.744104, 18.413544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.256441, 13.044217, 18.581169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030572, 0.471442, -0.881367,
		-0.858836, 0.463488, 0.218129,
		0.511338, 0.750281, 0.419061,
		18.409842, 13.269301, 18.706888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.788509, 13.244765, 18.101103>,  <18.051907, 12.744104, 18.413544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.788509, 13.244765, 18.101103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.131393, 13.396239, 18.240694>,  <18.337124, 13.487123, 18.324450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.131393, 13.396239, 18.240694>,  <17.788509, 13.244765, 18.101103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.131393, 13.396239, 18.240694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183062, 0.409328, -0.893834,
		-0.481328, 0.830089, 0.281557,
		0.857211, 0.378685, 0.348979,
		18.388557, 13.509845, 18.345388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.786882, 13.947296, 17.956852>,  <17.788509, 13.244765, 18.101103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.786882, 13.947296, 17.956852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.172819, 13.851434, 18.000023>,  <18.404381, 13.793917, 18.025927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.172819, 13.851434, 18.000023>,  <17.786882, 13.947296, 17.956852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.172819, 13.851434, 18.000023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212098, 0.467388, -0.858232,
		0.155235, 0.850949, 0.501785,
		0.964840, -0.239655, 0.107929,
		18.462271, 13.779537, 18.032402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.239153, 14.634520, 17.908215>,  <17.786882, 13.947296, 17.956852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.239153, 14.634520, 17.908215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.480137, 14.323677, 17.835384>,  <18.624727, 14.137172, 17.791687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.480137, 14.323677, 17.835384>,  <18.239153, 14.634520, 17.908215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.480137, 14.323677, 17.835384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301445, 0.432763, -0.849616,
		0.739037, 0.456972, 0.494976,
		0.602458, -0.777105, -0.182076,
		18.660873, 14.090546, 17.780762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.796480, 14.936173, 17.678188>,  <18.239153, 14.634520, 17.908215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.796480, 14.936173, 17.678188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.831287, 14.567114, 17.527910>,  <18.852171, 14.345678, 17.437744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.831287, 14.567114, 17.527910>,  <18.796480, 14.936173, 17.678188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.831287, 14.567114, 17.527910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491639, 0.367775, -0.789324,
		0.866440, -0.116021, 0.485614,
		0.087018, -0.922649, -0.375695,
		18.857393, 14.290319, 17.415201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.513718, 14.942204, 17.447317>,  <18.796480, 14.936173, 17.678188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.513718, 14.942204, 17.447317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.310633, 14.646024, 17.271152>,  <19.188782, 14.468315, 17.165453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.310633, 14.646024, 17.271152>,  <19.513718, 14.942204, 17.447317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.310633, 14.646024, 17.271152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414872, 0.237892, -0.878230,
		0.755057, -0.628600, 0.186412,
		-0.507710, -0.740451, -0.440411,
		19.158319, 14.423888, 17.139029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.918640, 14.782792, 16.922028>,  <19.513718, 14.942204, 17.447317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.918640, 14.782792, 16.922028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.581026, 14.612035, 16.792185>,  <19.378458, 14.509581, 16.714279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.581026, 14.612035, 16.792185>,  <19.918640, 14.782792, 16.922028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.581026, 14.612035, 16.792185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244670, 0.232099, -0.941417,
		0.477227, -0.874008, -0.091451,
		-0.844032, -0.426895, -0.324608,
		19.327816, 14.483967, 16.694803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.154566, 14.170320, 16.394354>,  <19.918640, 14.782792, 16.922028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.154566, 14.170320, 16.394354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.781979, 14.296170, 16.321274>,  <19.558426, 14.371681, 16.277426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.781979, 14.296170, 16.321274>,  <20.154566, 14.170320, 16.394354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.781979, 14.296170, 16.321274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265361, 0.243961, -0.932774,
		-0.248905, -0.917329, -0.310732,
		-0.931467, 0.314628, -0.182700,
		19.502539, 14.390558, 16.266464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.078482, 13.876812, 15.820021>,  <20.154566, 14.170320, 16.394354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.078482, 13.876812, 15.820021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.788448, 14.151289, 15.843332>,  <19.614429, 14.315975, 15.857320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.788448, 14.151289, 15.843332>,  <20.078482, 13.876812, 15.820021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.788448, 14.151289, 15.843332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296566, 0.387507, -0.872861,
		-0.621535, -0.615612, -0.484475,
		-0.725081, 0.686193, 0.058280,
		19.570925, 14.357147, 15.860816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.596411, 13.762600, 15.259908>,  <20.078482, 13.876812, 15.820021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.596411, 13.762600, 15.259908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.578220, 14.137267, 15.398809>,  <19.567307, 14.362067, 15.482150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.578220, 14.137267, 15.398809>,  <19.596411, 13.762600, 15.259908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.578220, 14.137267, 15.398809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563416, 0.311098, -0.765363,
		-0.824921, 0.160844, -0.541880,
		-0.045474, 0.936668, 0.347254,
		19.564579, 14.418267, 15.502986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.360409, 14.197689, 14.690768>,  <19.596411, 13.762600, 15.259908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.360409, 14.197689, 14.690768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.552717, 14.414057, 14.966817>,  <19.668102, 14.543878, 15.132446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.552717, 14.414057, 14.966817>,  <19.360409, 14.197689, 14.690768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.552717, 14.414057, 14.966817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547299, 0.429797, -0.718150,
		-0.685073, 0.722966, -0.089412,
		0.480769, 0.540920, 0.690121,
		19.696947, 14.576333, 15.173853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.525114, 14.965675, 14.499109>,  <19.360409, 14.197689, 14.690768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.525114, 14.965675, 14.499109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.810722, 14.862908, 14.759623>,  <19.982086, 14.801249, 14.915931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.810722, 14.862908, 14.759623>,  <19.525114, 14.965675, 14.499109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.810722, 14.862908, 14.759623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694623, 0.376362, -0.613067,
		-0.087611, 0.890138, 0.447190,
		0.714019, -0.256917, 0.651284,
		20.024927, 14.785833, 14.955008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.156097, 15.153838, 14.356058>,  <19.525114, 14.965675, 14.499109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.156097, 15.153838, 14.356058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.130836, 15.486120, 14.577305>,  <20.115681, 15.685490, 14.710053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.130836, 15.486120, 14.577305>,  <20.156097, 15.153838, 14.356058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.130836, 15.486120, 14.577305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683822, 0.439695, -0.582285,
		-0.726911, 0.341461, -0.595823,
		-0.063153, 0.830706, 0.553118,
		20.111891, 15.735332, 14.743240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.007471, 15.800999, 13.937388>,  <20.156097, 15.153838, 14.356058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.007471, 15.800999, 13.937388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.234505, 15.839809, 14.264420>,  <20.370726, 15.863096, 14.460638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.234505, 15.839809, 14.264420>,  <20.007471, 15.800999, 13.937388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.234505, 15.839809, 14.264420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.766344, 0.300712, -0.567705,
		-0.300938, 0.948767, 0.096324,
		0.567586, 0.097027, 0.817577,
		20.404781, 15.868917, 14.509693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.493292, 16.457075, 13.924143>,  <20.007471, 15.800999, 13.937388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.493292, 16.457075, 13.924143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.635078, 16.158398, 14.149283>,  <20.720150, 15.979191, 14.284368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.635078, 16.158398, 14.149283>,  <20.493292, 16.457075, 13.924143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.635078, 16.158398, 14.149283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.933992, 0.253851, -0.251433,
		0.044864, 0.614823, 0.787388,
		0.354466, -0.746695, 0.562851,
		20.741419, 15.934389, 14.318138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.079878, 16.796648, 13.444352>,  <20.493292, 16.457075, 13.924143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.079878, 16.796648, 13.444352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.469116, 16.876459, 13.398270>,  <21.702660, 16.924345, 13.370620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.469116, 16.876459, 13.398270>,  <21.079878, 16.796648, 13.444352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.469116, 16.876459, 13.398270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164634, 0.951975, 0.258144,
		0.161181, -0.232232, 0.959213,
		0.973096, 0.199527, -0.115207,
		21.761045, 16.936317, 13.363708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.350895, 17.181120, 14.032565>,  <21.079878, 16.796648, 13.444352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.350895, 17.181120, 14.032565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.617523, 17.259546, 13.744887>,  <21.777500, 17.306602, 13.572281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.617523, 17.259546, 13.744887>,  <21.350895, 17.181120, 14.032565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.617523, 17.259546, 13.744887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031000, 0.956665, 0.289536,
		0.744795, -0.215292, 0.631609,
		0.666573, 0.196065, -0.719194,
		21.817495, 17.318365, 13.529129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.889864, 17.739040, 14.303190>,  <21.350895, 17.181120, 14.032565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.889864, 17.739040, 14.303190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.887196, 17.736856, 13.903205>,  <21.885595, 17.735546, 13.663214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.887196, 17.736856, 13.903205>,  <21.889864, 17.739040, 14.303190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.887196, 17.736856, 13.903205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163850, 0.986464, -0.006479,
		0.986463, -0.163887, -0.005606,
		-0.006592, -0.005472, -0.999963,
		21.885195, 17.735218, 13.603216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.451559, 17.910601, 14.029946>,  <21.889864, 17.739040, 14.303190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.451559, 17.910601, 14.029946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.204124, 18.007153, 13.730858>,  <22.055664, 18.065083, 13.551405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.204124, 18.007153, 13.730858>,  <22.451559, 17.910601, 14.029946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.204124, 18.007153, 13.730858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564411, 0.798561, -0.209143,
		0.546619, -0.551395, -0.630215,
		-0.618586, 0.241379, -0.747722,
		22.018549, 18.079567, 13.506541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.943842, 18.219929, 13.568836>,  <22.451559, 17.910601, 14.029946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.943842, 18.219929, 13.568836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.570230, 18.309214, 13.457290>,  <22.346064, 18.362785, 13.390362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.570230, 18.309214, 13.457290>,  <22.943842, 18.219929, 13.568836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.570230, 18.309214, 13.457290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237228, 0.971303, -0.017110,
		0.267045, -0.082136, -0.960178,
		-0.934029, 0.223212, -0.278866,
		22.290022, 18.376177, 13.373630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.979774, 18.620070, 12.966535>,  <22.943842, 18.219929, 13.568836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.979774, 18.620070, 12.966535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.610924, 18.677092, 13.110403>,  <22.389614, 18.711306, 13.196724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.610924, 18.677092, 13.110403>,  <22.979774, 18.620070, 12.966535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.610924, 18.677092, 13.110403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092544, 0.983928, -0.152715,
		-0.375660, -0.107537, -0.920497,
		-0.922125, 0.142556, 0.359671,
		22.334286, 18.719858, 13.218305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.575850, 19.039661, 12.425825>,  <22.979774, 18.620070, 12.966535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.575850, 19.039661, 12.425825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.391294, 19.099821, 12.775568>,  <22.280561, 19.135918, 12.985414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.391294, 19.099821, 12.775568>,  <22.575850, 19.039661, 12.425825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.391294, 19.099821, 12.775568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062708, 0.988590, -0.136958,
		-0.884979, -0.008362, -0.465555,
		-0.461388, 0.150399, 0.874357,
		22.252878, 19.144941, 13.037875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.996496, 19.536983, 12.329009>,  <22.575850, 19.039661, 12.425825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.996496, 19.536983, 12.329009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.067795, 19.567904, 12.721387>,  <22.110573, 19.586456, 12.956814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.067795, 19.567904, 12.721387>,  <21.996496, 19.536983, 12.329009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.067795, 19.567904, 12.721387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192780, 0.974846, -0.111849,
		-0.964917, 0.209044, 0.158860,
		0.178245, 0.077300, 0.980945,
		22.121269, 19.591093, 13.015671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.722305, 20.103277, 12.396743>,  <21.996496, 19.536983, 12.329009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.722305, 20.103277, 12.396743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.914202, 20.082747, 12.747106>,  <22.029339, 20.070429, 12.957323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.914202, 20.082747, 12.747106>,  <21.722305, 20.103277, 12.396743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.914202, 20.082747, 12.747106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173071, 0.984210, -0.037119,
		-0.860171, 0.169401, 0.481049,
		0.479741, -0.051327, 0.875907,
		22.058125, 20.067348, 13.009878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.415010, 20.671869, 12.815557>,  <21.722305, 20.103277, 12.396743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.415010, 20.671869, 12.815557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.746017, 20.553503, 13.006409>,  <21.944622, 20.482483, 13.120920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.746017, 20.553503, 13.006409>,  <21.415010, 20.671869, 12.815557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.746017, 20.553503, 13.006409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116152, 0.921674, 0.370170,
		-0.549297, -0.250902, 0.797070,
		0.827515, -0.295915, 0.477130,
		21.994272, 20.464729, 13.149548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.393614, 21.056980, 13.427159>,  <21.415010, 20.671869, 12.815557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.393614, 21.056980, 13.427159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.772438, 20.951244, 13.354277>,  <21.999733, 20.887802, 13.310547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.772438, 20.951244, 13.354277>,  <21.393614, 21.056980, 13.427159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.772438, 20.951244, 13.354277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303746, 0.921552, 0.241827,
		0.103988, -0.284370, 0.953058,
		0.947061, -0.264341, -0.182207,
		22.056557, 20.871943, 13.299615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.802313, 21.473211, 13.971863>,  <21.393614, 21.056980, 13.427159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.802313, 21.473211, 13.971863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.052004, 21.377026, 13.674537>,  <22.201818, 21.319315, 13.496141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.052004, 21.377026, 13.674537>,  <21.802313, 21.473211, 13.971863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.052004, 21.377026, 13.674537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440690, 0.894009, 0.080874,
		0.645082, -0.378055, 0.664036,
		0.624229, -0.240463, -0.743314,
		22.239273, 21.304886, 13.451543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.346010, 21.915884, 14.070231>,  <21.802313, 21.473211, 13.971863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.346010, 21.915884, 14.070231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.445147, 21.778708, 13.707803>,  <22.504629, 21.696402, 13.490345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.445147, 21.778708, 13.707803>,  <22.346010, 21.915884, 14.070231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.445147, 21.778708, 13.707803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575618, 0.804396, -0.147005,
		0.779255, -0.485118, 0.396765,
		0.247841, -0.342939, -0.906072,
		22.519499, 21.675825, 13.435981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.076529, 21.968670, 13.997215>,  <22.346010, 21.915884, 14.070231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.076529, 21.968670, 13.997215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.908907, 21.987394, 13.634514>,  <22.808334, 21.998629, 13.416893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.908907, 21.987394, 13.634514>,  <23.076529, 21.968670, 13.997215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.908907, 21.987394, 13.634514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389425, 0.911417, -0.132922,
		0.820208, -0.408814, -0.400163,
		-0.419056, 0.046809, -0.906753,
		22.783190, 22.001438, 13.362488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.627205, 22.104446, 13.449350>,  <23.076529, 21.968670, 13.997215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.627205, 22.104446, 13.449350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.275694, 22.195850, 13.281764>,  <23.064787, 22.250692, 13.181212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.275694, 22.195850, 13.281764>,  <23.627205, 22.104446, 13.449350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.275694, 22.195850, 13.281764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372321, 0.877475, -0.302349,
		0.298541, -0.421688, -0.856185,
		-0.878778, 0.228512, -0.418966,
		23.012060, 22.264404, 13.156075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.758654, 22.345852, 12.697490>,  <23.627205, 22.104446, 13.449350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.758654, 22.345852, 12.697490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.390625, 22.483780, 12.771858>,  <23.169807, 22.566536, 12.816480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.390625, 22.483780, 12.771858>,  <23.758654, 22.345852, 12.697490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.390625, 22.483780, 12.771858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218507, 0.845623, -0.487008,
		-0.325150, -0.407457, -0.853379,
		-0.920072, 0.344820, 0.185922,
		23.114603, 22.587225, 12.827635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.491814, 22.552004, 12.129514>,  <23.758654, 22.345852, 12.697490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.491814, 22.552004, 12.129514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.287140, 22.784784, 12.382341>,  <23.164335, 22.924454, 12.534038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.287140, 22.784784, 12.382341>,  <23.491814, 22.552004, 12.129514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.287140, 22.784784, 12.382341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244871, 0.803937, -0.541962,
		-0.823539, -0.122539, -0.553866,
		-0.511685, 0.581952, 0.632068,
		23.133635, 22.959370, 12.571961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.107962, 22.986687, 11.707874>,  <23.491814, 22.552004, 12.129514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.107962, 22.986687, 11.707874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.081684, 23.167461, 12.063725>,  <23.065918, 23.275927, 12.277236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.081684, 23.167461, 12.063725>,  <23.107962, 22.986687, 11.707874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.081684, 23.167461, 12.063725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019792, 0.891969, -0.451663,
		-0.997644, -0.012064, -0.067540,
		-0.065692, 0.451936, 0.889629,
		23.061975, 23.303041, 12.330614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.567602, 23.472063, 11.659634>,  <23.107962, 22.986687, 11.707874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.567602, 23.472063, 11.659634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.792425, 23.617926, 11.956583>,  <22.927319, 23.705444, 12.134752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.792425, 23.617926, 11.956583>,  <22.567602, 23.472063, 11.659634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.792425, 23.617926, 11.956583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131717, 0.925571, -0.354921,
		-0.816544, 0.101702, 0.568254,
		0.562056, 0.364658, 0.742373,
		22.961042, 23.727324, 12.179295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.256855, 24.143518, 11.828594>,  <22.567602, 23.472063, 11.659634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.256855, 24.143518, 11.828594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.631620, 24.139280, 11.968354>,  <22.856480, 24.136738, 12.052211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.631620, 24.139280, 11.968354>,  <22.256855, 24.143518, 11.828594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.631620, 24.139280, 11.968354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134192, 0.933860, -0.331510,
		-0.322778, 0.357483, 0.876368,
		0.936913, -0.010597, 0.349401,
		22.912695, 24.136101, 12.073174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.392944, 24.827309, 11.921037>,  <22.256855, 24.143518, 11.828594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.392944, 24.827309, 11.921037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.746969, 24.641289, 11.913101>,  <22.959385, 24.529676, 11.908340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.746969, 24.641289, 11.913101>,  <22.392944, 24.827309, 11.921037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.746969, 24.641289, 11.913101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409473, 0.798147, -0.441920,
		0.221348, 0.383004, 0.896835,
		0.885063, -0.465048, -0.019839,
		23.012487, 24.501774, 11.907149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.900612, 25.393244, 12.113133>,  <22.392944, 24.827309, 11.921037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.900612, 25.393244, 12.113133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.117138, 25.097748, 11.952514>,  <23.247053, 24.920450, 11.856142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.117138, 25.097748, 11.952514>,  <22.900612, 25.393244, 12.113133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.117138, 25.097748, 11.952514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489208, 0.665127, -0.564165,
		0.683852, 0.108949, 0.721440,
		0.541315, -0.738740, -0.401550,
		23.279531, 24.876125, 11.832048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.633318, 25.462959, 12.298274>,  <22.900612, 25.393244, 12.113133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.633318, 25.462959, 12.298274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.626554, 25.246090, 11.962234>,  <23.622496, 25.115969, 11.760611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.626554, 25.246090, 11.962234>,  <23.633318, 25.462959, 12.298274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.626554, 25.246090, 11.962234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502604, 0.721738, -0.475902,
		0.864351, -0.430284, 0.260294,
		-0.016909, -0.542171, -0.840098,
		23.621481, 25.083439, 11.710205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.251049, 25.545555, 12.078568>,  <23.633318, 25.462959, 12.298274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.251049, 25.545555, 12.078568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.023891, 25.463453, 11.759727>,  <23.887598, 25.414192, 11.568422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.023891, 25.463453, 11.759727>,  <24.251049, 25.545555, 12.078568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.023891, 25.463453, 11.759727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529049, 0.650856, -0.544513,
		0.630556, -0.730931, -0.261033,
		-0.567896, -0.205247, -0.797099,
		23.853523, 25.401878, 11.520597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.754749, 25.406460, 11.539141>,  <24.251049, 25.545555, 12.078568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.754749, 25.406460, 11.539141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.392672, 25.490519, 11.391378>,  <24.175425, 25.540953, 11.302721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.392672, 25.490519, 11.391378>,  <24.754749, 25.406460, 11.539141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.392672, 25.490519, 11.391378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421050, 0.561580, -0.712281,
		0.057768, -0.800292, -0.596822,
		-0.905196, 0.210145, -0.369405,
		24.121113, 25.553562, 11.280557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.752213, 25.299009, 10.836992>,  <24.754749, 25.406460, 11.539141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.752213, 25.299009, 10.836992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.507055, 25.596350, 10.944167>,  <24.359961, 25.774754, 11.008472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.507055, 25.596350, 10.944167>,  <24.752213, 25.299009, 10.836992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.507055, 25.596350, 10.944167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525224, 0.636594, -0.564702,
		-0.590338, -0.205376, -0.780590,
		-0.612895, 0.743350, 0.267938,
		24.323187, 25.819355, 11.024549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.396915, 25.118193, 11.169930>,  <24.752213, 25.299009, 10.836992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.396915, 25.118193, 11.169930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.502350, 25.492960, 11.078099>,  <25.565611, 25.717821, 11.023001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.502350, 25.492960, 11.078099>,  <25.396915, 25.118193, 11.169930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.502350, 25.492960, 11.078099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.963966, 0.246968, -0.098871,
		-0.035936, 0.247364, 0.968256,
		0.263586, 0.936919, -0.229576,
		25.581425, 25.774036, 11.009227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.047144, 25.384138, 11.006650>,  <25.396915, 25.118193, 11.169930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.047144, 25.384138, 11.006650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.326591, 25.100174, 11.042335>,  <26.494261, 24.929796, 11.063745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.326591, 25.100174, 11.042335>,  <26.047144, 25.384138, 11.006650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.326591, 25.100174, 11.042335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142291, -0.015656, 0.989701,
		-0.701202, -0.704118, -0.111952,
		0.698619, -0.709910, 0.089212,
		26.536177, 24.887201, 11.069098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.085854, 25.044605, 11.659893>,  <26.047144, 25.384138, 11.006650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.085854, 25.044605, 11.659893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.351500, 24.775227, 11.530015>,  <26.510887, 24.613600, 11.452088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.351500, 24.775227, 11.530015>,  <26.085854, 25.044605, 11.659893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.351500, 24.775227, 11.530015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096083, -0.507577, 0.856233,
		-0.741433, -0.537437, -0.401794,
		0.664112, -0.673445, -0.324696,
		26.550734, 24.573193, 11.432607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.078161, 24.510363, 12.113221>,  <26.085854, 25.044605, 11.659893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.078161, 24.510363, 12.113221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.329880, 24.512794, 12.424077>,  <26.480911, 24.514254, 12.610591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.329880, 24.512794, 12.424077>,  <26.078161, 24.510363, 12.113221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.329880, 24.512794, 12.424077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007942, -0.999968, 0.001392,
		0.777124, 0.005296, -0.629325,
		0.629297, 0.006079, 0.777141,
		26.518669, 24.514618, 12.657219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.483374, 23.853235, 11.998240>,  <26.078161, 24.510363, 12.113221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.483374, 23.853235, 11.998240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.460630, 23.991238, 12.372990>,  <26.446985, 24.074039, 12.597840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.460630, 23.991238, 12.372990>,  <26.483374, 23.853235, 11.998240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.460630, 23.991238, 12.372990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170179, -0.928011, 0.331414,
		0.983771, -0.140593, 0.111479,
		-0.056859, 0.345007, 0.936876,
		26.443573, 24.094740, 12.654053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.106272, 23.765228, 12.565897>,  <26.483374, 23.853235, 11.998240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.106272, 23.765228, 12.565897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.733850, 23.747652, 12.710791>,  <26.510399, 23.737106, 12.797727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.733850, 23.747652, 12.710791>,  <27.106272, 23.765228, 12.565897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.733850, 23.747652, 12.710791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108152, -0.981347, 0.158937,
		0.348492, 0.187155, 0.918437,
		-0.931051, -0.043942, 0.362233,
		26.454535, 23.734470, 12.819461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.150808, 23.392963, 13.197179>,  <27.106272, 23.765228, 12.565897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.150808, 23.392963, 13.197179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.778915, 23.355986, 13.054600>,  <26.555780, 23.333799, 12.969052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.778915, 23.355986, 13.054600>,  <27.150808, 23.392963, 13.197179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.778915, 23.355986, 13.054600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014005, -0.976152, 0.216635,
		-0.367973, 0.196420, 0.908853,
		-0.929731, -0.092444, -0.356447,
		26.499996, 23.328253, 12.947665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.733992, 22.921928, 13.640543>,  <27.150808, 23.392963, 13.197179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.733992, 22.921928, 13.640543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.566067, 22.925903, 13.277520>,  <26.465311, 22.928288, 13.059707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.566067, 22.925903, 13.277520>,  <26.733992, 22.921928, 13.640543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.566067, 22.925903, 13.277520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160669, -0.984961, 0.063537,
		-0.893276, 0.172490, 0.415096,
		-0.419813, 0.009937, -0.907556,
		26.440123, 22.928885, 13.005253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.164530, 22.450403, 13.703044>,  <26.733992, 22.921928, 13.640543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.164530, 22.450403, 13.703044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.251755, 22.473801, 13.313372>,  <26.304089, 22.487839, 13.079568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.251755, 22.473801, 13.313372>,  <26.164530, 22.450403, 13.703044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.251755, 22.473801, 13.313372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236346, -0.965324, -0.110863,
		-0.946884, 0.254418, -0.196675,
		0.218061, 0.058491, -0.974181,
		26.317173, 22.491348, 13.021117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.608376, 22.069723, 13.283634>,  <26.164530, 22.450403, 13.703044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.608376, 22.069723, 13.283634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.916996, 22.087980, 13.029822>,  <26.102167, 22.098934, 12.877535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.916996, 22.087980, 13.029822>,  <25.608376, 22.069723, 13.283634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.916996, 22.087980, 13.029822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215615, -0.919626, -0.328328,
		-0.598516, 0.390135, -0.699695,
		0.771549, 0.045645, -0.634530,
		26.148460, 22.101673, 12.839463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.322245, 21.852167, 12.610912>,  <25.608376, 22.069723, 13.283634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.322245, 21.852167, 12.610912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.720137, 21.811699, 12.617610>,  <25.958872, 21.787418, 12.621629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.720137, 21.811699, 12.617610>,  <25.322245, 21.852167, 12.610912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.720137, 21.811699, 12.617610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090165, -0.940671, -0.327123,
		0.048846, 0.323888, -0.944834,
		0.994728, -0.101170, 0.016745,
		26.018555, 21.781347, 12.622633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.448891, 21.611767, 12.006916>,  <25.322245, 21.852167, 12.610912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.448891, 21.611767, 12.006916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.754700, 21.518787, 12.247406>,  <25.938185, 21.462999, 12.391700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.754700, 21.518787, 12.247406>,  <25.448891, 21.611767, 12.006916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.754700, 21.518787, 12.247406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086524, -0.961281, -0.261633,
		0.638763, 0.148004, -0.755034,
		0.764523, -0.232450, 0.601225,
		25.984056, 21.449053, 12.427773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.779751, 21.021673, 11.676364>,  <25.448891, 21.611767, 12.006916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.779751, 21.021673, 11.676364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.910240, 21.020702, 12.054480>,  <25.988535, 21.020121, 12.281349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.910240, 21.020702, 12.054480>,  <25.779751, 21.021673, 11.676364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.910240, 21.020702, 12.054480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107244, -0.993635, 0.034459,
		0.939189, -0.112618, -0.324409,
		0.326225, -0.002427, 0.945289,
		26.008108, 21.019974, 12.338066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.483334, 20.512980, 11.721192>,  <25.779751, 21.021673, 11.676364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.483334, 20.512980, 11.721192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.307926, 20.579737, 12.074429>,  <26.202682, 20.619791, 12.286370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.307926, 20.579737, 12.074429>,  <26.483334, 20.512980, 11.721192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.307926, 20.579737, 12.074429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124070, -0.984440, 0.124435,
		0.890117, -0.054998, 0.452402,
		-0.438519, 0.166891, 0.883090,
		26.176371, 20.629805, 12.339355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.657509, 19.942099, 12.083588>,  <26.483334, 20.512980, 11.721192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.657509, 19.942099, 12.083588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.355576, 20.075081, 12.309755>,  <26.174416, 20.154871, 12.445456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.355576, 20.075081, 12.309755>,  <26.657509, 19.942099, 12.083588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.355576, 20.075081, 12.309755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206726, -0.938678, 0.275948,
		0.622487, 0.091408, 0.777274,
		-0.754834, 0.332457, 0.565419,
		26.129126, 20.174818, 12.479381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.702238, 19.531816, 12.728240>,  <26.657509, 19.942099, 12.083588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.702238, 19.531816, 12.728240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.335052, 19.690012, 12.740459>,  <26.114740, 19.784929, 12.747791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.335052, 19.690012, 12.740459>,  <26.702238, 19.531816, 12.728240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.335052, 19.690012, 12.740459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365290, -0.872863, 0.323533,
		0.154617, 0.285833, 0.945723,
		-0.917963, 0.395487, 0.030548,
		26.059664, 19.808659, 12.749623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.471888, 19.157564, 13.201877>,  <26.702238, 19.531816, 12.728240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.471888, 19.157564, 13.201877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.161320, 19.334961, 13.022771>,  <25.974979, 19.441399, 12.915308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.161320, 19.334961, 13.022771>,  <26.471888, 19.157564, 13.201877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.161320, 19.334961, 13.022771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595884, -0.747917, 0.292477,
		-0.205180, 0.493899, 0.844965,
		-0.776418, 0.443490, -0.447763,
		25.928394, 19.468008, 12.888442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.849031, 19.296291, 13.700030>,  <26.471888, 19.157564, 13.201877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.849031, 19.296291, 13.700030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.700861, 19.262505, 13.330025>,  <25.611959, 19.242233, 13.108022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.700861, 19.262505, 13.330025>,  <25.849031, 19.296291, 13.700030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.700861, 19.262505, 13.330025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640116, -0.698413, 0.320111,
		-0.673081, 0.710693, 0.204641,
		-0.370424, -0.084467, -0.925014,
		25.589733, 19.237165, 13.052521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.115486, 19.360533, 13.731108>,  <25.849031, 19.296291, 13.700030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.115486, 19.360533, 13.731108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.205391, 19.176580, 13.387482>,  <25.259333, 19.066210, 13.181306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.205391, 19.176580, 13.387482>,  <25.115486, 19.360533, 13.731108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.205391, 19.176580, 13.387482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.718910, -0.673388, 0.172390,
		-0.657763, 0.578844, -0.481963,
		0.224761, -0.459880, -0.859065,
		25.272820, 19.038616, 13.129762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.448500, 19.133387, 13.439217>,  <25.115486, 19.360533, 13.731108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.448500, 19.133387, 13.439217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.698256, 18.904781, 13.226233>,  <24.848108, 18.767618, 13.098444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.698256, 18.904781, 13.226233>,  <24.448500, 19.133387, 13.439217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.698256, 18.904781, 13.226233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639776, -0.765261, 0.071157,
		-0.448136, 0.296224, -0.843460,
		0.624389, -0.571513, -0.532458,
		24.885572, 18.733328, 13.066496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.992849, 18.783119, 12.996001>,  <24.448500, 19.133387, 13.439217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.992849, 18.783119, 12.996001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.337404, 18.580040, 12.989676>,  <24.544138, 18.458193, 12.985882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.337404, 18.580040, 12.989676>,  <23.992849, 18.783119, 12.996001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.337404, 18.580040, 12.989676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503913, -0.850222, -0.152297,
		0.063878, 0.139154, -0.988208,
		0.861389, -0.507699, -0.015811,
		24.595821, 18.427731, 12.984933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.940744, 18.373224, 12.431343>,  <23.992849, 18.783119, 12.996001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.940744, 18.373224, 12.431343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.215847, 18.181252, 12.649208>,  <24.380909, 18.066067, 12.779927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.215847, 18.181252, 12.649208>,  <23.940744, 18.373224, 12.431343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.215847, 18.181252, 12.649208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511076, -0.852945, -0.106234,
		0.515552, -0.205301, -0.831900,
		0.687755, -0.479933, 0.544662,
		24.422174, 18.037271, 12.812607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.976816, 17.754757, 12.035554>,  <23.940744, 18.373224, 12.431343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.976816, 17.754757, 12.035554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.116554, 17.671928, 12.401084>,  <24.200397, 17.622231, 12.620402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.116554, 17.671928, 12.401084>,  <23.976816, 17.754757, 12.035554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.116554, 17.671928, 12.401084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549589, -0.835175, 0.020853,
		0.758886, -0.509514, -0.405571,
		0.349347, -0.207072, 0.913826,
		24.221359, 17.609806, 12.675232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.155203, 17.082346, 11.949671>,  <23.976816, 17.754757, 12.035554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.155203, 17.082346, 11.949671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.156120, 17.121080, 12.347790>,  <24.156670, 17.144321, 12.586661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.156120, 17.121080, 12.347790>,  <24.155203, 17.082346, 11.949671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.156120, 17.121080, 12.347790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446241, -0.890608, 0.087680,
		0.894910, -0.444343, 0.041171,
		0.002293, 0.096838, 0.995298,
		24.156809, 17.150131, 12.646379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.405010, 16.483177, 12.292035>,  <24.155203, 17.082346, 11.949671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.405010, 16.483177, 12.292035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.208080, 16.645226, 12.600188>,  <24.089922, 16.742455, 12.785080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.208080, 16.645226, 12.600188>,  <24.405010, 16.483177, 12.292035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.208080, 16.645226, 12.600188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367750, -0.899019, 0.237750,
		0.788907, -0.166258, 0.591595,
		-0.492327, 0.405122, 0.770383,
		24.060383, 16.766762, 12.831304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.499628, 15.934877, 12.735181>,  <24.405010, 16.483177, 12.292035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.499628, 15.934877, 12.735181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.207798, 16.161057, 12.889060>,  <24.032700, 16.296764, 12.981387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.207798, 16.161057, 12.889060>,  <24.499628, 15.934877, 12.735181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.207798, 16.161057, 12.889060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385246, -0.804558, 0.451964,
		0.565074, 0.181538, 0.804820,
		-0.729573, 0.565447, 0.384698,
		23.988926, 16.330690, 13.004470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.859350, 15.296874, 12.687302>,  <24.499628, 15.934877, 12.735181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.859350, 15.296874, 12.687302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.784239, 14.969593, 12.904662>,  <24.739172, 14.773225, 13.035078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.784239, 14.969593, 12.904662>,  <24.859350, 15.296874, 12.687302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.784239, 14.969593, 12.904662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.947536, -0.005195, 0.319608,
		-0.258681, 0.574907, 0.776252,
		-0.187778, -0.818203, 0.543401,
		24.727905, 14.724133, 13.067682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.905216, 15.493543, 13.370178>,  <24.859350, 15.296874, 12.687302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.905216, 15.493543, 13.370178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.994099, 15.109356, 13.303092>,  <25.047428, 14.878844, 13.262840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.994099, 15.109356, 13.303092>,  <24.905216, 15.493543, 13.370178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.994099, 15.109356, 13.303092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.914460, 0.145632, 0.377564,
		-0.338213, -0.237267, 0.910668,
		0.222206, -0.960466, -0.167716,
		25.060760, 14.821216, 13.252777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.174137, 15.131699, 13.918298>,  <24.905216, 15.493543, 13.370178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.174137, 15.131699, 13.918298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.315176, 14.994189, 13.570161>,  <25.399799, 14.911683, 13.361279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.315176, 14.994189, 13.570161>,  <25.174137, 15.131699, 13.918298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.315176, 14.994189, 13.570161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.895919, 0.392564, 0.207900,
		0.270194, -0.853061, 0.446411,
		0.352596, -0.343774, -0.870342,
		25.420956, 14.891057, 13.309058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.846422, 15.563744, 13.998884>,  <25.174137, 15.131699, 13.918298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.846422, 15.563744, 13.998884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.920097, 15.248527, 13.763915>,  <25.964302, 15.059397, 13.622933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.920097, 15.248527, 13.763915>,  <25.846422, 15.563744, 13.998884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.920097, 15.248527, 13.763915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.943172, 0.309886, -0.119989,
		0.276591, -0.531940, 0.800336,
		0.184186, -0.788042, -0.587423,
		25.975353, 15.012114, 13.587688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.414600, 15.131507, 14.199155>,  <25.846422, 15.563744, 13.998884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.414600, 15.131507, 14.199155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.374317, 15.087720, 13.803605>,  <26.350147, 15.061447, 13.566275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.374317, 15.087720, 13.803605>,  <26.414600, 15.131507, 14.199155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.374317, 15.087720, 13.803605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.986425, 0.118591, -0.113585,
		0.129705, -0.986891, 0.096039,
		-0.100706, -0.109468, -0.988876,
		26.344105, 15.054879, 13.506943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.950727, 14.988503, 14.710169>,  <26.414600, 15.131507, 14.199155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.950727, 14.988503, 14.710169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.784580, 15.076584, 15.063209>,  <26.684893, 15.129433, 15.275032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.784580, 15.076584, 15.063209>,  <26.950727, 14.988503, 14.710169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.784580, 15.076584, 15.063209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213214, -0.966797, 0.140867,
		0.884314, -0.129671, 0.448525,
		-0.415366, 0.220202, 0.882600,
		26.659971, 15.142645, 15.327989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<15.267200, 15.794639, 23.715292> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.877535, 15.855178, 23.648243>,  <14.643736, 15.891501, 23.608013>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.877535, 15.855178, 23.648243>,  <15.267200, 15.794639, 23.715292>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.877535, 15.855178, 23.648243> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194493, 0.184982, -0.963304,
		-0.114788, -0.971017, -0.209639,
		-0.974164, 0.151349, -0.167622,
		14.585285, 15.900582, 23.597956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.191969, 15.495166, 23.128719>,  <15.267200, 15.794639, 23.715292>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.191969, 15.495166, 23.128719> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.848269, 15.699789, 23.128880>,  <14.642050, 15.822563, 23.128975>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.848269, 15.699789, 23.128880>,  <15.191969, 15.495166, 23.128719>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.848269, 15.699789, 23.128880> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067539, 0.114220, -0.991157,
		-0.507081, -0.851623, -0.132693,
		-0.859248, 0.511559, 0.000401,
		14.590495, 15.853257, 23.129000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.699093, 15.153768, 22.611151>,  <15.191969, 15.495166, 23.128719>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.699093, 15.153768, 22.611151> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.594843, 15.534680, 22.674692>,  <14.532293, 15.763227, 22.712818>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.594843, 15.534680, 22.674692>,  <14.699093, 15.153768, 22.611151>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.594843, 15.534680, 22.674692> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006874, 0.162708, -0.986650,
		-0.965416, -0.258238, -0.035860,
		-0.260625, 0.952281, 0.158856,
		14.516655, 15.820365, 22.722349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.172174, 15.315039, 22.182371>,  <14.699093, 15.153768, 22.611151>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.172174, 15.315039, 22.182371> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.296078, 15.680431, 22.287899>,  <14.370420, 15.899667, 22.351215>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.296078, 15.680431, 22.287899>,  <14.172174, 15.315039, 22.182371>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.296078, 15.680431, 22.287899> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263057, 0.348971, -0.899456,
		-0.913702, 0.209213, 0.348394,
		0.309757, 0.913482, 0.263820,
		14.389005, 15.954476, 22.367044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.669950, 15.816275, 21.938841>,  <14.172174, 15.315039, 22.182371>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.669950, 15.816275, 21.938841> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.969486, 16.072084, 22.008406>,  <14.149208, 16.225571, 22.050144>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.969486, 16.072084, 22.008406>,  <13.669950, 15.816275, 21.938841>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.969486, 16.072084, 22.008406> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006516, 0.255289, -0.966843,
		-0.662718, 0.725145, 0.187004,
		0.748841, 0.639525, 0.173910,
		14.194139, 16.263943, 22.060579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.406185, 16.504812, 21.678543>,  <13.669950, 15.816275, 21.938841>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.406185, 16.504812, 21.678543> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.804963, 16.477987, 21.694571>,  <14.044230, 16.461891, 21.704187>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.804963, 16.477987, 21.694571>,  <13.406185, 16.504812, 21.678543>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.804963, 16.477987, 21.694571> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055822, 0.252702, -0.965932,
		0.054654, 0.965217, 0.255673,
		0.996944, -0.067064, 0.040069,
		14.104046, 16.457869, 21.706591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.570617, 17.112318, 21.570343>,  <13.406185, 16.504812, 21.678543>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.570617, 17.112318, 21.570343> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.871152, 16.874409, 21.455984>,  <14.051473, 16.731663, 21.387369>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.871152, 16.874409, 21.455984>,  <13.570617, 17.112318, 21.570343>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.871152, 16.874409, 21.455984> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115039, 0.308554, -0.944225,
		0.649814, 0.742321, 0.163407,
		0.751337, -0.594773, -0.285898,
		14.096553, 16.695976, 21.370214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.017570, 17.517382, 21.204657>,  <13.570617, 17.112318, 21.570343>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.017570, 17.517382, 21.204657> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.121234, 17.147131, 21.094347>,  <14.183433, 16.924980, 21.028162>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.121234, 17.147131, 21.094347>,  <14.017570, 17.517382, 21.204657>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.121234, 17.147131, 21.094347> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101609, 0.257816, -0.960836,
		0.960475, 0.277032, -0.027237,
		0.259160, -0.925626, -0.275774,
		14.198982, 16.869444, 21.011614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.490788, 17.635431, 20.599800>,  <14.017570, 17.517382, 21.204657>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.490788, 17.635431, 20.599800> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.410411, 17.245306, 20.563179>,  <14.362185, 17.011230, 20.541206>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.410411, 17.245306, 20.563179>,  <14.490788, 17.635431, 20.599800>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.410411, 17.245306, 20.563179> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157341, 0.060110, -0.985713,
		0.966884, -0.212477, 0.141379,
		-0.200944, -0.975315, -0.091550,
		14.350128, 16.952711, 20.535713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.060846, 17.330091, 20.296234>,  <14.490788, 17.635431, 20.599800>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.060846, 17.330091, 20.296234> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.770834, 17.061197, 20.236326>,  <14.596827, 16.899860, 20.200382>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.770834, 17.061197, 20.236326>,  <15.060846, 17.330091, 20.296234>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.770834, 17.061197, 20.236326> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294411, -0.105927, -0.949790,
		0.622617, -0.732721, 0.274714,
		-0.725031, -0.672234, -0.149769,
		14.553325, 16.859528, 20.191395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.385118, 16.760086, 20.012079>,  <15.060846, 17.330091, 20.296234>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.385118, 16.760086, 20.012079> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.003528, 16.791620, 19.896341>,  <14.774574, 16.810541, 19.826899>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.003528, 16.791620, 19.896341>,  <15.385118, 16.760086, 20.012079>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.003528, 16.791620, 19.896341> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281664, -0.095697, -0.954729,
		-0.102962, -0.992283, 0.069085,
		-0.953973, 0.078842, -0.289343,
		14.717336, 16.815271, 19.809538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.339067, 16.344036, 19.355825>,  <15.385118, 16.760086, 20.012079>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.339067, 16.344036, 19.355825> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.997317, 16.551613, 19.344883>,  <14.792268, 16.676159, 19.338318>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.997317, 16.551613, 19.344883>,  <15.339067, 16.344036, 19.355825>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.997317, 16.551613, 19.344883> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107254, 0.124582, -0.986395,
		-0.508472, -0.845683, -0.162098,
		-0.854372, 0.518940, -0.027356,
		14.741005, 16.707294, 19.336676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.965379, 16.165998, 18.743486>,  <15.339067, 16.344036, 19.355825>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.965379, 16.165998, 18.743486> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.872632, 16.537661, 18.858664>,  <14.816984, 16.760658, 18.927771>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.872632, 16.537661, 18.858664>,  <14.965379, 16.165998, 18.743486>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.872632, 16.537661, 18.858664> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131534, 0.323241, -0.937131,
		-0.963814, -0.179414, -0.197164,
		-0.231866, 0.929154, 0.287945,
		14.803072, 16.816406, 18.945047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.600851, 16.431498, 18.142397>,  <14.965379, 16.165998, 18.743486>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.600851, 16.431498, 18.142397> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.706629, 16.751230, 18.358227>,  <14.770096, 16.943069, 18.487724>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.706629, 16.751230, 18.358227>,  <14.600851, 16.431498, 18.142397>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.706629, 16.751230, 18.358227> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184302, 0.507293, -0.841835,
		-0.946627, 0.322063, -0.013167,
		0.264445, 0.799330, 0.539574,
		14.785962, 16.991030, 18.520100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.208306, 16.988533, 17.887064>,  <14.600851, 16.431498, 18.142397>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.208306, 16.988533, 17.887064> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.524226, 17.141705, 18.078722>,  <14.713778, 17.233608, 18.193716>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.524226, 17.141705, 18.078722>,  <14.208306, 16.988533, 17.887064>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.524226, 17.141705, 18.078722> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152840, 0.633668, -0.758357,
		-0.594016, 0.672183, 0.441945,
		0.789801, 0.382929, 0.479145,
		14.761167, 17.256584, 18.222466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.178264, 17.673269, 17.678070>,  <14.208306, 16.988533, 17.887064>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.178264, 17.673269, 17.678070> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.552905, 17.622700, 17.808786>,  <14.777690, 17.592358, 17.887217>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.552905, 17.622700, 17.808786>,  <14.178264, 17.673269, 17.678070>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.552905, 17.622700, 17.808786> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349564, 0.401267, -0.846634,
		-0.024097, 0.907194, 0.420021,
		0.936602, -0.126423, 0.326792,
		14.833886, 17.584772, 17.906824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.590195, 18.304852, 17.401262>,  <14.178264, 17.673269, 17.678070>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.590195, 18.304852, 17.401262> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.865768, 18.032768, 17.501413>,  <15.031113, 17.869518, 17.561504>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.865768, 18.032768, 17.501413>,  <14.590195, 18.304852, 17.401262>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.865768, 18.032768, 17.501413> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568142, 0.292268, -0.769282,
		0.450093, 0.672235, 0.587807,
		0.688935, -0.680206, 0.250377,
		15.072449, 17.828707, 17.576527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.250678, 18.514183, 17.171839>,  <14.590195, 18.304852, 17.401262>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.250678, 18.514183, 17.171839> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.350106, 18.131117, 17.229923>,  <15.409763, 17.901278, 17.264774>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.350106, 18.131117, 17.229923>,  <15.250678, 18.514183, 17.171839>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.350106, 18.131117, 17.229923> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633007, 0.047136, -0.772710,
		0.733154, 0.283992, 0.617927,
		0.248570, -0.957667, 0.145210,
		15.424677, 17.843817, 17.273487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.047729, 18.459030, 17.187664>,  <15.250678, 18.514183, 17.171839>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.047729, 18.459030, 17.187664> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.903445, 18.091618, 17.122932>,  <15.816875, 17.871170, 17.084093>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.903445, 18.091618, 17.122932>,  <16.047729, 18.459030, 17.187664>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.903445, 18.091618, 17.122932> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629027, -0.111473, -0.769350,
		0.688632, -0.379309, 0.617990,
		-0.360710, -0.918531, -0.161831,
		15.795232, 17.816059, 17.074383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.637039, 17.994358, 17.192167>,  <16.047729, 18.459030, 17.187664>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.637039, 17.994358, 17.192167> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.351543, 17.830540, 16.964890>,  <16.180246, 17.732248, 16.828522>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.351543, 17.830540, 16.964890>,  <16.637039, 17.994358, 17.192167>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.351543, 17.830540, 16.964890> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672793, -0.175324, -0.718757,
		0.194747, -0.895283, 0.400677,
		-0.713739, -0.409548, -0.568196,
		16.137423, 17.707676, 16.794430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.983934, 17.502102, 16.843611>,  <16.637039, 17.994358, 17.192167>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.983934, 17.502102, 16.843611> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.641500, 17.506073, 16.636915>,  <16.436041, 17.508455, 16.512897>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.641500, 17.506073, 16.636915>,  <16.983934, 17.502102, 16.843611>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.641500, 17.506073, 16.636915> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496089, -0.264653, -0.826955,
		-0.144966, -0.964292, 0.221641,
		-0.856085, 0.009927, -0.516740,
		16.384676, 17.509052, 16.481894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.858135, 16.892128, 16.460606>,  <16.983934, 17.502102, 16.843611>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.858135, 16.892128, 16.460606> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.690357, 17.194687, 16.259836>,  <16.589691, 17.376223, 16.139374>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.690357, 17.194687, 16.259836>,  <16.858135, 16.892128, 16.460606>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.690357, 17.194687, 16.259836> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529545, -0.245216, -0.812066,
		-0.737326, -0.606407, -0.297693,
		-0.419443, 0.756399, -0.501924,
		16.564524, 17.421606, 16.109259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.639874, 17.070566, 16.537899>,  <16.858135, 16.892128, 16.460606>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.639874, 17.070566, 16.537899> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.035618, 17.020828, 16.568108>,  <18.273064, 16.990986, 16.586233>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.035618, 17.020828, 16.568108>,  <17.639874, 17.070566, 16.537899>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.035618, 17.020828, 16.568108> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138872, -0.652468, 0.744983,
		-0.043360, -0.747545, -0.662795,
		0.989361, -0.124347, 0.075522,
		18.332426, 16.983524, 16.590765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.727463, 16.439999, 16.727299>,  <17.639874, 17.070566, 16.537899>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.727463, 16.439999, 16.727299> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.068687, 16.617599, 16.836948>,  <18.273422, 16.724161, 16.902739>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.068687, 16.617599, 16.836948>,  <17.727463, 16.439999, 16.727299>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.068687, 16.617599, 16.836948> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055892, -0.444563, 0.894002,
		0.518806, -0.777962, -0.354424,
		0.853063, 0.444004, 0.274124,
		18.324606, 16.750801, 16.919186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.150265, 15.897805, 16.966295>,  <17.727463, 16.439999, 16.727299>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.150265, 15.897805, 16.966295> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.283800, 16.236341, 17.132311>,  <18.363922, 16.439463, 17.231920>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.283800, 16.236341, 17.132311>,  <18.150265, 15.897805, 16.966295>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.283800, 16.236341, 17.132311> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159559, -0.383209, 0.909776,
		0.929028, -0.369941, 0.007111,
		0.333839, 0.846341, 0.415039,
		18.383951, 16.490244, 17.256823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.505173, 15.670724, 17.650280>,  <18.150265, 15.897805, 16.966295>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.505173, 15.670724, 17.650280> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.430748, 16.062506, 17.681391>,  <18.386093, 16.297575, 17.700058>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.430748, 16.062506, 17.681391>,  <18.505173, 15.670724, 17.650280>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.430748, 16.062506, 17.681391> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226976, -0.119867, 0.966496,
		0.955962, 0.162172, 0.244615,
		-0.186060, 0.979455, 0.077779,
		18.374929, 16.356342, 17.704725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.869551, 15.774244, 18.150194>,  <18.505173, 15.670724, 17.650280>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.869551, 15.774244, 18.150194> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.615963, 16.083448, 18.140905>,  <18.463810, 16.268970, 18.135332>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.615963, 16.083448, 18.140905>,  <18.869551, 15.774244, 18.150194>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.615963, 16.083448, 18.140905> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091912, -0.045498, 0.994727,
		0.767878, 0.632759, 0.099893,
		-0.633968, 0.773011, -0.023221,
		18.425772, 16.315351, 18.133940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.066750, 16.341883, 18.706879>,  <18.869551, 15.774244, 18.150194>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.066750, 16.341883, 18.706879> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.675600, 16.401945, 18.648611>,  <18.440910, 16.437983, 18.613651>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.675600, 16.401945, 18.648611>,  <19.066750, 16.341883, 18.706879>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.675600, 16.401945, 18.648611> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104046, 0.255010, 0.961324,
		0.181495, 0.955208, -0.233744,
		-0.977872, 0.150155, -0.145669,
		18.382238, 16.446991, 18.604910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.914654, 16.903522, 19.144674>,  <19.066750, 16.341883, 18.706879>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.914654, 16.903522, 19.144674> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.562040, 16.739040, 19.051891>,  <18.350471, 16.640350, 18.996222>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.562040, 16.739040, 19.051891>,  <18.914654, 16.903522, 19.144674>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.562040, 16.739040, 19.051891> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294033, 0.093791, 0.951182,
		-0.369378, 0.906703, -0.203589,
		-0.881535, -0.411208, -0.231956,
		18.297579, 16.615679, 18.982304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.345226, 17.281837, 19.456610>,  <18.914654, 16.903522, 19.144674>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.345226, 17.281837, 19.456610> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.185745, 16.923502, 19.378117>,  <18.090055, 16.708500, 19.331020>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.185745, 16.923502, 19.378117>,  <18.345226, 17.281837, 19.456610>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.185745, 16.923502, 19.378117> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301286, -0.074148, 0.950646,
		-0.866176, 0.438149, -0.240341,
		-0.398704, -0.895839, -0.196234,
		18.066133, 16.654751, 19.319246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.629932, 17.347794, 19.773697>,  <18.345226, 17.281837, 19.456610>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.629932, 17.347794, 19.773697> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.681015, 16.955803, 19.712593>,  <17.711664, 16.720608, 19.675930>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.681015, 16.955803, 19.712593>,  <17.629932, 17.347794, 19.773697>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.681015, 16.955803, 19.712593> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423689, -0.193163, 0.884972,
		-0.896760, -0.048295, -0.439874,
		0.127707, -0.979977, -0.152759,
		17.719328, 16.661810, 19.666765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.091368, 17.134478, 20.044958>,  <17.629932, 17.347794, 19.773697>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.091368, 17.134478, 20.044958> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.316816, 16.804195, 20.035677>,  <17.452085, 16.606026, 20.030109>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.316816, 16.804195, 20.035677>,  <17.091368, 17.134478, 20.044958>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.316816, 16.804195, 20.035677> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260742, -0.204492, 0.943503,
		-0.783800, -0.525731, -0.330552,
		0.563623, -0.825706, -0.023201,
		17.485903, 16.556484, 20.028717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.742559, 16.547092, 20.288921>,  <17.091368, 17.134478, 20.044958>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.742559, 16.547092, 20.288921> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.122190, 16.428988, 20.332874>,  <17.349968, 16.358126, 20.359247>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.122190, 16.428988, 20.332874>,  <16.742559, 16.547092, 20.288921>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.122190, 16.428988, 20.332874> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216231, -0.356827, 0.908801,
		-0.229122, -0.886282, -0.402500,
		0.949077, -0.295259, 0.109885,
		17.406914, 16.340408, 20.365839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.628075, 15.881196, 20.511312>,  <16.742559, 16.547092, 20.288921>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.628075, 15.881196, 20.511312> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.993713, 16.017990, 20.598461>,  <17.213097, 16.100067, 20.650751>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.993713, 16.017990, 20.598461>,  <16.628075, 15.881196, 20.511312>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.993713, 16.017990, 20.598461> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092806, -0.346594, 0.933413,
		0.394728, -0.873452, -0.285082,
		0.914099, 0.341986, 0.217872,
		17.267942, 16.120586, 20.663822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.905859, 15.447051, 21.067783>,  <16.628075, 15.881196, 20.511312>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.905859, 15.447051, 21.067783> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.160753, 15.752193, 21.111574>,  <17.313690, 15.935279, 21.137850>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.160753, 15.752193, 21.111574>,  <16.905859, 15.447051, 21.067783>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.160753, 15.752193, 21.111574> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004635, -0.138259, 0.990385,
		0.770657, -0.631614, -0.084567,
		0.637234, 0.762855, 0.109478,
		17.351923, 15.981050, 21.144417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.421795, 15.274022, 21.586721>,  <16.905859, 15.447051, 21.067783>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.421795, 15.274022, 21.586721> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.478760, 15.669648, 21.602051>,  <17.512938, 15.907024, 21.611248>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.478760, 15.669648, 21.602051>,  <17.421795, 15.274022, 21.586721>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.478760, 15.669648, 21.602051> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054005, -0.046424, 0.997461,
		0.988333, -0.139979, -0.060026,
		0.142410, 0.989066, 0.038323,
		17.521482, 15.966368, 21.613548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.004461, 15.404203, 21.924507>,  <17.421795, 15.274022, 21.586721>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.004461, 15.404203, 21.924507> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.812675, 15.750099, 21.984289>,  <17.697603, 15.957637, 22.020159>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.812675, 15.750099, 21.984289>,  <18.004461, 15.404203, 21.924507>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.812675, 15.750099, 21.984289> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097512, -0.221753, 0.970215,
		0.872126, 0.450611, 0.190645,
		-0.479465, 0.864740, 0.149457,
		17.668837, 16.009521, 22.029127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.211012, 15.681970, 22.614597>,  <18.004461, 15.404203, 21.924507>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.211012, 15.681970, 22.614597> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.893839, 15.907872, 22.523113>,  <17.703535, 16.043413, 22.468224>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.893839, 15.907872, 22.523113>,  <18.211012, 15.681970, 22.614597>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.893839, 15.907872, 22.523113> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382328, -0.168901, 0.908459,
		0.474430, 0.807788, 0.349849,
		-0.792932, 0.564757, -0.228708,
		17.655960, 16.077299, 22.454500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.179520, 16.157293, 23.102140>,  <18.211012, 15.681970, 22.614597>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.179520, 16.157293, 23.102140> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.805485, 16.153362, 22.960428>,  <17.581064, 16.151003, 22.875401>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.805485, 16.153362, 22.960428>,  <18.179520, 16.157293, 23.102140>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.805485, 16.153362, 22.960428> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340116, -0.256221, 0.904805,
		-0.099666, 0.966568, 0.236246,
		-0.935087, -0.009827, -0.354282,
		17.524960, 16.150414, 22.854143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.657452, 16.508631, 23.635555>,  <18.179520, 16.157293, 23.102140>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.657452, 16.508631, 23.635555> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.451979, 16.269920, 23.388983>,  <17.328695, 16.126694, 23.241039>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.451979, 16.269920, 23.388983>,  <17.657452, 16.508631, 23.635555>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.451979, 16.269920, 23.388983> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479620, -0.395994, 0.783042,
		-0.711403, 0.697888, -0.082810,
		-0.513683, -0.596776, -0.616432,
		17.297874, 16.090887, 23.204054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<17.001595, 16.638851, 23.895990> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.000751, 16.293707, 23.693813>,  <17.000246, 16.086620, 23.572508>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.000751, 16.293707, 23.693813>,  <17.001595, 16.638851, 23.895990>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.000751, 16.293707, 23.693813> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486869, -0.440605, 0.754205,
		-0.873472, 0.247674, -0.419171,
		-0.002108, -0.862859, -0.505440,
		17.000118, 16.034849, 23.542181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.345461, 16.380676, 24.011463>,  <17.001595, 16.638851, 23.895990>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.345461, 16.380676, 24.011463> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.556791, 16.050228, 23.933081>,  <16.683590, 15.851959, 23.886051>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.556791, 16.050228, 23.933081>,  <16.345461, 16.380676, 24.011463>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.556791, 16.050228, 23.933081> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499336, -0.488989, 0.715229,
		-0.686686, -0.280025, -0.670857,
		0.528323, -0.826121, -0.195956,
		16.715288, 15.802392, 23.874294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.920162, 15.972324, 24.278854>,  <16.345461, 16.380676, 24.011463>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.920162, 15.972324, 24.278854> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.221226, 15.730526, 24.174477>,  <16.401863, 15.585447, 24.111851>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.221226, 15.730526, 24.174477>,  <15.920162, 15.972324, 24.278854>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.221226, 15.730526, 24.174477> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253486, -0.631814, 0.732500,
		-0.607658, -0.485179, -0.628772,
		0.752660, -0.604494, -0.260940,
		16.447023, 15.549177, 24.096193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.597398, 15.336382, 24.155825>,  <15.920162, 15.972324, 24.278854>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.597398, 15.336382, 24.155825> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.980736, 15.284665, 24.257696>,  <16.210739, 15.253634, 24.318819>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.980736, 15.284665, 24.257696>,  <15.597398, 15.336382, 24.155825>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.980736, 15.284665, 24.257696> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279692, -0.605494, 0.745084,
		0.057872, -0.785277, -0.616433,
		0.958344, -0.129292, 0.254677,
		16.268238, 15.245877, 24.334099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.697933, 14.544470, 24.160078>,  <15.597398, 15.336382, 24.155825>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.697933, 14.544470, 24.160078> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.973873, 14.721161, 24.389507>,  <16.139437, 14.827176, 24.527164>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.973873, 14.721161, 24.389507>,  <15.697933, 14.544470, 24.160078>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.973873, 14.721161, 24.389507> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333691, -0.509082, 0.793401,
		0.642463, -0.738723, -0.203789,
		0.689849, 0.441729, 0.573572,
		16.180828, 14.853680, 24.561579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.887944, 13.954949, 24.469351>,  <15.697933, 14.544470, 24.160078>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.887944, 13.954949, 24.469351> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.010393, 14.269205, 24.684408>,  <16.083862, 14.457759, 24.813442>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.010393, 14.269205, 24.684408>,  <15.887944, 13.954949, 24.469351>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.010393, 14.269205, 24.684408> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264091, -0.472509, 0.840828,
		0.914628, -0.399383, 0.062834,
		0.306123, 0.785639, 0.537643,
		16.102230, 14.504897, 24.845701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.296154, 13.670353, 25.047880>,  <15.887944, 13.954949, 24.469351>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.296154, 13.670353, 25.047880> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.186035, 14.031494, 25.179981>,  <16.119965, 14.248178, 25.259243>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.186035, 14.031494, 25.179981>,  <16.296154, 13.670353, 25.047880>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.186035, 14.031494, 25.179981> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255757, -0.399930, 0.880138,
		0.926715, 0.157834, 0.341011,
		-0.275296, 0.902853, 0.330254,
		16.103447, 14.302350, 25.279057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.594191, 13.698814, 25.748060>,  <16.296154, 13.670353, 25.047880>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.594191, 13.698814, 25.748060> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.299713, 13.968324, 25.722616>,  <16.123026, 14.130030, 25.707350>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.299713, 13.968324, 25.722616>,  <16.594191, 13.698814, 25.748060>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.299713, 13.968324, 25.722616> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292876, -0.232449, 0.927465,
		0.610115, 0.701425, 0.368460,
		-0.736195, 0.673773, -0.063610,
		16.078854, 14.170456, 25.703533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.726734, 14.128364, 26.308584>,  <16.594191, 13.698814, 25.748060>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.726734, 14.128364, 26.308584> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.339497, 14.192972, 26.231953>,  <16.107153, 14.231737, 26.185974>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.339497, 14.192972, 26.231953>,  <16.726734, 14.128364, 26.308584>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.339497, 14.192972, 26.231953> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218825, -0.172416, 0.960410,
		0.122095, 0.971691, 0.202260,
		-0.968095, 0.161521, -0.191579,
		16.049068, 14.241428, 26.174479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.505535, 14.660446, 26.648466>,  <16.726734, 14.128364, 26.308584>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.505535, 14.660446, 26.648466> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.177355, 14.438631, 26.592834>,  <15.980446, 14.305542, 26.559456>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.177355, 14.438631, 26.592834>,  <16.505535, 14.660446, 26.648466>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.177355, 14.438631, 26.592834> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146377, -0.031411, 0.988730,
		-0.552658, 0.831565, -0.055401,
		-0.820453, -0.554539, -0.139081,
		15.931219, 14.272269, 26.551109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.001665, 14.838922, 27.129635>,  <16.505535, 14.660446, 26.648466>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.001665, 14.838922, 27.129635> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.847775, 14.488591, 27.013073>,  <15.755441, 14.278393, 26.943136>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.847775, 14.488591, 27.013073>,  <16.001665, 14.838922, 27.129635>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.847775, 14.488591, 27.013073> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273662, -0.193278, 0.942206,
		-0.881530, 0.442238, -0.165321,
		-0.384726, -0.875825, -0.291404,
		15.732357, 14.225843, 26.925652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.383055, 14.787320, 27.473639>,  <16.001665, 14.838922, 27.129635>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.383055, 14.787320, 27.473639> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.436566, 14.401195, 27.383951>,  <15.468673, 14.169519, 27.330139>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.436566, 14.401195, 27.383951>,  <15.383055, 14.787320, 27.473639>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.436566, 14.401195, 27.383951> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353203, -0.257837, 0.899315,
		-0.925933, -0.041114, -0.375444,
		0.133778, -0.965313, -0.224218,
		15.476700, 14.111601, 27.316687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.820373, 14.483684, 27.793871>,  <15.383055, 14.787320, 27.473639>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.820373, 14.483684, 27.793871> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.040166, 14.162836, 27.700338>,  <15.172042, 13.970327, 27.644218>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.040166, 14.162836, 27.700338>,  <14.820373, 14.483684, 27.793871>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.040166, 14.162836, 27.700338> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379742, -0.489052, 0.785254,
		-0.744222, -0.342688, -0.573323,
		0.549482, -0.802118, -0.233830,
		15.205010, 13.922201, 27.630190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.400576, 13.805590, 27.759398>,  <14.820373, 14.483684, 27.793871>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.400576, 13.805590, 27.759398> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.780890, 13.693775, 27.812855>,  <15.009080, 13.626686, 27.844929>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.780890, 13.693775, 27.812855>,  <14.400576, 13.805590, 27.759398>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.780890, 13.693775, 27.812855> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286670, -0.629972, 0.721772,
		-0.117569, -0.724565, -0.679105,
		0.950788, -0.279537, 0.133646,
		15.066127, 13.609914, 27.852949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.345989, 13.054314, 27.851479>,  <14.400576, 13.805590, 27.759398>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.345989, 13.054314, 27.851479> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.697323, 13.168016, 28.005220>,  <14.908123, 13.236238, 28.097466>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.697323, 13.168016, 28.005220>,  <14.345989, 13.054314, 27.851479>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.697323, 13.168016, 28.005220> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197487, -0.516436, 0.833243,
		0.435350, -0.807769, -0.397465,
		0.878333, 0.284258, 0.384354,
		14.960823, 13.253294, 28.120527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.725230, 12.418736, 28.071115>,  <14.345989, 13.054314, 27.851479>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.725230, 12.418736, 28.071115> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.889650, 12.711056, 28.289095>,  <14.988302, 12.886448, 28.419882>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.889650, 12.711056, 28.289095>,  <14.725230, 12.418736, 28.071115>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.889650, 12.711056, 28.289095> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059509, -0.618019, 0.783908,
		0.909668, -0.289797, -0.297526,
		0.411050, 0.730801, 0.544946,
		15.012965, 12.930296, 28.452579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.146177, 12.092928, 28.497126>,  <14.725230, 12.418736, 28.071115>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.146177, 12.092928, 28.497126> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.094510, 12.445357, 28.679125>,  <15.063510, 12.656816, 28.788324>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.094510, 12.445357, 28.679125>,  <15.146177, 12.092928, 28.497126>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.094510, 12.445357, 28.679125> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074325, -0.448950, 0.890460,
		0.988833, 0.148836, -0.007497,
		-0.129167, 0.881074, 0.454999,
		15.055760, 12.709680, 28.815624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.613990, 12.094698, 29.039360>,  <15.146177, 12.092928, 28.497126>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.613990, 12.094698, 29.039360> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.364395, 12.390487, 29.140413>,  <15.214639, 12.567960, 29.201044>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.364395, 12.390487, 29.140413>,  <15.613990, 12.094698, 29.039360>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.364395, 12.390487, 29.140413> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139643, -0.212568, 0.967117,
		0.768857, 0.638745, 0.029378,
		-0.623986, 0.739473, 0.252631,
		15.177199, 12.612329, 29.216202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.909297, 12.391760, 29.654047>,  <15.613990, 12.094698, 29.039360>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.909297, 12.391760, 29.654047> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.523999, 12.499198, 29.655634>,  <15.292821, 12.563661, 29.656586>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.523999, 12.499198, 29.655634>,  <15.909297, 12.391760, 29.654047>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.523999, 12.499198, 29.655634> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051785, -0.200170, 0.978392,
		0.263587, 0.942225, 0.206722,
		-0.963245, 0.268596, 0.003969,
		15.235025, 12.579777, 29.656824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.939456, 12.873361, 30.137522>,  <15.909297, 12.391760, 29.654047>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.939456, 12.873361, 30.137522> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.561213, 12.747996, 30.102659>,  <15.334267, 12.672777, 30.081741>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.561213, 12.747996, 30.102659>,  <15.939456, 12.873361, 30.137522>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.561213, 12.747996, 30.102659> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117840, 0.080286, 0.989782,
		-0.303212, 0.946217, -0.112851,
		-0.945609, -0.313412, -0.087158,
		15.277530, 12.653973, 30.076511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.468552, 13.415369, 30.557251>,  <15.939456, 12.873361, 30.137522>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.468552, 13.415369, 30.557251> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.271532, 13.071558, 30.502687>,  <15.153320, 12.865272, 30.469950>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.271532, 13.071558, 30.502687>,  <15.468552, 13.415369, 30.557251>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.271532, 13.071558, 30.502687> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209910, -0.034781, 0.977102,
		-0.844591, 0.509903, -0.163292,
		-0.492548, -0.859528, -0.136409,
		15.123768, 12.813700, 30.461765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.891684, 13.486374, 30.982252>,  <15.468552, 13.415369, 30.557251>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.891684, 13.486374, 30.982252> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.916903, 13.091931, 30.920776>,  <14.932034, 12.855266, 30.883890>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.916903, 13.091931, 30.920776>,  <14.891684, 13.486374, 30.982252>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.916903, 13.091931, 30.920776> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041836, -0.156473, 0.986796,
		-0.997133, -0.055785, -0.051120,
		0.063048, -0.986106, -0.153691,
		14.935817, 12.796100, 30.874668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.228992, 13.212999, 31.231256>,  <14.891684, 13.486374, 30.982252>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.228992, 13.212999, 31.231256> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.523902, 12.942937, 31.221518>,  <14.700848, 12.780899, 31.215673>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.523902, 12.942937, 31.221518>,  <14.228992, 13.212999, 31.231256>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.523902, 12.942937, 31.221518> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166397, -0.216401, 0.962020,
		-0.654784, -0.705219, -0.271891,
		0.737272, -0.675157, -0.024349,
		14.745084, 12.740390, 31.214212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.677318, 13.697556, 31.074165>,  <14.228992, 13.212999, 31.231256>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.677318, 13.697556, 31.074165> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.323604, 13.566985, 31.207724>,  <13.111376, 13.488643, 31.287859>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.323604, 13.566985, 31.207724>,  <13.677318, 13.697556, 31.074165>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.323604, 13.566985, 31.207724> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443121, 0.361122, -0.820509,
		0.147258, -0.873520, -0.463981,
		-0.884284, -0.326426, 0.333897,
		13.058318, 13.469057, 31.307892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.352749, 13.235180, 30.565262>,  <13.677318, 13.697556, 31.074165>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.352749, 13.235180, 30.565262> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.125983, 13.483249, 30.782146>,  <12.989924, 13.632091, 30.912277>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.125983, 13.483249, 30.782146>,  <13.352749, 13.235180, 30.565262>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.125983, 13.483249, 30.782146> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563670, 0.187958, -0.804331,
		-0.600737, -0.761615, 0.243017,
		-0.566913, 0.620173, 0.542213,
		12.955909, 13.669301, 30.944811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.760085, 13.026951, 30.473059>,  <13.352749, 13.235180, 30.565262>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.760085, 13.026951, 30.473059> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.716398, 13.406742, 30.590746>,  <12.690187, 13.634617, 30.661358>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.716398, 13.406742, 30.590746>,  <12.760085, 13.026951, 30.473059>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.716398, 13.406742, 30.590746> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492749, 0.205348, -0.845595,
		-0.863290, -0.237330, 0.445426,
		-0.109217, 0.949477, 0.294219,
		12.683633, 13.691586, 30.679012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.095860, 13.249845, 30.393156>,  <12.760085, 13.026951, 30.473059>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.095860, 13.249845, 30.393156> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.258408, 13.614896, 30.410915>,  <12.355937, 13.833927, 30.421570>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.258408, 13.614896, 30.410915>,  <12.095860, 13.249845, 30.393156>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.258408, 13.614896, 30.410915> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342607, 0.197239, -0.918541,
		-0.847044, 0.358057, 0.392825,
		0.406371, 0.912629, 0.044397,
		12.380319, 13.888684, 30.424234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.655643, 13.647391, 30.036665>,  <12.095860, 13.249845, 30.393156>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.655643, 13.647391, 30.036665> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.953483, 13.913187, 30.062048>,  <12.132187, 14.072664, 30.077278>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.953483, 13.913187, 30.062048>,  <11.655643, 13.647391, 30.036665>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.953483, 13.913187, 30.062048> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116708, 0.223199, -0.967761,
		-0.657230, 0.713188, 0.243745,
		0.744599, 0.664489, 0.063459,
		12.176863, 14.112534, 30.081085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.493372, 14.221654, 29.651628>,  <11.655643, 13.647391, 30.036665>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.493372, 14.221654, 29.651628> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.882406, 14.306222, 29.690365>,  <12.115827, 14.356963, 29.713608>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.882406, 14.306222, 29.690365>,  <11.493372, 14.221654, 29.651628>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.882406, 14.306222, 29.690365> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013669, 0.363750, -0.931396,
		-0.232142, 0.907187, 0.350888,
		0.972586, 0.211420, 0.096842,
		12.174182, 14.369648, 29.719418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.571145, 14.922716, 29.486834>,  <11.493372, 14.221654, 29.651628>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.571145, 14.922716, 29.486834> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.919641, 14.736434, 29.424788>,  <12.128737, 14.624664, 29.387560>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.919641, 14.736434, 29.424788>,  <11.571145, 14.922716, 29.486834>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.919641, 14.736434, 29.424788> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020778, 0.280736, -0.959560,
		0.490419, 0.839229, 0.234912,
		0.871239, -0.465706, -0.155116,
		12.181012, 14.596723, 29.378252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.952785, 15.423378, 29.224785>,  <11.571145, 14.922716, 29.486834>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.952785, 15.423378, 29.224785> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.170106, 15.109422, 29.105606>,  <12.300498, 14.921048, 29.034100>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.170106, 15.109422, 29.105606>,  <11.952785, 15.423378, 29.224785>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.170106, 15.109422, 29.105606> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119928, 0.423813, -0.897775,
		0.830928, 0.452029, 0.324388,
		0.543300, -0.784890, -0.297947,
		12.333096, 14.873955, 29.016222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.435473, 15.680853, 28.715057>,  <11.952785, 15.423378, 29.224785>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.435473, 15.680853, 28.715057> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.468717, 15.289621, 28.638683>,  <12.488663, 15.054883, 28.592859>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.468717, 15.289621, 28.638683>,  <12.435473, 15.680853, 28.715057>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.468717, 15.289621, 28.638683> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085960, 0.197920, -0.976442,
		0.992826, 0.064738, 0.100524,
		0.083109, -0.978078, -0.190935,
		12.493649, 14.996198, 28.581402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.043366, 15.563987, 28.352730>,  <12.435473, 15.680853, 28.715057>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.043366, 15.563987, 28.352730> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.826127, 15.243912, 28.250952>,  <12.695784, 15.051867, 28.189884>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.826127, 15.243912, 28.250952>,  <13.043366, 15.563987, 28.352730>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.826127, 15.243912, 28.250952> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209039, 0.164643, -0.963948,
		0.813233, -0.576707, 0.077853,
		-0.543098, -0.800188, -0.254447,
		12.663198, 15.003856, 28.174618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.388705, 15.248567, 27.833195>,  <13.043366, 15.563987, 28.352730>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.388705, 15.248567, 27.833195> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.029028, 15.078432, 27.792131>,  <12.813221, 14.976351, 27.767494>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.029028, 15.078432, 27.792131>,  <13.388705, 15.248567, 27.833195>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.029028, 15.078432, 27.792131> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132151, -0.040339, -0.990409,
		0.417117, -0.904135, 0.092481,
		-0.899194, -0.425337, -0.102656,
		12.759270, 14.950831, 27.761335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.525866, 14.712669, 27.417105>,  <13.388705, 15.248567, 27.833195>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.525866, 14.712669, 27.417105> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.139987, 14.806580, 27.369371>,  <12.908460, 14.862926, 27.340731>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.139987, 14.806580, 27.369371>,  <13.525866, 14.712669, 27.417105>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.139987, 14.806580, 27.369371> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124550, 0.007456, -0.992185,
		-0.232052, -0.972021, -0.036435,
		-0.964696, 0.234776, -0.119335,
		12.850578, 14.877012, 27.333570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.258969, 14.220411, 26.938585>,  <13.525866, 14.712669, 27.417105>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.258969, 14.220411, 26.938585> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.046772, 14.559445, 26.943903>,  <12.919454, 14.762866, 26.947094>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.046772, 14.559445, 26.943903>,  <13.258969, 14.220411, 26.938585>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.046772, 14.559445, 26.943903> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104838, 0.081163, -0.991172,
		-0.841182, -0.524415, -0.131916,
		-0.530492, 0.847586, 0.013294,
		12.887625, 14.813721, 26.947891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.020423, 14.156534, 26.261164>,  <13.258969, 14.220411, 26.938585>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.020423, 14.156534, 26.261164> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.948803, 14.538363, 26.356436>,  <12.905831, 14.767461, 26.413599>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.948803, 14.538363, 26.356436>,  <13.020423, 14.156534, 26.261164>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.948803, 14.538363, 26.356436> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096705, 0.257998, -0.961293,
		-0.979076, -0.149086, -0.138507,
		-0.179049, 0.954574, 0.238182,
		12.895088, 14.824736, 26.427891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.564557, 14.460170, 25.720390>,  <13.020423, 14.156534, 26.261164>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.564557, 14.460170, 25.720390> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.766018, 14.760752, 25.890871>,  <12.886894, 14.941101, 25.993160>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.766018, 14.760752, 25.890871>,  <12.564557, 14.460170, 25.720390>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.766018, 14.760752, 25.890871> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323475, 0.293418, -0.899594,
		-0.801061, 0.590949, -0.095296,
		0.503652, 0.751455, 0.426203,
		12.917113, 14.986188, 26.018732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.553901, 15.059759, 25.184948>,  <12.564557, 14.460170, 25.720390>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.553901, 15.059759, 25.184948> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.851830, 15.153533, 25.434835>,  <13.030588, 15.209798, 25.584768>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.851830, 15.153533, 25.434835>,  <12.553901, 15.059759, 25.184948>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.851830, 15.153533, 25.434835> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507997, 0.407817, -0.758699,
		-0.432638, 0.882454, 0.184660,
		0.744825, 0.234435, 0.624721,
		13.075278, 15.223864, 25.622252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.715736, 15.761706, 24.997637>,  <12.553901, 15.059759, 25.184948>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.715736, 15.761706, 24.997637> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.044250, 15.632429, 25.185696>,  <13.241359, 15.554863, 25.298531>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.044250, 15.632429, 25.185696>,  <12.715736, 15.761706, 24.997637>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.044250, 15.632429, 25.185696> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563759, 0.333264, -0.755718,
		0.087560, 0.885710, 0.455908,
		0.821285, -0.323193, 0.470146,
		13.290636, 15.535471, 25.326740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.163496, 16.361027, 24.966612>,  <12.715736, 15.761706, 24.997637>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.163496, 16.361027, 24.966612> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.418253, 16.057461, 25.020899>,  <13.571107, 15.875321, 25.053471>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.418253, 16.057461, 25.020899>,  <13.163496, 16.361027, 24.966612>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.418253, 16.057461, 25.020899> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502008, 0.274631, -0.820101,
		0.585113, 0.590448, 0.555891,
		0.636891, -0.758914, 0.135720,
		13.609321, 15.829786, 25.061615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.839023, 16.654995, 24.990070>,  <13.163496, 16.361027, 24.966612>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.839023, 16.654995, 24.990070> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.866323, 16.268394, 24.891100>,  <13.882703, 16.036434, 24.831718>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.866323, 16.268394, 24.891100>,  <13.839023, 16.654995, 24.990070>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.866323, 16.268394, 24.891100> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545651, 0.243785, -0.801769,
		0.835229, -0.080286, 0.544010,
		0.068251, -0.966500, -0.247424,
		13.886798, 15.978444, 24.816874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.499179, 16.535320, 24.818617>,  <13.839023, 16.654995, 24.990070>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.499179, 16.535320, 24.818617> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.306791, 16.246981, 24.618999>,  <14.191359, 16.073977, 24.499229>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.306791, 16.246981, 24.618999>,  <14.499179, 16.535320, 24.818617>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.306791, 16.246981, 24.618999> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547388, 0.197735, -0.813184,
		0.684862, -0.664286, 0.299480,
		-0.480969, -0.720850, -0.499043,
		14.162500, 16.030725, 24.469286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.892599, 16.367393, 24.313829>,  <14.499179, 16.535320, 24.818617>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.892599, 16.367393, 24.313829> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.592074, 16.160337, 24.150084>,  <14.411759, 16.036104, 24.051836>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.592074, 16.160337, 24.150084>,  <14.892599, 16.367393, 24.313829>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.592074, 16.160337, 24.150084> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340444, 0.227389, -0.912355,
		0.565359, -0.824828, 0.005389,
		-0.751310, -0.517642, -0.409364,
		14.366681, 16.005045, 24.027275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<26.919123, 26.785511, 8.645181> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.126463, 26.786434, 8.303114>,  <27.250866, 26.786989, 8.097874>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.126463, 26.786434, 8.303114>,  <26.919123, 26.785511, 8.645181>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.126463, 26.786434, 8.303114> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384833, -0.892391, -0.235673,
		-0.763687, 0.451257, -0.461681,
		0.518349, 0.002310, -0.855166,
		27.281967, 26.787127, 8.046564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.260172, 27.015230, 9.021745>,  <26.919123, 26.785511, 8.645181>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.260172, 27.015230, 9.021745> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.872133, 26.930178, 8.974918>,  <25.639311, 26.879147, 8.946822>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.872133, 26.930178, 8.974918>,  <26.260172, 27.015230, 9.021745>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.872133, 26.930178, 8.974918> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090179, -0.132051, 0.987132,
		-0.225353, 0.968169, 0.108928,
		-0.970095, -0.212630, -0.117067,
		25.581104, 26.866388, 8.939798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.917828, 27.580301, 9.472848>,  <26.260172, 27.015230, 9.021745>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.917828, 27.580301, 9.472848> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.731390, 27.229736, 9.424417>,  <25.619528, 27.019398, 9.395359>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.731390, 27.229736, 9.424417>,  <25.917828, 27.580301, 9.472848>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.731390, 27.229736, 9.424417> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117382, -0.074383, 0.990297,
		-0.876914, 0.475782, -0.068205,
		-0.466093, -0.876412, -0.121075,
		25.591562, 26.966812, 9.388095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.272982, 27.598810, 9.725963>,  <25.917828, 27.580301, 9.472848>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.272982, 27.598810, 9.725963> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.382679, 27.215931, 9.762971>,  <25.448498, 26.986202, 9.785176>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.382679, 27.215931, 9.762971>,  <25.272982, 27.598810, 9.725963>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.382679, 27.215931, 9.762971> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176665, 0.044425, 0.983268,
		-0.945294, -0.285999, -0.156921,
		0.274243, -0.957199, 0.092521,
		25.464952, 26.928772, 9.790728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.867172, 27.148441, 10.189176>,  <25.272982, 27.598810, 9.725963>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.867172, 27.148441, 10.189176> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.228508, 26.979387, 10.159900>,  <25.445311, 26.877954, 10.142334>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.228508, 26.979387, 10.159900>,  <24.867172, 27.148441, 10.189176>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.228508, 26.979387, 10.159900> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020619, -0.213226, 0.976785,
		-0.428428, -0.880861, -0.201330,
		0.903340, -0.422634, -0.073190,
		25.499510, 26.852596, 10.137942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.824024, 26.579811, 10.561105>,  <24.867172, 27.148441, 10.189176>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.824024, 26.579811, 10.561105> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.212881, 26.662457, 10.516838>,  <25.446196, 26.712044, 10.490278>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.212881, 26.662457, 10.516838>,  <24.824024, 26.579811, 10.561105>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.212881, 26.662457, 10.516838> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136597, -0.115735, 0.983843,
		0.190468, -0.971553, -0.140734,
		0.972144, 0.206615, -0.110668,
		25.504524, 26.724442, 10.483638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.198048, 26.742502, 10.813005>,  <24.824024, 26.579811, 10.561105>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.198048, 26.742502, 10.813005> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.169342, 26.442476, 10.550022>,  <24.152119, 26.262461, 10.392232>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.169342, 26.442476, 10.550022>,  <24.198048, 26.742502, 10.813005>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.169342, 26.442476, 10.550022> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211321, -0.632761, 0.744955,
		-0.974779, 0.192396, -0.113095,
		-0.071764, -0.750065, -0.657459,
		24.147812, 26.217457, 10.352784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.461943, 26.386906, 10.786590>,  <24.198048, 26.742502, 10.813005>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.461943, 26.386906, 10.786590> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.762142, 26.129253, 10.727468>,  <23.942263, 25.974661, 10.691994>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.762142, 26.129253, 10.727468>,  <23.461943, 26.386906, 10.786590>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.762142, 26.129253, 10.727468> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456069, -0.666661, 0.589546,
		-0.478281, -0.375044, -0.794096,
		0.750499, -0.644131, -0.147805,
		23.987291, 25.936014, 10.683125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.135532, 25.679167, 10.493523>,  <23.461943, 26.386906, 10.786590>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.135532, 25.679167, 10.493523> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.471087, 25.618671, 10.702673>,  <23.672419, 25.582375, 10.828163>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.471087, 25.618671, 10.702673>,  <23.135532, 25.679167, 10.493523>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.471087, 25.618671, 10.702673> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448974, -0.735352, 0.507621,
		0.307727, -0.660594, -0.684777,
		0.838884, -0.151239, 0.522877,
		23.722752, 25.573299, 10.859536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.291132, 24.995188, 10.404885>,  <23.135532, 25.679167, 10.493523>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.291132, 24.995188, 10.404885> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.473316, 25.110901, 10.741663>,  <23.582626, 25.180328, 10.943729>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.473316, 25.110901, 10.741663>,  <23.291132, 24.995188, 10.404885>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.473316, 25.110901, 10.741663> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336402, -0.819690, 0.463618,
		0.824252, -0.494391, -0.276020,
		0.455459, 0.289285, 0.841945,
		23.609955, 25.197687, 10.994246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.551558, 24.325296, 10.661090>,  <23.291132, 24.995188, 10.404885>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.551558, 24.325296, 10.661090> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.557709, 24.563604, 10.982293>,  <23.561399, 24.706589, 11.175014>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.557709, 24.563604, 10.982293>,  <23.551558, 24.325296, 10.661090>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.557709, 24.563604, 10.982293> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107524, -0.797460, 0.593714,
		0.994084, -0.095473, 0.051796,
		0.015378, 0.595771, 0.803007,
		23.562323, 24.742336, 11.223195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.998442, 24.011175, 11.129580>,  <23.551558, 24.325296, 10.661090>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.998442, 24.011175, 11.129580> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.772982, 24.257437, 11.349858>,  <23.637705, 24.405193, 11.482025>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.772982, 24.257437, 11.349858>,  <23.998442, 24.011175, 11.129580>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.772982, 24.257437, 11.349858> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036413, -0.684563, 0.728043,
		0.825211, 0.390309, 0.408272,
		-0.563649, 0.615656, 0.550697,
		23.603888, 24.442133, 11.515067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.259642, 24.028427, 11.900318>,  <23.998442, 24.011175, 11.129580>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.259642, 24.028427, 11.900318> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.876745, 24.140827, 11.872803>,  <23.647007, 24.208267, 11.856294>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.876745, 24.140827, 11.872803>,  <24.259642, 24.028427, 11.900318>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.876745, 24.140827, 11.872803> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208582, -0.505606, 0.837172,
		0.200465, 0.815722, 0.542597,
		-0.957239, 0.281000, -0.068789,
		23.589573, 24.225126, 11.852166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.085390, 24.005136, 12.551897>,  <24.259642, 24.028427, 11.900318>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.085390, 24.005136, 12.551897> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.713634, 24.070126, 12.419331>,  <23.490582, 24.109119, 12.339791>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.713634, 24.070126, 12.419331>,  <24.085390, 24.005136, 12.551897>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.713634, 24.070126, 12.419331> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358729, -0.608946, 0.707458,
		-0.086872, 0.776394, 0.624233,
		-0.929390, 0.162472, -0.331415,
		23.434818, 24.118868, 12.319906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.680428, 24.146641, 13.193304>,  <24.085390, 24.005136, 12.551897>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.680428, 24.146641, 13.193304> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.455036, 24.015751, 12.889878>,  <23.319801, 23.937218, 12.707823>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.455036, 24.015751, 12.889878>,  <23.680428, 24.146641, 13.193304>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.455036, 24.015751, 12.889878> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254395, -0.804866, 0.536166,
		-0.785987, 0.495093, 0.370280,
		-0.563477, -0.327222, -0.758564,
		23.285994, 23.917583, 12.662310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.931831, 24.014635, 13.463231>,  <23.680428, 24.146641, 13.193304>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.931831, 24.014635, 13.463231> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.000423, 23.801353, 13.131861>,  <23.041578, 23.673386, 12.933039>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.000423, 23.801353, 13.131861>,  <22.931831, 24.014635, 13.463231>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.000423, 23.801353, 13.131861> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507231, -0.768651, 0.389734,
		-0.844577, 0.353372, -0.402265,
		0.171480, -0.533202, -0.828426,
		23.051867, 23.641394, 12.883333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.452217, 23.449615, 13.498554>,  <22.931831, 24.014635, 13.463231>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.452217, 23.449615, 13.498554> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.669868, 23.320845, 13.188642>,  <22.800459, 23.243582, 13.002694>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.669868, 23.320845, 13.188642>,  <22.452217, 23.449615, 13.498554>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.669868, 23.320845, 13.188642> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399976, -0.911298, 0.097747,
		-0.737525, 0.256707, -0.624627,
		0.544129, -0.321927, -0.774782,
		22.833107, 23.224266, 12.956207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.997372, 23.187334, 12.984263>,  <22.452217, 23.449615, 13.498554>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.997372, 23.187334, 12.984263> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.343462, 22.988516, 12.957948>,  <22.551117, 22.869225, 12.942159>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.343462, 22.988516, 12.957948>,  <21.997372, 23.187334, 12.984263>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.343462, 22.988516, 12.957948> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499325, -0.866098, -0.023423,
		-0.045338, 0.053116, -0.997559,
		0.865228, -0.497044, -0.065789,
		22.603031, 22.839403, 12.938210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.861423, 22.590931, 12.620222>,  <21.997372, 23.187334, 12.984263>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.861423, 22.590931, 12.620222> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.222952, 22.499678, 12.765034>,  <22.439869, 22.444925, 12.851920>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.222952, 22.499678, 12.765034>,  <21.861423, 22.590931, 12.620222>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.222952, 22.499678, 12.765034> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219809, -0.973400, -0.064626,
		0.367142, -0.021166, -0.929924,
		0.903820, -0.228133, 0.362028,
		22.494099, 22.431238, 12.873642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.120392, 22.007402, 12.200776>,  <21.861423, 22.590931, 12.620222>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.120392, 22.007402, 12.200776> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.314201, 22.020258, 12.550451>,  <22.430487, 22.027971, 12.760257>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.314201, 22.020258, 12.550451>,  <22.120392, 22.007402, 12.200776>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.314201, 22.020258, 12.550451> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124379, -0.991703, -0.032478,
		0.865891, 0.124467, -0.484500,
		0.484523, 0.032139, 0.874188,
		22.459558, 22.029900, 12.812708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.561083, 21.433458, 12.176586>,  <22.120392, 22.007402, 12.200776>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.561083, 21.433458, 12.176586> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.559689, 21.504980, 12.570138>,  <22.558851, 21.547894, 12.806269>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.559689, 21.504980, 12.570138>,  <22.561083, 21.433458, 12.176586>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.559689, 21.504980, 12.570138> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097732, -0.979235, 0.177614,
		0.995207, -0.095537, 0.020889,
		-0.003486, 0.178804, 0.983879,
		22.558643, 21.558620, 12.865301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.180454, 21.043522, 12.577264>,  <22.561083, 21.433458, 12.176586>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.180454, 21.043522, 12.577264> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.899643, 21.099268, 12.856615>,  <22.731155, 21.132715, 13.024225>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.899643, 21.099268, 12.856615>,  <23.180454, 21.043522, 12.577264>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.899643, 21.099268, 12.856615> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098450, -0.990241, 0.098644,
		0.705310, 0.000495, 0.708899,
		-0.702030, 0.139366, 0.698378,
		22.689034, 21.141077, 13.066129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.318714, 20.682981, 13.140247>,  <23.180454, 21.043522, 12.577264>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.318714, 20.682981, 13.140247> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.923021, 20.731653, 13.172772>,  <22.685606, 20.760857, 13.192287>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.923021, 20.731653, 13.172772>,  <23.318714, 20.682981, 13.140247>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.923021, 20.731653, 13.172772> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116203, -0.990826, 0.068992,
		0.088960, 0.058800, 0.994298,
		-0.989233, 0.121678, 0.081312,
		22.626251, 20.768156, 13.197165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.114300, 20.389709, 13.746932>,  <23.318714, 20.682981, 13.140247>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.114300, 20.389709, 13.746932> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.771496, 20.394331, 13.540863>,  <22.565813, 20.397104, 13.417222>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.771496, 20.394331, 13.540863>,  <23.114300, 20.389709, 13.746932>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.771496, 20.394331, 13.540863> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136612, -0.969070, 0.205525,
		-0.496863, 0.246516, 0.832080,
		-0.857009, 0.011554, -0.515172,
		22.514393, 20.397797, 13.386312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.682842, 19.959763, 14.154945>,  <23.114300, 20.389709, 13.746932>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.682842, 19.959763, 14.154945> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.472372, 20.006851, 13.818070>,  <22.346090, 20.035105, 13.615945>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.472372, 20.006851, 13.818070>,  <22.682842, 19.959763, 14.154945>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.472372, 20.006851, 13.818070> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312938, -0.947679, 0.063047,
		-0.790702, 0.296727, 0.535485,
		-0.526175, 0.117723, -0.842188,
		22.314520, 20.042168, 13.565414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.175013, 19.686878, 14.298696>,  <22.682842, 19.959763, 14.154945>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.175013, 19.686878, 14.298696> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.144028, 19.670135, 13.900249>,  <22.125437, 19.660089, 13.661181>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.144028, 19.670135, 13.900249>,  <22.175013, 19.686878, 14.298696>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.144028, 19.670135, 13.900249> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426860, -0.901520, 0.071078,
		-0.900994, 0.430708, 0.051966,
		-0.077463, -0.041859, -0.996116,
		22.120789, 19.657578, 13.601415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.543074, 19.463549, 14.067986>,  <22.175013, 19.686878, 14.298696>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.543074, 19.463549, 14.067986> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.777328, 19.358793, 13.761146>,  <21.917881, 19.295940, 13.577041>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.777328, 19.358793, 13.761146>,  <21.543074, 19.463549, 14.067986>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.777328, 19.358793, 13.761146> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451107, -0.891573, -0.040008,
		-0.673449, 0.369475, -0.640277,
		0.585635, -0.261890, -0.767102,
		21.953018, 19.280226, 13.531015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.165470, 19.049828, 13.698290>,  <21.543074, 19.463549, 14.067986>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.165470, 19.049828, 13.698290> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.516296, 18.947130, 13.535890>,  <21.726793, 18.885511, 13.438450>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.516296, 18.947130, 13.535890>,  <21.165470, 19.049828, 13.698290>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.516296, 18.947130, 13.535890> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358395, -0.912508, -0.197185,
		-0.319852, 0.318453, -0.892347,
		0.877068, -0.256742, -0.405999,
		21.779417, 18.870108, 13.414090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.083260, 18.818693, 12.905890>,  <21.165470, 19.049828, 13.698290>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.083260, 18.818693, 12.905890> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.417334, 18.663153, 13.061459>,  <21.617779, 18.569828, 13.154799>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.417334, 18.663153, 13.061459>,  <21.083260, 18.818693, 12.905890>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.417334, 18.663153, 13.061459> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225320, -0.887027, -0.403007,
		0.501691, 0.248955, -0.828449,
		0.835187, -0.388851, 0.388919,
		21.667891, 18.546497, 13.178134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.202448, 18.278069, 12.498893>,  <21.083260, 18.818693, 12.905890>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.202448, 18.278069, 12.498893> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.466267, 18.215366, 12.792948>,  <21.624557, 18.177746, 12.969380>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.466267, 18.215366, 12.792948>,  <21.202448, 18.278069, 12.498893>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.466267, 18.215366, 12.792948> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091668, -0.987487, -0.128321,
		0.746054, 0.017245, -0.665663,
		0.659546, -0.156755, 0.735137,
		21.664131, 18.168341, 13.013489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.701105, 17.755993, 12.314590>,  <21.202448, 18.278069, 12.498893>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.701105, 17.755993, 12.314590> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.751041, 17.769184, 12.711242>,  <21.781002, 17.777098, 12.949233>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.751041, 17.769184, 12.711242>,  <21.701105, 17.755993, 12.314590>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.751041, 17.769184, 12.711242> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112777, -0.993442, 0.018840,
		0.985747, 0.109481, -0.127739,
		0.124839, 0.032977, 0.991629,
		21.788494, 17.779078, 13.008730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.440168, 17.459604, 12.510422>,  <21.701105, 17.755993, 12.314590>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.440168, 17.459604, 12.510422> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.192287, 17.398115, 12.818275>,  <22.043558, 17.361221, 13.002988>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.192287, 17.398115, 12.818275>,  <22.440168, 17.459604, 12.510422>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.192287, 17.398115, 12.818275> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238307, -0.971188, -0.002098,
		0.747781, 0.182109, 0.638483,
		-0.619705, -0.153723, 0.769633,
		22.006376, 17.351997, 13.049166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.890060, 17.288609, 13.095281>,  <22.440168, 17.459604, 12.510422>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.890060, 17.288609, 13.095281> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.515440, 17.148661, 13.103873>,  <22.290668, 17.064692, 13.109029>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.515440, 17.148661, 13.103873>,  <22.890060, 17.288609, 13.095281>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.515440, 17.148661, 13.103873> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350523, -0.935155, 0.051171,
		0.002185, 0.055454, 0.998459,
		-0.936552, -0.349871, 0.021481,
		22.234474, 17.043699, 13.110317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.039070, 16.922684, 13.653641>,  <22.890060, 17.288609, 13.095281>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.039070, 16.922684, 13.653641> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.315348, 16.739004, 13.430185>,  <23.481113, 16.628796, 13.296112>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.315348, 16.739004, 13.430185>,  <23.039070, 16.922684, 13.653641>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.315348, 16.739004, 13.430185> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420954, 0.883445, -0.205726,
		0.587996, -0.093068, 0.803491,
		0.690694, -0.459199, -0.558640,
		23.522556, 16.601244, 13.262593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.476702, 17.378794, 13.784442>,  <23.039070, 16.922684, 13.653641>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.476702, 17.378794, 13.784442> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.640684, 17.163139, 13.490158>,  <23.739073, 17.033747, 13.313587>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.640684, 17.163139, 13.490158>,  <23.476702, 17.378794, 13.784442>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.640684, 17.163139, 13.490158> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704480, 0.699497, -0.120047,
		0.579349, -0.469079, 0.666573,
		0.409954, -0.539137, -0.735710,
		23.763670, 17.001398, 13.269445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.065178, 17.377651, 13.978617>,  <23.476702, 17.378794, 13.784442>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.065178, 17.377651, 13.978617> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.100142, 17.298357, 13.588118>,  <24.121120, 17.250780, 13.353818>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.100142, 17.298357, 13.588118>,  <24.065178, 17.377651, 13.978617>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.100142, 17.298357, 13.588118> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636886, 0.764672, -0.098250,
		0.765987, -0.613171, 0.193094,
		0.087409, -0.198237, -0.976249,
		24.126364, 17.238886, 13.295243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.699333, 17.307966, 13.805062>,  <24.065178, 17.377651, 13.978617>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.699333, 17.307966, 13.805062> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.550209, 17.401852, 13.445970>,  <24.460735, 17.458183, 13.230514>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.550209, 17.401852, 13.445970>,  <24.699333, 17.307966, 13.805062>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.550209, 17.401852, 13.445970> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688741, 0.718324, -0.098215,
		0.621810, -0.654920, -0.429455,
		-0.372811, 0.234713, -0.897732,
		24.438366, 17.472265, 13.176650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.310028, 17.462412, 13.554509>,  <24.699333, 17.307966, 13.805062>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.310028, 17.462412, 13.554509> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.044855, 17.634413, 13.309358>,  <24.885752, 17.737614, 13.162267>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.044855, 17.634413, 13.309358>,  <25.310028, 17.462412, 13.554509>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.044855, 17.634413, 13.309358> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590548, 0.803508, -0.075026,
		0.460191, -0.411671, -0.786607,
		-0.662931, 0.430003, -0.612879,
		24.845976, 17.763414, 13.125494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.691149, 17.740658, 13.074250>,  <25.310028, 17.462412, 13.554509>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.691149, 17.740658, 13.074250> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.348837, 17.945154, 13.042569>,  <25.143450, 18.067852, 13.023561>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.348837, 17.945154, 13.042569>,  <25.691149, 17.740658, 13.074250>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.348837, 17.945154, 13.042569> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512182, 0.815700, -0.268892,
		-0.072862, -0.270679, -0.959908,
		-0.855781, 0.511240, -0.079203,
		25.092102, 18.098526, 13.018808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.718538, 18.001888, 12.442218>,  <25.691149, 17.740658, 13.074250>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.718538, 18.001888, 12.442218> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.455532, 18.228819, 12.640537>,  <25.297729, 18.364977, 12.759529>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.455532, 18.228819, 12.640537>,  <25.718538, 18.001888, 12.442218>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.455532, 18.228819, 12.640537> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487743, 0.822057, -0.293819,
		-0.574266, 0.048633, -0.817223,
		-0.657514, 0.567325, 0.495800,
		25.258278, 18.399017, 12.789277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.491161, 18.493088, 11.922082>,  <25.718538, 18.001888, 12.442218>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.491161, 18.493088, 11.922082> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.430967, 18.642582, 12.288180>,  <25.394852, 18.732279, 12.507839>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.430967, 18.642582, 12.288180>,  <25.491161, 18.493088, 11.922082>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.430967, 18.642582, 12.288180> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545520, 0.803476, -0.238400,
		-0.824477, 0.463410, -0.324789,
		-0.150483, 0.373735, 0.915247,
		25.385822, 18.754702, 12.562755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.193624, 19.213781, 11.846321>,  <25.491161, 18.493088, 11.922082>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.193624, 19.213781, 11.846321> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.281614, 19.210873, 12.236513>,  <25.334408, 19.209127, 12.470628>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.281614, 19.210873, 12.236513>,  <25.193624, 19.213781, 11.846321>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.281614, 19.210873, 12.236513> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508826, 0.854020, -0.108375,
		-0.832291, 0.520189, 0.191561,
		0.219972, -0.007272, 0.975479,
		25.347607, 19.208691, 12.529157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.897493, 19.889357, 12.157606>,  <25.193624, 19.213781, 11.846321>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.897493, 19.889357, 12.157606> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.195269, 19.758375, 12.390358>,  <25.373934, 19.679787, 12.530009>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.195269, 19.758375, 12.390358>,  <24.897493, 19.889357, 12.157606>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.195269, 19.758375, 12.390358> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441683, 0.895069, -0.061375,
		-0.500725, 0.302696, 0.810956,
		0.744439, -0.327453, 0.581880,
		25.418600, 19.660139, 12.564922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.872713, 20.316111, 12.732860>,  <24.897493, 19.889357, 12.157606>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.872713, 20.316111, 12.732860> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.242092, 20.162699, 12.727928>,  <25.463718, 20.070652, 12.724970>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.242092, 20.162699, 12.727928>,  <24.872713, 20.316111, 12.732860>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.242092, 20.162699, 12.727928> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383470, 0.921176, 0.066227,
		-0.014043, -0.065884, 0.997729,
		0.923447, -0.383529, -0.012328,
		25.519127, 20.047640, 12.724230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.179892, 20.590117, 13.287528>,  <24.872713, 20.316111, 12.732860>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.179892, 20.590117, 13.287528> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.453888, 20.466167, 13.023781>,  <25.618286, 20.391798, 12.865533>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.453888, 20.466167, 13.023781>,  <25.179892, 20.590117, 13.287528>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.453888, 20.466167, 13.023781> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435656, 0.899620, 0.029807,
		0.583944, -0.307675, 0.751229,
		0.684991, -0.309872, -0.659368,
		25.659386, 20.373205, 12.825971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.793213, 20.857349, 13.560143>,  <25.179892, 20.590117, 13.287528>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.793213, 20.857349, 13.560143> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.923347, 20.767633, 13.192698>,  <26.001429, 20.713804, 12.972231>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.923347, 20.767633, 13.192698>,  <25.793213, 20.857349, 13.560143>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.923347, 20.767633, 13.192698> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610857, 0.791404, 0.023112,
		0.721810, -0.568660, 0.394482,
		0.325337, -0.224289, -0.918613,
		26.020948, 20.700346, 12.917114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.418367, 21.121479, 13.586987>,  <25.793213, 20.857349, 13.560143>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.418367, 21.121479, 13.586987> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.325485, 21.080992, 13.200032>,  <26.269756, 21.056700, 12.967859>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.325485, 21.080992, 13.200032>,  <26.418367, 21.121479, 13.586987>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.325485, 21.080992, 13.200032> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547547, 0.808413, -0.216013,
		0.803911, -0.579849, -0.132299,
		-0.232207, -0.101216, -0.967386,
		26.255823, 21.050627, 12.909817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.060081, 21.279264, 13.155616>,  <26.418367, 21.121479, 13.586987>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.060081, 21.279264, 13.155616> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.729446, 21.325378, 12.935267>,  <26.531065, 21.353046, 12.803059>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.729446, 21.325378, 12.935267>,  <27.060081, 21.279264, 13.155616>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.729446, 21.325378, 12.935267> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266940, 0.942003, -0.203403,
		0.495473, -0.315180, -0.809425,
		-0.826590, 0.115287, -0.550871,
		26.481470, 21.359964, 12.770006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.312288, 21.673607, 12.623178>,  <27.060081, 21.279264, 13.155616>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.312288, 21.673607, 12.623178> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.913754, 21.695129, 12.596597>,  <26.674633, 21.708042, 12.580647>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.913754, 21.695129, 12.596597>,  <27.312288, 21.673607, 12.623178>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.913754, 21.695129, 12.596597> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066760, 0.975114, -0.211413,
		0.053425, -0.215075, -0.975135,
		-0.996338, 0.053805, -0.066454,
		26.614853, 21.711271, 12.576660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.216658, 22.167927, 12.099559>,  <27.312288, 21.673607, 12.623178>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.216658, 22.167927, 12.099559> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.879738, 22.143393, 12.313764>,  <26.677586, 22.128672, 12.442286>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.879738, 22.143393, 12.313764>,  <27.216658, 22.167927, 12.099559>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.879738, 22.143393, 12.313764> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145852, 0.982377, -0.116885,
		-0.518905, -0.176557, -0.836400,
		-0.842298, -0.061338, 0.535512,
		26.627048, 22.124990, 12.474417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.734240, 22.640503, 11.774837>,  <27.216658, 22.167927, 12.099559>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.734240, 22.640503, 11.774837> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.599350, 22.584002, 12.147143>,  <26.518417, 22.550100, 12.370527>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.599350, 22.584002, 12.147143>,  <26.734240, 22.640503, 11.774837>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.599350, 22.584002, 12.147143> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318795, 0.947402, 0.028278,
		-0.885805, -0.287188, -0.364517,
		-0.337223, -0.141255, 0.930767,
		26.498182, 22.541626, 12.426373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.047726, 22.845608, 11.774582>,  <26.734240, 22.640503, 11.774837>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.047726, 22.845608, 11.774582> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.185720, 22.877062, 12.148705>,  <26.268517, 22.895935, 12.373178>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.185720, 22.877062, 12.148705>,  <26.047726, 22.845608, 11.774582>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.185720, 22.877062, 12.148705> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306091, 0.951433, 0.032909,
		-0.887295, -0.297642, 0.352303,
		0.344988, 0.078636, 0.935307,
		26.289217, 22.900652, 12.429296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<18.501680, 16.521694, 21.057705> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.138578, 16.404333, 20.937771>,  <17.920717, 16.333916, 20.865810>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.138578, 16.404333, 20.937771>,  <18.501680, 16.521694, 21.057705>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.138578, 16.404333, 20.937771> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324630, -0.038599, -0.945053,
		0.265709, -0.955209, 0.130286,
		-0.907753, -0.293404, -0.299833,
		17.866253, 16.316313, 20.847820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.630621, 15.954661, 20.535515>,  <18.501680, 16.521694, 21.057705>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.630621, 15.954661, 20.535515> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.265081, 16.106750, 20.478504>,  <18.045757, 16.198004, 20.444298>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.265081, 16.106750, 20.478504>,  <18.630621, 15.954661, 20.535515>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.265081, 16.106750, 20.478504> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099872, -0.129751, -0.986504,
		-0.393584, -0.915749, 0.080599,
		-0.913848, 0.380223, -0.142526,
		17.990927, 16.220818, 20.435747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.390892, 15.552891, 20.032869>,  <18.630621, 15.954661, 20.535515>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.390892, 15.552891, 20.032869> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.116226, 15.842514, 20.006845>,  <17.951427, 16.016289, 19.991230>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.116226, 15.842514, 20.006845>,  <18.390892, 15.552891, 20.032869>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.116226, 15.842514, 20.006845> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104318, 0.009568, -0.994498,
		-0.719451, -0.689673, -0.082102,
		-0.686664, 0.724057, -0.065061,
		17.910227, 16.059731, 19.987328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.895830, 15.418585, 19.521187>,  <18.390892, 15.552891, 20.032869>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.895830, 15.418585, 19.521187> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.891327, 15.815721, 19.568754>,  <17.888624, 16.054003, 19.597294>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.891327, 15.815721, 19.568754>,  <17.895830, 15.418585, 19.521187>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.891327, 15.815721, 19.568754> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107338, 0.119439, -0.987022,
		-0.994159, 0.001651, -0.107914,
		-0.011260, 0.992840, 0.118919,
		17.887949, 16.113573, 19.604429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.423717, 15.559768, 19.030167>,  <17.895830, 15.418585, 19.521187>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.423717, 15.559768, 19.030167> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.604544, 15.907275, 19.111038>,  <17.713039, 16.115780, 19.159561>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.604544, 15.907275, 19.111038>,  <17.423717, 15.559768, 19.030167>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.604544, 15.907275, 19.111038> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092465, 0.179797, -0.979348,
		-0.887179, 0.461424, 0.000949,
		0.452066, 0.868770, 0.202178,
		17.740164, 16.167906, 19.171692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.231300, 16.122904, 18.596888>,  <17.423717, 15.559768, 19.030167>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.231300, 16.122904, 18.596888> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.574123, 16.282743, 18.726980>,  <17.779818, 16.378647, 18.805037>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.574123, 16.282743, 18.726980>,  <17.231300, 16.122904, 18.596888>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.574123, 16.282743, 18.726980> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111549, 0.472354, -0.874322,
		-0.503003, 0.785622, 0.360259,
		0.857056, 0.399600, 0.325231,
		17.831240, 16.402624, 18.824549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.162291, 16.716955, 18.304813>,  <17.231300, 16.122904, 18.596888>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.162291, 16.716955, 18.304813> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.550652, 16.678213, 18.392422>,  <17.783669, 16.654968, 18.444986>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.550652, 16.678213, 18.392422>,  <17.162291, 16.716955, 18.304813>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.550652, 16.678213, 18.392422> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238908, 0.328453, -0.913806,
		0.016571, 0.939541, 0.342036,
		0.970901, -0.096857, 0.219021,
		17.841923, 16.649157, 18.458128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.508356, 17.239485, 18.092514>,  <17.162291, 16.716955, 18.304813>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.508356, 17.239485, 18.092514> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.822920, 16.993750, 18.118279>,  <18.011658, 16.846308, 18.133738>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.822920, 16.993750, 18.118279>,  <17.508356, 17.239485, 18.092514>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.822920, 16.993750, 18.118279> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354986, 0.364139, -0.861038,
		0.505515, 0.699993, 0.504444,
		0.786409, -0.614339, 0.064410,
		18.058842, 16.809448, 18.137602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.140348, 17.605362, 17.935854>,  <17.508356, 17.239485, 18.092514>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.140348, 17.605362, 17.935854> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.237881, 17.222731, 17.871967>,  <18.296400, 16.993153, 17.833635>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.237881, 17.222731, 17.871967>,  <18.140348, 17.605362, 17.935854>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.237881, 17.222731, 17.871967> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376517, 0.245140, -0.893388,
		0.893746, 0.157698, 0.419939,
		0.243829, -0.956576, -0.159717,
		18.311029, 16.935759, 17.824053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.795822, 17.657501, 17.621593>,  <18.140348, 17.605362, 17.935854>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.795822, 17.657501, 17.621593> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.674597, 17.289188, 17.523357>,  <18.601862, 17.068201, 17.464415>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.674597, 17.289188, 17.523357>,  <18.795822, 17.657501, 17.621593>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.674597, 17.289188, 17.523357> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369436, 0.124039, -0.920941,
		0.878448, -0.369832, 0.302578,
		-0.303061, -0.920781, -0.245591,
		18.583679, 17.012955, 17.449680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.393293, 17.343700, 17.322636>,  <18.795822, 17.657501, 17.621593>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.393293, 17.343700, 17.322636> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.061066, 17.155638, 17.203236>,  <18.861729, 17.042799, 17.131596>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.061066, 17.155638, 17.203236>,  <19.393293, 17.343700, 17.322636>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.061066, 17.155638, 17.203236> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302068, 0.069980, -0.950714,
		0.467875, -0.879804, 0.083896,
		-0.830571, -0.470158, -0.298502,
		18.811893, 17.014591, 17.113686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.563627, 16.825302, 16.890936>,  <19.393293, 17.343700, 17.322636>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.563627, 16.825302, 16.890936> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.183359, 16.904102, 16.795086>,  <18.955198, 16.951382, 16.737576>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.183359, 16.904102, 16.795086>,  <19.563627, 16.825302, 16.890936>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.183359, 16.904102, 16.795086> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262931, 0.101810, -0.959428,
		-0.164612, -0.975103, -0.148585,
		-0.950668, 0.197001, -0.239626,
		18.898159, 16.963203, 16.723198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.556389, 16.620098, 16.228407>,  <19.563627, 16.825302, 16.890936>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.556389, 16.620098, 16.228407> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.214008, 16.824974, 16.256721>,  <19.008581, 16.947901, 16.273710>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.214008, 16.824974, 16.256721>,  <19.556389, 16.620098, 16.228407>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.214008, 16.824974, 16.256721> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032136, 0.189335, -0.981386,
		-0.516060, -0.837743, -0.178521,
		-0.855949, 0.512191, 0.070787,
		18.957224, 16.978632, 16.277958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.925653, 16.317385, 15.851880>,  <19.556389, 16.620098, 16.228407>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.925653, 16.317385, 15.851880> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.909594, 16.716948, 15.842323>,  <18.899958, 16.956686, 15.836589>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.909594, 16.716948, 15.842323>,  <18.925653, 16.317385, 15.851880>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.909594, 16.716948, 15.842323> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100225, -0.019764, -0.994768,
		-0.994154, -0.042332, -0.099322,
		-0.040148, 0.998908, -0.023892,
		18.897549, 17.016621, 15.835155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.179308, 15.650925, 15.722388>,  <18.925653, 16.317385, 15.851880>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.179308, 15.650925, 15.722388> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.344107, 15.291579, 15.661457>,  <19.442986, 15.075973, 15.624898>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.344107, 15.291579, 15.661457>,  <19.179308, 15.650925, 15.722388>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.344107, 15.291579, 15.661457> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585082, -0.388983, 0.711597,
		-0.698526, -0.204049, -0.685875,
		0.411995, -0.898363, -0.152329,
		19.467705, 15.022070, 15.615759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.650059, 15.303573, 15.814974>,  <19.179308, 15.650925, 15.722388>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.650059, 15.303573, 15.814974> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.929140, 15.019284, 15.850945>,  <19.096588, 14.848711, 15.872529>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.929140, 15.019284, 15.850945>,  <18.650059, 15.303573, 15.814974>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.929140, 15.019284, 15.850945> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490449, -0.382377, 0.783101,
		-0.522179, -0.590478, -0.615357,
		0.697703, -0.710720, 0.089930,
		19.138451, 14.806068, 15.877925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.297367, 14.823277, 16.154991>,  <18.650059, 15.303573, 15.814974>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.297367, 14.823277, 16.154991> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.660418, 14.658365, 16.186596>,  <18.878248, 14.559418, 16.205559>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.660418, 14.658365, 16.186596>,  <18.297367, 14.823277, 16.154991>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.660418, 14.658365, 16.186596> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313010, -0.539253, 0.781813,
		-0.279718, -0.734324, -0.618487,
		0.907625, -0.412279, 0.079012,
		18.932705, 14.534681, 16.210299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.218943, 14.065074, 16.257782>,  <18.297367, 14.823277, 16.154991>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.218943, 14.065074, 16.257782> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.577702, 14.174060, 16.397118>,  <18.792957, 14.239451, 16.480719>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.577702, 14.174060, 16.397118>,  <18.218943, 14.065074, 16.257782>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.577702, 14.174060, 16.397118> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146989, -0.559226, 0.815880,
		0.417100, -0.782962, -0.461518,
		0.896896, 0.272465, 0.348340,
		18.846771, 14.255799, 16.501619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.581188, 13.413741, 16.502810>,  <18.218943, 14.065074, 16.257782>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.581188, 13.413741, 16.502810> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.730625, 13.737160, 16.684658>,  <18.820288, 13.931211, 16.793766>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.730625, 13.737160, 16.684658>,  <18.581188, 13.413741, 16.502810>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.730625, 13.737160, 16.684658> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058914, -0.468435, 0.881531,
		0.925719, -0.356119, -0.127370,
		0.373594, 0.808547, 0.454620,
		18.842703, 13.979724, 16.821045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.935076, 13.090910, 17.059969>,  <18.581188, 13.413741, 16.502810>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.935076, 13.090910, 17.059969> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.909712, 13.473584, 17.173624>,  <18.894493, 13.703189, 17.241817>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.909712, 13.473584, 17.173624>,  <18.935076, 13.090910, 17.059969>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.909712, 13.473584, 17.173624> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039788, -0.286906, 0.957132,
		0.997194, 0.049386, 0.056257,
		-0.063410, 0.956685, 0.284136,
		18.890690, 13.760590, 17.258865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.519148, 13.175109, 17.591562>,  <18.935076, 13.090910, 17.059969>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.519148, 13.175109, 17.591562> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.250099, 13.467420, 17.638115>,  <19.088669, 13.642806, 17.666046>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.250099, 13.467420, 17.638115>,  <19.519148, 13.175109, 17.591562>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.250099, 13.467420, 17.638115> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028388, -0.182644, 0.982769,
		0.739441, 0.657729, 0.143596,
		-0.672623, 0.730776, 0.116383,
		19.048313, 13.686652, 17.673031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.725233, 13.519025, 18.191328>,  <19.519148, 13.175109, 17.591562>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.725233, 13.519025, 18.191328> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.335348, 13.591295, 18.138733>,  <19.101418, 13.634657, 18.107176>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.335348, 13.591295, 18.138733>,  <19.725233, 13.519025, 18.191328>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.335348, 13.591295, 18.138733> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149079, -0.087464, 0.984950,
		0.166456, 0.979646, 0.112187,
		-0.974714, 0.180675, -0.131486,
		19.042934, 13.645498, 18.099287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.508831, 13.863589, 18.856588>,  <19.725233, 13.519025, 18.191328>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.508831, 13.863589, 18.856588> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.164278, 13.758850, 18.682482>,  <18.957546, 13.696007, 18.578018>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.164278, 13.758850, 18.682482>,  <19.508831, 13.863589, 18.856588>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.164278, 13.758850, 18.682482> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432815, -0.070167, 0.898748,
		-0.265876, 0.962555, -0.052891,
		-0.861383, -0.261848, -0.435264,
		18.905863, 13.680296, 18.551903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.131096, 14.281319, 19.169559>,  <19.508831, 13.863589, 18.856588>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.131096, 14.281319, 19.169559> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.908302, 13.978463, 19.033026>,  <18.774626, 13.796750, 18.951105>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.908302, 13.978463, 19.033026>,  <19.131096, 14.281319, 19.169559>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.908302, 13.978463, 19.033026> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465779, -0.055503, 0.883159,
		-0.687619, 0.650891, -0.321746,
		-0.556982, -0.757140, -0.341337,
		18.741207, 13.751321, 18.930624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.484516, 14.364584, 19.499189>,  <19.131096, 14.281319, 19.169559>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.484516, 14.364584, 19.499189> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.474846, 13.985928, 19.370638>,  <18.469044, 13.758734, 19.293507>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.474846, 13.985928, 19.370638>,  <18.484516, 14.364584, 19.499189>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.474846, 13.985928, 19.370638> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529788, -0.260491, 0.807136,
		-0.847786, 0.189775, -0.495222,
		-0.024173, -0.946642, -0.321381,
		18.467594, 13.701935, 19.274223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.759466, 14.051262, 19.614441>,  <18.484516, 14.364584, 19.499189>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.759466, 14.051262, 19.614441> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.980452, 13.722811, 19.557121>,  <18.113043, 13.525741, 19.522730>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.980452, 13.722811, 19.557121>,  <17.759466, 14.051262, 19.614441>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.980452, 13.722811, 19.557121> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500398, -0.464213, 0.730827,
		-0.666622, -0.332049, -0.667351,
		0.552464, -0.821127, -0.143298,
		18.146191, 13.476473, 19.514132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.298122, 13.500484, 19.749004>,  <17.759466, 14.051262, 19.614441>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.298122, 13.500484, 19.749004> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.664650, 13.343090, 19.778749>,  <17.884567, 13.248653, 19.796597>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.664650, 13.343090, 19.778749>,  <17.298122, 13.500484, 19.749004>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.664650, 13.343090, 19.778749> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267538, -0.463367, 0.844817,
		-0.297965, -0.794016, -0.529863,
		0.916319, -0.393484, 0.074362,
		17.939545, 13.225044, 19.801058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.186241, 12.793403, 19.883078>,  <17.298122, 13.500484, 19.749004>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.186241, 12.793403, 19.883078> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.556776, 12.879642, 20.006638>,  <17.779097, 12.931385, 20.080774>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.556776, 12.879642, 20.006638>,  <17.186241, 12.793403, 19.883078>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.556776, 12.879642, 20.006638> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243739, -0.282189, 0.927880,
		0.287217, -0.934819, -0.208852,
		0.926336, 0.215597, 0.308901,
		17.834677, 12.944321, 20.099308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.013407, 12.046877, 19.774555>,  <17.186241, 12.793403, 19.883078>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.013407, 12.046877, 19.774555> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.701817, 11.815288, 19.678232>,  <16.514862, 11.676334, 19.620440>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.701817, 11.815288, 19.678232>,  <17.013407, 12.046877, 19.774555>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.701817, 11.815288, 19.678232> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020870, 0.359878, -0.932766,
		0.626707, -0.731627, -0.268253,
		-0.778975, -0.578972, -0.240807,
		16.468124, 11.641596, 19.605989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.189190, 11.799966, 19.142685>,  <17.013407, 12.046877, 19.774555>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.189190, 11.799966, 19.142685> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.791178, 11.766234, 19.163862>,  <16.552370, 11.745996, 19.176569>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.791178, 11.766234, 19.163862>,  <17.189190, 11.799966, 19.142685>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.791178, 11.766234, 19.163862> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078386, 0.335517, -0.938767,
		0.061400, -0.938252, -0.340460,
		-0.995030, -0.084328, 0.052945,
		16.492668, 11.740935, 19.179745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.024330, 11.445959, 18.514668>,  <17.189190, 11.799966, 19.142685>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.024330, 11.445959, 18.514668> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.690742, 11.628670, 18.638510>,  <16.490591, 11.738297, 18.712814>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.690742, 11.628670, 18.638510>,  <17.024330, 11.445959, 18.514668>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.690742, 11.628670, 18.638510> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140745, 0.366434, -0.919737,
		-0.533564, -0.810606, -0.241305,
		-0.833967, 0.456776, 0.309604,
		16.440552, 11.765702, 18.731392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.581789, 11.284760, 18.096041>,  <17.024330, 11.445959, 18.514668>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.581789, 11.284760, 18.096041> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.397638, 11.608528, 18.241858>,  <16.287148, 11.802790, 18.329348>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.397638, 11.608528, 18.241858>,  <16.581789, 11.284760, 18.096041>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.397638, 11.608528, 18.241858> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295554, 0.247464, -0.922719,
		-0.837080, -0.532538, 0.125302,
		-0.460375, 0.809423, 0.364541,
		16.259525, 11.851355, 18.351219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.863456, 11.243164, 17.856413>,  <16.581789, 11.284760, 18.096041>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.863456, 11.243164, 17.856413> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.954483, 11.623178, 17.941870>,  <16.009100, 11.851188, 17.993143>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.954483, 11.623178, 17.941870>,  <15.863456, 11.243164, 17.856413>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.954483, 11.623178, 17.941870> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335991, 0.282532, -0.898491,
		-0.913960, 0.132686, 0.383499,
		0.227568, 0.950037, 0.213642,
		16.022753, 11.908190, 18.005962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.309502, 11.609503, 17.581669>,  <15.863456, 11.243164, 17.856413>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.309502, 11.609503, 17.581669> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.606126, 11.870078, 17.645813>,  <15.784101, 12.026423, 17.684299>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.606126, 11.870078, 17.645813>,  <15.309502, 11.609503, 17.581669>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.606126, 11.870078, 17.645813> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183603, 0.426962, -0.885434,
		-0.645273, 0.627161, 0.436225,
		0.741561, 0.651439, 0.160358,
		15.828594, 12.065510, 17.693920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.037744, 12.284081, 17.445570>,  <15.309502, 11.609503, 17.581669>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.037744, 12.284081, 17.445570> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.424171, 12.382155, 17.413097>,  <15.656029, 12.441000, 17.393614>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.424171, 12.382155, 17.413097>,  <15.037744, 12.284081, 17.445570>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.424171, 12.382155, 17.413097> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200909, 0.515883, -0.832767,
		-0.162304, 0.820822, 0.547640,
		0.966071, 0.245187, -0.081181,
		15.713993, 12.455711, 17.388742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.030820, 12.982081, 17.178104>,  <15.037744, 12.284081, 17.445570>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.030820, 12.982081, 17.178104> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.395702, 12.841874, 17.093233>,  <15.614632, 12.757750, 17.042311>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.395702, 12.841874, 17.093233>,  <15.030820, 12.982081, 17.178104>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.395702, 12.841874, 17.093233> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015766, 0.487429, -0.873021,
		0.409430, 0.799719, 0.439109,
		0.912205, -0.350518, -0.212176,
		15.669364, 12.736718, 17.029581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.318434, 13.569320, 16.922358>,  <15.030820, 12.982081, 17.178104>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.318434, 13.569320, 16.922358> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.518424, 13.250737, 16.786308>,  <15.638418, 13.059587, 16.704679>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.518424, 13.250737, 16.786308>,  <15.318434, 13.569320, 16.922358>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.518424, 13.250737, 16.786308> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090102, 0.342763, -0.935091,
		0.861340, 0.498168, 0.099611,
		0.499975, -0.796456, -0.340121,
		15.668417, 13.011801, 16.684273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.845417, 13.896669, 16.615379>,  <15.318434, 13.569320, 16.922358>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.845417, 13.896669, 16.615379> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.796348, 13.534226, 16.453430>,  <15.766906, 13.316761, 16.356260>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.796348, 13.534226, 16.453430>,  <15.845417, 13.896669, 16.615379>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.796348, 13.534226, 16.453430> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016119, 0.406082, -0.913695,
		0.992316, -0.118613, -0.035210,
		-0.122674, -0.906106, -0.404873,
		15.759545, 13.262395, 16.331968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.321140, 13.815593, 16.067316>,  <15.845417, 13.896669, 16.615379>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.321140, 13.815593, 16.067316> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.066771, 13.520235, 15.977539>,  <15.914149, 13.343020, 15.923673>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.066771, 13.520235, 15.977539>,  <16.321140, 13.815593, 16.067316>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.066771, 13.520235, 15.977539> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053686, 0.332443, -0.941594,
		0.769883, -0.586732, -0.251050,
		-0.635923, -0.738395, -0.224443,
		15.875994, 13.298717, 15.910206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.588085, 13.455317, 15.416564>,  <16.321140, 13.815593, 16.067316>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.588085, 13.455317, 15.416564> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.198427, 13.373029, 15.453921>,  <15.964633, 13.323655, 15.476336>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.198427, 13.373029, 15.453921>,  <16.588085, 13.455317, 15.416564>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.198427, 13.373029, 15.453921> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149884, 0.279148, -0.948479,
		0.169052, -0.937953, -0.302764,
		-0.974144, -0.205721, 0.093393,
		15.906184, 13.311312, 15.481939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<13.922268, 9.221080, 24.004429> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.267874, 9.023971, 24.045719>,  <14.475237, 8.905705, 24.070494>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.267874, 9.023971, 24.045719>,  <13.922268, 9.221080, 24.004429>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.267874, 9.023971, 24.045719> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317396, 0.373964, -0.871441,
		0.390819, 0.785701, 0.479515,
		0.864014, -0.492772, 0.103226,
		14.527078, 8.876139, 24.076687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.413618, 9.726179, 23.886621>,  <13.922268, 9.221080, 24.004429>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.413618, 9.726179, 23.886621> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.633662, 9.398108, 23.823771>,  <14.765689, 9.201266, 23.786060>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.633662, 9.398108, 23.823771>,  <14.413618, 9.726179, 23.886621>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.633662, 9.398108, 23.823771> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379290, 0.413022, -0.827981,
		0.743988, 0.395882, 0.538292,
		0.550109, -0.820177, -0.157129,
		14.798695, 9.152056, 23.776632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.072680, 9.957465, 23.905659>,  <14.413618, 9.726179, 23.886621>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.072680, 9.957465, 23.905659> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.063526, 9.618307, 23.693790>,  <15.058034, 9.414812, 23.566669>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.063526, 9.618307, 23.693790>,  <15.072680, 9.957465, 23.905659>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.063526, 9.618307, 23.693790> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452867, 0.463544, -0.761603,
		0.891285, -0.257299, 0.373376,
		-0.022883, -0.847894, -0.529672,
		15.056662, 9.363939, 23.534889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.709778, 9.789227, 23.867851>,  <15.072680, 9.957465, 23.905659>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.709778, 9.789227, 23.867851> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.530581, 9.590010, 23.570866>,  <15.423062, 9.470479, 23.392673>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.530581, 9.590010, 23.570866>,  <15.709778, 9.789227, 23.867851>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.530581, 9.590010, 23.570866> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601492, 0.446509, -0.662448,
		0.661445, -0.743359, 0.099537,
		-0.447992, -0.498043, -0.742466,
		15.396183, 9.440597, 23.348125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.262924, 9.729489, 23.384079>,  <15.709778, 9.789227, 23.867851>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.262924, 9.729489, 23.384079> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.928900, 9.645982, 23.180475>,  <15.728485, 9.595877, 23.058313>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.928900, 9.645982, 23.180475>,  <16.262924, 9.729489, 23.384079>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.928900, 9.645982, 23.180475> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393209, 0.420618, -0.817598,
		0.384789, -0.882890, -0.269151,
		-0.835060, -0.208770, -0.509009,
		15.678382, 9.583351, 23.027773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.516665, 9.481760, 22.787867>,  <16.262924, 9.729489, 23.384079>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.516665, 9.481760, 22.787867> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.139658, 9.592644, 22.713232>,  <15.913454, 9.659174, 22.668451>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.139658, 9.592644, 22.713232>,  <16.516665, 9.481760, 22.787867>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.139658, 9.592644, 22.713232> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290231, 0.402391, -0.868244,
		-0.165605, -0.872488, -0.459716,
		-0.942518, 0.277210, -0.186585,
		15.856902, 9.675807, 22.657257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.323168, 9.270405, 22.135128>,  <16.516665, 9.481760, 22.787867>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.323168, 9.270405, 22.135128> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.036875, 9.546736, 22.176090>,  <15.865100, 9.712535, 22.200666>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.036875, 9.546736, 22.176090>,  <16.323168, 9.270405, 22.135128>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.036875, 9.546736, 22.176090> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245845, 0.386476, -0.888930,
		-0.653674, -0.611059, -0.446450,
		-0.715730, 0.690828, 0.102404,
		15.822156, 9.753984, 22.206812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.158611, 9.328732, 21.408926>,  <16.323168, 9.270405, 22.135128>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.158611, 9.328732, 21.408926> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.021641, 9.639976, 21.619558>,  <15.939459, 9.826722, 21.745937>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.021641, 9.639976, 21.619558>,  <16.158611, 9.328732, 21.408926>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.021641, 9.639976, 21.619558> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013029, 0.564344, -0.825437,
		-0.939455, -0.275789, -0.203384,
		-0.342425, 0.778110, 0.526582,
		15.918913, 9.873408, 21.777533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.689991, 9.633337, 21.021969>,  <16.158611, 9.328732, 21.408926>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.689991, 9.633337, 21.021969> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.737298, 9.933524, 21.282064>,  <15.765682, 10.113637, 21.438122>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.737298, 9.933524, 21.282064>,  <15.689991, 9.633337, 21.021969>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.737298, 9.933524, 21.282064> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067986, 0.647178, -0.759302,
		-0.990652, 0.134007, 0.025518,
		0.118267, 0.750469, 0.650238,
		15.772778, 10.158665, 21.477137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.117453, 10.176908, 20.956406>,  <15.689991, 9.633337, 21.021969>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.117453, 10.176908, 20.956406> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.451663, 10.329422, 21.114655>,  <15.652189, 10.420931, 21.209604>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.451663, 10.329422, 21.114655>,  <15.117453, 10.176908, 20.956406>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.451663, 10.329422, 21.114655> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113224, 0.585099, -0.803019,
		-0.537658, 0.715737, 0.445695,
		0.835526, 0.381286, 0.395622,
		15.702321, 10.443808, 21.233341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.079873, 10.951960, 20.921974>,  <15.117453, 10.176908, 20.956406>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.079873, 10.951960, 20.921974> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.463307, 10.845148, 20.961588>,  <15.693368, 10.781061, 20.985357>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.463307, 10.845148, 20.961588>,  <15.079873, 10.951960, 20.921974>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.463307, 10.845148, 20.961588> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256558, 0.658651, -0.707359,
		0.123655, 0.703473, 0.699882,
		0.958586, -0.267029, 0.099036,
		15.750883, 10.765039, 20.991299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.448174, 11.573965, 20.970369>,  <15.079873, 10.951960, 20.921974>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.448174, 11.573965, 20.970369> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.712047, 11.306572, 20.832993>,  <15.870370, 11.146136, 20.750566>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.712047, 11.306572, 20.832993>,  <15.448174, 11.573965, 20.970369>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.712047, 11.306572, 20.832993> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286286, 0.646045, -0.707577,
		0.694881, 0.368453, 0.617561,
		0.659682, -0.668482, -0.343442,
		15.909951, 11.106028, 20.729959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.872629, 12.037596, 20.678152>,  <15.448174, 11.573965, 20.970369>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.872629, 12.037596, 20.678152> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.996765, 11.687578, 20.529564>,  <16.071247, 11.477568, 20.440411>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.996765, 11.687578, 20.529564>,  <15.872629, 12.037596, 20.678152>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.996765, 11.687578, 20.529564> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414392, 0.476208, -0.775568,
		0.855552, 0.086755, 0.510396,
		0.310339, -0.875043, -0.371470,
		16.089867, 11.425065, 20.418123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.582094, 12.207099, 20.399572>,  <15.872629, 12.037596, 20.678152>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.582094, 12.207099, 20.399572> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.441313, 11.877796, 20.221415>,  <16.356844, 11.680215, 20.114519>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.441313, 11.877796, 20.221415>,  <16.582094, 12.207099, 20.399572>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.441313, 11.877796, 20.221415> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212313, 0.393222, -0.894594,
		0.911620, -0.409419, 0.036392,
		-0.351953, -0.823257, -0.445395,
		16.335726, 11.630819, 20.087795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.337950, 12.297692, 20.389936>,  <16.582094, 12.207099, 20.399572>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.337950, 12.297692, 20.389936> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.597010, 12.595053, 20.456757>,  <17.752445, 12.773469, 20.496849>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.597010, 12.595053, 20.456757>,  <17.337950, 12.297692, 20.389936>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.597010, 12.595053, 20.456757> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062297, -0.166846, 0.984013,
		0.759388, -0.647701, -0.061746,
		0.647648, 0.743401, 0.167050,
		17.791304, 12.818073, 20.506872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.934689, 12.039692, 20.852386>,  <17.337950, 12.297692, 20.389936>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.934689, 12.039692, 20.852386> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.893663, 12.435004, 20.897608>,  <17.869047, 12.672192, 20.924740>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.893663, 12.435004, 20.897608>,  <17.934689, 12.039692, 20.852386>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.893663, 12.435004, 20.897608> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059458, -0.119541, 0.991047,
		0.992948, 0.094925, 0.071022,
		-0.102565, 0.988281, 0.113054,
		17.862894, 12.731488, 20.931524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.196182, 12.213713, 21.508732>,  <17.934689, 12.039692, 20.852386>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.196182, 12.213713, 21.508732> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.005404, 12.557193, 21.433733>,  <17.890936, 12.763281, 21.388733>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.005404, 12.557193, 21.433733>,  <18.196182, 12.213713, 21.508732>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.005404, 12.557193, 21.433733> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263492, 0.063824, 0.962548,
		0.838508, 0.508487, 0.195820,
		-0.476945, 0.858701, -0.187499,
		17.862320, 12.814803, 21.377483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.548264, 12.759619, 21.970903>,  <18.196182, 12.213713, 21.508732>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.548264, 12.759619, 21.970903> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.185511, 12.899810, 21.877327>,  <17.967859, 12.983924, 21.821180>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.185511, 12.899810, 21.877327>,  <18.548264, 12.759619, 21.970903>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.185511, 12.899810, 21.877327> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209688, 0.106209, 0.971983,
		0.365504, 0.930530, -0.022828,
		-0.906884, 0.350477, -0.233941,
		17.913446, 13.004952, 21.807144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.432783, 13.209474, 22.512947>,  <18.548264, 12.759619, 21.970903>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.432783, 13.209474, 22.512947> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.082506, 13.121258, 22.341124>,  <17.872339, 13.068328, 22.238029>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.082506, 13.121258, 22.341124>,  <18.432783, 13.209474, 22.512947>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.082506, 13.121258, 22.341124> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389833, -0.202059, 0.898445,
		-0.284939, 0.954219, 0.090968,
		-0.875694, -0.220540, -0.429560,
		17.819798, 13.055096, 22.212255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.981796, 13.480893, 22.981256>,  <18.432783, 13.209474, 22.512947>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.981796, 13.480893, 22.981256> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.751270, 13.225418, 22.777319>,  <17.612955, 13.072133, 22.654957>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.751270, 13.225418, 22.777319>,  <17.981796, 13.480893, 22.981256>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.751270, 13.225418, 22.777319> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434350, -0.289067, 0.853100,
		-0.692243, 0.713105, -0.110820,
		-0.576316, -0.638687, -0.509842,
		17.578375, 13.033812, 22.624367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.175652, 13.613135, 23.032001>,  <17.981796, 13.480893, 22.981256>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.175652, 13.613135, 23.032001> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.225853, 13.230759, 22.925852>,  <17.255974, 13.001332, 22.862162>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.225853, 13.230759, 22.925852>,  <17.175652, 13.613135, 23.032001>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.225853, 13.230759, 22.925852> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586768, -0.287212, 0.757107,
		-0.799969, 0.060692, -0.596963,
		0.125504, -0.955942, -0.265373,
		17.263504, 12.943975, 22.846239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.548391, 13.312852, 23.144007>,  <17.175652, 13.613135, 23.032001>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.548391, 13.312852, 23.144007> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.787720, 12.992951, 23.163645>,  <16.931316, 12.801011, 23.175428>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.787720, 12.992951, 23.163645>,  <16.548391, 13.312852, 23.144007>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.787720, 12.992951, 23.163645> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457265, -0.290498, 0.840547,
		-0.657966, -0.525367, -0.539509,
		0.598322, -0.799750, 0.049094,
		16.967216, 12.753026, 23.178373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.155722, 12.822469, 23.513746>,  <16.548391, 13.312852, 23.144007>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.155722, 12.822469, 23.513746> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.519518, 12.656752, 23.527536>,  <16.737795, 12.557322, 23.535810>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.519518, 12.656752, 23.527536>,  <16.155722, 12.822469, 23.513746>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.519518, 12.656752, 23.527536> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216371, -0.400919, 0.890195,
		-0.354971, -0.817087, -0.454273,
		0.909493, -0.414285, 0.034480,
		16.792366, 12.532464, 23.537880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.065453, 12.203729, 23.795647>,  <16.155722, 12.822469, 23.513746>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.065453, 12.203729, 23.795647> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.452654, 12.269899, 23.871120>,  <16.684975, 12.309602, 23.916405>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.452654, 12.269899, 23.871120>,  <16.065453, 12.203729, 23.795647>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.452654, 12.269899, 23.871120> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078754, -0.513663, 0.854370,
		0.238257, -0.841893, -0.484199,
		0.968004, 0.165427, 0.188686,
		16.743055, 12.319528, 23.927727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.274418, 11.529244, 23.985199>,  <16.065453, 12.203729, 23.795647>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.274418, 11.529244, 23.985199> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.557716, 11.788138, 24.097961>,  <16.727695, 11.943475, 24.165619>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.557716, 11.788138, 24.097961>,  <16.274418, 11.529244, 23.985199>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.557716, 11.788138, 24.097961> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021956, -0.378935, 0.925163,
		0.705623, -0.661433, -0.254168,
		0.708247, 0.647236, 0.281908,
		16.770191, 11.982309, 24.182533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.806292, 11.117850, 24.263300>,  <16.274418, 11.529244, 23.985199>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.806292, 11.117850, 24.263300> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.857645, 11.491025, 24.397848>,  <16.888456, 11.714930, 24.478577>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.857645, 11.491025, 24.397848>,  <16.806292, 11.117850, 24.263300>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.857645, 11.491025, 24.397848> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157904, -0.354080, 0.921788,
		0.979073, -0.065228, -0.192773,
		0.128383, 0.932938, 0.336371,
		16.896160, 11.770906, 24.498760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.221889, 11.044930, 24.765873>,  <16.806292, 11.117850, 24.263300>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.221889, 11.044930, 24.765873> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.059483, 11.397716, 24.861614>,  <16.962038, 11.609386, 24.919060>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.059483, 11.397716, 24.861614>,  <17.221889, 11.044930, 24.765873>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.059483, 11.397716, 24.861614> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008924, -0.258076, 0.966083,
		0.913823, 0.394381, 0.096913,
		-0.406016, 0.881964, 0.239355,
		16.937677, 11.662305, 24.933420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.639771, 11.225905, 25.352255>,  <17.221889, 11.044930, 24.765873>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.639771, 11.225905, 25.352255> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.313110, 11.456759, 25.351868>,  <17.117115, 11.595272, 25.351635>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.313110, 11.456759, 25.351868>,  <17.639771, 11.225905, 25.352255>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.313110, 11.456759, 25.351868> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145890, -0.204811, 0.967868,
		0.558391, 0.790549, 0.251457,
		-0.816649, 0.577134, -0.000968,
		17.068115, 11.629900, 25.351578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<10.579862, 14.866310, 24.182823> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.847190, 14.570976, 24.146576>,  <11.007586, 14.393776, 24.124828>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.847190, 14.570976, 24.146576>,  <10.579862, 14.866310, 24.182823>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.847190, 14.570976, 24.146576> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282971, 0.364998, -0.886963,
		0.687950, 0.567133, 0.452862,
		0.668320, -0.738334, -0.090618,
		11.047686, 14.349476, 24.119390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.236276, 15.212307, 23.860443>,  <10.579862, 14.866310, 24.182823>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.236276, 15.212307, 23.860443> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.270456, 14.817774, 23.804096>,  <11.290965, 14.581054, 23.770288>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.270456, 14.817774, 23.804096>,  <11.236276, 15.212307, 23.860443>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.270456, 14.817774, 23.804096> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418849, 0.163846, -0.893152,
		0.904026, 0.017319, 0.427126,
		0.085452, -0.986334, -0.140867,
		11.296092, 14.521873, 23.761835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.874684, 15.209615, 23.612867>,  <11.236276, 15.212307, 23.860443>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.874684, 15.209615, 23.612867> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.711921, 14.855767, 23.521765>,  <11.614263, 14.643458, 23.467102>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.711921, 14.855767, 23.521765>,  <11.874684, 15.209615, 23.612867>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.711921, 14.855767, 23.521765> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326729, 0.091893, -0.940640,
		0.853038, -0.457170, 0.251639,
		-0.406908, -0.884619, -0.227759,
		11.589849, 14.590382, 23.453438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.356919, 14.834580, 23.169683>,  <11.874684, 15.209615, 23.612867>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.356919, 14.834580, 23.169683> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.984929, 14.699719, 23.111069>,  <11.761735, 14.618803, 23.075901>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.984929, 14.699719, 23.111069>,  <12.356919, 14.834580, 23.169683>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.984929, 14.699719, 23.111069> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090836, 0.175500, -0.980280,
		0.356223, -0.924947, -0.132585,
		-0.929976, -0.337155, -0.146535,
		11.705936, 14.598574, 23.067108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.354171, 14.283237, 22.605345>,  <12.356919, 14.834580, 23.169683>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.354171, 14.283237, 22.605345> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.968525, 14.388923, 22.615719>,  <11.737138, 14.452334, 22.621943>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.968525, 14.388923, 22.615719>,  <12.354171, 14.283237, 22.605345>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.968525, 14.388923, 22.615719> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003410, 0.085350, -0.996345,
		-0.265464, -0.960679, -0.081386,
		-0.964115, 0.264217, 0.025933,
		11.679291, 14.468187, 22.623499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.998322, 14.093176, 21.959694>,  <12.354171, 14.283237, 22.605345>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.998322, 14.093176, 21.959694> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.754831, 14.380916, 22.093554>,  <11.608737, 14.553559, 22.173868>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.754831, 14.380916, 22.093554>,  <11.998322, 14.093176, 21.959694>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.754831, 14.380916, 22.093554> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249797, 0.226572, -0.941417,
		-0.753030, -0.656659, 0.041770,
		-0.608727, 0.719349, 0.334647,
		11.572213, 14.596721, 22.193947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.395654, 13.922317, 21.520987>,  <11.998322, 14.093176, 21.959694>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.395654, 13.922317, 21.520987> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.351928, 14.287051, 21.679279>,  <11.325692, 14.505892, 21.774256>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.351928, 14.287051, 21.679279>,  <11.395654, 13.922317, 21.520987>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.351928, 14.287051, 21.679279> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199316, 0.369926, -0.907429,
		-0.973819, -0.178071, 0.141306,
		-0.109314, 0.911836, 0.395733,
		11.319134, 14.560602, 21.797998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.913655, 14.335029, 21.105467>,  <11.395654, 13.922317, 21.520987>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.913655, 14.335029, 21.105467> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.124078, 14.621247, 21.289318>,  <11.250332, 14.792978, 21.399630>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.124078, 14.621247, 21.289318>,  <10.913655, 14.335029, 21.105467>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.124078, 14.621247, 21.289318> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050465, 0.565766, -0.823020,
		-0.848951, 0.409761, 0.333735,
		0.526057, 0.715546, 0.459629,
		11.281895, 14.835911, 21.427206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.637350, 14.929864, 20.918882>,  <10.913655, 14.335029, 21.105467>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.637350, 14.929864, 20.918882> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.011864, 15.017405, 21.028774>,  <11.236572, 15.069929, 21.094709>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.011864, 15.017405, 21.028774>,  <10.637350, 14.929864, 20.918882>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.011864, 15.017405, 21.028774> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034598, 0.720895, -0.692180,
		-0.349536, 0.657582, 0.667390,
		0.936284, 0.218852, 0.274730,
		11.292748, 15.083060, 21.111193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.791101, 15.402093, 20.480272>,  <10.637350, 14.929864, 20.918882>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.791101, 15.402093, 20.480272> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.146511, 15.417802, 20.663128>,  <11.359757, 15.427227, 20.772842>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.146511, 15.417802, 20.663128>,  <10.791101, 15.402093, 20.480272>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.146511, 15.417802, 20.663128> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388289, 0.466438, -0.794775,
		-0.244441, 0.883681, 0.399193,
		0.888527, 0.039273, 0.457141,
		11.413069, 15.429584, 20.800270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.087770, 16.090624, 20.496588>,  <10.791101, 15.402093, 20.480272>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.087770, 16.090624, 20.496588> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.427961, 15.880254, 20.500448>,  <11.632076, 15.754032, 20.502764>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.427961, 15.880254, 20.500448>,  <11.087770, 16.090624, 20.496588>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.427961, 15.880254, 20.500448> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358563, 0.566219, -0.742178,
		0.384865, 0.634666, 0.670133,
		0.850477, -0.525924, 0.009650,
		11.683105, 15.722477, 20.503344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.588615, 16.553120, 20.322855>,  <11.087770, 16.090624, 20.496588>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.588615, 16.553120, 20.322855> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.779724, 16.209307, 20.250259>,  <11.894389, 16.003019, 20.206701>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.779724, 16.209307, 20.250259>,  <11.588615, 16.553120, 20.322855>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.779724, 16.209307, 20.250259> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452119, 0.417718, -0.788099,
		0.753208, 0.294475, 0.588185,
		0.477771, -0.859532, -0.181491,
		11.923056, 15.951447, 20.195812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.283438, 16.743736, 20.183672>,  <11.588615, 16.553120, 20.322855>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.283438, 16.743736, 20.183672> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.238672, 16.378527, 20.026773>,  <12.211813, 16.159401, 19.932634>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.238672, 16.378527, 20.026773>,  <12.283438, 16.743736, 20.183672>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.238672, 16.378527, 20.026773> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327416, 0.338807, -0.882048,
		0.938229, -0.227142, 0.261022,
		-0.111914, -0.913026, -0.392249,
		12.205098, 16.104618, 19.909100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.051540, 16.426361, 19.907362>,  <12.283438, 16.743736, 20.183672>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.051540, 16.426361, 19.907362> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.728974, 16.276541, 19.724319>,  <12.535435, 16.186649, 19.614494>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.728974, 16.276541, 19.724319>,  <13.051540, 16.426361, 19.907362>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.728974, 16.276541, 19.724319> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309832, 0.391507, -0.866445,
		0.503687, -0.840495, -0.199668,
		-0.806414, -0.374554, -0.457609,
		12.487050, 16.164175, 19.587036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.642345, 15.932832, 19.925373>,  <13.051540, 16.426361, 19.907362>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.642345, 15.932832, 19.925373> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.926908, 16.196533, 20.022770>,  <14.097645, 16.354753, 20.081209>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.926908, 16.196533, 20.022770>,  <13.642345, 15.932832, 19.925373>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.926908, 16.196533, 20.022770> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051136, -0.394111, 0.917639,
		0.700920, -0.640361, -0.314084,
		0.711405, 0.659253, 0.243494,
		14.140329, 16.394308, 20.095818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.099196, 15.592271, 20.413309>,  <13.642345, 15.932832, 19.925373>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.099196, 15.592271, 20.413309> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.157279, 15.985580, 20.457281>,  <14.192129, 16.221567, 20.483665>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.157279, 15.985580, 20.457281>,  <14.099196, 15.592271, 20.413309>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.157279, 15.985580, 20.457281> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008547, -0.112352, 0.993632,
		0.989364, -0.143343, -0.024719,
		0.145207, 0.983275, 0.109932,
		14.200841, 16.280563, 20.490261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.580587, 15.690301, 20.882397>,  <14.099196, 15.592271, 20.413309>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.580587, 15.690301, 20.882397> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.491249, 16.080196, 20.883118>,  <14.437646, 16.314133, 20.883551>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.491249, 16.080196, 20.883118>,  <14.580587, 15.690301, 20.882397>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.491249, 16.080196, 20.883118> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250532, 0.055620, 0.966509,
		0.941993, 0.216316, -0.256626,
		-0.223345, 0.974738, 0.001801,
		14.424246, 16.372618, 20.883657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.205420, 16.039188, 21.087410>,  <14.580587, 15.690301, 20.882397>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.205420, 16.039188, 21.087410> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.873252, 16.248207, 21.164711>,  <14.673951, 16.373619, 21.211092>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.873252, 16.248207, 21.164711>,  <15.205420, 16.039188, 21.087410>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.873252, 16.248207, 21.164711> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202424, -0.040176, 0.978474,
		0.519064, 0.851663, -0.072413,
		-0.830420, 0.522548, 0.193251,
		14.624125, 16.404972, 21.222687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.393314, 16.690912, 21.615992>,  <15.205420, 16.039188, 21.087410>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.393314, 16.690912, 21.615992> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.001065, 16.635511, 21.671413>,  <14.765716, 16.602270, 21.704666>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.001065, 16.635511, 21.671413>,  <15.393314, 16.690912, 21.615992>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.001065, 16.635511, 21.671413> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144620, -0.034676, 0.988880,
		-0.132160, 0.989755, 0.054034,
		-0.980622, -0.138504, 0.138555,
		14.706879, 16.593960, 21.712980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.275005, 16.929102, 22.275084>,  <15.393314, 16.690912, 21.615992>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.275005, 16.929102, 22.275084> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.927392, 16.742334, 22.209639>,  <14.718824, 16.630274, 22.170372>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.927392, 16.742334, 22.209639>,  <15.275005, 16.929102, 22.275084>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.927392, 16.742334, 22.209639> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159012, -0.049560, 0.986032,
		-0.468505, 0.882911, -0.031177,
		-0.869033, -0.466918, -0.163613,
		14.666682, 16.602259, 22.160555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.761583, 17.160198, 22.702238>,  <15.275005, 16.929102, 22.275084>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.761583, 17.160198, 22.702238> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.634613, 16.790955, 22.615416>,  <14.558431, 16.569408, 22.563322>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.634613, 16.790955, 22.615416>,  <14.761583, 17.160198, 22.702238>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.634613, 16.790955, 22.615416> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304919, -0.117380, 0.945117,
		-0.897923, 0.366189, -0.244213,
		-0.317426, -0.923108, -0.217057,
		14.539385, 16.514023, 22.550299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.201240, 17.070362, 23.011845>,  <14.761583, 17.160198, 22.702238>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.201240, 17.070362, 23.011845> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.304215, 16.692757, 22.929317>,  <14.366001, 16.466194, 22.879801>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.304215, 16.692757, 22.929317>,  <14.201240, 17.070362, 23.011845>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.304215, 16.692757, 22.929317> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244271, -0.270157, 0.931315,
		-0.934910, -0.189360, -0.300143,
		0.257439, -0.944012, -0.206317,
		14.381447, 16.409554, 22.867422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.732763, 16.772484, 23.413084>,  <14.201240, 17.070362, 23.011845>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.732763, 16.772484, 23.413084> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.967137, 16.464252, 23.312773>,  <14.107761, 16.279314, 23.252586>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.967137, 16.464252, 23.312773>,  <13.732763, 16.772484, 23.413084>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.967137, 16.464252, 23.312773> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321872, -0.505315, 0.800659,
		-0.743693, -0.388415, -0.544109,
		0.585934, -0.770578, -0.250779,
		14.142918, 16.233080, 23.237539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.316157, 16.121304, 23.384155>,  <13.732763, 16.772484, 23.413084>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.316157, 16.121304, 23.384155> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.703243, 16.046942, 23.452236>,  <13.935494, 16.002325, 23.493084>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.703243, 16.046942, 23.452236>,  <13.316157, 16.121304, 23.384155>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.703243, 16.046942, 23.452236> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238430, -0.456230, 0.857324,
		-0.081727, -0.870226, -0.485826,
		0.967715, -0.185902, 0.170201,
		13.993558, 15.991171, 23.503296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.302631, 15.425857, 23.557657>,  <13.316157, 16.121304, 23.384155>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.302631, 15.425857, 23.557657> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.633017, 15.593378, 23.708595>,  <13.831247, 15.693892, 23.799158>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.633017, 15.593378, 23.708595>,  <13.302631, 15.425857, 23.557657>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.633017, 15.593378, 23.708595> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176917, -0.442978, 0.878903,
		0.535244, -0.792700, -0.291789,
		0.825963, 0.418805, 0.377343,
		13.880805, 15.719020, 23.821798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.611522, 14.979891, 24.015846>,  <13.302631, 15.425857, 23.557657>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.611522, 14.979891, 24.015846> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.789136, 15.310776, 24.153572>,  <13.895704, 15.509307, 24.236208>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.789136, 15.310776, 24.153572>,  <13.611522, 14.979891, 24.015846>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.789136, 15.310776, 24.153572> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232265, -0.264876, 0.935892,
		0.865381, -0.495542, 0.074518,
		0.444036, 0.827211, 0.344316,
		13.922347, 15.558939, 24.256866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.016175, 14.751757, 24.547268>,  <13.611522, 14.979891, 24.015846>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.016175, 14.751757, 24.547268> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.959067, 15.143503, 24.604485>,  <13.924803, 15.378551, 24.638815>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.959067, 15.143503, 24.604485>,  <14.016175, 14.751757, 24.547268>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.959067, 15.143503, 24.604485> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207394, -0.170914, 0.963211,
		0.967783, 0.107853, 0.227516,
		-0.142771, 0.979365, 0.143040,
		13.916236, 15.437313, 24.647396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.430795, 14.850051, 25.186533>,  <14.016175, 14.751757, 24.547268>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.430795, 14.850051, 25.186533> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.153552, 15.133382, 25.133049>,  <13.987206, 15.303380, 25.100960>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.153552, 15.133382, 25.133049>,  <14.430795, 14.850051, 25.186533>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.153552, 15.133382, 25.133049> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282191, -0.095940, 0.954549,
		0.663305, 0.699335, 0.266379,
		-0.693106, 0.708327, -0.133709,
		13.945621, 15.345880, 25.092936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.081362, 15.034317, 25.586863>,  <14.430795, 14.850051, 25.186533>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.081362, 15.034317, 25.586863> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.394390, 14.791471, 25.641993>,  <15.582207, 14.645764, 25.675072>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.394390, 14.791471, 25.641993>,  <15.081362, 15.034317, 25.586863>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.394390, 14.791471, 25.641993> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538299, 0.548639, -0.639711,
		0.312761, 0.574811, 0.756157,
		0.782570, -0.607115, 0.137827,
		15.629161, 14.609337, 25.683340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.711334, 15.469542, 25.770855>,  <15.081362, 15.034317, 25.586863>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.711334, 15.469542, 25.770855> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.848175, 15.122331, 25.626915>,  <15.930280, 14.914004, 25.540550>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.848175, 15.122331, 25.626915>,  <15.711334, 15.469542, 25.770855>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.848175, 15.122331, 25.626915> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598879, 0.496515, -0.628344,
		0.724092, -0.000550, 0.689703,
		0.342102, -0.868028, -0.359852,
		15.950806, 14.861922, 25.518959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.425440, 15.527817, 25.589027>,  <15.711334, 15.469542, 25.770855>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.425440, 15.527817, 25.589027> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.326462, 15.205182, 25.374294>,  <16.267075, 15.011601, 25.245455>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.326462, 15.205182, 25.374294>,  <16.425440, 15.527817, 25.589027>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.326462, 15.205182, 25.374294> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606215, 0.303335, -0.735181,
		0.755827, -0.507353, 0.413907,
		-0.247443, -0.806586, -0.536834,
		16.252228, 14.963206, 25.213243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.181208, 15.308762, 25.314856>,  <16.425440, 15.527817, 25.589027>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.181208, 15.308762, 25.314856> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.887533, 15.181536, 25.074921>,  <16.711329, 15.105200, 24.930960>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.887533, 15.181536, 25.074921>,  <17.181208, 15.308762, 25.314856>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.887533, 15.181536, 25.074921> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519466, 0.305730, -0.797925,
		0.437183, -0.897420, -0.059237,
		-0.734184, -0.318067, -0.599839,
		16.667278, 15.086116, 24.894968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.463871, 15.029128, 24.730919>,  <17.181208, 15.308762, 25.314856>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.463871, 15.029128, 24.730919> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.089539, 15.082530, 24.600447>,  <16.864939, 15.114572, 24.522163>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.089539, 15.082530, 24.600447>,  <17.463871, 15.029128, 24.730919>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.089539, 15.082530, 24.600447> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351785, 0.297192, -0.887651,
		-0.021568, -0.945438, -0.325087,
		-0.935832, 0.133506, -0.326181,
		16.808788, 15.122581, 24.502592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.546749, 14.852758, 24.056396>,  <17.463871, 15.029128, 24.730919>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.546749, 14.852758, 24.056396> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.200117, 15.052369, 24.055033>,  <16.992138, 15.172135, 24.054214>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.200117, 15.052369, 24.055033>,  <17.546749, 14.852758, 24.056396>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.200117, 15.052369, 24.055033> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151177, 0.256000, -0.954782,
		-0.475590, -0.827910, -0.297286,
		-0.866579, 0.499028, -0.003410,
		16.940144, 15.202078, 24.054010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.297205, 14.670202, 23.490597>,  <17.546749, 14.852758, 24.056396>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.297205, 14.670202, 23.490597> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.121134, 15.016912, 23.584360>,  <17.015491, 15.224937, 23.640619>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.121134, 15.016912, 23.584360>,  <17.297205, 14.670202, 23.490597>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.121134, 15.016912, 23.584360> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289538, 0.384134, -0.876704,
		-0.849948, -0.318035, -0.420051,
		-0.440178, 0.866773, 0.234410,
		16.989080, 15.276943, 23.654684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.972675, 14.883427, 22.945251>,  <17.297205, 14.670202, 23.490597>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.972675, 14.883427, 22.945251> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.980215, 15.244218, 23.117800>,  <16.984739, 15.460692, 23.221329>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.980215, 15.244218, 23.117800>,  <16.972675, 14.883427, 22.945251>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.980215, 15.244218, 23.117800> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023262, 0.430936, -0.902083,
		-0.999552, 0.027036, -0.012859,
		0.018847, 0.901977, 0.431372,
		16.985868, 15.514812, 23.247211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.482317, 15.303127, 22.627251>,  <16.972675, 14.883427, 22.945251>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.482317, 15.303127, 22.627251> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.748516, 15.557293, 22.783897>,  <16.908236, 15.709792, 22.877886>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.748516, 15.557293, 22.783897>,  <16.482317, 15.303127, 22.627251>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.748516, 15.557293, 22.783897> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040883, 0.492852, -0.869152,
		-0.745281, 0.594428, 0.302014,
		0.665496, 0.635415, 0.391615,
		16.948166, 15.747917, 22.901382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.320181, 16.026987, 22.421217>,  <16.482317, 15.303127, 22.627251>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.320181, 16.026987, 22.421217> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.694515, 16.073662, 22.554239>,  <16.919115, 16.101667, 22.634052>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.694515, 16.073662, 22.554239>,  <16.320181, 16.026987, 22.421217>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.694515, 16.073662, 22.554239> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231417, 0.508225, -0.829550,
		-0.265813, 0.853283, 0.448612,
		0.935836, 0.116688, 0.332557,
		16.975266, 16.108667, 22.654007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.502724, 16.778671, 22.313885>,  <16.320181, 16.026987, 22.421217>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.502724, 16.778671, 22.313885> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.837931, 16.562490, 22.343920>,  <17.039055, 16.432781, 22.361940>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.837931, 16.562490, 22.343920>,  <16.502724, 16.778671, 22.313885>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.837931, 16.562490, 22.343920> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340486, 0.410422, -0.845945,
		0.426378, 0.734482, 0.527957,
		0.838016, -0.540454, 0.075086,
		17.089336, 16.400354, 22.366446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.029928, 17.163633, 22.091669>,  <16.502724, 16.778671, 22.313885>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.029928, 17.163633, 22.091669> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.157057, 16.786997, 22.047131>,  <17.233334, 16.561016, 22.020407>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.157057, 16.786997, 22.047131>,  <17.029928, 17.163633, 22.091669>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.157057, 16.786997, 22.047131> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345825, 0.224465, -0.911054,
		0.882833, 0.251047, 0.396965,
		0.317823, -0.941589, -0.111346,
		17.252403, 16.504520, 22.013727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.562902, 17.275320, 21.699707>,  <17.029928, 17.163633, 22.091669>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.562902, 17.275320, 21.699707> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.524836, 16.879047, 21.660742>,  <17.501995, 16.641283, 21.637362>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.524836, 16.879047, 21.660742>,  <17.562902, 17.275320, 21.699707>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.524836, 16.879047, 21.660742> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323179, 0.061810, -0.944317,
		0.941540, -0.121351, 0.314286,
		-0.095168, -0.990683, -0.097415,
		17.496284, 16.581842, 21.631517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.053198, 17.070852, 21.260309>,  <17.562902, 17.275320, 21.699707>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.053198, 17.070852, 21.260309> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.855343, 16.724930, 21.225801>,  <17.736629, 16.517376, 21.205097>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.855343, 16.724930, 21.225801>,  <18.053198, 17.070852, 21.260309>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.855343, 16.724930, 21.225801> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242766, -0.042174, -0.969168,
		0.834504, -0.500331, 0.230807,
		-0.494639, -0.864807, -0.086269,
		17.706951, 16.465488, 21.199921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<10.036775, 22.146509, 14.303785> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.721776, 22.023283, 14.090265>,  <9.532777, 21.949347, 13.962153>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.721776, 22.023283, 14.090265>,  <10.036775, 22.146509, 14.303785>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.721776, 22.023283, 14.090265> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142126, 0.751995, -0.643665,
		0.599706, -0.582752, -0.548410,
		-0.787498, -0.308066, -0.533799,
		9.485527, 21.930862, 13.930125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.028897, 22.889164, 14.482773>,  <10.036775, 22.146509, 14.303785>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.028897, 22.889164, 14.482773> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.749570, 22.604448, 14.452559>,  <9.581973, 22.433619, 14.434432>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.749570, 22.604448, 14.452559>,  <10.028897, 22.889164, 14.482773>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.749570, 22.604448, 14.452559> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476884, 0.383956, 0.790670,
		-0.533791, 0.588160, -0.607565,
		-0.698318, -0.711791, -0.075532,
		9.540074, 22.390911, 14.429900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.333681, 23.168831, 14.562499>,  <10.028897, 22.889164, 14.482773>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.333681, 23.168831, 14.562499> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.279066, 22.793407, 14.689286>,  <9.246297, 22.568153, 14.765358>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.279066, 22.793407, 14.689286>,  <9.333681, 23.168831, 14.562499>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.279066, 22.793407, 14.689286> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601401, 0.332787, 0.726340,
		-0.787194, -0.091452, -0.609887,
		-0.136538, -0.938557, 0.316967,
		9.238105, 22.511841, 14.784376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.758063, 23.258739, 13.839674>,  <9.333681, 23.168831, 14.562499>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.758063, 23.258739, 13.839674> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.704463, 23.615963, 14.011481>,  <9.672302, 23.830297, 14.114566>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.704463, 23.615963, 14.011481>,  <9.758063, 23.258739, 13.839674>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.704463, 23.615963, 14.011481> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.660752, 0.242501, -0.710352,
		-0.738546, -0.378994, 0.557596,
		-0.134001, 0.893061, 0.429519,
		9.664263, 23.883881, 14.140337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.082967, 23.416977, 13.861914>,  <9.758063, 23.258739, 13.839674>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.082967, 23.416977, 13.861914> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.333376, 23.727829, 13.836112>,  <9.483622, 23.914341, 13.820631>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.333376, 23.727829, 13.836112>,  <9.082967, 23.416977, 13.861914>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.333376, 23.727829, 13.836112> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635629, 0.460612, -0.619526,
		-0.451741, 0.428839, 0.782322,
		0.626024, 0.777131, -0.064505,
		9.521183, 23.960968, 13.816760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.701766, 23.798841, 14.337926>,  <9.082967, 23.416977, 13.861914>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.701766, 23.798841, 14.337926> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.729395, 23.480719, 14.578830>,  <8.745972, 23.289845, 14.723372>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.729395, 23.480719, 14.578830>,  <8.701766, 23.798841, 14.337926>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.729395, 23.480719, 14.578830> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072938, 0.598060, 0.798126,
		-0.994942, -0.099055, -0.016699,
		0.069071, -0.795306, 0.602260,
		8.750116, 23.242126, 14.759508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.114514, 23.637705, 14.726524>,  <8.701766, 23.798841, 14.337926>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.114514, 23.637705, 14.726524> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.399165, 23.486294, 14.963270>,  <8.569956, 23.395447, 15.105318>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.399165, 23.486294, 14.963270>,  <8.114514, 23.637705, 14.726524>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.399165, 23.486294, 14.963270> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283983, 0.615574, 0.735135,
		-0.642604, -0.691222, 0.330564,
		0.711628, -0.378526, 0.591865,
		8.612654, 23.372736, 15.140830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.797928, 23.416265, 15.344718>,  <8.114514, 23.637705, 14.726524>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.797928, 23.416265, 15.344718> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.178901, 23.517033, 15.413315>,  <8.407485, 23.577494, 15.454473>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.178901, 23.517033, 15.413315>,  <7.797928, 23.416265, 15.344718>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.178901, 23.517033, 15.413315> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298867, 0.662100, 0.687242,
		0.059583, -0.705805, 0.705896,
		0.952433, 0.251918, 0.171492,
		8.464630, 23.592607, 15.464763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.075131, 23.811710, 15.099205>,  <7.797928, 23.416265, 15.344718>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.075131, 23.811710, 15.099205> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.217856, 23.448980, 15.009447>,  <7.303491, 23.231342, 14.955592>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.217856, 23.448980, 15.009447>,  <7.075131, 23.811710, 15.099205>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.217856, 23.448980, 15.009447> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706146, 0.104559, 0.700304,
		-0.611592, -0.408331, 0.677659,
		0.356811, -0.906826, -0.224394,
		7.324899, 23.176933, 14.942129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.689374, 23.184589, 15.215250>,  <7.075131, 23.811710, 15.099205>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.689374, 23.184589, 15.215250> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.576546, 23.425056, 15.514325>,  <6.508850, 23.569336, 15.693770>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.576546, 23.425056, 15.514325>,  <6.689374, 23.184589, 15.215250>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.576546, 23.425056, 15.514325> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028874, -0.784299, 0.619711,
		0.958959, 0.153213, 0.238585,
		-0.282070, 0.601166, 0.747687,
		6.491925, 23.605406, 15.738631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.967822, 23.051537, 15.931325>,  <6.689374, 23.184589, 15.215250>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.967822, 23.051537, 15.931325> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.600748, 23.205935, 15.968983>,  <6.380503, 23.298573, 15.991577>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.600748, 23.205935, 15.968983>,  <6.967822, 23.051537, 15.931325>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.600748, 23.205935, 15.968983> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248536, -0.742577, 0.621941,
		0.309974, 0.547348, 0.777385,
		-0.917685, 0.385993, 0.094144,
		6.325442, 23.321732, 15.997226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.840237, 23.204226, 16.697556>,  <6.967822, 23.051537, 15.931325>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.840237, 23.204226, 16.697556> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.490417, 23.154247, 16.510128>,  <6.280526, 23.124260, 16.397673>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.490417, 23.154247, 16.510128>,  <6.840237, 23.204226, 16.697556>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.490417, 23.154247, 16.510128> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279725, -0.659316, 0.697894,
		-0.396131, 0.741412, 0.541653,
		-0.874548, -0.124944, -0.468567,
		6.228053, 23.116764, 16.369558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.402683, 23.100704, 17.271259>,  <6.840237, 23.204226, 16.697556>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.402683, 23.100704, 17.271259> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.225104, 22.957027, 16.942896>,  <6.118557, 22.870821, 16.745878>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.225104, 22.957027, 16.942896>,  <6.402683, 23.100704, 17.271259>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.225104, 22.957027, 16.942896> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365049, -0.764163, 0.531784,
		-0.818321, 0.535756, 0.208125,
		-0.443948, -0.359194, -0.820908,
		6.091920, 22.849270, 16.696623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.694036, 22.925329, 17.491116>,  <6.402683, 23.100704, 17.271259>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.694036, 22.925329, 17.491116> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.784820, 22.699188, 17.173912>,  <5.839291, 22.563503, 16.983589>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.784820, 22.699188, 17.173912>,  <5.694036, 22.925329, 17.491116>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.784820, 22.699188, 17.173912> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335048, -0.809884, 0.481488,
		-0.914457, 0.156418, -0.373232,
		0.226961, -0.565351, -0.793011,
		5.852909, 22.529583, 16.936008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.089439, 22.336246, 17.435064>,  <5.694036, 22.925329, 17.491116>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.089439, 22.336246, 17.435064> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.406289, 22.209372, 17.226477>,  <5.596398, 22.133245, 17.101324>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.406289, 22.209372, 17.226477>,  <5.089439, 22.336246, 17.435064>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.406289, 22.209372, 17.226477> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108103, -0.913765, 0.391594,
		-0.600712, -0.253818, -0.758104,
		0.792123, -0.317189, -0.521471,
		5.643926, 22.114216, 17.070036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.884907, 21.784781, 17.166300>,  <5.089439, 22.336246, 17.435064>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.884907, 21.784781, 17.166300> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.279583, 21.733631, 17.126120>,  <5.516389, 21.702942, 17.102011>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.279583, 21.733631, 17.126120>,  <4.884907, 21.784781, 17.166300>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.279583, 21.733631, 17.126120> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114771, -0.985259, 0.126857,
		-0.115193, -0.113640, -0.986822,
		0.986691, -0.127872, -0.100452,
		5.575590, 21.695271, 17.095984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.873367, 21.331142, 16.732079>,  <4.884907, 21.784781, 17.166300>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.873367, 21.331142, 16.732079> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.232223, 21.320330, 16.908447>,  <5.447536, 21.313843, 17.014269>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.232223, 21.320330, 16.908447>,  <4.873367, 21.331142, 16.732079>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.232223, 21.320330, 16.908447> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052755, -0.997539, 0.046181,
		0.438590, -0.064692, -0.896356,
		0.897138, -0.027033, 0.440923,
		5.501364, 21.312220, 17.040724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.304164, 20.792627, 16.407421>,  <4.873367, 21.331142, 16.732079>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.304164, 20.792627, 16.407421> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.530070, 20.841051, 16.733952>,  <5.665614, 20.870106, 16.929869>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.530070, 20.841051, 16.733952>,  <5.304164, 20.792627, 16.407421>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.530070, 20.841051, 16.733952> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003978, -0.989570, 0.143998,
		0.825242, -0.078078, -0.559356,
		0.564765, 0.121058, 0.816324,
		5.699500, 20.877369, 16.978849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.769524, 20.201252, 16.309252>,  <5.304164, 20.792627, 16.407421>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.769524, 20.201252, 16.309252> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.766562, 20.311615, 16.693714>,  <5.764784, 20.377832, 16.924391>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.766562, 20.311615, 16.693714>,  <5.769524, 20.201252, 16.309252>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.766562, 20.311615, 16.693714> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035633, -0.960498, 0.275995,
		0.999337, 0.036293, -0.002717,
		-0.007407, 0.275909, 0.961155,
		5.764339, 20.394388, 16.982061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.267106, 19.929115, 16.567902>,  <5.769524, 20.201252, 16.309252>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.267106, 19.929115, 16.567902> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.006451, 19.982042, 16.866663>,  <5.850058, 20.013798, 17.045919>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.006451, 19.982042, 16.866663>,  <6.267106, 19.929115, 16.567902>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.006451, 19.982042, 16.866663> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009169, -0.985970, 0.166669,
		0.758475, 0.101760, 0.643708,
		-0.651637, 0.132317, 0.746901,
		5.810959, 20.021738, 17.090733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.496293, 19.536489, 17.165890>,  <6.267106, 19.929115, 16.567902>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.496293, 19.536489, 17.165890> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.112419, 19.569483, 17.273371>,  <5.882095, 19.589279, 17.337860>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.112419, 19.569483, 17.273371>,  <6.496293, 19.536489, 17.165890>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.112419, 19.569483, 17.273371> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118181, -0.985776, -0.119495,
		0.255024, -0.146433, 0.955782,
		-0.959685, 0.082481, 0.268703,
		5.824513, 19.594227, 17.353981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.367727, 18.975397, 17.619673>,  <6.496293, 19.536489, 17.165890>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.367727, 18.975397, 17.619673> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.991464, 19.072145, 17.524458>,  <5.765706, 19.130194, 17.467329>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.991464, 19.072145, 17.524458>,  <6.367727, 18.975397, 17.619673>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.991464, 19.072145, 17.524458> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201679, -0.962566, -0.181087,
		-0.272927, -0.122334, 0.954225,
		-0.940658, 0.241870, -0.238038,
		5.709267, 19.144707, 17.453047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.897757, 18.591625, 18.043587>,  <6.367727, 18.975397, 17.619673>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.897757, 18.591625, 18.043587> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.691071, 18.686050, 17.714399>,  <5.567060, 18.742706, 17.516886>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.691071, 18.686050, 17.714399>,  <5.897757, 18.591625, 18.043587>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.691071, 18.686050, 17.714399> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195016, -0.968420, -0.155340,
		-0.833651, 0.080226, 0.546433,
		-0.516714, 0.236063, -0.822970,
		5.536057, 18.756868, 17.467508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.336296, 18.001062, 18.098289>,  <5.897757, 18.591625, 18.043587>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.336296, 18.001062, 18.098289> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.331462, 18.176592, 17.738894>,  <5.328562, 18.281910, 17.523256>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.331462, 18.176592, 17.738894>,  <5.336296, 18.001062, 18.098289>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.331462, 18.176592, 17.738894> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342029, -0.846171, -0.408670,
		-0.939612, 0.302372, 0.160315,
		-0.012083, 0.438823, -0.898492,
		5.327837, 18.308239, 17.469345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.696704, 17.753479, 17.765072>,  <5.336296, 18.001062, 18.098289>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.696704, 17.753479, 17.765072> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.908325, 17.940092, 17.481537>,  <5.035297, 18.052061, 17.311417>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.908325, 17.940092, 17.481537>,  <4.696704, 17.753479, 17.765072>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.908325, 17.940092, 17.481537> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332550, -0.654515, -0.678985,
		-0.780714, 0.594942, -0.191126,
		0.529052, 0.466534, -0.708837,
		5.067040, 18.080053, 17.268887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.207004, 18.008162, 17.218218>,  <4.696704, 17.753479, 17.765072>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.207004, 18.008162, 17.218218> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.567557, 17.952738, 17.054115>,  <4.783888, 17.919483, 16.955654>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.567557, 17.952738, 17.054115>,  <4.207004, 18.008162, 17.218218>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.567557, 17.952738, 17.054115> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382090, -0.700307, -0.602974,
		-0.203758, 0.700265, -0.684186,
		0.901382, -0.138560, -0.410258,
		4.837972, 17.911169, 16.931038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.154908, 18.077356, 16.447651>,  <4.207004, 18.008162, 17.218218>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.154908, 18.077356, 16.447651> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.490846, 17.872213, 16.518801>,  <4.692409, 17.749128, 16.561491>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.490846, 17.872213, 16.518801>,  <4.154908, 18.077356, 16.447651>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.490846, 17.872213, 16.518801> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311452, -0.723642, -0.615906,
		0.444589, 0.461866, -0.767477,
		0.839844, -0.512857, 0.177874,
		4.742799, 17.718357, 16.572163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.335343, 17.859015, 15.812626>,  <4.154908, 18.077356, 16.447651>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.335343, 17.859015, 15.812626> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.560867, 17.622009, 16.042772>,  <4.696181, 17.479805, 16.180861>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.560867, 17.622009, 16.042772>,  <4.335343, 17.859015, 15.812626>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.560867, 17.622009, 16.042772> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098792, -0.740029, -0.665279,
		0.819975, 0.318249, -0.475771,
		0.563809, -0.592515, 0.575365,
		4.730010, 17.444254, 16.215382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.767908, 17.466446, 15.416931>,  <4.335343, 17.859015, 15.812626>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.767908, 17.466446, 15.416931> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.775455, 17.245672, 15.750401>,  <4.779982, 17.113207, 15.950482>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.775455, 17.245672, 15.750401>,  <4.767908, 17.466446, 15.416931>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.775455, 17.245672, 15.750401> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214747, -0.816598, -0.535772,
		0.976487, -0.168921, -0.133932,
		0.018866, -0.551936, 0.833673,
		4.781114, 17.080091, 16.000502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.075089, 16.882355, 15.243827>,  <4.767908, 17.466446, 15.416931>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.075089, 16.882355, 15.243827> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.910600, 16.764263, 15.588787>,  <4.811906, 16.693407, 15.795763>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.910600, 16.764263, 15.588787>,  <5.075089, 16.882355, 15.243827>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.910600, 16.764263, 15.588787> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133808, -0.916297, -0.377486,
		0.901661, -0.270627, 0.337297,
		-0.411222, -0.295231, 0.862401,
		4.787233, 16.675694, 15.847507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.394094, 16.210083, 15.486188>,  <5.075089, 16.882355, 15.243827>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.394094, 16.210083, 15.486188> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.040200, 16.246225, 15.669089>,  <4.827864, 16.267910, 15.778831>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.040200, 16.246225, 15.669089>,  <5.394094, 16.210083, 15.486188>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.040200, 16.246225, 15.669089> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252195, -0.917818, -0.306606,
		0.391973, -0.386582, 0.834812,
		-0.884734, 0.090354, 0.457255,
		4.774779, 16.273331, 15.806266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.149390, 15.876839, 15.464291>,  <5.394094, 16.210083, 15.486188>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.149390, 15.876839, 15.464291> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.474409, 15.869820, 15.231238>,  <6.669420, 15.865608, 15.091407>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.474409, 15.869820, 15.231238>,  <6.149390, 15.876839, 15.464291>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.474409, 15.869820, 15.231238> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391143, 0.757506, 0.522678,
		0.432173, -0.652593, 0.622374,
		0.812548, -0.017549, -0.582631,
		6.718173, 15.864555, 15.056449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.754848, 15.853181, 15.864073>,  <6.149390, 15.876839, 15.464291>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.754848, 15.853181, 15.864073> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.883478, 16.004887, 15.517029>,  <6.960657, 16.095909, 15.308803>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.883478, 16.004887, 15.517029>,  <6.754848, 15.853181, 15.864073>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.883478, 16.004887, 15.517029> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442487, 0.749886, 0.491809,
		0.837134, -0.542061, 0.073327,
		0.321577, 0.379263, -0.867610,
		6.979951, 16.118666, 15.256745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.375856, 16.060007, 16.026806>,  <6.754848, 15.853181, 15.864073>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.375856, 16.060007, 16.026806> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.310350, 16.246359, 15.678981>,  <7.271047, 16.358170, 15.470285>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.310350, 16.246359, 15.678981>,  <7.375856, 16.060007, 16.026806>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.310350, 16.246359, 15.678981> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493863, 0.801769, 0.336548,
		0.853979, -0.374330, -0.361382,
		-0.163765, 0.465878, -0.869562,
		7.261220, 16.386122, 15.418112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.113783, 16.236366, 15.719840>,  <7.375856, 16.060007, 16.026806>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.113783, 16.236366, 15.719840> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.834817, 16.473660, 15.558997>,  <7.667438, 16.616035, 15.462491>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.834817, 16.473660, 15.558997>,  <8.113783, 16.236366, 15.719840>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.834817, 16.473660, 15.558997> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547597, 0.803062, 0.235010,
		0.462333, -0.056294, -0.884918,
		-0.697414, 0.593231, -0.402108,
		7.625593, 16.651628, 15.438365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.451458, 16.846466, 15.295154>,  <8.113783, 16.236366, 15.719840>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.451458, 16.846466, 15.295154> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.088443, 16.983782, 15.391921>,  <7.870634, 17.066172, 15.449982>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.088443, 16.983782, 15.391921>,  <8.451458, 16.846466, 15.295154>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.088443, 16.983782, 15.391921> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406397, 0.863126, 0.299760,
		-0.105901, 0.370359, -0.922832,
		-0.907539, 0.343291, 0.241919,
		7.816181, 17.086769, 15.464497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.408317, 17.472816, 14.961469>,  <8.451458, 16.846466, 15.295154>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.408317, 17.472816, 14.961469> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.167550, 17.462858, 15.280737>,  <8.023090, 17.456882, 15.472298>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.167550, 17.462858, 15.280737>,  <8.408317, 17.472816, 14.961469>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.167550, 17.462858, 15.280737> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347852, 0.891529, 0.290130,
		-0.718815, 0.452279, -0.527966,
		-0.601917, -0.024896, 0.798171,
		7.986975, 17.455389, 15.520188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.269986, 18.190546, 15.077268>,  <8.408317, 17.472816, 14.961469>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.269986, 18.190546, 15.077268> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.151056, 18.004526, 15.410812>,  <8.079699, 17.892914, 15.610939>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.151056, 18.004526, 15.410812>,  <8.269986, 18.190546, 15.077268>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.151056, 18.004526, 15.410812> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129911, 0.845531, 0.517880,
		-0.945897, 0.262307, -0.190983,
		-0.297326, -0.465050, 0.833862,
		8.061858, 17.865011, 15.660971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.730981, 18.624527, 15.361671>,  <8.269986, 18.190546, 15.077268>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.730981, 18.624527, 15.361671> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.861004, 18.403135, 15.668396>,  <7.939018, 18.270300, 15.852431>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.861004, 18.403135, 15.668396>,  <7.730981, 18.624527, 15.361671>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.861004, 18.403135, 15.668396> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006041, 0.812045, 0.583564,
		-0.945675, -0.185059, 0.267305,
		0.325057, -0.553477, 0.766812,
		7.958521, 18.237093, 15.898439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.229577, 18.825294, 15.899175>,  <7.730981, 18.624527, 15.361671>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.229577, 18.825294, 15.899175> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.540068, 18.658583, 16.088390>,  <7.726362, 18.558556, 16.201920>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.540068, 18.658583, 16.088390>,  <7.229577, 18.825294, 15.899175>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.540068, 18.658583, 16.088390> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094993, 0.664430, 0.741289,
		-0.623256, -0.620344, 0.476157,
		0.776227, -0.416781, 0.473038,
		7.772936, 18.533548, 16.230301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.020220, 18.645176, 16.594959>,  <7.229577, 18.825294, 15.899175>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.020220, 18.645176, 16.594959> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.413888, 18.706736, 16.630117>,  <7.650089, 18.743671, 16.651213>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.413888, 18.706736, 16.630117>,  <7.020220, 18.645176, 16.594959>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.413888, 18.706736, 16.630117> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165695, 0.622995, 0.764475,
		0.062894, -0.766937, 0.638633,
		0.984170, 0.153899, 0.087896,
		7.709139, 18.752905, 16.656487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.260586, 18.622328, 17.275572>,  <7.020220, 18.645176, 16.594959>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.260586, 18.622328, 17.275572> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.561273, 18.816044, 17.096516>,  <7.741685, 18.932274, 16.989082>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.561273, 18.816044, 17.096516>,  <7.260586, 18.622328, 17.275572>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.561273, 18.816044, 17.096516> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081738, 0.741959, 0.665444,
		0.654399, -0.463637, 0.597329,
		0.751719, 0.484290, -0.447641,
		7.786788, 18.961330, 16.962223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.776161, 18.752041, 17.748831>,  <7.260586, 18.622328, 17.275572>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.776161, 18.752041, 17.748831> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.814292, 19.014719, 17.449589>,  <7.837171, 19.172325, 17.270042>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.814292, 19.014719, 17.449589>,  <7.776161, 18.752041, 17.748831>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.814292, 19.014719, 17.449589> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008543, 0.750962, 0.660290,
		0.995409, -0.069335, 0.065978,
		0.095328, 0.656695, -0.748107,
		7.842891, 19.211727, 17.225157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.444757, 19.012350, 17.885721>,  <7.776161, 18.752041, 17.748831>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.444757, 19.012350, 17.885721> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.284621, 19.273798, 17.628813>,  <8.188540, 19.430666, 17.474669>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.284621, 19.273798, 17.628813>,  <8.444757, 19.012350, 17.885721>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.284621, 19.273798, 17.628813> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187051, 0.744419, 0.640978,
		0.897072, 0.136472, -0.420282,
		-0.400341, 0.653618, -0.642270,
		8.164519, 19.469883, 17.436132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.875285, 19.563019, 18.008354>,  <8.444757, 19.012350, 17.885721>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.875285, 19.563019, 18.008354> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.546151, 19.705456, 17.831203>,  <8.348671, 19.790918, 17.724913>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.546151, 19.705456, 17.831203>,  <8.875285, 19.563019, 18.008354>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.546151, 19.705456, 17.831203> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110180, 0.864508, 0.490395,
		0.557497, 0.354717, -0.750581,
		-0.822835, 0.356093, -0.442878,
		8.299301, 19.812284, 17.698339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.064268, 20.220486, 17.823380>,  <8.875285, 19.563019, 18.008354>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.064268, 20.220486, 17.823380> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.664348, 20.212524, 17.824095>,  <8.424396, 20.207748, 17.824524>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.664348, 20.212524, 17.824095>,  <9.064268, 20.220486, 17.823380>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.664348, 20.212524, 17.824095> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017796, 0.927571, 0.373223,
		-0.009089, 0.373117, -0.927740,
		-0.999800, -0.019903, 0.001791,
		8.364408, 20.206554, 17.824633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.978150, 20.881067, 17.712523>,  <9.064268, 20.220486, 17.823380>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.978150, 20.881067, 17.712523> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.607594, 20.782837, 17.826710>,  <8.385260, 20.723898, 17.895222>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.607594, 20.782837, 17.826710>,  <8.978150, 20.881067, 17.712523>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.607594, 20.782837, 17.826710> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187027, 0.958037, 0.217223,
		-0.326833, 0.147844, -0.933446,
		-0.926391, -0.245575, 0.285468,
		8.329676, 20.709164, 17.912350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.464282, 21.334852, 17.434397>,  <8.978150, 20.881067, 17.712523>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.464282, 21.334852, 17.434397> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.299018, 21.177345, 17.762846>,  <8.199860, 21.082842, 17.959915>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.299018, 21.177345, 17.762846>,  <8.464282, 21.334852, 17.434397>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.299018, 21.177345, 17.762846> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187904, 0.919141, 0.346225,
		-0.891061, -0.011245, -0.453744,
		-0.413161, -0.393768, 0.821124,
		8.175070, 21.059216, 18.009184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.849899, 21.739229, 17.664040>,  <8.464282, 21.334852, 17.434397>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.849899, 21.739229, 17.664040> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.922795, 21.531675, 17.998116>,  <7.966532, 21.407143, 18.198561>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.922795, 21.531675, 17.998116>,  <7.849899, 21.739229, 17.664040>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.922795, 21.531675, 17.998116> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329318, 0.768147, 0.549090,
		-0.926466, -0.375109, -0.030893,
		0.182239, -0.518887, 0.835192,
		7.977467, 21.376009, 18.248672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.259543, 21.699831, 18.135851>,  <7.849899, 21.739229, 17.664040>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.259543, 21.699831, 18.135851> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.597950, 21.656164, 18.344597>,  <7.800993, 21.629965, 18.469845>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.597950, 21.656164, 18.344597>,  <7.259543, 21.699831, 18.135851>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.597950, 21.656164, 18.344597> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367299, 0.590154, 0.718895,
		-0.386458, -0.799876, 0.459183,
		0.846015, -0.109166, 0.521863,
		7.851754, 21.623415, 18.501156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.997087, 21.532463, 18.813971>,  <7.259543, 21.699831, 18.135851>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.997087, 21.532463, 18.813971> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.372215, 21.670395, 18.829914>,  <7.597291, 21.753153, 18.839479>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.372215, 21.670395, 18.829914>,  <6.997087, 21.532463, 18.813971>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.372215, 21.670395, 18.829914> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285074, 0.699568, 0.655239,
		0.198061, -0.625858, 0.754369,
		0.937819, 0.344828, 0.039859,
		7.653561, 21.773844, 18.841871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.183970, 21.610041, 19.564081>,  <6.997087, 21.532463, 18.813971>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.183970, 21.610041, 19.564081> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.445741, 21.830765, 19.357304>,  <7.602803, 21.963200, 19.233236>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.445741, 21.830765, 19.357304>,  <7.183970, 21.610041, 19.564081>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.445741, 21.830765, 19.357304> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033410, 0.661907, 0.748841,
		0.755387, -0.507332, 0.414734,
		0.654427, 0.551809, -0.516946,
		7.642069, 21.996307, 19.202219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<17.619360, 11.541844, 26.018675> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.244955, 11.618997, 25.900909>,  <17.020311, 11.665288, 25.830250>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.244955, 11.618997, 25.900909>,  <17.619360, 11.541844, 26.018675>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.244955, 11.618997, 25.900909> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330439, -0.193497, 0.923780,
		0.121211, 0.961954, 0.244851,
		-0.936012, 0.192880, -0.294413,
		16.964151, 11.676861, 25.812586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.218134, 11.967069, 26.528330>,  <17.619360, 11.541844, 26.018675>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.218134, 11.967069, 26.528330> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.935160, 11.779396, 26.316896>,  <16.765375, 11.666793, 26.190037>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.935160, 11.779396, 26.316896>,  <17.218134, 11.967069, 26.528330>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.935160, 11.779396, 26.316896> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308855, -0.467474, 0.828298,
		-0.635721, 0.749225, 0.185800,
		-0.707437, -0.469181, -0.528584,
		16.722929, 11.638641, 26.158321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.670265, 12.020986, 26.994110>,  <17.218134, 11.967069, 26.528330>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.670265, 12.020986, 26.994110> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.581310, 11.721506, 26.744312>,  <16.527937, 11.541819, 26.594433>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.581310, 11.721506, 26.744312>,  <16.670265, 12.020986, 26.994110>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.581310, 11.721506, 26.744312> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230760, -0.581914, 0.779824,
		-0.947256, 0.317530, -0.043361,
		-0.222385, -0.748699, -0.624495,
		16.514595, 11.496897, 26.556963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.024878, 11.838777, 27.249256>,  <16.670265, 12.020986, 26.994110>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.024878, 11.838777, 27.249256> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.179565, 11.533209, 27.042618>,  <16.272379, 11.349868, 26.918634>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.179565, 11.533209, 27.042618>,  <16.024878, 11.838777, 27.249256>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.179565, 11.533209, 27.042618> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358309, -0.640637, 0.679116,
		-0.849742, -0.077527, -0.521467,
		0.386721, -0.763920, -0.516598,
		16.295582, 11.304033, 26.887638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.447942, 11.466761, 27.213406>,  <16.024878, 11.838777, 27.249256>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.447942, 11.466761, 27.213406> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.775737, 11.243485, 27.161457>,  <15.972414, 11.109521, 27.130287>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.775737, 11.243485, 27.161457>,  <15.447942, 11.466761, 27.213406>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.775737, 11.243485, 27.161457> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379808, -0.698673, 0.606302,
		-0.429168, -0.447531, -0.784558,
		0.819488, -0.558187, -0.129872,
		16.021584, 11.076029, 27.122496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.219788, 10.836211, 27.228170>,  <15.447942, 11.466761, 27.213406>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.219788, 10.836211, 27.228170> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.611060, 10.758288, 27.257053>,  <15.845823, 10.711535, 27.274384>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.611060, 10.758288, 27.257053>,  <15.219788, 10.836211, 27.228170>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.611060, 10.758288, 27.257053> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187834, -0.680726, 0.708047,
		-0.088778, -0.706161, -0.702464,
		0.978180, -0.194806, 0.072208,
		15.904514, 10.699846, 27.278715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.277230, 10.151583, 27.207705>,  <15.219788, 10.836211, 27.228170>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.277230, 10.151583, 27.207705> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.617894, 10.268197, 27.381914>,  <15.822292, 10.338166, 27.486439>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.617894, 10.268197, 27.381914>,  <15.277230, 10.151583, 27.207705>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.617894, 10.268197, 27.381914> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190338, -0.602207, 0.775318,
		0.488309, -0.743205, -0.457385,
		0.851660, 0.291537, 0.435523,
		15.873392, 10.355658, 27.512571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.679655, 9.487288, 27.468382>,  <15.277230, 10.151583, 27.207705>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.679655, 9.487288, 27.468382> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.761686, 9.828362, 27.660580>,  <15.810905, 10.033006, 27.775898>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.761686, 9.828362, 27.660580>,  <15.679655, 9.487288, 27.468382>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.761686, 9.828362, 27.660580> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145675, -0.458870, 0.876480,
		0.967844, -0.249743, 0.030111,
		0.205077, 0.852682, 0.480496,
		15.823210, 10.084167, 27.804728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.025713, 9.344343, 28.090414>,  <15.679655, 9.487288, 27.468382>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.025713, 9.344343, 28.090414> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.918808, 9.717710, 28.186165>,  <15.854665, 9.941730, 28.243614>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.918808, 9.717710, 28.186165>,  <16.025713, 9.344343, 28.090414>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.918808, 9.717710, 28.186165> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162798, -0.288578, 0.943514,
		0.949772, 0.213197, 0.229085,
		-0.267264, 0.933418, 0.239375,
		15.838629, 9.997736, 28.257977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.234198, 9.337048, 28.783220>,  <16.025713, 9.344343, 28.090414>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.234198, 9.337048, 28.783220> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.019178, 9.674149, 28.771843>,  <15.890166, 9.876409, 28.765017>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.019178, 9.674149, 28.771843>,  <16.234198, 9.337048, 28.783220>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.019178, 9.674149, 28.771843> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320002, -0.172674, 0.931548,
		0.780153, 0.509856, 0.362503,
		-0.537550, 0.842752, -0.028443,
		15.857913, 9.926974, 28.763309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.418633, 9.747009, 29.378756>,  <16.234198, 9.337048, 28.783220>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.418633, 9.747009, 29.378756> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.056721, 9.848168, 29.241692>,  <15.839574, 9.908864, 29.159452>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.056721, 9.848168, 29.241692>,  <16.418633, 9.747009, 29.378756>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.056721, 9.848168, 29.241692> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408211, -0.285646, 0.867047,
		0.121395, 0.924364, 0.361682,
		-0.904780, 0.252898, -0.342660,
		15.785287, 9.924038, 29.138893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.139509, 10.205499, 29.846266>,  <16.418633, 9.747009, 29.378756>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.139509, 10.205499, 29.846266> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.854501, 10.012631, 29.642372>,  <15.683496, 9.896912, 29.520037>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.854501, 10.012631, 29.642372>,  <16.139509, 10.205499, 29.846266>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.854501, 10.012631, 29.642372> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412545, -0.299748, 0.860208,
		-0.567555, 0.823205, 0.014662,
		-0.712522, -0.482167, -0.509732,
		15.640744, 9.867981, 29.489452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.519139, 10.347247, 30.234274>,  <16.139509, 10.205499, 29.846266>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.519139, 10.347247, 30.234274> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.490222, 10.012306, 30.017529>,  <15.472872, 9.811341, 29.887482>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.490222, 10.012306, 30.017529>,  <15.519139, 10.347247, 30.234274>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.490222, 10.012306, 30.017529> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433029, -0.463057, 0.773346,
		-0.898476, 0.290550, -0.329122,
		-0.072293, -0.837352, -0.541862,
		15.468534, 9.761101, 29.854969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.294358, 10.916744, 30.792688>,  <15.519139, 10.347247, 30.234274>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.294358, 10.916744, 30.792688> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.346414, 10.627922, 31.064482>,  <15.377646, 10.454629, 31.227558>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.346414, 10.627922, 31.064482>,  <15.294358, 10.916744, 30.792688>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.346414, 10.627922, 31.064482> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231825, 0.644158, 0.728915,
		-0.964013, -0.252381, -0.083561,
		0.130138, -0.722055, 0.679485,
		15.385455, 10.411305, 31.268328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.037725, 11.523409, 30.579283>,  <15.294358, 10.916744, 30.792688>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.037725, 11.523409, 30.579283> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.933486, 11.897099, 30.676697>,  <14.870942, 12.121314, 30.735146>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.933486, 11.897099, 30.676697>,  <15.037725, 11.523409, 30.579283>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.933486, 11.897099, 30.676697> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099323, 0.224968, -0.969291,
		-0.960324, -0.276785, 0.034163,
		-0.260599, 0.934227, 0.243533,
		14.855307, 12.177367, 30.749756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.370769, 11.794901, 30.283930>,  <15.037725, 11.523409, 30.579283>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.370769, 11.794901, 30.283930> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.604525, 12.109856, 30.362425>,  <14.744778, 12.298829, 30.409523>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.604525, 12.109856, 30.362425>,  <14.370769, 11.794901, 30.283930>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.604525, 12.109856, 30.362425> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130711, 0.330011, -0.934884,
		-0.800877, 0.520685, 0.295775,
		0.584389, 0.787388, 0.196239,
		14.779841, 12.346072, 30.421297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.977725, 12.367211, 29.964724>,  <14.370769, 11.794901, 30.283930>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.977725, 12.367211, 29.964724> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.367680, 12.451715, 29.992918>,  <14.601652, 12.502417, 30.009834>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.367680, 12.451715, 29.992918>,  <13.977725, 12.367211, 29.964724>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.367680, 12.451715, 29.992918> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028415, 0.431897, -0.901475,
		-0.220886, 0.876832, 0.427053,
		0.974886, 0.211258, 0.070485,
		14.660146, 12.515092, 30.014063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.042326, 13.037020, 29.657585>,  <13.977725, 12.367211, 29.964724>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.042326, 13.037020, 29.657585> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.415563, 12.893807, 29.671164>,  <14.639504, 12.807880, 29.679312>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.415563, 12.893807, 29.671164>,  <14.042326, 13.037020, 29.657585>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.415563, 12.893807, 29.671164> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213954, 0.476763, -0.852596,
		0.289071, 0.802814, 0.521466,
		0.933092, -0.358031, 0.033947,
		14.695491, 12.786398, 29.681347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.368558, 13.595395, 29.544857>,  <14.042326, 13.037020, 29.657585>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.368558, 13.595395, 29.544857> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.619920, 13.295492, 29.461939>,  <14.770737, 13.115550, 29.412188>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.619920, 13.295492, 29.461939>,  <14.368558, 13.595395, 29.544857>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.619920, 13.295492, 29.461939> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229579, 0.433372, -0.871483,
		0.743237, 0.500052, 0.444461,
		0.628404, -0.749758, -0.207297,
		14.808441, 13.070565, 29.399750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.870288, 13.939199, 29.312006>,  <14.368558, 13.595395, 29.544857>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.870288, 13.939199, 29.312006> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.932884, 13.567664, 29.177683>,  <14.970442, 13.344743, 29.097088>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.932884, 13.567664, 29.177683>,  <14.870288, 13.939199, 29.312006>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.932884, 13.567664, 29.177683> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376118, 0.370424, -0.849306,
		0.913261, 0.006604, 0.407321,
		0.156491, -0.928839, -0.335810,
		14.979832, 13.289012, 29.076941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.610447, 13.895976, 29.118917>,  <14.870288, 13.939199, 29.312006>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.610447, 13.895976, 29.118917> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.416847, 13.615322, 28.909746>,  <15.300688, 13.446930, 28.784245>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.416847, 13.615322, 28.909746>,  <15.610447, 13.895976, 29.118917>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.416847, 13.615322, 28.909746> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408799, 0.347073, -0.844052,
		0.773710, -0.622293, 0.118845,
		-0.483999, -0.701636, -0.522926,
		15.271647, 13.404832, 28.752869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.096140, 13.642475, 28.682203>,  <15.610447, 13.895976, 29.118917>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.096140, 13.642475, 28.682203> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.758903, 13.518015, 28.506758>,  <15.556561, 13.443339, 28.401491>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.758903, 13.518015, 28.506758>,  <16.096140, 13.642475, 28.682203>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.758903, 13.518015, 28.506758> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313451, 0.378412, -0.870950,
		0.436975, -0.871773, -0.221504,
		-0.843090, -0.311153, -0.438615,
		15.505975, 13.424670, 28.375174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.290003, 13.315001, 28.083368>,  <16.096140, 13.642475, 28.682203>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.290003, 13.315001, 28.083368> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.909541, 13.409932, 28.004398>,  <15.681264, 13.466891, 27.957016>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.909541, 13.409932, 28.004398>,  <16.290003, 13.315001, 28.083368>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.909541, 13.409932, 28.004398> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263470, 0.290780, -0.919799,
		-0.160889, -0.926888, -0.339107,
		-0.951157, 0.237330, -0.197424,
		15.624194, 13.481131, 27.945171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.075283, 12.967703, 27.436710>,  <16.290003, 13.315001, 28.083368>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.075283, 12.967703, 27.436710> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.798369, 13.253142, 27.479649>,  <15.632222, 13.424406, 27.505411>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.798369, 13.253142, 27.479649>,  <16.075283, 12.967703, 27.436710>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.798369, 13.253142, 27.479649> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079266, 0.223051, -0.971579,
		-0.717261, -0.664097, -0.210978,
		-0.692281, 0.713599, 0.107345,
		15.590685, 13.467222, 27.511852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.586615, 12.910720, 26.887634>,  <16.075283, 12.967703, 27.436710>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.586615, 12.910720, 26.887634> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.541999, 13.282303, 27.028828>,  <15.515229, 13.505253, 27.113543>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.541999, 13.282303, 27.028828>,  <15.586615, 12.910720, 26.887634>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.541999, 13.282303, 27.028828> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048624, 0.349671, -0.935610,
		-0.992570, -0.121520, 0.006168,
		-0.111538, 0.928958, 0.352982,
		15.508537, 13.560990, 27.134722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.247559, 13.226032, 26.316637>,  <15.586615, 12.910720, 26.887634>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.247559, 13.226032, 26.316637> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.370850, 13.544688, 26.524622>,  <15.444824, 13.735882, 26.649412>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.370850, 13.544688, 26.524622>,  <15.247559, 13.226032, 26.316637>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.370850, 13.544688, 26.524622> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207927, 0.476943, -0.853986,
		-0.928311, 0.371337, -0.018636,
		0.308228, 0.796639, 0.519962,
		15.463318, 13.783680, 26.680611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.822502, 13.793159, 26.168875>,  <15.247559, 13.226032, 26.316637>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.822502, 13.793159, 26.168875> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.190896, 13.907998, 26.274221>,  <15.411933, 13.976901, 26.337429>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.190896, 13.907998, 26.274221>,  <14.822502, 13.793159, 26.168875>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.190896, 13.907998, 26.274221> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081400, 0.519275, -0.850722,
		-0.380999, 0.804940, 0.454875,
		0.920985, 0.287097, 0.263365,
		15.467192, 13.994127, 26.353231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.814964, 14.476139, 25.931290>,  <14.822502, 13.793159, 26.168875>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.814964, 14.476139, 25.931290> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.204884, 14.410323, 25.991550>,  <15.438835, 14.370833, 26.027706>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.204884, 14.410323, 25.991550>,  <14.814964, 14.476139, 25.931290>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.204884, 14.410323, 25.991550> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207692, 0.422816, -0.882094,
		0.081442, 0.891153, 0.446334,
		0.974798, -0.164540, 0.150651,
		15.497323, 14.360961, 26.036745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.343679, 15.135515, 25.883987>,  <14.814964, 14.476139, 25.931290>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.343679, 15.135515, 25.883987> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.019127, 15.282492, 25.702154>,  <13.824395, 15.370678, 25.593054>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.019127, 15.282492, 25.702154>,  <14.343679, 15.135515, 25.883987>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.019127, 15.282492, 25.702154> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546090, -0.199202, 0.813698,
		0.208433, 0.908463, 0.362285,
		-0.811382, 0.367442, -0.454582,
		13.775712, 15.392724, 25.565779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.055788, 15.650005, 26.349302>,  <14.343679, 15.135515, 25.883987>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.055788, 15.650005, 26.349302> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.734991, 15.534513, 26.140137>,  <13.542513, 15.465217, 26.014637>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.734991, 15.534513, 26.140137>,  <14.055788, 15.650005, 26.349302>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.734991, 15.534513, 26.140137> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556232, 0.041873, 0.829972,
		-0.217744, 0.956494, -0.194185,
		-0.801994, -0.288733, -0.522914,
		13.494393, 15.447892, 25.983263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.526153, 16.032068, 26.633820>,  <14.055788, 15.650005, 26.349302>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.526153, 16.032068, 26.633820> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.337583, 15.726696, 26.457212>,  <13.224441, 15.543473, 26.351248>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.337583, 15.726696, 26.457212>,  <13.526153, 16.032068, 26.633820>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.337583, 15.726696, 26.457212> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486435, -0.192503, 0.852246,
		-0.735622, 0.616538, -0.280608,
		-0.471424, -0.763429, -0.441516,
		13.196156, 15.497667, 26.324759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.726309, 16.027815, 26.781874>,  <13.526153, 16.032068, 26.633820>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.726309, 16.027815, 26.781874> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.788230, 15.649606, 26.667313>,  <12.825383, 15.422681, 26.598576>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.788230, 15.649606, 26.667313>,  <12.726309, 16.027815, 26.781874>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.788230, 15.649606, 26.667313> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563671, -0.322611, 0.760393,
		-0.811363, 0.043724, -0.582905,
		0.154803, -0.945521, -0.286401,
		12.834671, 15.365950, 26.581392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.027089, 15.770475, 27.003496>,  <12.726309, 16.027815, 26.781874>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.027089, 15.770475, 27.003496> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.300558, 15.479831, 26.976284>,  <12.464640, 15.305444, 26.959957>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.300558, 15.479831, 26.976284>,  <12.027089, 15.770475, 27.003496>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.300558, 15.479831, 26.976284> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351804, -0.409808, 0.841600,
		-0.639395, -0.551447, -0.535799,
		0.683673, -0.726611, -0.068028,
		12.505660, 15.261847, 26.955875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.618143, 15.201291, 27.128334>,  <12.027089, 15.770475, 27.003496>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.618143, 15.201291, 27.128334> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.005249, 15.120428, 27.188416>,  <12.237513, 15.071911, 27.224464>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.005249, 15.120428, 27.188416>,  <11.618143, 15.201291, 27.128334>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.005249, 15.120428, 27.188416> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207521, -0.302149, 0.930398,
		-0.142700, -0.931579, -0.334361,
		0.967766, -0.202155, 0.150206,
		12.295579, 15.059781, 27.233477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.613490, 14.492443, 27.450897>,  <11.618143, 15.201291, 27.128334>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.613490, 14.492443, 27.450897> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.961126, 14.658650, 27.558249>,  <12.169708, 14.758375, 27.622660>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.961126, 14.658650, 27.558249>,  <11.613490, 14.492443, 27.450897>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.961126, 14.658650, 27.558249> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003443, -0.547630, 0.836714,
		0.494643, -0.726255, -0.477370,
		0.869090, 0.415518, 0.268381,
		12.221853, 14.783306, 27.638763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.862084, 13.723568, 27.167547>,  <11.613490, 14.492443, 27.450897>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.862084, 13.723568, 27.167547> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.577775, 13.459905, 27.069315>,  <11.407189, 13.301707, 27.010376>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.577775, 13.459905, 27.069315>,  <11.862084, 13.723568, 27.167547>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.577775, 13.459905, 27.069315> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072323, 0.415757, -0.906595,
		0.699693, -0.626623, -0.343182,
		-0.710774, -0.659158, -0.245583,
		11.364543, 13.262157, 26.995640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.121352, 13.389120, 26.598562>,  <11.862084, 13.723568, 27.167547>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.121352, 13.389120, 26.598562> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.724610, 13.348271, 26.568115>,  <11.486565, 13.323762, 26.549847>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.724610, 13.348271, 26.568115>,  <12.121352, 13.389120, 26.598562>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.724610, 13.348271, 26.568115> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053330, 0.209749, -0.976300,
		0.115665, -0.972408, -0.202595,
		-0.991856, -0.102120, -0.076119,
		11.427053, 13.317635, 26.545279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.074839, 13.114528, 25.942751>,  <12.121352, 13.389120, 26.598562>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.074839, 13.114528, 25.942751> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.698447, 13.238213, 25.997810>,  <11.472612, 13.312424, 26.030846>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.698447, 13.238213, 25.997810>,  <12.074839, 13.114528, 25.942751>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.698447, 13.238213, 25.997810> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092722, 0.155629, -0.983454,
		-0.325518, -0.938172, -0.117773,
		-0.940979, 0.309212, 0.137649,
		11.416154, 13.330976, 26.039104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.658629, 12.751001, 25.465027>,  <12.074839, 13.114528, 25.942751>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.658629, 12.751001, 25.465027> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.409562, 13.053738, 25.544502>,  <11.260122, 13.235379, 25.592188>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.409562, 13.053738, 25.544502>,  <11.658629, 12.751001, 25.465027>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.409562, 13.053738, 25.544502> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091438, 0.181804, -0.979074,
		-0.777125, -0.627806, -0.043999,
		-0.622668, 0.756840, 0.198690,
		11.222762, 13.280789, 25.604109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.057101, 12.666257, 25.061985>,  <11.658629, 12.751001, 25.465027>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.057101, 12.666257, 25.061985> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.046564, 13.056302, 25.150042>,  <11.040241, 13.290329, 25.202875>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.046564, 13.056302, 25.150042>,  <11.057101, 12.666257, 25.061985>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.046564, 13.056302, 25.150042> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022403, 0.220736, -0.975076,
		-0.999402, -0.020755, -0.027661,
		-0.026344, 0.975113, 0.220139,
		11.038661, 13.348836, 25.216084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.554881, 12.933922, 24.600658>,  <11.057101, 12.666257, 25.061985>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.554881, 12.933922, 24.600658> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.778941, 13.244538, 24.716045>,  <10.913377, 13.430908, 24.785278>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.778941, 13.244538, 24.716045>,  <10.554881, 12.933922, 24.600658>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<10.778941, 13.244538, 24.716045> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097601, 0.283936, -0.953863,
		-0.822621, 0.562461, 0.083255,
		0.560150, 0.776542, 0.288468,
		10.946986, 13.477501, 24.802586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.171803, 13.634969, 24.432310>,  <10.554881, 12.933922, 24.600658>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.171803, 13.634969, 24.432310> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.570397, 13.668470, 24.431643>,  <10.809554, 13.688572, 24.431242>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.570397, 13.668470, 24.431643>,  <10.171803, 13.634969, 24.432310>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<10.570397, 13.668470, 24.431643> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024296, 0.269856, -0.962594,
		-0.080171, 0.959251, 0.270942,
		0.996485, 0.083755, -0.001671,
		10.869343, 13.693597, 24.431141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<14.765711, 7.573979, 28.687235> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.722596, 7.964999, 28.759657>,  <14.696728, 8.199611, 28.803110>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.722596, 7.964999, 28.759657>,  <14.765711, 7.573979, 28.687235>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.722596, 7.964999, 28.759657> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187525, 0.158856, -0.969329,
		-0.976328, -0.138433, 0.166193,
		-0.107786, 0.977548, 0.181055,
		14.690260, 8.258264, 28.813974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.160408, 7.760634, 28.345860>,  <14.765711, 7.573979, 28.687235>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.160408, 7.760634, 28.345860> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.409057, 8.070554, 28.391941>,  <14.558246, 8.256506, 28.419590>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.409057, 8.070554, 28.391941>,  <14.160408, 7.760634, 28.345860>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.409057, 8.070554, 28.391941> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036536, 0.175591, -0.983785,
		-0.782464, 0.607334, 0.137460,
		0.621623, 0.774799, 0.115204,
		14.595544, 8.302994, 28.426502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.919889, 8.413290, 28.062975>,  <14.160408, 7.760634, 28.345860>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.919889, 8.413290, 28.062975> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.319474, 8.418135, 28.080536>,  <14.559225, 8.421041, 28.091072>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.319474, 8.418135, 28.080536>,  <13.919889, 8.413290, 28.062975>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.319474, 8.418135, 28.080536> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039108, 0.265943, -0.963195,
		-0.023343, 0.963912, 0.265194,
		0.998962, 0.012113, 0.043905,
		14.619163, 8.421768, 28.093708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.197851, 9.078453, 27.750654>,  <13.919889, 8.413290, 28.062975>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.197851, 9.078453, 27.750654> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.490936, 8.806446, 27.740011>,  <14.666787, 8.643242, 27.733625>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.490936, 8.806446, 27.740011>,  <14.197851, 9.078453, 27.750654>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.490936, 8.806446, 27.740011> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060071, 0.103569, -0.992807,
		0.677882, 0.725844, 0.116735,
		0.732713, -0.680018, -0.026605,
		14.710750, 8.602441, 27.732029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.672851, 9.365432, 27.208748>,  <14.197851, 9.078453, 27.750654>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.672851, 9.365432, 27.208748> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.790425, 8.984846, 27.245224>,  <14.860970, 8.756495, 27.267111>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.790425, 8.984846, 27.245224>,  <14.672851, 9.365432, 27.208748>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.790425, 8.984846, 27.245224> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018021, -0.089872, -0.995790,
		0.955655, 0.294342, -0.009271,
		0.293936, -0.951465, 0.091191,
		14.878606, 8.699407, 27.272581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.311581, 9.278516, 26.766607>,  <14.672851, 9.365432, 27.208748>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.311581, 9.278516, 26.766607> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.121048, 8.933030, 26.832462>,  <15.006728, 8.725739, 26.871975>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.121048, 8.933030, 26.832462>,  <15.311581, 9.278516, 26.766607>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.121048, 8.933030, 26.832462> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019617, -0.197638, -0.980079,
		0.879047, -0.463613, 0.111085,
		-0.476332, -0.863714, 0.164638,
		14.978148, 8.673916, 26.881853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.817636, 8.767053, 26.758862>,  <15.311581, 9.278516, 26.766607>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.817636, 8.767053, 26.758862> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.459745, 8.669794, 26.609013>,  <15.245011, 8.611439, 26.519102>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.459745, 8.669794, 26.609013>,  <15.817636, 8.767053, 26.758862>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.459745, 8.669794, 26.609013> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411629, -0.123510, -0.902943,
		0.173277, -0.962094, 0.210594,
		-0.894727, -0.243146, -0.374624,
		15.191327, 8.596850, 26.496626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.914962, 8.644243, 26.047445>,  <15.817636, 8.767053, 26.758862>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.914962, 8.644243, 26.047445> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.535619, 8.529961, 26.102566>,  <15.308013, 8.461391, 26.135637>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.535619, 8.529961, 26.102566>,  <15.914962, 8.644243, 26.047445>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.535619, 8.529961, 26.102566> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058892, -0.268282, -0.961539,
		0.311687, -0.919998, 0.237601,
		-0.948358, -0.285706, 0.137800,
		15.251111, 8.444249, 26.143906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.770178, 7.922563, 25.796349>,  <15.914962, 8.644243, 26.047445>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.770178, 7.922563, 25.796349> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.408620, 8.093348, 25.785934>,  <15.191685, 8.195818, 25.779686>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.408620, 8.093348, 25.785934>,  <15.770178, 7.922563, 25.796349>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.408620, 8.093348, 25.785934> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104860, -0.280174, -0.954205,
		-0.414702, -0.859771, 0.298019,
		-0.903895, 0.426961, -0.026034,
		15.137451, 8.221436, 25.778124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.241119, 7.456078, 25.472294>,  <15.770178, 7.922563, 25.796349>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.241119, 7.456078, 25.472294> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.091937, 7.824730, 25.429396>,  <15.002427, 8.045921, 25.403656>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.091937, 7.824730, 25.429396>,  <15.241119, 7.456078, 25.472294>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.091937, 7.824730, 25.429396> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219125, -0.199804, -0.955020,
		-0.901603, -0.332681, 0.276470,
		-0.372957, 0.921630, -0.107245,
		14.980050, 8.101219, 25.397223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.628571, 7.375709, 25.036049>,  <15.241119, 7.456078, 25.472294>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.628571, 7.375709, 25.036049> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.709860, 7.766788, 25.014856>,  <14.758634, 8.001435, 25.002140>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.709860, 7.766788, 25.014856>,  <14.628571, 7.375709, 25.036049>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.709860, 7.766788, 25.014856> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135097, -0.025594, -0.990502,
		-0.969768, 0.208452, 0.126882,
		0.203224, 0.977698, -0.052981,
		14.770827, 8.060097, 24.998962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.146404, 7.702085, 24.632456>,  <14.628571, 7.375709, 25.036049>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.146404, 7.702085, 24.632456> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.454576, 7.956509, 24.615145>,  <14.639478, 8.109162, 24.604757>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.454576, 7.956509, 24.615145>,  <14.146404, 7.702085, 24.632456>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.454576, 7.956509, 24.615145> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013483, -0.084126, -0.996364,
		-0.637385, 0.767042, -0.073389,
		0.770427, 0.636057, -0.043278,
		14.685703, 8.147326, 24.602161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.683863, 8.022564, 24.147728>,  <14.146404, 7.702085, 24.632456>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.683863, 8.022564, 24.147728> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.314550, 8.133344, 24.041254>,  <13.092963, 8.199811, 23.977369>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.314550, 8.133344, 24.041254>,  <13.683863, 8.022564, 24.147728>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.314550, 8.133344, 24.041254> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252319, 0.085243, 0.963882,
		0.289636, 0.957096, -0.008824,
		-0.923280, 0.276949, -0.266183,
		13.037566, 8.216428, 23.961399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.447221, 8.573608, 24.549473>,  <13.683863, 8.022564, 24.147728>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.447221, 8.573608, 24.549473> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.087623, 8.450929, 24.424417>,  <12.871864, 8.377320, 24.349384>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.087623, 8.450929, 24.424417>,  <13.447221, 8.573608, 24.549473>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.087623, 8.450929, 24.424417> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354542, 0.090563, 0.930644,
		-0.257115, 0.947488, -0.190154,
		-0.898995, -0.306700, -0.312639,
		12.817924, 8.358918, 24.330626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.921051, 9.118664, 24.685616>,  <13.447221, 8.573608, 24.549473>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.921051, 9.118664, 24.685616> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.742268, 8.761636, 24.661789>,  <12.634997, 8.547419, 24.647493>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.742268, 8.761636, 24.661789>,  <12.921051, 9.118664, 24.685616>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.742268, 8.761636, 24.661789> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411768, 0.146168, 0.899490,
		-0.794151, 0.426561, -0.432863,
		-0.446958, -0.892570, -0.059565,
		12.608180, 8.493865, 24.643919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.239673, 9.250138, 24.806911>,  <12.921051, 9.118664, 24.685616>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.239673, 9.250138, 24.806911> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.283882, 8.858219, 24.873579>,  <12.310408, 8.623068, 24.913580>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.283882, 8.858219, 24.873579>,  <12.239673, 9.250138, 24.806911>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.283882, 8.858219, 24.873579> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540559, 0.081463, 0.837353,
		-0.834015, -0.182643, -0.520635,
		0.110524, -0.979799, 0.166670,
		12.317039, 8.564280, 24.923580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.514523, 9.131723, 24.870520>,  <12.239673, 9.250138, 24.806911>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.514523, 9.131723, 24.870520> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.734766, 8.836614, 25.026735>,  <11.866912, 8.659548, 25.120464>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.734766, 8.836614, 25.026735>,  <11.514523, 9.131723, 24.870520>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.734766, 8.836614, 25.026735> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527152, 0.055447, 0.847960,
		-0.647257, -0.672767, -0.358390,
		0.550608, -0.737774, 0.390539,
		11.899948, 8.615281, 25.143896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.998288, 8.648440, 25.037516>,  <11.514523, 9.131723, 24.870520>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.998288, 8.648440, 25.037516> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.330467, 8.578835, 25.249205>,  <11.529775, 8.537072, 25.376219>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.330467, 8.578835, 25.249205>,  <10.998288, 8.648440, 25.037516>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.330467, 8.578835, 25.249205> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525983, 0.068127, 0.847762,
		-0.183576, -0.982384, -0.034952,
		0.830447, -0.174013, 0.529224,
		11.579601, 8.526632, 25.407972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.763031, 8.083175, 25.598888>,  <10.998288, 8.648440, 25.037516>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.763031, 8.083175, 25.598888> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.105401, 8.216225, 25.757257>,  <11.310822, 8.296055, 25.852278>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.105401, 8.216225, 25.757257>,  <10.763031, 8.083175, 25.598888>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.105401, 8.216225, 25.757257> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419432, -0.001232, 0.907786,
		0.302441, -0.943058, 0.138459,
		0.855924, 0.332626, 0.395922,
		11.362179, 8.316012, 25.876034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.007590, 7.646717, 26.124805>,  <10.763031, 8.083175, 25.598888>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.007590, 7.646717, 26.124805> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.157137, 8.009410, 26.202841>,  <11.246865, 8.227026, 26.249662>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.157137, 8.009410, 26.202841>,  <11.007590, 7.646717, 26.124805>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.157137, 8.009410, 26.202841> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316220, -0.073121, 0.945864,
		0.871911, -0.415317, 0.259390,
		0.373867, 0.906733, 0.195087,
		11.269297, 8.281430, 26.261368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.301185, 7.593853, 26.758396>,  <11.007590, 7.646717, 26.124805>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.301185, 7.593853, 26.758396> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.232740, 7.983320, 26.698139>,  <11.191674, 8.217000, 26.661985>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.232740, 7.983320, 26.698139>,  <11.301185, 7.593853, 26.758396>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.232740, 7.983320, 26.698139> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255602, 0.103795, 0.961194,
		0.951519, 0.202975, 0.231111,
		-0.171110, 0.973667, -0.150644,
		11.181407, 8.275420, 26.652946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.396394, 7.836110, 27.392490>,  <11.301185, 7.593853, 26.758396>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.396394, 7.836110, 27.392490> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.184313, 8.121040, 27.208544>,  <11.057064, 8.291998, 27.098175>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.184313, 8.121040, 27.208544>,  <11.396394, 7.836110, 27.392490>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.184313, 8.121040, 27.208544> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513548, 0.161770, 0.842673,
		0.674650, 0.682952, 0.280042,
		-0.530203, 0.712325, -0.459867,
		11.025252, 8.334738, 27.070583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.392101, 8.230609, 27.935442>,  <11.396394, 7.836110, 27.392490>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.392101, 8.230609, 27.935442> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.131482, 8.440539, 27.716337>,  <10.975111, 8.566498, 27.584873>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.131482, 8.440539, 27.716337>,  <11.392101, 8.230609, 27.935442>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.131482, 8.440539, 27.716337> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414817, 0.358070, 0.836488,
		0.635148, 0.772233, -0.015593,
		-0.651548, 0.524825, -0.547763,
		10.936018, 8.597987, 27.552008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.455420, 8.922020, 28.098690>,  <11.392101, 8.230609, 27.935442>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.455420, 8.922020, 28.098690> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.087803, 8.825036, 27.974386>,  <10.867232, 8.766846, 27.899803>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.087803, 8.825036, 27.974386>,  <11.455420, 8.922020, 28.098690>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.087803, 8.825036, 27.974386> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365154, 0.226905, 0.902871,
		-0.148397, 0.943254, -0.297071,
		-0.919043, -0.242460, -0.310761,
		10.812090, 8.752298, 27.881159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.049471, 9.400553, 28.352591>,  <11.455420, 8.922020, 28.098690>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.049471, 9.400553, 28.352591> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.775048, 9.120784, 28.272457>,  <10.610394, 8.952922, 28.224377>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.775048, 9.120784, 28.272457>,  <11.049471, 9.400553, 28.352591>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<10.775048, 9.120784, 28.272457> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513226, 0.270079, 0.814651,
		-0.515679, 0.661714, -0.544252,
		-0.686057, -0.699423, -0.200335,
		10.569231, 8.910957, 28.212357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.373059, 9.773912, 28.299635>,  <11.049471, 9.400553, 28.352591>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.373059, 9.773912, 28.299635> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.296699, 9.392979, 28.394812>,  <10.250882, 9.164418, 28.451918>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.296699, 9.392979, 28.394812>,  <10.373059, 9.773912, 28.299635>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<10.296699, 9.392979, 28.394812> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534637, 0.304167, 0.788445,
		-0.823237, 0.023303, -0.567219,
		-0.190902, -0.952334, 0.237943,
		10.239428, 9.107279, 28.466194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.432450, 10.457548, 27.989799>,  <10.373059, 9.773912, 28.299635>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.432450, 10.457548, 27.989799> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.337769, 10.746245, 28.249971>,  <10.280959, 10.919464, 28.406075>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.337769, 10.746245, 28.249971>,  <10.432450, 10.457548, 27.989799>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<10.337769, 10.746245, 28.249971> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487037, 0.667410, -0.563345,
		-0.840694, 0.183437, -0.509495,
		-0.236704, 0.721744, 0.650428,
		10.266757, 10.962769, 28.445101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.275269, 11.057515, 27.536367>,  <10.432450, 10.457548, 27.989799>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.275269, 11.057515, 27.536367> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.281230, 11.214222, 27.904345>,  <10.284807, 11.308247, 28.125132>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.281230, 11.214222, 27.904345>,  <10.275269, 11.057515, 27.536367>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<10.281230, 11.214222, 27.904345> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403162, 0.839587, -0.364079,
		-0.915007, 0.376312, -0.145432,
		0.014905, 0.391768, 0.919943,
		10.285702, 11.331753, 28.180328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.879501, 11.626981, 27.431917>,  <10.275269, 11.057515, 27.536367>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.879501, 11.626981, 27.431917> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.110682, 11.674146, 27.754921>,  <10.249390, 11.702444, 27.948723>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.110682, 11.674146, 27.754921>,  <9.879501, 11.626981, 27.431917>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<10.110682, 11.674146, 27.754921> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401314, 0.820528, -0.407040,
		-0.710578, 0.559313, 0.426904,
		0.577950, 0.117911, 0.807509,
		10.284066, 11.709519, 27.997173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.840788, 12.309887, 27.576017>,  <9.879501, 11.626981, 27.431917>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.840788, 12.309887, 27.576017> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.177007, 12.188758, 27.755695>,  <10.378738, 12.116080, 27.863503>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.177007, 12.188758, 27.755695>,  <9.840788, 12.309887, 27.576017>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<10.177007, 12.188758, 27.755695> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463558, 0.831140, -0.307115,
		-0.280344, 0.466374, 0.838989,
		0.840548, -0.302822, 0.449197,
		10.429172, 12.097911, 27.890455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.103456, 12.904357, 27.939884>,  <9.840788, 12.309887, 27.576017>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.103456, 12.904357, 27.939884> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.428463, 12.679303, 27.878880>,  <10.623466, 12.544271, 27.842276>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.428463, 12.679303, 27.878880>,  <10.103456, 12.904357, 27.939884>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<10.428463, 12.679303, 27.878880> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438418, 0.762225, -0.476239,
		0.384198, 0.320087, 0.865989,
		0.812516, -0.562635, -0.152513,
		10.672217, 12.510512, 27.833126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.755066, 13.285566, 28.068317>,  <10.103456, 12.904357, 27.939884>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.755066, 13.285566, 28.068317> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.866604, 12.981308, 27.833826>,  <10.933527, 12.798753, 27.693132>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.866604, 12.981308, 27.833826>,  <10.755066, 13.285566, 28.068317>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<10.866604, 12.981308, 27.833826> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376268, 0.648168, -0.662043,
		0.883554, -0.035971, 0.466945,
		0.278845, -0.760647, -0.586227,
		10.950257, 12.753114, 27.657959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.405693, 13.515870, 27.842522>,  <10.755066, 13.285566, 28.068317>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.405693, 13.515870, 27.842522> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.273583, 13.242555, 27.582048>,  <11.194318, 13.078566, 27.425764>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.273583, 13.242555, 27.582048>,  <11.405693, 13.515870, 27.842522>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.273583, 13.242555, 27.582048> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337815, 0.558627, -0.757507,
		0.881363, -0.470163, 0.046326,
		-0.330273, -0.683289, -0.651181,
		11.174501, 13.037568, 27.386694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.018055, 13.900004, 27.932981>,  <11.405693, 13.515870, 27.842522>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.018055, 13.900004, 27.932981> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.213502, 14.238962, 28.016098>,  <12.330770, 14.442337, 28.065968>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.213502, 14.238962, 28.016098>,  <12.018055, 13.900004, 27.932981>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.213502, 14.238962, 28.016098> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003894, -0.236036, 0.971737,
		0.872489, -0.475617, -0.112032,
		0.488618, 0.847393, 0.207791,
		12.360087, 14.493180, 28.078436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.644144, 13.748653, 28.248821>,  <12.018055, 13.900004, 27.932981>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.644144, 13.748653, 28.248821> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.576248, 14.130537, 28.346571>,  <12.535511, 14.359667, 28.405220>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.576248, 14.130537, 28.346571>,  <12.644144, 13.748653, 28.248821>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.576248, 14.130537, 28.346571> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203355, -0.208705, 0.956603,
		0.964279, 0.212069, -0.158720,
		-0.169740, 0.954709, 0.244375,
		12.525326, 14.416950, 28.419884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.974230, 13.715582, 28.807667>,  <12.644144, 13.748653, 28.248821>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.974230, 13.715582, 28.807667> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.780782, 14.063950, 28.842560>,  <12.664713, 14.272970, 28.863497>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.780782, 14.063950, 28.842560>,  <12.974230, 13.715582, 28.807667>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.780782, 14.063950, 28.842560> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136381, -0.023467, 0.990378,
		0.864587, 0.490865, -0.107428,
		-0.483621, 0.870920, 0.087234,
		12.635695, 14.325226, 28.868731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.331791, 14.108541, 29.222328>,  <12.974230, 13.715582, 28.807667>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.331791, 14.108541, 29.222328> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.950130, 14.222476, 29.259125>,  <12.721134, 14.290836, 29.281202>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.950130, 14.222476, 29.259125>,  <13.331791, 14.108541, 29.222328>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.950130, 14.222476, 29.259125> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052516, -0.143263, 0.988290,
		0.294680, 0.947810, 0.121736,
		-0.954152, 0.284837, 0.091992,
		12.663885, 14.307927, 29.286722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.447905, 14.430791, 29.751169>,  <13.331791, 14.108541, 29.222328>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.447905, 14.430791, 29.751169> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.047939, 14.433173, 29.746475>,  <12.807961, 14.434603, 29.743660>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.047939, 14.433173, 29.746475>,  <13.447905, 14.430791, 29.751169>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.047939, 14.433173, 29.746475> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012563, -0.166873, 0.985898,
		0.003915, 0.985960, 0.166934,
		-0.999913, 0.005957, -0.011733,
		12.747965, 14.434960, 29.742956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.169108, 14.893068, 30.266918>,  <13.447905, 14.430791, 29.751169>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.169108, 14.893068, 30.266918> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.859493, 14.650315, 30.194742>,  <12.673724, 14.504663, 30.151438>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.859493, 14.650315, 30.194742>,  <13.169108, 14.893068, 30.266918>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.859493, 14.650315, 30.194742> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110809, -0.150741, 0.982343,
		-0.623367, 0.780366, 0.049431,
		-0.774038, -0.606883, -0.180438,
		12.627282, 14.468250, 30.140610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.740442, 15.043962, 30.768984>,  <13.169108, 14.893068, 30.266918>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.740442, 15.043962, 30.768984> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.629704, 14.686726, 30.627142>,  <12.563262, 14.472383, 30.542036>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.629704, 14.686726, 30.627142>,  <12.740442, 15.043962, 30.768984>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.629704, 14.686726, 30.627142> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182353, -0.313495, 0.931916,
		-0.943453, 0.322660, -0.076068,
		-0.276845, -0.893091, -0.354606,
		12.546651, 14.418798, 30.520760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.374870, 14.834568, 31.292555>,  <12.740442, 15.043962, 30.768984>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.374870, 14.834568, 31.292555> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.474788, 14.501429, 31.094982>,  <12.534738, 14.301545, 30.976439>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.474788, 14.501429, 31.094982>,  <12.374870, 14.834568, 31.292555>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.474788, 14.501429, 31.094982> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337589, -0.403191, 0.850571,
		-0.907545, -0.379212, 0.180446,
		0.249792, -0.832848, -0.493931,
		12.549726, 14.251575, 30.946802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.183422, 14.282029, 31.764553>,  <12.374870, 14.834568, 31.292555>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.183422, 14.282029, 31.764553> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.433586, 14.104753, 31.507666>,  <12.583685, 13.998386, 31.353533>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.433586, 14.104753, 31.507666>,  <12.183422, 14.282029, 31.764553>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.433586, 14.104753, 31.507666> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464814, -0.449481, 0.762834,
		-0.626747, -0.775594, -0.075107,
		0.625409, -0.443193, -0.642218,
		12.621209, 13.971795, 31.315001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<15.758311, 18.104803, 15.467291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.965771, 17.823347, 15.661568>,  <16.090246, 17.654474, 15.778134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.965771, 17.823347, 15.661568>,  <15.758311, 18.104803, 15.467291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.965771, 17.823347, 15.661568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655373, 0.037636, 0.754367,
		-0.549081, -0.709561, -0.441626,
		0.518648, -0.703638, 0.485693,
		16.121365, 17.612255, 15.807276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.322415, 17.705564, 15.757998>,  <15.758311, 18.104803, 15.467291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.322415, 17.705564, 15.757998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.643616, 17.621088, 15.980921>,  <15.836336, 17.570402, 16.114674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.643616, 17.621088, 15.980921>,  <15.322415, 17.705564, 15.757998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.643616, 17.621088, 15.980921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594112, -0.209693, 0.776569,
		-0.047141, -0.954687, -0.293855,
		0.803000, -0.211191, 0.557306,
		15.884516, 17.557730, 16.148113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.167969, 17.020710, 16.160994>,  <15.322415, 17.705564, 15.757998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.167969, 17.020710, 16.160994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.453799, 17.238138, 16.337135>,  <15.625298, 17.368595, 16.442820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.453799, 17.238138, 16.337135>,  <15.167969, 17.020710, 16.160994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.453799, 17.238138, 16.337135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456129, -0.115237, 0.882421,
		0.530403, -0.831415, 0.165593,
		0.714576, 0.543571, 0.440354,
		15.668172, 17.401209, 16.469242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.168057, 16.669172, 16.802025>,  <15.167969, 17.020710, 16.160994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.168057, 16.669172, 16.802025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.374290, 16.996895, 16.902353>,  <15.498030, 17.193529, 16.962549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.374290, 16.996895, 16.902353>,  <15.168057, 16.669172, 16.802025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.374290, 16.996895, 16.902353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327905, -0.081778, 0.941164,
		0.791615, -0.567492, 0.226492,
		0.515581, 0.819307, 0.250820,
		15.528965, 17.242687, 16.977600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.535199, 16.525679, 17.410688>,  <15.168057, 16.669172, 16.802025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.535199, 16.525679, 17.410688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.527956, 16.924643, 17.382839>,  <15.523610, 17.164021, 17.366129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.527956, 16.924643, 17.382839>,  <15.535199, 16.525679, 17.410688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.527956, 16.924643, 17.382839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299398, 0.061030, 0.952174,
		0.953956, 0.038088, 0.297517,
		-0.018109, 0.997409, -0.069624,
		15.522523, 17.223866, 17.361952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.900690, 16.834469, 17.929359>,  <15.535199, 16.525679, 17.410688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.900690, 16.834469, 17.929359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.667646, 17.141413, 17.822231>,  <15.527820, 17.325579, 17.757954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.667646, 17.141413, 17.822231>,  <15.900690, 16.834469, 17.929359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.667646, 17.141413, 17.822231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319980, 0.086348, 0.943481,
		0.747114, 0.635378, 0.195232,
		-0.582610, 0.767358, -0.267820,
		15.492864, 17.371620, 17.741886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.990143, 17.348991, 18.379452>,  <15.900690, 16.834469, 17.929359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.990143, 17.348991, 18.379452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.631463, 17.433813, 18.224035>,  <15.416255, 17.484705, 18.130785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.631463, 17.433813, 18.224035>,  <15.990143, 17.348991, 18.379452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.631463, 17.433813, 18.224035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400159, -0.013117, 0.916352,
		0.189218, 0.977170, 0.096617,
		-0.896699, 0.212053, -0.388541,
		15.362453, 17.497429, 18.107473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.716158, 17.787828, 18.863319>,  <15.990143, 17.348991, 18.379452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.716158, 17.787828, 18.863319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.410048, 17.621202, 18.667025>,  <15.226381, 17.521227, 18.549248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.410048, 17.621202, 18.667025>,  <15.716158, 17.787828, 18.863319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.410048, 17.621202, 18.667025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477437, -0.144018, 0.866783,
		-0.431747, 0.897625, -0.088670,
		-0.765276, -0.416566, -0.490739,
		15.180465, 17.496233, 18.519802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.197311, 18.014320, 19.206404>,  <15.716158, 17.787828, 18.863319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.197311, 18.014320, 19.206404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.044930, 17.702482, 19.007565>,  <14.953502, 17.515379, 18.888260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.044930, 17.702482, 19.007565>,  <15.197311, 18.014320, 19.206404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.044930, 17.702482, 19.007565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444884, -0.316756, 0.837701,
		-0.810526, 0.540276, -0.226160,
		-0.380953, -0.779594, -0.497099,
		14.930645, 17.468603, 18.858435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.450290, 17.930759, 19.384296>,  <15.197311, 18.014320, 19.206404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.450290, 17.930759, 19.384296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.528263, 17.571640, 19.226330>,  <14.575047, 17.356169, 19.131550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.528263, 17.571640, 19.226330>,  <14.450290, 17.930759, 19.384296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.528263, 17.571640, 19.226330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580663, -0.430134, 0.691242,
		-0.790463, 0.094568, -0.605165,
		0.194933, -0.897798, -0.394917,
		14.586743, 17.302301, 19.107855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.780741, 17.508512, 19.332367>,  <14.450290, 17.930759, 19.384296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.780741, 17.508512, 19.332367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.061989, 17.224142, 19.326662>,  <14.230738, 17.053520, 19.323238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.061989, 17.224142, 19.326662>,  <13.780741, 17.508512, 19.332367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.061989, 17.224142, 19.326662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380952, -0.393552, 0.836656,
		-0.600415, -0.582836, -0.547544,
		0.703120, -0.710928, -0.014262,
		14.272924, 17.010864, 19.322384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.478953, 16.806622, 19.458368>,  <13.780741, 17.508512, 19.332367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.478953, 16.806622, 19.458368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.862226, 16.821058, 19.571917>,  <14.092191, 16.829720, 19.640045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.862226, 16.821058, 19.571917>,  <13.478953, 16.806622, 19.458368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.862226, 16.821058, 19.571917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275317, -0.154165, 0.948912,
		0.078009, -0.987386, -0.137782,
		0.958183, 0.036090, 0.283870,
		14.149681, 16.831886, 19.657078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.337497, 16.035568, 19.267727>,  <13.478953, 16.806622, 19.458368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.337497, 16.035568, 19.267727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.954232, 16.037193, 19.153248>,  <12.724274, 16.038168, 19.084560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.954232, 16.037193, 19.153248>,  <13.337497, 16.035568, 19.267727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.954232, 16.037193, 19.153248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267636, 0.367201, -0.890805,
		0.101472, -0.930133, -0.352926,
		-0.958162, 0.004064, -0.286198,
		12.666783, 16.038412, 19.067389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.289433, 15.706345, 18.492865>,  <13.337497, 16.035568, 19.267727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.289433, 15.706345, 18.492865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.959397, 15.924811, 18.550737>,  <12.761376, 16.055891, 18.585461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.959397, 15.924811, 18.550737>,  <13.289433, 15.706345, 18.492865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.959397, 15.924811, 18.550737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008186, 0.267600, -0.963495,
		-0.564946, -0.793784, -0.225264,
		-0.825088, 0.546166, 0.144682,
		12.711871, 16.088661, 18.594141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.802938, 15.494195, 17.944901>,  <13.289433, 15.706345, 18.492865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.802938, 15.494195, 17.944901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.642130, 15.842042, 18.059546>,  <12.545645, 16.050751, 18.128332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.642130, 15.842042, 18.059546>,  <12.802938, 15.494195, 17.944901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.642130, 15.842042, 18.059546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044033, 0.294298, -0.954699,
		-0.914571, -0.396429, -0.080022,
		-0.402021, 0.869616, 0.286612,
		12.521523, 16.102926, 18.145529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.133505, 15.588305, 17.587698>,  <12.802938, 15.494195, 17.944901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.133505, 15.588305, 17.587698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.283049, 15.950875, 17.666311>,  <12.372775, 16.168417, 17.713478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.283049, 15.950875, 17.666311>,  <12.133505, 15.588305, 17.587698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.283049, 15.950875, 17.666311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118955, 0.257009, -0.959060,
		-0.919825, 0.335176, 0.203909,
		0.373860, 0.906423, 0.196532,
		12.395206, 16.222803, 17.725271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.397790, 15.940854, 17.695915>,  <12.133505, 15.588305, 17.587698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.397790, 15.940854, 17.695915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.687795, 16.199766, 17.601780>,  <11.861797, 16.355114, 17.545300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.687795, 16.199766, 17.601780>,  <11.397790, 15.940854, 17.695915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.687795, 16.199766, 17.601780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409683, 0.130633, -0.902826,
		-0.553639, 0.750974, 0.359890,
		0.725013, 0.647281, -0.235338,
		11.905298, 16.393951, 17.531179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.074539, 16.414009, 17.265440>,  <11.397790, 15.940854, 17.695915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.074539, 16.414009, 17.265440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.457108, 16.502678, 17.189425>,  <11.686650, 16.555880, 17.143814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.457108, 16.502678, 17.189425>,  <11.074539, 16.414009, 17.265440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.457108, 16.502678, 17.189425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227203, 0.156215, -0.961237,
		-0.183394, 0.962527, 0.199772,
		0.956423, 0.221674, -0.190040,
		11.744036, 16.569180, 17.132412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.012128, 16.937925, 16.776459>,  <11.074539, 16.414009, 17.265440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.012128, 16.937925, 16.776459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.388064, 16.805132, 16.744244>,  <11.613626, 16.725456, 16.724915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.388064, 16.805132, 16.744244>,  <11.012128, 16.937925, 16.776459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.388064, 16.805132, 16.744244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080562, 0.013721, -0.996655,
		0.331976, 0.943186, -0.013850,
		0.939841, -0.331982, -0.080540,
		11.670017, 16.705538, 16.720081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.268073, 17.407000, 16.322239>,  <11.012128, 16.937925, 16.776459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.268073, 17.407000, 16.322239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.531016, 17.105579, 16.319614>,  <11.688783, 16.924728, 16.318039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.531016, 17.105579, 16.319614>,  <11.268073, 17.407000, 16.322239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.531016, 17.105579, 16.319614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013184, -0.002794, -0.999909,
		0.753463, 0.657385, -0.011772,
		0.657359, -0.753549, -0.006562,
		11.728224, 16.879515, 16.317646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.846818, 17.538656, 15.815932>,  <11.268073, 17.407000, 16.322239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.846818, 17.538656, 15.815932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.827392, 17.140209, 15.845296>,  <11.815736, 16.901140, 15.862914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.827392, 17.140209, 15.845296>,  <11.846818, 17.538656, 15.815932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.827392, 17.140209, 15.845296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028376, -0.072091, -0.996994,
		0.998417, -0.050504, -0.024765,
		-0.048567, -0.996118, 0.073410,
		11.812821, 16.841373, 15.867319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.377240, 17.306664, 15.373808>,  <11.846818, 17.538656, 15.815932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.377240, 17.306664, 15.373808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.160105, 16.972782, 15.410900>,  <12.029823, 16.772453, 15.433156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.160105, 16.972782, 15.410900>,  <12.377240, 17.306664, 15.373808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.160105, 16.972782, 15.410900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024952, -0.126397, -0.991666,
		0.839466, -0.536001, 0.089441,
		-0.542839, -0.834701, 0.092731,
		11.997252, 16.722372, 15.438720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.617413, 16.745390, 14.875402>,  <12.377240, 17.306664, 15.373808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.617413, 16.745390, 14.875402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.250446, 16.604959, 14.950338>,  <12.030267, 16.520700, 14.995300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.250446, 16.604959, 14.950338>,  <12.617413, 16.745390, 14.875402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.250446, 16.604959, 14.950338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169852, -0.080266, -0.982195,
		0.359863, -0.932900, 0.014006,
		-0.917415, -0.351076, 0.187340,
		11.975222, 16.499638, 15.006540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.615938, 16.033165, 14.534431>,  <12.617413, 16.745390, 14.875402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.615938, 16.033165, 14.534431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.250468, 16.187916, 14.584271>,  <12.031186, 16.280766, 14.614175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.250468, 16.187916, 14.584271>,  <12.615938, 16.033165, 14.534431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.250468, 16.187916, 14.584271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204505, -0.172661, -0.963517,
		-0.351248, -0.905823, 0.236875,
		-0.913675, 0.386876, 0.124599,
		11.976366, 16.303978, 14.621651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.214970, 15.581523, 14.296683>,  <12.615938, 16.033165, 14.534431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.214970, 15.581523, 14.296683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.970580, 15.898126, 14.290657>,  <11.823946, 16.088087, 14.287042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.970580, 15.898126, 14.290657>,  <12.214970, 15.581523, 14.296683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.970580, 15.898126, 14.290657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274125, -0.229376, -0.933939,
		-0.742675, -0.566483, 0.357114,
		-0.610973, 0.791507, -0.015065,
		11.787288, 16.135578, 14.286138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.439142, 15.478333, 14.098189>,  <12.214970, 15.581523, 14.296683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.439142, 15.478333, 14.098189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.573010, 15.822574, 13.944638>,  <11.653331, 16.029118, 13.852508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.573010, 15.822574, 13.944638>,  <11.439142, 15.478333, 14.098189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.573010, 15.822574, 13.944638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508282, -0.178169, -0.842559,
		-0.793502, 0.477096, 0.377801,
		0.334669, 0.860601, -0.383877,
		11.673411, 16.080753, 13.829475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.303464, 15.077613, 14.708790>,  <11.439142, 15.478333, 14.098189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.303464, 15.077613, 14.708790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.077993, 14.796875, 14.534579>,  <10.942711, 14.628432, 14.430053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.077993, 14.796875, 14.534579>,  <11.303464, 15.077613, 14.708790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.077993, 14.796875, 14.534579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.788536, -0.300243, -0.536717,
		0.245929, -0.645962, 0.722670,
		-0.563676, -0.701845, -0.435526,
		10.908891, 14.586322, 14.403921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.555771, 14.408244, 14.902222>,  <11.303464, 15.077613, 14.708790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.555771, 14.408244, 14.902222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.411916, 14.478939, 14.535741>,  <11.325603, 14.521356, 14.315852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.411916, 14.478939, 14.535741>,  <11.555771, 14.408244, 14.902222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.411916, 14.478939, 14.535741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.880440, -0.260896, -0.395927,
		-0.309008, -0.949051, -0.061779,
		-0.359637, 0.176737, -0.916202,
		11.304025, 14.531960, 14.260880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.717228, 13.888763, 14.311929>,  <11.555771, 14.408244, 14.902222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.717228, 13.888763, 14.311929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.719777, 14.272965, 14.200654>,  <11.721307, 14.503487, 14.133889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.719777, 14.272965, 14.200654>,  <11.717228, 13.888763, 14.311929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.719777, 14.272965, 14.200654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.956248, -0.087223, -0.279253,
		-0.292488, -0.264237, -0.919037,
		0.006372, 0.960506, -0.278187,
		11.721688, 14.561117, 14.117198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.156775, 13.573739, 14.934641>,  <11.717228, 13.888763, 14.311929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.156775, 13.573739, 14.934641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.368341, 13.841605, 14.726105>,  <12.495282, 14.002325, 14.600984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.368341, 13.841605, 14.726105>,  <12.156775, 13.573739, 14.934641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.368341, 13.841605, 14.726105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227376, 0.703659, 0.673175,
		0.817646, -0.237514, 0.524444,
		0.528918, 0.669664, -0.521339,
		12.527017, 14.042504, 14.569703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.484641, 12.818092, 14.983108>,  <12.156775, 13.573739, 14.934641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.484641, 12.818092, 14.983108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.665755, 13.103006, 15.197635>,  <12.774424, 13.273954, 15.326351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.665755, 13.103006, 15.197635>,  <12.484641, 12.818092, 14.983108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.665755, 13.103006, 15.197635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216409, -0.671316, 0.708874,
		0.864959, -0.204903, -0.458106,
		0.452784, 0.712285, 0.536318,
		12.801591, 13.316691, 15.358530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.069488, 12.431319, 15.199851>,  <12.484641, 12.818092, 14.983108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.069488, 12.431319, 15.199851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.010290, 12.737659, 15.450154>,  <12.974771, 12.921463, 15.600336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.010290, 12.737659, 15.450154>,  <13.069488, 12.431319, 15.199851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.010290, 12.737659, 15.450154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073513, -0.622456, 0.779195,
		0.986253, 0.161317, 0.035819,
		-0.147993, 0.765850, 0.625758,
		12.965892, 12.967414, 15.637881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.556019, 12.357622, 15.616862>,  <13.069488, 12.431319, 15.199851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.556019, 12.357622, 15.616862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.309010, 12.591163, 15.827682>,  <13.160804, 12.731287, 15.954175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.309010, 12.591163, 15.827682>,  <13.556019, 12.357622, 15.616862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.309010, 12.591163, 15.827682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204159, -0.528133, 0.824254,
		0.759595, 0.616598, 0.206935,
		-0.617523, 0.583852, 0.527051,
		13.123753, 12.766318, 15.985798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.939899, 12.430160, 16.376518>,  <13.556019, 12.357622, 15.616862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.939899, 12.430160, 16.376518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.553059, 12.525904, 16.410976>,  <13.320954, 12.583350, 16.431650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.553059, 12.525904, 16.410976>,  <13.939899, 12.430160, 16.376518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.553059, 12.525904, 16.410976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070946, -0.578972, 0.812255,
		0.244298, 0.779421, 0.576907,
		-0.967102, 0.239361, 0.086144,
		13.262928, 12.597713, 16.436819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.836900, 12.757483, 16.990479>,  <13.939899, 12.430160, 16.376518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.836900, 12.757483, 16.990479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.472530, 12.613851, 16.909208>,  <13.253909, 12.527672, 16.860447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.472530, 12.613851, 16.909208>,  <13.836900, 12.757483, 16.990479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.472530, 12.613851, 16.909208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062151, -0.367407, 0.927981,
		-0.407867, 0.857948, 0.312362,
		-0.910924, -0.359079, -0.203176,
		13.199253, 12.506127, 16.848255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.437182, 12.832946, 17.541313>,  <13.836900, 12.757483, 16.990479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.437182, 12.832946, 17.541313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.214558, 12.555140, 17.358934>,  <13.080983, 12.388457, 17.249506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.214558, 12.555140, 17.358934>,  <13.437182, 12.832946, 17.541313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.214558, 12.555140, 17.358934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250493, -0.382986, 0.889143,
		-0.792144, 0.609075, 0.039184,
		-0.556562, -0.694514, -0.455949,
		13.047589, 12.346786, 17.222149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.823711, 12.678207, 17.955067>,  <13.437182, 12.832946, 17.541313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.823711, 12.678207, 17.955067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.889366, 12.354002, 17.730165>,  <12.928759, 12.159478, 17.595224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.889366, 12.354002, 17.730165>,  <12.823711, 12.678207, 17.955067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.889366, 12.354002, 17.730165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072712, -0.578372, 0.812526,
		-0.983754, -0.092483, -0.153866,
		0.164137, -0.810514, -0.562251,
		12.938607, 12.110847, 17.561491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.282320, 12.150062, 18.220409>,  <12.823711, 12.678207, 17.955067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.282320, 12.150062, 18.220409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.561316, 11.928787, 18.038204>,  <12.728713, 11.796022, 17.928881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.561316, 11.928787, 18.038204>,  <12.282320, 12.150062, 18.220409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.561316, 11.928787, 18.038204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183083, -0.752134, 0.633068,
		-0.692814, -0.358160, -0.625883,
		0.697488, -0.553187, -0.455516,
		12.770562, 11.762832, 17.901550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.984427, 11.501327, 18.102373>,  <12.282320, 12.150062, 18.220409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.984427, 11.501327, 18.102373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.379795, 11.440652, 18.100626>,  <12.617016, 11.404247, 18.099577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.379795, 11.440652, 18.100626>,  <11.984427, 11.501327, 18.102373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.379795, 11.440652, 18.100626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129191, -0.856244, 0.500157,
		-0.079609, -0.493800, -0.865924,
		0.988419, -0.151686, -0.004370,
		12.676321, 11.395146, 18.099316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.989481, 10.806757, 18.158031>,  <11.984427, 11.501327, 18.102373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.989481, 10.806757, 18.158031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.353237, 10.915034, 18.284355>,  <12.571491, 10.980000, 18.360149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.353237, 10.915034, 18.284355>,  <11.989481, 10.806757, 18.158031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.353237, 10.915034, 18.284355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042306, -0.695122, 0.717646,
		0.413787, -0.665981, -0.620685,
		0.909390, 0.270694, 0.315808,
		12.626054, 10.996243, 18.379097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.372992, 10.203642, 18.177523>,  <11.989481, 10.806757, 18.158031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.372992, 10.203642, 18.177523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.613922, 10.432485, 18.400196>,  <12.758481, 10.569791, 18.533800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.613922, 10.432485, 18.400196>,  <12.372992, 10.203642, 18.177523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.613922, 10.432485, 18.400196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102996, -0.747248, 0.656515,
		0.791577, -0.338101, -0.509013,
		0.602327, 0.572108, 0.556681,
		12.794621, 10.604117, 18.567200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.899101, 9.793751, 18.412943>,  <12.372992, 10.203642, 18.177523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.899101, 9.793751, 18.412943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.898933, 10.097956, 18.672672>,  <12.898832, 10.280478, 18.828510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.898933, 10.097956, 18.672672>,  <12.899101, 9.793751, 18.412943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.898933, 10.097956, 18.672672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155493, -0.641376, 0.751304,
		0.987837, 0.101282, -0.117985,
		-0.000421, 0.760512, 0.649324,
		12.898808, 10.326109, 18.867470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.408256, 9.641170, 18.761913>,  <12.899101, 9.793751, 18.412943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.408256, 9.641170, 18.761913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.214533, 9.897973, 18.999659>,  <13.098299, 10.052055, 19.142305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.214533, 9.897973, 18.999659>,  <13.408256, 9.641170, 18.761913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.214533, 9.897973, 18.999659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009997, -0.675248, 0.737522,
		0.874841, 0.363130, 0.320609,
		-0.484307, 0.642009, 0.594365,
		13.069241, 10.090576, 19.177969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.719748, 9.630684, 19.328501>,  <13.408256, 9.641170, 18.761913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.719748, 9.630684, 19.328501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.375400, 9.778059, 19.468876>,  <13.168791, 9.866484, 19.553101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.375400, 9.778059, 19.468876>,  <13.719748, 9.630684, 19.328501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.375400, 9.778059, 19.468876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097356, -0.557688, 0.824321,
		0.499424, 0.743799, 0.444228,
		-0.860870, 0.368437, 0.350936,
		13.117139, 9.888590, 19.574156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.944328, 9.977767, 20.019720>,  <13.719748, 9.630684, 19.328501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.944328, 9.977767, 20.019720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.550508, 9.908530, 20.030262>,  <13.314215, 9.866988, 20.036587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.550508, 9.908530, 20.030262>,  <13.944328, 9.977767, 20.019720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.550508, 9.908530, 20.030262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096178, -0.408893, 0.907500,
		-0.146305, 0.896016, 0.419225,
		-0.984553, -0.173092, 0.026354,
		13.255141, 9.856603, 20.038168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.854752, 10.249115, 20.636473>,  <13.944328, 9.977767, 20.019720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.854752, 10.249115, 20.636473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.539512, 10.011549, 20.571770>,  <13.350368, 9.869009, 20.532948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.539512, 10.011549, 20.571770>,  <13.854752, 10.249115, 20.636473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.539512, 10.011549, 20.571770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011735, -0.277232, 0.960731,
		-0.615437, 0.755253, 0.225456,
		-0.788099, -0.593916, -0.161756,
		13.303082, 9.833374, 20.523243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.394523, 10.355161, 21.160938>,  <13.854752, 10.249115, 20.636473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.394523, 10.355161, 21.160938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.265245, 10.000373, 21.028980>,  <13.187679, 9.787500, 20.949804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.265245, 10.000373, 21.028980>,  <13.394523, 10.355161, 21.160938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.265245, 10.000373, 21.028980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011340, -0.344950, 0.938553,
		-0.946265, 0.307075, 0.101427,
		-0.323194, -0.886969, -0.329897,
		13.168287, 9.734282, 20.930012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.787297, 10.148071, 21.726971>,  <13.394523, 10.355161, 21.160938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.787297, 10.148071, 21.726971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.876936, 9.826264, 21.506960>,  <12.930719, 9.633180, 21.374952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.876936, 9.826264, 21.506960>,  <12.787297, 10.148071, 21.726971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.876936, 9.826264, 21.506960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136321, -0.584711, 0.799707,
		-0.964986, -0.104230, -0.240703,
		0.224095, -0.804518, -0.550029,
		12.944164, 9.584908, 21.341951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.239651, 9.651982, 21.960520>,  <12.787297, 10.148071, 21.726971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.239651, 9.651982, 21.960520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.509876, 9.414727, 21.785339>,  <12.672011, 9.272374, 21.680231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.509876, 9.414727, 21.785339>,  <12.239651, 9.651982, 21.960520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.509876, 9.414727, 21.785339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042614, -0.624409, 0.779934,
		-0.736071, -0.508231, -0.447103,
		0.675562, -0.593139, -0.437951,
		12.712545, 9.236786, 21.653954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.945708, 8.914944, 22.052355>,  <12.239651, 9.651982, 21.960520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.945708, 8.914944, 22.052355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.342277, 8.913959, 22.000080>,  <12.580217, 8.913367, 21.968716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.342277, 8.913959, 22.000080>,  <11.945708, 8.914944, 22.052355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.342277, 8.913959, 22.000080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106401, -0.565509, 0.817850,
		-0.075918, -0.824738, -0.560395,
		0.991420, -0.002463, -0.130685,
		12.639703, 8.913219, 21.960875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.185437, 8.184752, 21.973724>,  <11.945708, 8.914944, 22.052355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.185437, 8.184752, 21.973724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.466889, 8.434842, 22.108776>,  <12.635761, 8.584897, 22.189808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.466889, 8.434842, 22.108776>,  <12.185437, 8.184752, 21.973724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.466889, 8.434842, 22.108776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119412, -0.572444, 0.811202,
		0.700460, -0.530470, -0.477449,
		0.703631, 0.625227, 0.337630,
		12.677979, 8.622411, 22.210066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.683572, 7.825525, 22.273773>,  <12.185437, 8.184752, 21.973724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.683572, 7.825525, 22.273773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.794142, 8.155164, 22.471542>,  <12.860484, 8.352947, 22.590204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.794142, 8.155164, 22.471542>,  <12.683572, 7.825525, 22.273773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.794142, 8.155164, 22.471542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116319, -0.539375, 0.833993,
		0.953970, -0.173027, -0.244955,
		0.276426, 0.824097, 0.494421,
		12.877069, 8.402393, 22.619869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.195319, 7.610850, 22.791466>,  <12.683572, 7.825525, 22.273773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.195319, 7.610850, 22.791466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.083886, 7.969660, 22.928717>,  <13.017026, 8.184946, 23.011068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.083886, 7.969660, 22.928717>,  <13.195319, 7.610850, 22.791466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.083886, 7.969660, 22.928717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158581, -0.395332, 0.904745,
		0.947229, 0.197633, 0.252384,
		-0.278584, 0.897025, 0.343129,
		13.000311, 8.238768, 23.031656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.568502, 7.701957, 23.390800>,  <13.195319, 7.610850, 22.791466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.568502, 7.701957, 23.390800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.294111, 7.990448, 23.429306>,  <13.129477, 8.163543, 23.452410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.294111, 7.990448, 23.429306>,  <13.568502, 7.701957, 23.390800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.294111, 7.990448, 23.429306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029138, -0.159422, 0.986780,
		0.727040, 0.674103, 0.130375,
		-0.685977, 0.721228, 0.096264,
		13.088318, 8.206817, 23.458185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
