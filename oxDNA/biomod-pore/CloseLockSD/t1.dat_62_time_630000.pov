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
	<4.578902, 14.612355, 14.633840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.501336, 14.890498, 14.910643>,  <4.454796, 15.057384, 15.076724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.501336, 14.890498, 14.910643>,  <4.578902, 14.612355, 14.633840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.501336, 14.890498, 14.910643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.962120, 0.272593, -0.004306,
		-0.191631, 0.664959, -0.721878,
		-0.193915, 0.695358, 0.692007,
		4.443161, 15.099106, 15.118245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.704607, 15.352383, 14.490997>,  <4.578902, 14.612355, 14.633840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.704607, 15.352383, 14.490997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.763247, 15.267764, 14.877522>,  <4.798430, 15.216993, 15.109436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.763247, 15.267764, 14.877522>,  <4.704607, 15.352383, 14.490997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.763247, 15.267764, 14.877522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.892365, 0.449803, -0.036908,
		-0.426842, 0.867713, 0.254717,
		0.146598, -0.211546, 0.966311,
		4.807226, 15.204300, 15.167415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.938699, 15.981933, 14.743430>,  <4.704607, 15.352383, 14.490997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.938699, 15.981933, 14.743430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.044728, 15.668244, 14.967835>,  <5.108346, 15.480032, 15.102478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.044728, 15.668244, 14.967835>,  <4.938699, 15.981933, 14.743430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.044728, 15.668244, 14.967835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.961052, 0.262065, -0.087758,
		-0.078200, 0.562424, 0.823142,
		0.265074, -0.784220, 0.561012,
		5.124250, 15.432979, 15.136139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.425133, 16.165279, 15.367348>,  <4.938699, 15.981933, 14.743430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.425133, 16.165279, 15.367348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.495836, 15.794416, 15.235204>,  <5.538258, 15.571898, 15.155917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.495836, 15.794416, 15.235204>,  <5.425133, 16.165279, 15.367348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.495836, 15.794416, 15.235204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.972894, 0.215430, -0.084062,
		0.149108, -0.306546, 0.940105,
		0.176758, -0.927157, -0.330359,
		5.548863, 15.516270, 15.136096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.950581, 15.926455, 15.825770>,  <5.425133, 16.165279, 15.367348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.950581, 15.926455, 15.825770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.976460, 15.755625, 15.465012>,  <5.991988, 15.653127, 15.248556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.976460, 15.755625, 15.465012>,  <5.950581, 15.926455, 15.825770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.976460, 15.755625, 15.465012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.983509, 0.180252, -0.014801,
		0.168890, -0.886067, 0.431695,
		0.064699, -0.427076, -0.901898,
		5.995870, 15.627502, 15.194442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.497552, 15.286969, 15.777886>,  <5.950581, 15.926455, 15.825770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.497552, 15.286969, 15.777886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.442565, 15.445065, 15.414593>,  <6.409573, 15.539922, 15.196616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.442565, 15.445065, 15.414593>,  <6.497552, 15.286969, 15.777886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.442565, 15.445065, 15.414593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.987896, 0.121232, -0.096770,
		0.071860, -0.910544, -0.407119,
		-0.137469, 0.395238, -0.908234,
		6.401324, 15.563636, 15.142122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.146587, 15.184299, 15.406980>,  <6.497552, 15.286969, 15.777886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.146587, 15.184299, 15.406980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.000083, 15.425767, 15.123730>,  <6.912181, 15.570647, 14.953780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.000083, 15.425767, 15.123730>,  <7.146587, 15.184299, 15.406980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.000083, 15.425767, 15.123730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.915029, 0.095403, -0.391945,
		-0.169047, -0.791506, -0.587316,
		-0.366259, 0.603669, -0.708124,
		6.890206, 15.606868, 14.911293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.410357, 15.092229, 14.728014>,  <7.146587, 15.184299, 15.406980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.410357, 15.092229, 14.728014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.257778, 15.453257, 14.648146>,  <7.166230, 15.669873, 14.600224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.257778, 15.453257, 14.648146>,  <7.410357, 15.092229, 14.728014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.257778, 15.453257, 14.648146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.828193, 0.237738, -0.507520,
		-0.410603, -0.358958, -0.838185,
		-0.381447, 0.902568, -0.199671,
		7.143343, 15.724027, 14.588244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.536554, 15.383996, 14.007591>,  <7.410357, 15.092229, 14.728014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.536554, 15.383996, 14.007591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.455336, 15.704728, 14.232389>,  <7.406604, 15.897167, 14.367269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.455336, 15.704728, 14.232389>,  <7.536554, 15.383996, 14.007591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.455336, 15.704728, 14.232389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.783912, 0.477036, -0.397391,
		-0.586732, 0.359866, -0.725425,
		-0.203047, 0.801831, 0.561995,
		7.394422, 15.945277, 14.400988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.600794, 15.928658, 13.613577>,  <7.536554, 15.383996, 14.007591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.600794, 15.928658, 13.613577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.653999, 16.076443, 13.981447>,  <7.685922, 16.165113, 14.202169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.653999, 16.076443, 13.981447>,  <7.600794, 15.928658, 13.613577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.653999, 16.076443, 13.981447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.838862, 0.452221, -0.302996,
		-0.527843, 0.811784, -0.249778,
		0.133012, 0.369464, 0.919676,
		7.693903, 16.187283, 14.257350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.732310, 16.643608, 13.587534>,  <7.600794, 15.928658, 13.613577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.732310, 16.643608, 13.587534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.830613, 16.593477, 13.972012>,  <7.889595, 16.563398, 14.202699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.830613, 16.593477, 13.972012>,  <7.732310, 16.643608, 13.587534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.830613, 16.593477, 13.972012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694524, 0.714501, -0.084413,
		-0.676196, 0.688318, 0.262637,
		0.245758, -0.125328, 0.961195,
		7.904340, 16.555880, 14.260370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.861031, 17.299341, 13.810645>,  <7.732310, 16.643608, 13.587534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.861031, 17.299341, 13.810645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.055744, 17.080528, 14.083055>,  <8.172572, 16.949240, 14.246502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.055744, 17.080528, 14.083055>,  <7.861031, 17.299341, 13.810645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.055744, 17.080528, 14.083055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.780927, 0.621860, -0.058681,
		-0.391403, 0.560397, 0.729904,
		0.486783, -0.547033, 0.681026,
		8.201779, 16.916418, 14.287363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.151158, 17.785002, 14.243999>,  <7.861031, 17.299341, 13.810645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.151158, 17.785002, 14.243999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.350985, 17.449883, 14.332115>,  <8.470881, 17.248812, 14.384985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.350985, 17.449883, 14.332115>,  <8.151158, 17.785002, 14.243999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.350985, 17.449883, 14.332115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.852176, 0.520973, 0.048811,
		-0.155660, 0.163343, 0.974212,
		0.499565, -0.837798, 0.220292,
		8.500854, 17.198544, 14.398203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.573397, 17.938438, 14.733602>,  <8.151158, 17.785002, 14.243999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.573397, 17.938438, 14.733602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.734324, 17.602921, 14.586870>,  <8.830881, 17.401609, 14.498832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.734324, 17.602921, 14.586870>,  <8.573397, 17.938438, 14.733602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.734324, 17.602921, 14.586870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.876319, 0.468801, -0.110865,
		0.264962, -0.276855, 0.923659,
		0.402319, -0.838795, -0.366828,
		8.855021, 17.351282, 14.476822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.226604, 17.959955, 15.035107>,  <8.573397, 17.938438, 14.733602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.226604, 17.959955, 15.035107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.248922, 17.715992, 14.718904>,  <9.262314, 17.569614, 14.529183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.248922, 17.715992, 14.718904>,  <9.226604, 17.959955, 15.035107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.248922, 17.715992, 14.718904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.906147, 0.363401, -0.216420,
		0.419267, -0.704238, 0.572943,
		0.055797, -0.609908, -0.790505,
		9.265661, 17.533020, 14.481753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.866997, 17.601969, 15.107528>,  <9.226604, 17.959955, 15.035107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.866997, 17.601969, 15.107528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.763897, 17.599318, 14.721052>,  <9.702037, 17.597727, 14.489167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.763897, 17.599318, 14.721052>,  <9.866997, 17.601969, 15.107528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.763897, 17.599318, 14.721052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.868138, 0.437382, -0.234592,
		0.424148, -0.899251, -0.106983,
		-0.257750, -0.006625, -0.966189,
		9.686572, 17.597330, 14.431195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.465864, 17.467888, 14.828813>,  <9.866997, 17.601969, 15.107528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.465864, 17.467888, 14.828813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.234538, 17.625351, 14.542991>,  <10.095743, 17.719830, 14.371498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.234538, 17.625351, 14.542991>,  <10.465864, 17.467888, 14.828813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.234538, 17.625351, 14.542991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.814999, 0.317931, -0.484455,
		0.036470, -0.862528, -0.504694,
		-0.578314, 0.393657, -0.714554,
		10.061044, 17.743448, 14.328625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.868106, 17.450306, 14.202952>,  <10.465864, 17.467888, 14.828813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.868106, 17.450306, 14.202952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.571939, 17.685446, 14.072592>,  <10.394238, 17.826530, 13.994375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.571939, 17.685446, 14.072592>,  <10.868106, 17.450306, 14.202952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.571939, 17.685446, 14.072592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631623, 0.442712, -0.636442,
		-0.229852, -0.677081, -0.699092,
		-0.740419, 0.587850, -0.325902,
		10.349813, 17.861801, 13.974821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.847268, 17.422251, 13.492784>,  <10.868106, 17.450306, 14.202952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.847268, 17.422251, 13.492784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.674869, 17.772217, 13.581111>,  <10.571429, 17.982197, 13.634108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.674869, 17.772217, 13.581111>,  <10.847268, 17.422251, 13.492784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.674869, 17.772217, 13.581111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515558, 0.439601, -0.735494,
		-0.740568, -0.203152, -0.640538,
		-0.430998, 0.874917, 0.220818,
		10.545569, 18.034693, 13.647356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.595953, 17.720463, 12.942634>,  <10.847268, 17.422251, 13.492784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.595953, 17.720463, 12.942634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.665457, 18.033005, 13.182397>,  <10.707159, 18.220530, 13.326255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.665457, 18.033005, 13.182397>,  <10.595953, 17.720463, 12.942634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.665457, 18.033005, 13.182397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466084, 0.470931, -0.748993,
		-0.867510, 0.409519, -0.282349,
		0.173759, 0.781357, 0.599407,
		10.717585, 18.267412, 13.362219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.620652, 18.304966, 12.408164>,  <10.595953, 17.720463, 12.942634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.620652, 18.304966, 12.408164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.741228, 18.503326, 12.733915>,  <10.813574, 18.622343, 12.929366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.741228, 18.503326, 12.733915>,  <10.620652, 18.304966, 12.408164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.741228, 18.503326, 12.733915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470272, 0.665671, -0.579420,
		-0.829444, 0.557640, -0.032549,
		0.301441, 0.495903, 0.814379,
		10.831660, 18.652098, 12.978230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.337086, 19.035658, 12.323788>,  <10.620652, 18.304966, 12.408164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.337086, 19.035658, 12.323788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.634206, 19.068802, 12.589535>,  <10.812478, 19.088688, 12.748982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.634206, 19.068802, 12.589535>,  <10.337086, 19.035658, 12.323788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.634206, 19.068802, 12.589535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354151, 0.793490, -0.494924,
		-0.568178, 0.602916, 0.560060,
		0.742799, 0.082859, 0.664367,
		10.857046, 19.093660, 12.788845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.386975, 19.750092, 12.649060>,  <10.337086, 19.035658, 12.323788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.386975, 19.750092, 12.649060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.758777, 19.608601, 12.690822>,  <10.981857, 19.523706, 12.715878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.758777, 19.608601, 12.690822>,  <10.386975, 19.750092, 12.649060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.758777, 19.608601, 12.690822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353404, 0.773262, -0.526471,
		0.105496, 0.526253, 0.843759,
		0.929503, -0.353728, 0.104404,
		11.037627, 19.502481, 12.722143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.779216, 20.311178, 12.868741>,  <10.386975, 19.750092, 12.649060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.779216, 20.311178, 12.868741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.031800, 20.050758, 12.700271>,  <11.183351, 19.894506, 12.599189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.031800, 20.050758, 12.700271>,  <10.779216, 20.311178, 12.868741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.031800, 20.050758, 12.700271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340583, 0.720843, -0.603646,
		0.696606, 0.237734, 0.676921,
		0.631461, -0.651052, -0.421175,
		11.221238, 19.855442, 12.573918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.401718, 20.623150, 12.779385>,  <10.779216, 20.311178, 12.868741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.401718, 20.623150, 12.779385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.466939, 20.317833, 12.529328>,  <11.506071, 20.134644, 12.379294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.466939, 20.317833, 12.529328>,  <11.401718, 20.623150, 12.779385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.466939, 20.317833, 12.529328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488304, 0.613007, -0.621113,
		0.857306, -0.203985, 0.472670,
		0.163052, -0.763290, -0.625141,
		11.515855, 20.088846, 12.341786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.167732, 20.498434, 12.566428>,  <11.401718, 20.623150, 12.779385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.167732, 20.498434, 12.566428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.923867, 20.350498, 12.285992>,  <11.777549, 20.261736, 12.117729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.923867, 20.350498, 12.285992>,  <12.167732, 20.498434, 12.566428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.923867, 20.350498, 12.285992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311834, 0.701255, -0.641094,
		0.728750, -0.609473, -0.312195,
		-0.609658, -0.369844, -0.701094,
		11.740969, 20.239546, 12.075665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.524409, 20.575453, 11.939022>,  <12.167732, 20.498434, 12.566428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.524409, 20.575453, 11.939022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.150393, 20.524273, 11.806764>,  <11.925982, 20.493565, 11.727408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.150393, 20.524273, 11.806764>,  <12.524409, 20.575453, 11.939022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.150393, 20.524273, 11.806764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190058, 0.606386, -0.772123,
		0.299292, -0.784809, -0.542678,
		-0.935041, -0.127949, -0.330646,
		11.869880, 20.485888, 11.707570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.920251, 20.247274, 12.578110>,  <12.524409, 20.575453, 11.939022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.920251, 20.247274, 12.578110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.181453, 20.491987, 12.756684>,  <13.338174, 20.638815, 12.863830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.181453, 20.491987, 12.756684>,  <12.920251, 20.247274, 12.578110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.181453, 20.491987, 12.756684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212841, 0.417471, -0.883412,
		-0.726832, 0.671892, 0.142398,
		0.653004, 0.611784, 0.446437,
		13.377354, 20.675522, 12.890615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.317711, 20.204554, 12.049188>,  <12.920251, 20.247274, 12.578110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.317711, 20.204554, 12.049188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.289792, 19.924484, 12.333409>,  <13.273041, 19.756443, 12.503942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.289792, 19.924484, 12.333409>,  <13.317711, 20.204554, 12.049188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.289792, 19.924484, 12.333409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009755, -0.712736, -0.701364,
		0.997513, -0.042022, 0.056578,
		-0.069798, -0.700172, 0.710554,
		13.268853, 19.714432, 12.546576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.812226, 19.630163, 11.984071>,  <13.317711, 20.204554, 12.049188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.812226, 19.630163, 11.984071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.496016, 19.478998, 12.176840>,  <13.306289, 19.388300, 12.292501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.496016, 19.478998, 12.176840>,  <13.812226, 19.630163, 11.984071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.496016, 19.478998, 12.176840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030839, -0.761346, -0.647612,
		0.611650, -0.526817, 0.590210,
		-0.790527, -0.377910, 0.481923,
		13.258858, 19.365625, 12.321417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.999168, 19.006207, 12.058151>,  <13.812226, 19.630163, 11.984071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.999168, 19.006207, 12.058151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.602015, 19.008148, 12.105747>,  <13.363723, 19.009314, 12.134305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.602015, 19.008148, 12.105747>,  <13.999168, 19.006207, 12.058151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.602015, 19.008148, 12.105747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057917, -0.892720, -0.446874,
		0.104056, -0.450586, 0.886648,
		-0.992884, 0.004852, 0.118990,
		13.304150, 19.009604, 12.141444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.749243, 18.792099, 11.964363>,  <13.999168, 19.006207, 12.058151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.749243, 18.792099, 11.964363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.913342, 18.436018, 12.043594>,  <15.011801, 18.222368, 12.091133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.913342, 18.436018, 12.043594>,  <14.749243, 18.792099, 11.964363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.913342, 18.436018, 12.043594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.832812, -0.454205, -0.316420,
		0.371646, -0.035151, -0.927709,
		0.410247, -0.890203, 0.198077,
		15.036416, 18.168957, 12.103018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.614075, 18.261835, 11.386664>,  <14.749243, 18.792099, 11.964363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.614075, 18.261835, 11.386664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.653894, 18.076166, 11.738718>,  <14.677786, 17.964766, 11.949950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.653894, 18.076166, 11.738718>,  <14.614075, 18.261835, 11.386664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.653894, 18.076166, 11.738718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.835132, -0.519864, -0.179711,
		0.540966, -0.717138, -0.439396,
		0.099549, -0.464171, 0.880134,
		14.683759, 17.936914, 12.002758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.266370, 17.742596, 11.326504>,  <14.614075, 18.261835, 11.386664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.266370, 17.742596, 11.326504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.303288, 17.701859, 11.722708>,  <14.325438, 17.677416, 11.960430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.303288, 17.701859, 11.722708>,  <14.266370, 17.742596, 11.326504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.303288, 17.701859, 11.722708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.795986, -0.605198, 0.011942,
		0.598238, -0.789534, -0.136922,
		0.092293, -0.101844, 0.990510,
		14.330976, 17.671305, 12.019860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.309849, 16.955549, 11.534997>,  <14.266370, 17.742596, 11.326504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.309849, 16.955549, 11.534997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.163977, 17.217813, 11.799457>,  <14.076453, 17.375172, 11.958133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.163977, 17.217813, 11.799457>,  <14.309849, 16.955549, 11.534997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.163977, 17.217813, 11.799457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.841481, -0.536058, 0.067457,
		0.398644, -0.531745, 0.747215,
		-0.364681, 0.655659, 0.661150,
		14.054572, 17.414511, 11.997802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.985723, 16.577818, 12.077180>,  <14.309849, 16.955549, 11.534997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.985723, 16.577818, 12.077180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.825180, 16.942064, 12.116556>,  <13.728854, 17.160612, 12.140182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.825180, 16.942064, 12.116556>,  <13.985723, 16.577818, 12.077180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.825180, 16.942064, 12.116556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.879312, -0.413167, 0.236860,
		0.256361, 0.008505, 0.966544,
		-0.401359, 0.910615, 0.098442,
		13.704772, 17.215248, 12.146089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.735984, 16.685946, 12.756283>,  <13.985723, 16.577818, 12.077180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.735984, 16.685946, 12.756283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.533158, 16.930410, 12.513182>,  <13.411463, 17.077089, 12.367321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.533158, 16.930410, 12.513182>,  <13.735984, 16.685946, 12.756283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.533158, 16.930410, 12.513182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.861830, -0.368981, 0.347996,
		-0.011568, 0.700237, 0.713817,
		-0.507065, 0.611163, -0.607754,
		13.381039, 17.113760, 12.330855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.106465, 16.624477, 13.085728>,  <13.735984, 16.685946, 12.756283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.106465, 16.624477, 13.085728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.001131, 16.867960, 12.786360>,  <12.937930, 17.014050, 12.606739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.001131, 16.867960, 12.786360>,  <13.106465, 16.624477, 13.085728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.001131, 16.867960, 12.786360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.956799, -0.263913, 0.122010,
		-0.123250, 0.748217, 0.651905,
		-0.263336, 0.608704, -0.748421,
		12.922131, 17.050571, 12.561833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.589086, 16.995560, 13.353432>,  <13.106465, 16.624477, 13.085728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.589086, 16.995560, 13.353432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.559109, 16.999807, 12.954579>,  <12.541122, 17.002356, 12.715268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.559109, 16.999807, 12.954579>,  <12.589086, 16.995560, 13.353432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.559109, 16.999807, 12.954579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.939887, -0.334833, 0.067074,
		-0.333160, 0.942218, 0.035076,
		-0.074943, 0.010621, -0.997131,
		12.536626, 17.002995, 12.655440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.019897, 17.283222, 13.282594>,  <12.589086, 16.995560, 13.353432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.019897, 17.283222, 13.282594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.100158, 17.090742, 12.941258>,  <12.148314, 16.975254, 12.736458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.100158, 17.090742, 12.941258>,  <12.019897, 17.283222, 13.282594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.100158, 17.090742, 12.941258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.898631, -0.437283, 0.035282,
		-0.390128, 0.759757, -0.520163,
		0.200653, -0.481199, -0.853338,
		12.160354, 16.946383, 12.685257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.433983, 17.363937, 12.917027>,  <12.019897, 17.283222, 13.282594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.433983, 17.363937, 12.917027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.606482, 17.034866, 12.768849>,  <11.709981, 16.837423, 12.679943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.606482, 17.034866, 12.768849>,  <11.433983, 17.363937, 12.917027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.606482, 17.034866, 12.768849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.886846, -0.462021, -0.006357,
		-0.165924, 0.331268, -0.928833,
		0.431246, -0.822677, -0.370444,
		11.735855, 16.788063, 12.657716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.979410, 17.148031, 12.424171>,  <11.433983, 17.363937, 12.917027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.979410, 17.148031, 12.424171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.198983, 16.826651, 12.516378>,  <11.330728, 16.633821, 12.571703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.198983, 16.826651, 12.516378>,  <10.979410, 17.148031, 12.424171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.198983, 16.826651, 12.516378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.802211, -0.583869, -0.124718,
		0.234798, -0.116462, -0.965042,
		0.548934, -0.803451, 0.230518,
		11.363664, 16.585615, 12.585534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.769600, 16.682447, 11.922872>,  <10.979410, 17.148031, 12.424171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.769600, 16.682447, 11.922872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.935934, 16.478277, 12.223949>,  <11.035734, 16.355776, 12.404596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.935934, 16.478277, 12.223949>,  <10.769600, 16.682447, 11.922872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.935934, 16.478277, 12.223949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.785083, -0.619237, 0.013805,
		0.459049, -0.596668, -0.658226,
		0.415835, -0.510425, 0.752694,
		11.060684, 16.325150, 12.449758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.832862, 16.011898, 11.716221>,  <10.769600, 16.682447, 11.922872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.832862, 16.011898, 11.716221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.890738, 15.955776, 12.108012>,  <10.925463, 15.922103, 12.343087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.890738, 15.955776, 12.108012>,  <10.832862, 16.011898, 11.716221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.890738, 15.955776, 12.108012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.743083, -0.669054, 0.013929,
		0.653370, -0.729850, -0.201065,
		0.144689, -0.140307, 0.979479,
		10.934144, 15.913684, 12.401855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.905111, 15.349031, 11.832279>,  <10.832862, 16.011898, 11.716221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.905111, 15.349031, 11.832279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.802080, 15.496608, 12.189499>,  <10.740261, 15.585154, 12.403831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.802080, 15.496608, 12.189499>,  <10.905111, 15.349031, 11.832279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.802080, 15.496608, 12.189499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.765959, -0.641379, 0.044048,
		0.589034, -0.672693, 0.447799,
		-0.257578, 0.368941, 0.893049,
		10.724807, 15.607290, 12.457414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.741136, 14.778209, 12.261082>,  <10.905111, 15.349031, 11.832279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.741136, 14.778209, 12.261082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.561242, 15.088549, 12.438078>,  <10.453306, 15.274753, 12.544275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.561242, 15.088549, 12.438078>,  <10.741136, 14.778209, 12.261082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.561242, 15.088549, 12.438078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.807895, -0.564616, 0.168861,
		0.380848, -0.281544, 0.880732,
		-0.449733, 0.775849, 0.442491,
		10.426322, 15.321303, 12.570826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.432017, 14.495966, 12.880629>,  <10.741136, 14.778209, 12.261082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.432017, 14.495966, 12.880629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.215956, 14.831099, 12.848948>,  <10.086319, 15.032178, 12.829941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.215956, 14.831099, 12.848948>,  <10.432017, 14.495966, 12.880629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.215956, 14.831099, 12.848948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.830834, -0.515915, 0.208680,
		0.133979, 0.178521, 0.974772,
		-0.540153, 0.837832, -0.079199,
		10.053909, 15.082448, 12.825189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.920628, 14.506693, 13.494732>,  <10.432017, 14.495966, 12.880629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.920628, 14.506693, 13.494732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.772673, 14.761621, 13.224323>,  <9.683900, 14.914578, 13.062078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.772673, 14.761621, 13.224323>,  <9.920628, 14.506693, 13.494732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.772673, 14.761621, 13.224323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.909586, -0.396668, 0.123722,
		-0.189305, 0.660663, 0.726421,
		-0.369887, 0.637322, -0.676021,
		9.661707, 14.952818, 13.021517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.357944, 14.816353, 13.822599>,  <9.920628, 14.506693, 13.494732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.357944, 14.816353, 13.822599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.284207, 14.861329, 13.432035>,  <9.239964, 14.888314, 13.197698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.284207, 14.861329, 13.432035>,  <9.357944, 14.816353, 13.822599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.284207, 14.861329, 13.432035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.973962, -0.154286, 0.166115,
		-0.131968, 0.981607, 0.137953,
		-0.184344, 0.112439, -0.976409,
		9.228904, 14.895061, 13.139112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.754310, 15.203697, 13.755711>,  <9.357944, 14.816353, 13.822599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.754310, 15.203697, 13.755711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.770991, 15.041154, 13.390606>,  <8.781000, 14.943628, 13.171543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.770991, 15.041154, 13.390606>,  <8.754310, 15.203697, 13.755711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.770991, 15.041154, 13.390606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.998724, -0.043002, -0.026488,
		-0.028487, 0.912702, -0.407632,
		0.041704, -0.406358, -0.912762,
		8.783503, 14.919247, 13.116777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.200278, 15.477144, 13.411067>,  <8.754310, 15.203697, 13.755711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.200278, 15.477144, 13.411067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.275930, 15.151278, 13.191776>,  <8.321321, 14.955759, 13.060202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.275930, 15.151278, 13.191776>,  <8.200278, 15.477144, 13.411067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.275930, 15.151278, 13.191776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.976009, -0.217292, -0.013812,
		-0.107873, 0.537686, -0.836216,
		0.189130, -0.814664, -0.548226,
		8.332669, 14.906879, 13.027308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.659553, 15.424717, 12.846502>,  <8.200278, 15.477144, 13.411067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.659553, 15.424717, 12.846502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.818551, 15.058618, 12.820220>,  <7.913949, 14.838958, 12.804451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.818551, 15.058618, 12.820220>,  <7.659553, 15.424717, 12.846502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.818551, 15.058618, 12.820220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.917453, -0.397710, -0.010341,
		-0.016667, 0.064392, -0.997786,
		0.397495, -0.915249, -0.065705,
		7.937799, 14.784043, 12.800508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.385200, 15.073433, 12.287183>,  <7.659553, 15.424717, 12.846502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.385200, 15.073433, 12.287183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.509660, 14.799600, 12.550858>,  <7.584336, 14.635300, 12.709064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.509660, 14.799600, 12.550858>,  <7.385200, 15.073433, 12.287183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.509660, 14.799600, 12.550858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.876616, -0.474638, -0.079143,
		0.367056, -0.553230, -0.747801,
		0.311151, -0.684584, 0.659189,
		7.603005, 14.594224, 12.748615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.189662, 14.372063, 11.939534>,  <7.385200, 15.073433, 12.287183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.189662, 14.372063, 11.939534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.247514, 14.285386, 12.325721>,  <7.282225, 14.233380, 12.557433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.247514, 14.285386, 12.325721>,  <7.189662, 14.372063, 11.939534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.247514, 14.285386, 12.325721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.932688, -0.355678, 0.059890,
		0.330418, -0.909141, -0.253546,
		0.144629, -0.216691, 0.965468,
		7.290903, 14.220379, 12.615361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.921032, 13.733217, 12.014472>,  <7.189662, 14.372063, 11.939534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.921032, 13.733217, 12.014472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.917391, 13.864521, 12.392289>,  <6.915206, 13.943303, 12.618979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.917391, 13.864521, 12.392289>,  <6.921032, 13.733217, 12.014472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.917391, 13.864521, 12.392289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.932255, -0.344444, 0.110720,
		0.361688, -0.879548, 0.309157,
		-0.009104, 0.328259, 0.944544,
		6.914660, 13.962998, 12.675653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.608974, 13.171107, 12.475234>,  <6.921032, 13.733217, 12.014472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.608974, 13.171107, 12.475234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.584310, 13.530323, 12.649463>,  <6.569511, 13.745852, 12.754000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.584310, 13.530323, 12.649463>,  <6.608974, 13.171107, 12.475234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.584310, 13.530323, 12.649463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.984617, -0.126213, 0.120832,
		0.163486, -0.421421, 0.892007,
		-0.061662, 0.898039, 0.435572,
		6.565811, 13.799735, 12.780134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.044983, 13.026636, 13.091336>,  <6.608974, 13.171107, 12.475234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.044983, 13.026636, 13.091336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.358585, 12.985961, 13.336284>,  <7.546747, 12.961555, 13.483253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.358585, 12.985961, 13.336284>,  <7.044983, 13.026636, 13.091336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.358585, 12.985961, 13.336284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460552, -0.566143, -0.683648,
		0.416207, 0.818011, -0.397026,
		0.784005, -0.101688, 0.612369,
		7.593787, 12.955455, 13.519995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.625279, 12.595029, 12.671753>,  <7.044983, 13.026636, 13.091336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.625279, 12.595029, 12.671753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.884665, 12.661089, 12.968998>,  <8.040298, 12.700725, 13.147346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.884665, 12.661089, 12.968998>,  <7.625279, 12.595029, 12.671753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.884665, 12.661089, 12.968998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590432, -0.725289, -0.354042,
		0.480502, 0.668342, -0.567835,
		0.648466, 0.165149, 0.743114,
		8.079206, 12.710634, 13.191932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.263221, 12.764619, 12.700096>,  <7.625279, 12.595029, 12.671753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.263221, 12.764619, 12.700096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.536708, 12.673872, 12.422662>,  <8.700800, 12.619424, 12.256201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.536708, 12.673872, 12.422662>,  <8.263221, 12.764619, 12.700096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.536708, 12.673872, 12.422662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.667923, 0.188309, -0.720013,
		0.293956, 0.955547, -0.022779,
		0.683717, -0.226867, -0.693587,
		8.741823, 12.605812, 12.214586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.399022, 12.106278, 12.635287>,  <8.263221, 12.764619, 12.700096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.399022, 12.106278, 12.635287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.755654, 12.142271, 12.457754>,  <8.969634, 12.163866, 12.351234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.755654, 12.142271, 12.457754>,  <8.399022, 12.106278, 12.635287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.755654, 12.142271, 12.457754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257092, 0.706248, 0.659635,
		0.372809, -0.702223, 0.606544,
		0.891581, 0.089981, -0.443831,
		9.023129, 12.169266, 12.324605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.967498, 11.936666, 13.096363>,  <8.399022, 12.106278, 12.635287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.967498, 11.936666, 13.096363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.086821, 12.194044, 12.814373>,  <9.158415, 12.348471, 12.645179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.086821, 12.194044, 12.814373>,  <8.967498, 11.936666, 13.096363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.086821, 12.194044, 12.814373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361694, 0.607312, 0.707355,
		0.883284, -0.465994, -0.051565,
		0.298308, 0.643445, -0.704976,
		9.176313, 12.387077, 12.602880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.696777, 12.002404, 13.018481>,  <8.967498, 11.936666, 13.096363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.696777, 12.002404, 13.018481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.459311, 12.322639, 12.985938>,  <9.316831, 12.514781, 12.966412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.459311, 12.322639, 12.985938>,  <9.696777, 12.002404, 13.018481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.459311, 12.322639, 12.985938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486038, 0.437309, 0.756656,
		0.641348, 0.409658, -0.648732,
		-0.593666, 0.800588, -0.081358,
		9.281211, 12.562816, 12.961531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.090194, 12.674561, 12.833830>,  <9.696777, 12.002404, 13.018481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.090194, 12.674561, 12.833830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.780735, 12.666330, 13.087144>,  <9.595060, 12.661392, 13.239132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.780735, 12.666330, 13.087144>,  <10.090194, 12.674561, 12.833830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.780735, 12.666330, 13.087144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604673, 0.274661, 0.747617,
		-0.189321, 0.961321, -0.200048,
		-0.773646, -0.020576, 0.633284,
		9.548641, 12.660157, 13.277129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.091410, 13.331745, 13.171892>,  <10.090194, 12.674561, 12.833830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.091410, 13.331745, 13.171892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.924075, 13.056540, 13.409087>,  <9.823674, 12.891418, 13.551404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.924075, 13.056540, 13.409087>,  <10.091410, 13.331745, 13.171892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.924075, 13.056540, 13.409087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503674, 0.367569, 0.781797,
		-0.755849, 0.625727, 0.192766,
		-0.418337, -0.688011, 0.592989,
		9.798574, 12.850137, 13.586984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.312634, 12.874022, 13.688270>,  <10.091410, 13.331745, 13.171892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.312634, 12.874022, 13.688270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.638549, 13.004266, 13.880145>,  <10.834098, 13.082412, 13.995271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.638549, 13.004266, 13.880145>,  <10.312634, 12.874022, 13.688270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.638549, 13.004266, 13.880145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505541, -0.006017, 0.862782,
		0.283816, -0.945485, 0.159706,
		0.814787, 0.325609, 0.479689,
		10.882985, 13.101948, 14.024052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.145839, 12.781684, 14.455405>,  <10.312634, 12.874022, 13.688270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.145839, 12.781684, 14.455405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.494162, 12.977796, 14.469933>,  <10.703156, 13.095463, 14.478649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.494162, 12.977796, 14.469933>,  <10.145839, 12.781684, 14.455405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.494162, 12.977796, 14.469933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163233, 0.218662, 0.962051,
		0.463734, -0.843689, 0.270442,
		0.870808, 0.490281, 0.036317,
		10.755404, 13.124880, 14.480827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.546919, 12.485117, 14.977034>,  <10.145839, 12.781684, 14.455405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.546919, 12.485117, 14.977034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.681939, 12.859782, 14.939681>,  <10.762951, 13.084581, 14.917270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.681939, 12.859782, 14.939681>,  <10.546919, 12.485117, 14.977034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.681939, 12.859782, 14.939681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122047, 0.054818, 0.991009,
		0.933362, -0.345912, -0.095814,
		0.337550, 0.936664, -0.093383,
		10.783204, 13.140781, 14.911666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.826227, 12.502860, 15.592477>,  <10.546919, 12.485117, 14.977034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.826227, 12.502860, 15.592477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.845876, 12.885188, 15.476548>,  <10.857665, 13.114585, 15.406991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.845876, 12.885188, 15.476548>,  <10.826227, 12.502860, 15.592477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.845876, 12.885188, 15.476548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024461, 0.291235, 0.956339,
		0.998493, -0.039888, 0.037687,
		0.049122, 0.955820, -0.289821,
		10.860613, 13.171934, 15.389602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.460638, 12.883529, 15.884269>,  <10.826227, 12.502860, 15.592477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.460638, 12.883529, 15.884269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.178458, 13.157160, 15.810103>,  <11.009151, 13.321339, 15.765604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.178458, 13.157160, 15.810103>,  <11.460638, 12.883529, 15.884269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.178458, 13.157160, 15.810103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049079, 0.213826, 0.975638,
		0.707058, 0.697364, -0.117270,
		-0.705450, 0.684077, -0.185413,
		10.966823, 13.362383, 15.754479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.679003, 13.430569, 16.246256>,  <11.460638, 12.883529, 15.884269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.679003, 13.430569, 16.246256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.292078, 13.513439, 16.187761>,  <11.059923, 13.563161, 16.152664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.292078, 13.513439, 16.187761>,  <11.679003, 13.430569, 16.246256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.292078, 13.513439, 16.187761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070209, 0.335336, 0.939479,
		0.243675, 0.919037, -0.309829,
		-0.967312, 0.207175, -0.146237,
		11.001884, 13.575592, 16.143890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.594995, 14.065898, 16.509203>,  <11.679003, 13.430569, 16.246256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.594995, 14.065898, 16.509203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.227502, 13.910568, 16.480555>,  <11.007006, 13.817370, 16.463366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.227502, 13.910568, 16.480555>,  <11.594995, 14.065898, 16.509203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.227502, 13.910568, 16.480555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227937, 0.373423, 0.899222,
		-0.322445, 0.842472, -0.431590,
		-0.918735, -0.388325, -0.071622,
		10.951881, 13.794070, 16.459068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.106387, 14.605443, 16.540043>,  <11.594995, 14.065898, 16.509203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.106387, 14.605443, 16.540043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.872190, 14.288869, 16.610279>,  <10.731672, 14.098925, 16.652422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.872190, 14.288869, 16.610279>,  <11.106387, 14.605443, 16.540043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.872190, 14.288869, 16.610279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240689, 0.376536, 0.894589,
		-0.774125, 0.481510, -0.410948,
		-0.585491, -0.791434, 0.175592,
		10.696544, 14.051438, 16.662956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.556762, 14.894463, 16.983168>,  <11.106387, 14.605443, 16.540043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.556762, 14.894463, 16.983168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.546278, 14.498371, 17.037956>,  <10.539988, 14.260716, 17.070829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.546278, 14.498371, 17.037956>,  <10.556762, 14.894463, 16.983168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.546278, 14.498371, 17.037956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327074, 0.137974, 0.934872,
		-0.944635, -0.020298, -0.327495,
		-0.026210, -0.990228, 0.136974,
		10.538415, 14.201303, 17.079048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.973735, 14.774017, 17.271631>,  <10.556762, 14.894463, 16.983168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.973735, 14.774017, 17.271631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.146891, 14.424439, 17.360020>,  <10.250784, 14.214693, 17.413054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.146891, 14.424439, 17.360020>,  <9.973735, 14.774017, 17.271631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.146891, 14.424439, 17.360020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466367, -0.007349, 0.884561,
		-0.771433, -0.485970, -0.410760,
		0.432889, -0.873945, 0.220971,
		10.276757, 14.162256, 17.426311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.487157, 14.303185, 17.502016>,  <9.973735, 14.774017, 17.271631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.487157, 14.303185, 17.502016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.819168, 14.156455, 17.670061>,  <10.018375, 14.068418, 17.770887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.819168, 14.156455, 17.670061>,  <9.487157, 14.303185, 17.502016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.819168, 14.156455, 17.670061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444101, 0.020963, 0.895732,
		-0.337382, -0.930054, -0.145507,
		0.830029, -0.366823, 0.420110,
		10.068177, 14.046408, 17.796095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.315141, 13.682453, 17.855309>,  <9.487157, 14.303185, 17.502016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.315141, 13.682453, 17.855309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.652015, 13.830522, 18.012125>,  <9.854139, 13.919362, 18.106215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.652015, 13.830522, 18.012125>,  <9.315141, 13.682453, 17.855309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.652015, 13.830522, 18.012125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399018, -0.061144, 0.914902,
		0.362641, -0.926949, 0.096210,
		0.842185, 0.370170, 0.392043,
		9.904671, 13.941572, 18.129738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.421628, 13.360420, 18.530251>,  <9.315141, 13.682453, 17.855309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.421628, 13.360420, 18.530251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.693131, 13.650717, 18.575127>,  <9.856033, 13.824895, 18.602053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.693131, 13.650717, 18.575127>,  <9.421628, 13.360420, 18.530251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.693131, 13.650717, 18.575127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147027, -0.015379, 0.989013,
		0.719494, -0.687795, 0.096265,
		0.678758, 0.725742, 0.112190,
		9.896759, 13.868440, 18.608784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.951110, 13.141332, 19.016735>,  <9.421628, 13.360420, 18.530251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.951110, 13.141332, 19.016735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.959329, 13.540607, 19.039354>,  <9.964260, 13.780172, 19.052925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.959329, 13.540607, 19.039354>,  <9.951110, 13.141332, 19.016735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.959329, 13.540607, 19.039354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097979, -0.054278, 0.993707,
		0.994976, -0.025959, 0.096686,
		0.020548, 0.998189, 0.056548,
		9.965493, 13.840064, 19.056318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.426183, 13.205872, 19.522778>,  <9.951110, 13.141332, 19.016735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.426183, 13.205872, 19.522778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.182861, 13.519723, 19.474901>,  <10.036868, 13.708034, 19.446177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.182861, 13.519723, 19.474901>,  <10.426183, 13.205872, 19.522778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.182861, 13.519723, 19.474901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043511, 0.117605, 0.992107,
		0.792511, 0.608710, -0.037400,
		-0.608304, 0.784628, -0.119689,
		10.000370, 13.755112, 19.438995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.561691, 13.596165, 20.138699>,  <10.426183, 13.205872, 19.522778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.561691, 13.596165, 20.138699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.236624, 13.794618, 20.016439>,  <10.041583, 13.913690, 19.943083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.236624, 13.794618, 20.016439>,  <10.561691, 13.596165, 20.138699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.236624, 13.794618, 20.016439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285256, 0.118673, 0.951076,
		0.508133, 0.860098, 0.045083,
		-0.812668, 0.496133, -0.305650,
		9.992824, 13.943458, 19.924744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.491391, 14.132009, 20.589392>,  <10.561691, 13.596165, 20.138699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.491391, 14.132009, 20.589392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.126593, 14.086763, 20.431673>,  <9.907714, 14.059616, 20.337042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.126593, 14.086763, 20.431673>,  <10.491391, 14.132009, 20.589392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.126593, 14.086763, 20.431673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387431, -0.078263, 0.918571,
		-0.134761, 0.990495, 0.027552,
		-0.911996, -0.113112, -0.394295,
		9.852994, 14.052830, 20.313385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.025450, 14.695221, 20.879822>,  <10.491391, 14.132009, 20.589392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.025450, 14.695221, 20.879822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.816833, 14.364974, 20.793707>,  <9.691664, 14.166825, 20.742037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.816833, 14.364974, 20.793707>,  <10.025450, 14.695221, 20.879822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.816833, 14.364974, 20.793707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448733, 0.050807, 0.892221,
		-0.725695, 0.561937, -0.396979,
		-0.521541, -0.825618, -0.215289,
		9.660371, 14.117289, 20.729120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.418557, 14.916996, 21.177555>,  <10.025450, 14.695221, 20.879822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.418557, 14.916996, 21.177555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.366740, 14.527509, 21.102623>,  <9.335650, 14.293817, 21.057663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.366740, 14.527509, 21.102623>,  <9.418557, 14.916996, 21.177555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.366740, 14.527509, 21.102623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501466, -0.098650, 0.859535,
		-0.855425, 0.205286, -0.475506,
		-0.129542, -0.973717, -0.187332,
		9.327878, 14.235394, 21.046423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.739375, 14.803100, 21.493851>,  <9.418557, 14.916996, 21.177555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.739375, 14.803100, 21.493851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.920688, 14.448966, 21.452436>,  <9.029475, 14.236485, 21.427588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.920688, 14.448966, 21.452436>,  <8.739375, 14.803100, 21.493851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.920688, 14.448966, 21.452436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515405, -0.355088, 0.779917,
		-0.727251, -0.300159, -0.617261,
		0.453281, -0.885334, -0.103535,
		9.056672, 14.183366, 21.421375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.178803, 14.363090, 21.610146>,  <8.739375, 14.803100, 21.493851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.178803, 14.363090, 21.610146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.519576, 14.167783, 21.685839>,  <8.724039, 14.050598, 21.731255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.519576, 14.167783, 21.685839>,  <8.178803, 14.363090, 21.610146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.519576, 14.167783, 21.685839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409709, -0.396461, 0.821558,
		-0.326115, -0.777442, -0.537804,
		0.851932, -0.488266, 0.189233,
		8.775155, 14.021302, 21.742609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.983709, 13.868617, 21.989971>,  <8.178803, 14.363090, 21.610146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.983709, 13.868617, 21.989971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.365552, 13.813958, 22.095842>,  <8.594658, 13.781163, 22.159365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.365552, 13.813958, 22.095842>,  <7.983709, 13.868617, 21.989971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.365552, 13.813958, 22.095842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289892, -0.221939, 0.930970,
		-0.068471, -0.965438, -0.251477,
		0.954607, -0.136645, 0.264677,
		8.651934, 13.772964, 22.175245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.020201, 13.253356, 22.372938>,  <7.983709, 13.868617, 21.989971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.020201, 13.253356, 22.372938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.349823, 13.458237, 22.469755>,  <8.547596, 13.581165, 22.527845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.349823, 13.458237, 22.469755>,  <8.020201, 13.253356, 22.372938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.349823, 13.458237, 22.469755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156459, -0.204862, 0.966205,
		0.544477, -0.834075, -0.088679,
		0.824054, 0.512202, 0.242041,
		8.597039, 13.611897, 22.542368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.253758, 12.884907, 22.897339>,  <8.020201, 13.253356, 22.372938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.253758, 12.884907, 22.897339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.481342, 13.208993, 22.953676>,  <8.617892, 13.403444, 22.987478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.481342, 13.208993, 22.953676>,  <8.253758, 12.884907, 22.897339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.481342, 13.208993, 22.953676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134982, -0.076936, 0.987857,
		0.811212, -0.581061, 0.065590,
		0.568959, 0.810215, 0.140844,
		8.652030, 13.452058, 22.995930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.861812, 12.657213, 23.203205>,  <8.253758, 12.884907, 22.897339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.861812, 12.657213, 23.203205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.774304, 13.039495, 23.281967>,  <8.721800, 13.268864, 23.329224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.774304, 13.039495, 23.281967>,  <8.861812, 12.657213, 23.203205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.774304, 13.039495, 23.281967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009748, -0.203923, 0.978939,
		0.975728, 0.212242, 0.053928,
		-0.218769, 0.955704, 0.196905,
		8.708673, 13.326205, 23.341038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.328516, 12.926742, 23.727814>,  <8.861812, 12.657213, 23.203205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.328516, 12.926742, 23.727814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.022975, 13.183748, 23.752146>,  <8.839650, 13.337952, 23.766745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.022975, 13.183748, 23.752146>,  <9.328516, 12.926742, 23.727814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.022975, 13.183748, 23.752146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103660, 0.029108, 0.994187,
		0.637010, 0.765719, -0.088837,
		-0.763854, 0.642516, 0.060832,
		8.793818, 13.376503, 23.770395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.582179, 13.413060, 24.174366>,  <9.328516, 12.926742, 23.727814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.582179, 13.413060, 24.174366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.185880, 13.464525, 24.191637>,  <8.948100, 13.495404, 24.202000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.185880, 13.464525, 24.191637>,  <9.582179, 13.413060, 24.174366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.185880, 13.464525, 24.191637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052514, 0.070064, 0.996159,
		0.125143, 0.989210, -0.076172,
		-0.990748, 0.128663, 0.043180,
		8.888656, 13.503124, 24.204592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.522110, 14.029335, 24.495270>,  <9.582179, 13.413060, 24.174366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.522110, 14.029335, 24.495270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.211072, 13.786409, 24.560404>,  <9.024449, 13.640654, 24.599483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.211072, 13.786409, 24.560404>,  <9.522110, 14.029335, 24.495270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.211072, 13.786409, 24.560404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084449, 0.155752, 0.984179,
		-0.623068, 0.779045, -0.069825,
		-0.777595, -0.607314, 0.162834,
		8.977794, 13.604215, 24.609255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.980892, 14.419129, 24.933136>,  <9.522110, 14.029335, 24.495270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.980892, 14.419129, 24.933136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.924788, 14.024049, 24.960768>,  <8.891127, 13.787001, 24.977346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.924788, 14.024049, 24.960768>,  <8.980892, 14.419129, 24.933136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.924788, 14.024049, 24.960768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030545, 0.074054, 0.996786,
		-0.989643, 0.137699, -0.040556,
		-0.140260, -0.987702, 0.069081,
		8.882710, 13.727738, 24.981493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.373138, 14.417124, 25.349203>,  <8.980892, 14.419129, 24.933136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.373138, 14.417124, 25.349203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.568413, 14.068670, 25.370371>,  <8.685577, 13.859598, 25.383072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.568413, 14.068670, 25.370371>,  <8.373138, 14.417124, 25.349203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.568413, 14.068670, 25.370371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109648, -0.001064, 0.993970,
		-0.865825, -0.491044, -0.096038,
		0.488185, -0.871134, 0.052921,
		8.714869, 13.807330, 25.386248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.980527, 14.007266, 25.802372>,  <8.373138, 14.417124, 25.349203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.980527, 14.007266, 25.802372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.354945, 13.867397, 25.818117>,  <8.579596, 13.783476, 25.827564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.354945, 13.867397, 25.818117>,  <7.980527, 14.007266, 25.802372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.354945, 13.867397, 25.818117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061933, -0.053597, 0.996640,
		-0.346389, -0.935338, -0.071825,
		0.936044, -0.349673, 0.039363,
		8.635758, 13.762496, 25.829926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.903629, 13.538981, 26.220127>,  <7.980527, 14.007266, 25.802372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.903629, 13.538981, 26.220127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.303336, 13.545648, 26.206362>,  <8.543160, 13.549647, 26.198103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.303336, 13.545648, 26.206362>,  <7.903629, 13.538981, 26.220127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.303336, 13.545648, 26.206362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037310, -0.228005, 0.972945,
		0.008370, -0.973517, -0.228460,
		0.999268, 0.016667, -0.034413,
		8.603117, 13.550648, 26.196037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.181616, 12.949755, 26.698519>,  <7.903629, 13.538981, 26.220127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.181616, 12.949755, 26.698519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.480315, 13.212625, 26.657557>,  <8.659534, 13.370347, 26.632978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.480315, 13.212625, 26.657557>,  <8.181616, 12.949755, 26.698519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.480315, 13.212625, 26.657557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183511, -0.055588, 0.981445,
		0.639289, -0.751685, -0.162109,
		0.746749, 0.657175, -0.102405,
		8.704340, 13.409777, 26.626835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.613774, 12.781399, 27.242867>,  <8.181616, 12.949755, 26.698519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.613774, 12.781399, 27.242867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.696110, 13.158639, 27.138412>,  <8.745511, 13.384983, 27.075741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.696110, 13.158639, 27.138412>,  <8.613774, 12.781399, 27.242867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.696110, 13.158639, 27.138412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055174, 0.255239, 0.965302,
		0.977029, -0.213103, 0.000503,
		0.205838, 0.943101, -0.261133,
		8.757861, 13.441569, 27.060072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.220193, 13.076000, 27.678577>,  <8.613774, 12.781399, 27.242867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.220193, 13.076000, 27.678577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.018991, 13.396986, 27.550182>,  <8.898269, 13.589578, 27.473145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.018991, 13.396986, 27.550182>,  <9.220193, 13.076000, 27.678577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.018991, 13.396986, 27.550182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077799, 0.411926, 0.907890,
		0.860774, 0.431701, -0.269632,
		-0.503006, 0.802465, -0.320990,
		8.868089, 13.637726, 27.453886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.574180, 13.527004, 27.966295>,  <9.220193, 13.076000, 27.678577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.574180, 13.527004, 27.966295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.242170, 13.732261, 27.878891>,  <9.042965, 13.855414, 27.826448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.242170, 13.732261, 27.878891>,  <9.574180, 13.527004, 27.966295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.242170, 13.732261, 27.878891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122792, 0.550308, 0.825883,
		0.544044, 0.658671, -0.519778,
		-0.830023, 0.513141, -0.218512,
		8.993163, 13.886203, 27.813337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.637936, 14.216748, 28.095488>,  <9.574180, 13.527004, 27.966295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.637936, 14.216748, 28.095488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.239058, 14.186953, 28.098572>,  <8.999732, 14.169075, 28.100422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.239058, 14.186953, 28.098572>,  <9.637936, 14.216748, 28.095488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.239058, 14.186953, 28.098572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032576, 0.524199, 0.850973,
		-0.067430, 0.848332, -0.525153,
		-0.997192, -0.074488, 0.007711,
		8.939900, 14.164606, 28.100885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.395023, 14.930430, 28.355558>,  <9.637936, 14.216748, 28.095488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.395023, 14.930430, 28.355558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.094511, 14.670968, 28.404259>,  <8.914204, 14.515290, 28.433479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.094511, 14.670968, 28.404259>,  <9.395023, 14.930430, 28.355558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.094511, 14.670968, 28.404259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243225, 0.443609, 0.862585,
		-0.613530, 0.618431, -0.491044,
		-0.751281, -0.648656, 0.121749,
		8.869126, 14.476372, 28.440784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.979492, 15.315885, 28.726290>,  <9.395023, 14.930430, 28.355558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.979492, 15.315885, 28.726290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.804656, 14.961171, 28.786377>,  <8.699754, 14.748343, 28.822430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.804656, 14.961171, 28.786377>,  <8.979492, 15.315885, 28.726290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.804656, 14.961171, 28.786377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414049, 0.346657, 0.841660,
		-0.798445, 0.305684, -0.518693,
		-0.437091, -0.886784, 0.150219,
		8.673529, 14.695136, 28.831442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.390200, 15.574402, 29.040998>,  <8.979492, 15.315885, 28.726290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.390200, 15.574402, 29.040998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.464271, 15.191863, 29.131428>,  <8.508714, 14.962339, 29.185686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.464271, 15.191863, 29.131428>,  <8.390200, 15.574402, 29.040998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.464271, 15.191863, 29.131428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150150, 0.199817, 0.968260,
		-0.971166, -0.213246, -0.106594,
		0.185178, -0.956347, 0.226075,
		8.519824, 14.904959, 29.199249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.769444, 15.328413, 29.494551>,  <8.390200, 15.574402, 29.040998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.769444, 15.328413, 29.494551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.106407, 15.118313, 29.542652>,  <8.308585, 14.992252, 29.571512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.106407, 15.118313, 29.542652>,  <7.769444, 15.328413, 29.494551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.106407, 15.118313, 29.542652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077170, 0.103266, 0.991656,
		-0.533286, -0.844658, 0.046458,
		0.842407, -0.525251, 0.120253,
		8.359129, 14.960737, 29.578728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.631516, 14.771574, 29.895012>,  <7.769444, 15.328413, 29.494551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.631516, 14.771574, 29.895012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.019979, 14.862453, 29.923967>,  <8.253056, 14.916980, 29.941339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.019979, 14.862453, 29.923967>,  <7.631516, 14.771574, 29.895012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.019979, 14.862453, 29.923967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113514, 0.173528, 0.978265,
		0.209703, -0.958263, 0.194313,
		0.971154, 0.227203, 0.072387,
		8.311325, 14.930612, 29.945684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.028550, 14.351188, 30.400532>,  <7.631516, 14.771574, 29.895012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.028550, 14.351188, 30.400532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.175741, 14.723107, 30.397266>,  <8.264055, 14.946259, 30.395308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.175741, 14.723107, 30.397266>,  <8.028550, 14.351188, 30.400532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.175741, 14.723107, 30.397266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091509, 0.044949, 0.994789,
		0.925321, -0.365312, 0.101625,
		0.367977, 0.929799, -0.008163,
		8.286135, 15.002047, 30.394817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.645342, 14.470411, 30.779505>,  <8.028550, 14.351188, 30.400532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.645342, 14.470411, 30.779505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.428089, 14.805984, 30.765652>,  <8.297737, 15.007328, 30.757339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.428089, 14.805984, 30.765652>,  <8.645342, 14.470411, 30.779505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.428089, 14.805984, 30.765652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160706, -0.063379, 0.984965,
		0.824125, 0.540532, 0.169245,
		-0.543132, 0.838933, -0.034635,
		8.265150, 15.057665, 30.755260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.003592, 15.113161, 31.116840>,  <8.645342, 14.470411, 30.779505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.003592, 15.113161, 31.116840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.606011, 15.069242, 31.117838>,  <8.367463, 15.042892, 31.118437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.606011, 15.069242, 31.117838>,  <9.003592, 15.113161, 31.116840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.606011, 15.069242, 31.117838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006203, 0.078780, 0.996873,
		-0.109650, 0.990827, -0.078985,
		-0.993951, -0.109797, 0.002493,
		8.307826, 15.036304, 31.118586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.109336, 14.469012, 31.483381>,  <9.003592, 15.113161, 31.116840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.109336, 14.469012, 31.483381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.193252, 14.549960, 31.866011>,  <9.243601, 14.598529, 32.095589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.193252, 14.549960, 31.866011>,  <9.109336, 14.469012, 31.483381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.193252, 14.549960, 31.866011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.969535, -0.169589, -0.176754,
		0.126455, 0.964513, -0.231782,
		0.209789, 0.202369, 0.956575,
		9.256188, 14.610671, 32.152985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.555186, 15.058584, 31.577721>,  <9.109336, 14.469012, 31.483381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.555186, 15.058584, 31.577721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.613017, 14.773030, 31.851791>,  <9.647716, 14.601698, 32.016235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.613017, 14.773030, 31.851791>,  <9.555186, 15.058584, 31.577721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.613017, 14.773030, 31.851791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.914336, -0.168330, -0.368314,
		0.378270, 0.679731, 0.628393,
		0.144577, -0.713884, 0.685176,
		9.656390, 14.558865, 32.057343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.269106, 15.416434, 31.644955>,  <9.555186, 15.058584, 31.577721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.269106, 15.416434, 31.644955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.554772, 15.273968, 31.885990>,  <10.726172, 15.188488, 32.030613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.554772, 15.273968, 31.885990>,  <10.269106, 15.416434, 31.644955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.554772, 15.273968, 31.885990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341552, 0.928743, 0.144150,
		-0.610991, 0.102869, 0.784926,
		0.714166, -0.356167, 0.602588,
		10.769022, 15.167117, 32.066765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.389448, 14.670668, 31.811298>,  <10.269106, 15.416434, 31.644955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.389448, 14.670668, 31.811298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.283498, 14.310097, 31.948278>,  <10.219928, 14.093755, 32.030464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.283498, 14.310097, 31.948278>,  <10.389448, 14.670668, 31.811298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.283498, 14.310097, 31.948278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472125, -0.430888, -0.769048,
		0.840797, -0.042024, 0.539717,
		-0.264876, -0.901427, 0.342448,
		10.204035, 14.039669, 32.051014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.993626, 14.206458, 31.782089>,  <10.389448, 14.670668, 31.811298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.993626, 14.206458, 31.782089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.646545, 14.013786, 31.732965>,  <10.438297, 13.898183, 31.703491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.646545, 14.013786, 31.732965>,  <10.993626, 14.206458, 31.782089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.646545, 14.013786, 31.732965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405854, -0.543830, -0.734528,
		0.287020, -0.687192, 0.667373,
		-0.867699, -0.481680, -0.122809,
		10.386235, 13.869283, 31.696123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.198571, 13.447875, 31.948687>,  <10.993626, 14.206458, 31.782089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.198571, 13.447875, 31.948687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.888609, 13.498639, 31.701004>,  <10.702632, 13.529098, 31.552395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.888609, 13.498639, 31.701004>,  <11.198571, 13.447875, 31.948687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.888609, 13.498639, 31.701004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528440, -0.407422, -0.744821,
		-0.346805, -0.904378, 0.248648,
		-0.774905, 0.126912, -0.619207,
		10.656137, 13.536713, 31.515242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.337603, 13.034523, 31.382599>,  <11.198571, 13.447875, 31.948687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.337603, 13.034523, 31.382599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.028769, 13.202417, 31.191725>,  <10.843468, 13.303154, 31.077200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.028769, 13.202417, 31.191725>,  <11.337603, 13.034523, 31.382599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.028769, 13.202417, 31.191725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330330, -0.376404, -0.865564,
		-0.542923, -0.825919, 0.151964,
		-0.772086, 0.419736, -0.477184,
		10.797143, 13.328338, 31.048569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.043097, 12.478047, 30.903290>,  <11.337603, 13.034523, 31.382599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.043097, 12.478047, 30.903290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.924288, 12.836750, 30.772076>,  <10.853002, 13.051971, 30.693348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.924288, 12.836750, 30.772076>,  <11.043097, 12.478047, 30.903290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.924288, 12.836750, 30.772076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377291, -0.205365, -0.903037,
		-0.877171, -0.391988, -0.277340,
		-0.297024, 0.896756, -0.328033,
		10.835180, 13.105777, 30.673666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.647273, 12.372396, 30.292782>,  <11.043097, 12.478047, 30.903290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.647273, 12.372396, 30.292782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.767770, 12.753313, 30.273235>,  <10.840068, 12.981864, 30.261507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.767770, 12.753313, 30.273235>,  <10.647273, 12.372396, 30.292782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.767770, 12.753313, 30.273235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269174, -0.134087, -0.953712,
		-0.914767, 0.274144, -0.296725,
		0.301241, 0.952295, -0.048866,
		10.858142, 13.039001, 30.258575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.417238, 12.621101, 29.612513>,  <10.647273, 12.372396, 30.292782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.417238, 12.621101, 29.612513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.705071, 12.866451, 29.742727>,  <10.877771, 13.013661, 29.820856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.705071, 12.866451, 29.742727>,  <10.417238, 12.621101, 29.612513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.705071, 12.866451, 29.742727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424290, -0.017253, -0.905362,
		-0.549708, 0.789604, -0.272664,
		0.719582, 0.613374, 0.325537,
		10.920946, 13.050464, 29.840389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.495076, 13.157552, 29.106068>,  <10.417238, 12.621101, 29.612513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.495076, 13.157552, 29.106068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.839360, 13.141925, 29.309105>,  <11.045931, 13.132548, 29.430927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.839360, 13.141925, 29.309105>,  <10.495076, 13.157552, 29.106068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.839360, 13.141925, 29.309105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487491, -0.224122, -0.843873,
		0.146732, 0.973778, -0.173858,
		0.860710, -0.039068, 0.507594,
		11.097573, 13.130204, 29.461384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.958854, 13.522991, 28.635010>,  <10.495076, 13.157552, 29.106068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.958854, 13.522991, 28.635010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.174673, 13.314487, 28.899488>,  <11.304165, 13.189385, 29.058176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.174673, 13.314487, 28.899488>,  <10.958854, 13.522991, 28.635010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.174673, 13.314487, 28.899488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705077, -0.149478, -0.693198,
		0.460169, 0.840206, 0.286877,
		0.539547, -0.521258, 0.661195,
		11.336537, 13.158110, 29.097847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.577317, 13.809212, 28.565992>,  <10.958854, 13.522991, 28.635010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.577317, 13.809212, 28.565992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.646090, 13.459853, 28.748253>,  <11.687353, 13.250238, 28.857609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.646090, 13.459853, 28.748253>,  <11.577317, 13.809212, 28.565992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.646090, 13.459853, 28.748253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.729482, -0.197970, -0.654724,
		0.662039, 0.444957, 0.603090,
		0.171930, -0.873397, 0.455652,
		11.697669, 13.197834, 28.884949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.312268, 13.776807, 28.440100>,  <11.577317, 13.809212, 28.565992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.312268, 13.776807, 28.440100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.187634, 13.406281, 28.524813>,  <12.112853, 13.183965, 28.575640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.187634, 13.406281, 28.524813>,  <12.312268, 13.776807, 28.440100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.187634, 13.406281, 28.524813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672471, -0.372429, -0.639593,
		0.671339, -0.056872, 0.738966,
		-0.311587, -0.926316, 0.211781,
		12.094157, 13.128386, 28.588346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.876365, 13.387195, 28.526606>,  <12.312268, 13.776807, 28.440100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.876365, 13.387195, 28.526606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.600042, 13.114692, 28.429712>,  <12.434249, 12.951190, 28.371576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.600042, 13.114692, 28.429712>,  <12.876365, 13.387195, 28.526606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.600042, 13.114692, 28.429712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584675, -0.329231, -0.741459,
		0.425375, -0.653831, 0.625749,
		-0.690805, -0.681258, -0.242232,
		12.392801, 12.910315, 28.357042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.238758, 12.802681, 28.196247>,  <12.876365, 13.387195, 28.526606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.238758, 12.802681, 28.196247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.862079, 12.766313, 28.066671>,  <12.636071, 12.744492, 27.988926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.862079, 12.766313, 28.066671>,  <13.238758, 12.802681, 28.196247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.862079, 12.766313, 28.066671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333048, -0.388589, -0.859114,
		-0.047767, -0.916914, 0.396215,
		-0.941699, -0.090921, -0.323939,
		12.579569, 12.739037, 27.969490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.149882, 12.018320, 27.837738>,  <13.238758, 12.802681, 28.196247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.149882, 12.018320, 27.837738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.862626, 12.265458, 27.709650>,  <12.690272, 12.413741, 27.632797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.862626, 12.265458, 27.709650>,  <13.149882, 12.018320, 27.837738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.862626, 12.265458, 27.709650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099335, -0.364428, -0.925918,
		-0.688771, -0.696749, 0.200338,
		-0.718142, 0.617845, -0.320219,
		12.647183, 12.450811, 27.613585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.794372, 11.620304, 27.373690>,  <13.149882, 12.018320, 27.837738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.794372, 11.620304, 27.373690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.672319, 11.994821, 27.304117>,  <12.599088, 12.219531, 27.262373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.672319, 11.994821, 27.304117>,  <12.794372, 11.620304, 27.373690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.672319, 11.994821, 27.304117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052377, -0.165867, -0.984756,
		-0.950869, -0.309589, 0.001571,
		-0.305130, 0.936292, -0.173933,
		12.580780, 12.275708, 27.251938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.197781, 11.645395, 26.901117>,  <12.794372, 11.620304, 27.373690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.197781, 11.645395, 26.901117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.380645, 11.998158, 26.855083>,  <12.490363, 12.209815, 26.827463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.380645, 11.998158, 26.855083>,  <12.197781, 11.645395, 26.901117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.380645, 11.998158, 26.855083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006816, -0.125918, -0.992017,
		-0.889357, 0.454297, -0.051554,
		0.457162, 0.881907, -0.115082,
		12.517794, 12.262730, 26.820559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.899635, 11.946594, 26.291832>,  <12.197781, 11.645395, 26.901117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.899635, 11.946594, 26.291832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.222246, 12.175334, 26.351835>,  <12.415812, 12.312577, 26.387836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.222246, 12.175334, 26.351835>,  <11.899635, 11.946594, 26.291832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.222246, 12.175334, 26.351835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120703, 0.089114, -0.988681,
		-0.578744, 0.815505, 0.002849,
		0.806527, 0.571849, 0.150008,
		12.464205, 12.346889, 26.396837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.892443, 12.385624, 25.784832>,  <11.899635, 11.946594, 26.291832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.892443, 12.385624, 25.784832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.261304, 12.465446, 25.917383>,  <12.482620, 12.513340, 25.996914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.261304, 12.465446, 25.917383>,  <11.892443, 12.385624, 25.784832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.261304, 12.465446, 25.917383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283067, 0.235735, -0.929678,
		-0.263641, 0.951108, 0.160896,
		0.922153, 0.199557, 0.331377,
		12.537950, 12.525313, 26.016796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.026216, 13.097449, 25.632242>,  <11.892443, 12.385624, 25.784832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.026216, 13.097449, 25.632242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.363268, 12.882422, 25.644859>,  <12.565499, 12.753407, 25.652430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.363268, 12.882422, 25.644859>,  <12.026216, 13.097449, 25.632242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.363268, 12.882422, 25.644859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165284, 0.202440, -0.965246,
		0.512499, 0.818559, 0.259433,
		0.842631, -0.537567, 0.031545,
		12.616057, 12.721152, 25.654324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.644695, 13.502599, 25.452459>,  <12.026216, 13.097449, 25.632242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.644695, 13.502599, 25.452459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.755910, 13.122608, 25.395552>,  <12.822639, 12.894614, 25.361406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.755910, 13.122608, 25.395552>,  <12.644695, 13.502599, 25.452459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.755910, 13.122608, 25.395552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237445, 0.211483, -0.948101,
		0.930760, 0.229826, 0.284368,
		0.278037, -0.949976, -0.142268,
		12.839321, 12.837615, 25.352871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.387998, 13.460876, 25.171268>,  <12.644695, 13.502599, 25.452459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.387998, 13.460876, 25.171268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.207101, 13.117650, 25.073942>,  <13.098562, 12.911715, 25.015547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.207101, 13.117650, 25.073942>,  <13.387998, 13.460876, 25.171268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.207101, 13.117650, 25.073942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014417, 0.265739, -0.963937,
		0.891778, -0.439441, -0.107808,
		-0.452243, -0.858064, -0.243316,
		13.071428, 12.860230, 25.000948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.695065, 13.230722, 24.480333>,  <13.387998, 13.460876, 25.171268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.695065, 13.230722, 24.480333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.373255, 12.993445, 24.492065>,  <13.180168, 12.851079, 24.499104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.373255, 12.993445, 24.492065>,  <13.695065, 13.230722, 24.480333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.373255, 12.993445, 24.492065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071099, 0.047168, -0.996353,
		0.589647, -0.803677, -0.080123,
		-0.804526, -0.593193, 0.029328,
		13.131897, 12.815488, 24.500864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.955873, 12.690051, 23.958082>,  <13.695065, 13.230722, 24.480333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.955873, 12.690051, 23.958082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.557713, 12.683113, 23.995760>,  <13.318816, 12.678950, 24.018366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.557713, 12.683113, 23.995760>,  <13.955873, 12.690051, 23.958082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.557713, 12.683113, 23.995760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092525, -0.079977, -0.992493,
		0.024750, -0.996646, 0.078004,
		-0.995403, -0.017347, 0.094194,
		13.259091, 12.677910, 24.024017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.787074, 12.209804, 23.497160>,  <13.955873, 12.690051, 23.958082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.787074, 12.209804, 23.497160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.437832, 12.400797, 23.536543>,  <13.228287, 12.515393, 23.560173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.437832, 12.400797, 23.536543>,  <13.787074, 12.209804, 23.497160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.437832, 12.400797, 23.536543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095344, 0.030822, -0.994967,
		-0.478116, -0.878100, 0.018615,
		-0.873106, 0.477484, 0.098458,
		13.175900, 12.544042, 23.566080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.280014, 11.773847, 23.239677>,  <13.787074, 12.209804, 23.497160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.280014, 11.773847, 23.239677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.122703, 12.141590, 23.243895>,  <13.028316, 12.362236, 23.246426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.122703, 12.141590, 23.243895>,  <13.280014, 11.773847, 23.239677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.122703, 12.141590, 23.243895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186268, -0.068441, -0.980112,
		-0.900353, -0.387421, 0.198163,
		-0.393278, 0.919359, 0.010543,
		13.004719, 12.417397, 23.247057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.683066, 11.681290, 22.838453>,  <13.280014, 11.773847, 23.239677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.683066, 11.681290, 22.838453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.754366, 12.074772, 22.847820>,  <12.797146, 12.310862, 22.853441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.754366, 12.074772, 22.847820>,  <12.683066, 11.681290, 22.838453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.754366, 12.074772, 22.847820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119427, 0.045253, -0.991811,
		-0.976711, 0.173993, 0.125548,
		0.178250, 0.983706, 0.023419,
		12.807841, 12.369884, 22.854847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.092563, 12.032659, 22.497051>,  <12.683066, 11.681290, 22.838453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.092563, 12.032659, 22.497051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.365745, 12.324064, 22.475731>,  <12.529654, 12.498907, 22.462938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.365745, 12.324064, 22.475731>,  <12.092563, 12.032659, 22.497051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.365745, 12.324064, 22.475731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224384, 0.139791, -0.964422,
		-0.695143, 0.670617, 0.258938,
		0.682955, 0.728513, -0.053301,
		12.570631, 12.542619, 22.459742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.775855, 12.634683, 21.988995>,  <12.092563, 12.032659, 22.497051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.775855, 12.634683, 21.988995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.168645, 12.707692, 22.008635>,  <12.404319, 12.751498, 22.020418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.168645, 12.707692, 22.008635>,  <11.775855, 12.634683, 21.988995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.168645, 12.707692, 22.008635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048978, 0.005181, -0.998786,
		-0.182558, 0.983188, -0.003852,
		0.981974, 0.182525, 0.049100,
		12.463237, 12.762449, 22.023365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.915745, 13.109906, 21.545361>,  <11.775855, 12.634683, 21.988995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.915745, 13.109906, 21.545361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.263497, 12.916067, 21.584017>,  <12.472149, 12.799764, 21.607210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.263497, 12.916067, 21.584017>,  <11.915745, 13.109906, 21.545361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.263497, 12.916067, 21.584017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048492, -0.110965, -0.992641,
		0.491755, 0.867670, -0.072972,
		0.869382, -0.484598, 0.096643,
		12.524312, 12.770688, 21.613010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.278845, 13.444474, 20.954321>,  <11.915745, 13.109906, 21.545361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.278845, 13.444474, 20.954321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.482589, 13.116956, 21.060244>,  <12.604836, 12.920444, 21.123798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.482589, 13.116956, 21.060244>,  <12.278845, 13.444474, 20.954321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.482589, 13.116956, 21.060244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141449, -0.223872, -0.964299,
		0.848849, 0.528633, 0.001787,
		0.509360, -0.818797, 0.264808,
		12.635397, 12.871317, 21.139687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.993207, 13.365833, 20.600197>,  <12.278845, 13.444474, 20.954321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.993207, 13.365833, 20.600197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.905743, 12.986169, 20.690777>,  <12.853264, 12.758370, 20.745125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.905743, 12.986169, 20.690777>,  <12.993207, 13.365833, 20.600197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.905743, 12.986169, 20.690777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294320, -0.285410, -0.912095,
		0.930356, -0.132791, 0.341766,
		-0.218662, -0.949161, 0.226450,
		12.840144, 12.701421, 20.758713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.632978, 12.948599, 20.335033>,  <12.993207, 13.365833, 20.600197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.632978, 12.948599, 20.335033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.302323, 12.724515, 20.356329>,  <13.103930, 12.590064, 20.369106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.302323, 12.724515, 20.356329>,  <13.632978, 12.948599, 20.335033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.302323, 12.724515, 20.356329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148650, -0.308633, -0.939494,
		0.542746, -0.768707, 0.338403,
		-0.826637, -0.560210, 0.053241,
		13.054332, 12.556452, 20.372301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.703040, 12.506717, 19.724943>,  <13.632978, 12.948599, 20.335033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.703040, 12.506717, 19.724943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.319800, 12.456185, 19.827774>,  <13.089857, 12.425867, 19.889473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.319800, 12.456185, 19.827774>,  <13.703040, 12.506717, 19.724943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.319800, 12.456185, 19.827774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238859, -0.142998, -0.960468,
		0.158096, -0.981628, 0.106831,
		-0.958098, -0.126329, 0.257078,
		13.032371, 12.418287, 19.904898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.568391, 11.845685, 19.516661>,  <13.703040, 12.506717, 19.724943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.568391, 11.845685, 19.516661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.231054, 12.059292, 19.540668>,  <13.028652, 12.187456, 19.555073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.231054, 12.059292, 19.540668>,  <13.568391, 11.845685, 19.516661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.231054, 12.059292, 19.540668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214594, -0.232270, -0.948683,
		-0.492673, -0.812943, 0.310480,
		-0.843340, 0.534017, 0.060019,
		12.978052, 12.219497, 19.558674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.127728, 11.483126, 19.095074>,  <13.568391, 11.845685, 19.516661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.127728, 11.483126, 19.095074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.967513, 11.845258, 19.151566>,  <12.871384, 12.062537, 19.185461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.967513, 11.845258, 19.151566>,  <13.127728, 11.483126, 19.095074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.967513, 11.845258, 19.151566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429250, -0.049224, -0.901843,
		-0.809514, -0.421846, 0.408330,
		-0.400539, 0.905330, 0.141230,
		12.847351, 12.116857, 19.193935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.567030, 11.385203, 18.632986>,  <13.127728, 11.483126, 19.095074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.567030, 11.385203, 18.632986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.581156, 11.776662, 18.713985>,  <12.589631, 12.011537, 18.762585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.581156, 11.776662, 18.713985>,  <12.567030, 11.385203, 18.632986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.581156, 11.776662, 18.713985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036404, 0.203748, -0.978346,
		-0.998713, 0.027179, 0.042822,
		0.035315, 0.978646, 0.202496,
		12.591750, 12.070255, 18.774734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.053454, 11.709080, 18.216877>,  <12.567030, 11.385203, 18.632986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.053454, 11.709080, 18.216877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.315292, 11.999087, 18.302530>,  <12.472395, 12.173092, 18.353922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.315292, 11.999087, 18.302530>,  <12.053454, 11.709080, 18.216877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.315292, 11.999087, 18.302530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020004, 0.266542, -0.963616,
		-0.755715, 0.635061, 0.159974,
		0.654594, 0.725019, 0.214134,
		12.511671, 12.216593, 18.366770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.869806, 12.136415, 17.793533>,  <12.053454, 11.709080, 18.216877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.869806, 12.136415, 17.793533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.230923, 12.281115, 17.886576>,  <12.447593, 12.367934, 17.942402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.230923, 12.281115, 17.886576>,  <11.869806, 12.136415, 17.793533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.230923, 12.281115, 17.886576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105885, 0.337242, -0.935444,
		-0.416841, 0.869140, 0.266155,
		0.902791, 0.361750, 0.232606,
		12.501760, 12.389640, 17.956358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.849605, 12.861814, 17.545712>,  <11.869806, 12.136415, 17.793533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.849605, 12.861814, 17.545712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.229523, 12.741848, 17.581356>,  <12.457474, 12.669868, 17.602743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.229523, 12.741848, 17.581356>,  <11.849605, 12.861814, 17.545712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.229523, 12.741848, 17.581356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170463, 0.257218, -0.951200,
		0.262360, 0.918635, 0.295429,
		0.949795, -0.299916, 0.089109,
		12.514462, 12.651873, 17.608089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.162605, 13.313677, 17.222588>,  <11.849605, 12.861814, 17.545712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.162605, 13.313677, 17.222588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.410987, 13.000139, 17.223368>,  <12.560016, 12.812016, 17.223837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.410987, 13.000139, 17.223368>,  <12.162605, 13.313677, 17.222588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.410987, 13.000139, 17.223368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341862, 0.268578, -0.900553,
		0.705369, 0.559870, 0.434741,
		0.620955, -0.783844, 0.001951,
		12.597274, 12.764986, 17.223953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.721105, 13.579588, 16.924177>,  <12.162605, 13.313677, 17.222588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.721105, 13.579588, 16.924177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.772406, 13.185291, 16.880610>,  <12.803186, 12.948713, 16.854469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.772406, 13.185291, 16.880610>,  <12.721105, 13.579588, 16.924177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.772406, 13.185291, 16.880610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195093, 0.132755, -0.971759,
		0.972363, 0.103380, 0.209337,
		0.128251, -0.985743, -0.108917,
		12.810881, 12.889568, 16.847935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.385529, 13.538579, 16.651754>,  <12.721105, 13.579588, 16.924177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.385529, 13.538579, 16.651754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.244882, 13.171759, 16.576515>,  <13.160494, 12.951666, 16.531372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.244882, 13.171759, 16.576515>,  <13.385529, 13.538579, 16.651754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.244882, 13.171759, 16.576515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240583, 0.105659, -0.964860,
		0.904701, -0.384515, 0.183476,
		-0.351617, -0.917052, -0.188098,
		13.139397, 12.896643, 16.520086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.999095, 13.031822, 16.295357>,  <13.385529, 13.538579, 16.651754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.999095, 13.031822, 16.295357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.639693, 12.884034, 16.200548>,  <13.424052, 12.795362, 16.143663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.639693, 12.884034, 16.200548>,  <13.999095, 13.031822, 16.295357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.639693, 12.884034, 16.200548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286108, -0.083412, -0.954560,
		0.332912, -0.925491, 0.180655,
		-0.898505, -0.369471, -0.237022,
		13.370142, 12.773193, 16.129442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.913473, 12.230875, 16.393946>,  <13.999095, 13.031822, 16.295357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.913473, 12.230875, 16.393946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.298359, 12.167089, 16.305660>,  <14.529290, 12.128817, 16.252689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.298359, 12.167089, 16.305660>,  <13.913473, 12.230875, 16.393946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.298359, 12.167089, 16.305660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255964, 0.253226, 0.932930,
		-0.092880, -0.954173, 0.284476,
		0.962214, -0.159466, -0.220714,
		14.587023, 12.119248, 16.239447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.210907, 11.946367, 16.869745>,  <13.913473, 12.230875, 16.393946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.210907, 11.946367, 16.869745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.524110, 12.111862, 16.683962>,  <14.712031, 12.211160, 16.572493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.524110, 12.111862, 16.683962>,  <14.210907, 11.946367, 16.869745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.524110, 12.111862, 16.683962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329224, 0.357864, 0.873810,
		0.527741, -0.837111, 0.143998,
		0.783007, 0.413738, -0.464456,
		14.759012, 12.235984, 16.544624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.807738, 11.759127, 17.227146>,  <14.210907, 11.946367, 16.869745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.807738, 11.759127, 17.227146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.886026, 12.100691, 17.034260>,  <14.933000, 12.305630, 16.918528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.886026, 12.100691, 17.034260>,  <14.807738, 11.759127, 17.227146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.886026, 12.100691, 17.034260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502818, 0.334786, 0.796927,
		0.841943, -0.398440, -0.363837,
		0.195720, 0.853911, -0.482214,
		14.944742, 12.356864, 16.889595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.550886, 11.867970, 17.419590>,  <14.807738, 11.759127, 17.227146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.550886, 11.867970, 17.419590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.409063, 12.211622, 17.271980>,  <15.323970, 12.417814, 17.183414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.409063, 12.211622, 17.271980>,  <15.550886, 11.867970, 17.419590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.409063, 12.211622, 17.271980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450574, 0.502806, 0.737679,
		0.819313, 0.095275, -0.565376,
		-0.354557, 0.859133, -0.369026,
		15.302696, 12.469362, 17.161272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.176174, 12.398314, 17.316866>,  <15.550886, 11.867970, 17.419590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.176174, 12.398314, 17.316866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.837619, 12.608822, 17.349527>,  <15.634485, 12.735126, 17.369123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.837619, 12.608822, 17.349527>,  <16.176174, 12.398314, 17.316866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.837619, 12.608822, 17.349527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437883, 0.600417, 0.669148,
		0.303126, 0.602113, -0.738630,
		-0.846388, 0.526270, 0.081653,
		15.583702, 12.766703, 17.374023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.344673, 13.054605, 17.458141>,  <16.176174, 12.398314, 17.316866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.344673, 13.054605, 17.458141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.970910, 13.036890, 17.599516>,  <15.746652, 13.026261, 17.684341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.970910, 13.036890, 17.599516>,  <16.344673, 13.054605, 17.458141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.970910, 13.036890, 17.599516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268482, 0.564510, 0.780542,
		-0.234086, 0.824237, -0.515594,
		-0.934409, -0.044286, 0.353437,
		15.690587, 13.023604, 17.705547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.294825, 13.788125, 17.723801>,  <16.344673, 13.054605, 17.458141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.294825, 13.788125, 17.723801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.992546, 13.572513, 17.872593>,  <15.811179, 13.443145, 17.961868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.992546, 13.572513, 17.872593>,  <16.294825, 13.788125, 17.723801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.992546, 13.572513, 17.872593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133531, 0.429232, 0.893269,
		-0.641166, 0.724710, -0.252391,
		-0.755696, -0.539032, 0.371980,
		15.765838, 13.410803, 17.984186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.904203, 14.319488, 18.098139>,  <16.294825, 13.788125, 17.723801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.904203, 14.319488, 18.098139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.810176, 13.958028, 18.241337>,  <15.753759, 13.741152, 18.327255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.810176, 13.958028, 18.241337>,  <15.904203, 14.319488, 18.098139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.810176, 13.958028, 18.241337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134582, 0.334509, 0.932733,
		-0.962616, 0.267435, 0.042983,
		-0.235068, -0.903649, 0.357996,
		15.739655, 13.686933, 18.348736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.612782, 14.555752, 18.577915>,  <15.904203, 14.319488, 18.098139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.612782, 14.555752, 18.577915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.685542, 14.172910, 18.668125>,  <15.729198, 13.943205, 18.722252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.685542, 14.172910, 18.668125>,  <15.612782, 14.555752, 18.577915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.685542, 14.172910, 18.668125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151373, 0.253874, 0.955319,
		-0.971596, -0.139636, 0.191060,
		0.181902, -0.957105, 0.225525,
		15.740112, 13.885778, 18.735783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.291760, 14.396837, 19.252562>,  <15.612782, 14.555752, 18.577915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.291760, 14.396837, 19.252562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.573085, 14.114723, 19.216951>,  <15.741879, 13.945455, 19.195585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.573085, 14.114723, 19.216951>,  <15.291760, 14.396837, 19.252562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.573085, 14.114723, 19.216951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201605, 0.077800, 0.976372,
		-0.681695, -0.704642, 0.196907,
		0.703312, -0.705285, -0.089024,
		15.784079, 13.903138, 19.190245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.063279, 13.789393, 19.726982>,  <15.291760, 14.396837, 19.252562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.063279, 13.789393, 19.726982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.455762, 13.769148, 19.652504>,  <15.691252, 13.757001, 19.607817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.455762, 13.769148, 19.652504>,  <15.063279, 13.789393, 19.726982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.455762, 13.769148, 19.652504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160479, -0.321722, 0.933135,
		-0.107133, -0.945480, -0.307553,
		0.981208, -0.050614, -0.186197,
		15.750124, 13.753963, 19.596645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.205994, 13.143207, 19.890894>,  <15.063279, 13.789393, 19.726982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.205994, 13.143207, 19.890894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.554753, 13.335604, 19.927633>,  <15.764009, 13.451042, 19.949677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.554753, 13.335604, 19.927633>,  <15.205994, 13.143207, 19.890894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.554753, 13.335604, 19.927633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203953, -0.527222, 0.824888,
		0.445189, -0.700488, -0.557785,
		0.871900, 0.480993, 0.091847,
		15.816323, 13.479901, 19.955187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.616368, 12.558014, 20.173765>,  <15.205994, 13.143207, 19.890894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.616368, 12.558014, 20.173765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.814781, 12.900931, 20.228899>,  <15.933829, 13.106682, 20.261980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.814781, 12.900931, 20.228899>,  <15.616368, 12.558014, 20.173765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.814781, 12.900931, 20.228899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442767, -0.386283, 0.809162,
		0.746933, -0.340342, -0.571190,
		0.496033, 0.857294, 0.137835,
		15.963591, 13.158119, 20.270250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.183107, 12.320888, 20.452854>,  <15.616368, 12.558014, 20.173765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.183107, 12.320888, 20.452854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.165768, 12.708948, 20.548292>,  <16.155363, 12.941785, 20.605555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.165768, 12.708948, 20.548292>,  <16.183107, 12.320888, 20.452854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.165768, 12.708948, 20.548292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428855, -0.197626, 0.881492,
		0.902333, 0.140535, -0.407487,
		-0.043350, 0.970151, 0.238593,
		16.152763, 12.999993, 20.619869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.846111, 12.483750, 20.871653>,  <16.183107, 12.320888, 20.452854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.846111, 12.483750, 20.871653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.577225, 12.762454, 20.971773>,  <16.415894, 12.929676, 21.031845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.577225, 12.762454, 20.971773>,  <16.846111, 12.483750, 20.871653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.577225, 12.762454, 20.971773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270677, -0.083381, 0.959053,
		0.689100, 0.712441, -0.132547,
		-0.672217, 0.696760, 0.250299,
		16.375559, 12.971482, 21.046864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.115429, 12.857323, 21.480677>,  <16.846111, 12.483750, 20.871653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.115429, 12.857323, 21.480677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.728977, 12.958954, 21.498720>,  <16.497107, 13.019933, 21.509546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.728977, 12.958954, 21.498720>,  <17.115429, 12.857323, 21.480677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.728977, 12.958954, 21.498720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078370, 0.122338, 0.989389,
		0.245863, 0.959415, -0.138106,
		-0.966131, 0.254077, 0.045111,
		16.439138, 13.035177, 21.512253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.132908, 13.400680, 22.051428>,  <17.115429, 12.857323, 21.480677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.132908, 13.400680, 22.051428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.756498, 13.272404, 22.008280>,  <16.530653, 13.195438, 21.982391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.756498, 13.272404, 22.008280>,  <17.132908, 13.400680, 22.051428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.756498, 13.272404, 22.008280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167431, 0.164320, 0.972094,
		-0.294014, 0.932822, -0.208322,
		-0.941022, -0.320689, -0.107871,
		16.474192, 13.176197, 21.975918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.749741, 13.902908, 22.406065>,  <17.132908, 13.400680, 22.051428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.749741, 13.902908, 22.406065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.476770, 13.613057, 22.367683>,  <16.312988, 13.439147, 22.344654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.476770, 13.613057, 22.367683>,  <16.749741, 13.902908, 22.406065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.476770, 13.613057, 22.367683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399302, 0.259613, 0.879295,
		-0.612250, 0.638370, -0.466512,
		-0.682428, -0.724627, -0.095954,
		16.272041, 13.395669, 22.338898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.090425, 14.124697, 22.675062>,  <16.749741, 13.902908, 22.406065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.090425, 14.124697, 22.675062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.044760, 13.728037, 22.699045>,  <16.017361, 13.490041, 22.713436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.044760, 13.728037, 22.699045>,  <16.090425, 14.124697, 22.675062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.044760, 13.728037, 22.699045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440812, 0.104651, 0.891478,
		-0.890310, 0.075344, -0.449079,
		-0.114164, -0.991651, 0.059960,
		16.010511, 13.430542, 22.717033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.356254, 14.021360, 22.861431>,  <16.090425, 14.124697, 22.675062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.356254, 14.021360, 22.861431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.545892, 13.688492, 22.976477>,  <15.659675, 13.488770, 23.045504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.545892, 13.688492, 22.976477>,  <15.356254, 14.021360, 22.861431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.545892, 13.688492, 22.976477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410285, 0.080226, 0.908421,
		-0.779038, -0.548682, -0.303394,
		0.474095, -0.832173, 0.287616,
		15.688120, 13.438840, 23.062761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.875820, 13.567953, 23.250301>,  <15.356254, 14.021360, 22.861431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.875820, 13.567953, 23.250301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.230709, 13.429599, 23.372416>,  <15.443643, 13.346586, 23.445684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.230709, 13.429599, 23.372416>,  <14.875820, 13.567953, 23.250301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.230709, 13.429599, 23.372416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350594, -0.075391, 0.933488,
		-0.299866, -0.935242, -0.188155,
		0.887223, -0.345887, 0.305283,
		15.496876, 13.325833, 23.464001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.737220, 12.961823, 23.698256>,  <14.875820, 13.567953, 23.250301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.737220, 12.961823, 23.698256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.102711, 13.093944, 23.792915>,  <15.322005, 13.173216, 23.849712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.102711, 13.093944, 23.792915>,  <14.737220, 12.961823, 23.698256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.102711, 13.093944, 23.792915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251157, 0.001284, 0.967946,
		0.319411, -0.943874, 0.084131,
		0.913727, 0.330302, 0.236651,
		15.376829, 13.193034, 23.863911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.875293, 12.610699, 24.291191>,  <14.737220, 12.961823, 23.698256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.875293, 12.610699, 24.291191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.120542, 12.926597, 24.283365>,  <15.267691, 13.116136, 24.278669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.120542, 12.926597, 24.283365>,  <14.875293, 12.610699, 24.291191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.120542, 12.926597, 24.283365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184733, 0.167409, 0.968426,
		0.768085, -0.590149, 0.248534,
		0.613122, 0.789745, -0.019564,
		15.304479, 13.163521, 24.277496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.932016, 12.837955, 25.088621>,  <14.875293, 12.610699, 24.291191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.932016, 12.837955, 25.088621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.110783, 13.157261, 24.927107>,  <15.218042, 13.348845, 24.830198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.110783, 13.157261, 24.927107>,  <14.932016, 12.837955, 25.088621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.110783, 13.157261, 24.927107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252411, 0.545553, 0.799162,
		0.858228, -0.255238, 0.445306,
		0.446914, 0.798264, -0.403784,
		15.244857, 13.396740, 24.805971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.389204, 13.165083, 25.649473>,  <14.932016, 12.837955, 25.088621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.389204, 13.165083, 25.649473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.309221, 13.446733, 25.376938>,  <15.261231, 13.615724, 25.213417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.309221, 13.446733, 25.376938>,  <15.389204, 13.165083, 25.649473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.309221, 13.446733, 25.376938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392444, 0.579612, 0.714169,
		0.897778, 0.410190, 0.160433,
		-0.199956, 0.704126, -0.681340,
		15.249234, 13.657971, 25.172537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.710017, 13.985384, 25.794302>,  <15.389204, 13.165083, 25.649473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.710017, 13.985384, 25.794302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.363423, 13.931176, 25.602119>,  <15.155467, 13.898651, 25.486811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.363423, 13.931176, 25.602119>,  <15.710017, 13.985384, 25.794302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.363423, 13.931176, 25.602119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438977, 0.665134, 0.604066,
		0.237705, 0.734324, -0.635818,
		-0.866485, -0.135520, -0.480457,
		15.103477, 13.890520, 25.457983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.386396, 14.611492, 25.654406>,  <15.710017, 13.985384, 25.794302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.386396, 14.611492, 25.654406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.091450, 14.341340, 25.649471>,  <14.914481, 14.179249, 25.646511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.091450, 14.341340, 25.649471>,  <15.386396, 14.611492, 25.654406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.091450, 14.341340, 25.649471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581944, 0.625873, 0.519254,
		-0.342974, 0.390059, -0.854531,
		-0.737367, -0.675379, -0.012334,
		14.870239, 14.138726, 25.645771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.872947, 14.961858, 25.527927>,  <15.386396, 14.611492, 25.654406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.872947, 14.961858, 25.527927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.751891, 14.629184, 25.714136>,  <14.679257, 14.429580, 25.825861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.751891, 14.629184, 25.714136>,  <14.872947, 14.961858, 25.527927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.751891, 14.629184, 25.714136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607573, 0.544667, 0.578095,
		-0.734346, -0.107884, -0.670147,
		-0.302640, -0.831684, 0.465521,
		14.661099, 14.379679, 25.853792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.168463, 14.922340, 25.569199>,  <14.872947, 14.961858, 25.527927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.168463, 14.922340, 25.569199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.305222, 14.727337, 25.890556>,  <14.387277, 14.610334, 26.083370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.305222, 14.727337, 25.890556>,  <14.168463, 14.922340, 25.569199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.305222, 14.727337, 25.890556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606310, 0.538737, 0.584936,
		-0.717980, -0.687094, -0.111389,
		0.341896, -0.487509, 0.803394,
		14.407790, 14.581084, 26.131575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.506492, 14.717765, 25.949259>,  <14.168463, 14.922340, 25.569199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.506492, 14.717765, 25.949259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.820564, 14.690864, 26.195499>,  <14.009007, 14.674723, 26.343245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.820564, 14.690864, 26.195499>,  <13.506492, 14.717765, 25.949259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.820564, 14.690864, 26.195499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509505, 0.494873, 0.703921,
		-0.351987, -0.866359, 0.354299,
		0.785181, -0.067254, 0.615603,
		14.056119, 14.670688, 26.380180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.212097, 14.654117, 26.582211>,  <13.506492, 14.717765, 25.949259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.212097, 14.654117, 26.582211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.586162, 14.738339, 26.696150>,  <13.810600, 14.788873, 26.764513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.586162, 14.738339, 26.696150>,  <13.212097, 14.654117, 26.582211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.586162, 14.738339, 26.696150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347203, 0.385577, 0.854857,
		0.070164, -0.898330, 0.433682,
		0.935162, 0.210556, 0.284849,
		13.866710, 14.801506, 26.781605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.305468, 14.415132, 27.241547>,  <13.212097, 14.654117, 26.582211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.305468, 14.415132, 27.241547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.584355, 14.698315, 27.196501>,  <13.751688, 14.868224, 27.169474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.584355, 14.698315, 27.196501>,  <13.305468, 14.415132, 27.241547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.584355, 14.698315, 27.196501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268116, 0.403225, 0.874942,
		0.664830, -0.579832, 0.470951,
		0.697219, 0.707958, -0.112614,
		13.793521, 14.910702, 27.162716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.773085, 14.435040, 27.935539>,  <13.305468, 14.415132, 27.241547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.773085, 14.435040, 27.935539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.784813, 14.777949, 27.729927>,  <13.791850, 14.983694, 27.606560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.784813, 14.777949, 27.729927>,  <13.773085, 14.435040, 27.935539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.784813, 14.777949, 27.729927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150966, 0.512149, 0.845525,
		0.988104, 0.052810, 0.144436,
		0.029321, 0.857271, -0.514029,
		13.793609, 15.035131, 27.575718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.107264, 14.958761, 28.443485>,  <13.773085, 14.435040, 27.935539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.107264, 14.958761, 28.443485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.932663, 15.180448, 28.159990>,  <13.827903, 15.313459, 27.989893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.932663, 15.180448, 28.159990>,  <14.107264, 14.958761, 28.443485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.932663, 15.180448, 28.159990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274174, 0.668340, 0.691484,
		0.856910, 0.496152, -0.139781,
		-0.436502, 0.554215, -0.708739,
		13.801712, 15.346712, 27.947369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.374334, 15.674676, 28.372126>,  <14.107264, 14.958761, 28.443485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.374334, 15.674676, 28.372126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.988767, 15.672853, 28.265661>,  <13.757426, 15.671760, 28.201782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.988767, 15.672853, 28.265661>,  <14.374334, 15.674676, 28.372126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.988767, 15.672853, 28.265661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215377, 0.600957, 0.769716,
		0.156444, 0.799268, -0.580255,
		-0.963918, -0.004556, -0.266160,
		13.699592, 15.671487, 28.185814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.365324, 16.128149, 29.021839>,  <14.374334, 15.674676, 28.372126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.365324, 16.128149, 29.021839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.325206, 16.330454, 29.364569>,  <14.301135, 16.451836, 29.570206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.325206, 16.330454, 29.364569>,  <14.365324, 16.128149, 29.021839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.325206, 16.330454, 29.364569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587951, 0.724849, -0.359037,
		-0.802654, 0.467761, -0.370061,
		-0.100295, 0.505760, 0.856824,
		14.295117, 16.482182, 29.621616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.034053, 16.878025, 28.882105>,  <14.365324, 16.128149, 29.021839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.034053, 16.878025, 28.882105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.253759, 16.894979, 29.215933>,  <14.385583, 16.905151, 29.416229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.253759, 16.894979, 29.215933>,  <14.034053, 16.878025, 28.882105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.253759, 16.894979, 29.215933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493890, 0.789148, -0.365127,
		-0.674076, 0.612739, 0.412519,
		0.549266, 0.042385, 0.834572,
		14.418539, 16.907696, 29.466305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.874353, 17.526134, 29.350605>,  <14.034053, 16.878025, 28.882105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.874353, 17.526134, 29.350605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.242242, 17.369452, 29.361025>,  <14.462976, 17.275442, 29.367277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.242242, 17.369452, 29.361025>,  <13.874353, 17.526134, 29.350605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.242242, 17.369452, 29.361025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372441, 0.849663, -0.373309,
		0.124095, 0.353041, 0.927341,
		0.919722, -0.391706, 0.026048,
		14.518158, 17.251940, 29.368839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.321015, 17.732695, 28.802160>,  <13.874353, 17.526134, 29.350605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.321015, 17.732695, 28.802160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.069373, 18.038094, 28.860540>,  <13.918387, 18.221333, 28.895569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.069373, 18.038094, 28.860540>,  <14.321015, 17.732695, 28.802160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.069373, 18.038094, 28.860540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195885, 0.025987, -0.980282,
		-0.752234, -0.645290, 0.133208,
		-0.629105, 0.763495, 0.145951,
		13.880642, 18.267141, 28.904325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.581602, 17.612114, 28.421698>,  <14.321015, 17.732695, 28.802160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.581602, 17.612114, 28.421698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.654828, 18.001066, 28.479609>,  <13.698764, 18.234438, 28.514355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.654828, 18.001066, 28.479609>,  <13.581602, 17.612114, 28.421698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.654828, 18.001066, 28.479609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140134, 0.171574, -0.975154,
		-0.973062, 0.158228, 0.167673,
		0.183064, 0.972382, 0.144779,
		13.709747, 18.292780, 28.523043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.423459, 17.801788, 27.800039>,  <13.581602, 17.612114, 28.421698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.423459, 17.801788, 27.800039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.566352, 18.145287, 27.946978>,  <13.652087, 18.351385, 28.035141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.566352, 18.145287, 27.946978>,  <13.423459, 17.801788, 27.800039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.566352, 18.145287, 27.946978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238584, 0.296352, -0.924799,
		-0.903030, 0.418010, -0.099016,
		0.357232, 0.858745, 0.367345,
		13.673521, 18.402910, 28.057180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.083591, 18.359550, 27.421179>,  <13.423459, 17.801788, 27.800039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.083591, 18.359550, 27.421179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.442306, 18.460079, 27.566843>,  <13.657535, 18.520395, 27.654242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.442306, 18.460079, 27.566843>,  <13.083591, 18.359550, 27.421179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.442306, 18.460079, 27.566843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295259, 0.273066, -0.915564,
		-0.329539, 0.928587, 0.170678,
		0.896787, 0.251320, 0.364160,
		13.711342, 18.535475, 27.676090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.308934, 18.672882, 26.924345>,  <13.083591, 18.359550, 27.421179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.308934, 18.672882, 26.924345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.653618, 18.650284, 27.126043>,  <13.860428, 18.636724, 27.247063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.653618, 18.650284, 27.126043>,  <13.308934, 18.672882, 26.924345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.653618, 18.650284, 27.126043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507387, 0.088579, -0.857153,
		0.003760, 0.994466, 0.104994,
		0.861710, -0.056495, 0.504246,
		13.912130, 18.633335, 27.277317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.689196, 19.168348, 26.525658>,  <13.308934, 18.672882, 26.924345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.689196, 19.168348, 26.525658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.922709, 18.902754, 26.712555>,  <14.062818, 18.743397, 26.824694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.922709, 18.902754, 26.712555>,  <13.689196, 19.168348, 26.525658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.922709, 18.902754, 26.712555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537520, -0.115231, -0.835341,
		0.608496, 0.738812, 0.289636,
		0.583785, -0.663986, 0.467244,
		14.097845, 18.703558, 26.852728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.392722, 19.353956, 26.337135>,  <13.689196, 19.168348, 26.525658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.392722, 19.353956, 26.337135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.382257, 18.977537, 26.472038>,  <14.375978, 18.751686, 26.552980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.382257, 18.977537, 26.472038>,  <14.392722, 19.353956, 26.337135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.382257, 18.977537, 26.472038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516965, -0.301497, -0.801154,
		0.855607, 0.153390, 0.494377,
		-0.026164, -0.941048, 0.337260,
		14.374408, 18.695223, 26.573215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.048273, 19.128298, 26.232286>,  <14.392722, 19.353956, 26.337135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.048273, 19.128298, 26.232286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.896463, 18.761196, 26.279079>,  <14.805377, 18.540936, 26.307156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.896463, 18.761196, 26.279079>,  <15.048273, 19.128298, 26.232286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.896463, 18.761196, 26.279079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687080, -0.364265, -0.628674,
		0.619582, -0.158222, 0.768820,
		-0.379525, -0.917756, 0.116980,
		14.782606, 18.485868, 26.314173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.635882, 18.640125, 26.561289>,  <15.048273, 19.128298, 26.232286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.635882, 18.640125, 26.561289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.355608, 18.468044, 26.333618>,  <15.187443, 18.364796, 26.197016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.355608, 18.468044, 26.333618>,  <15.635882, 18.640125, 26.561289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.355608, 18.468044, 26.333618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693846, -0.225060, -0.684051,
		0.166181, -0.874227, 0.456191,
		-0.700686, -0.430203, -0.569178,
		15.145402, 18.338984, 26.162865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.960122, 17.976370, 26.161840>,  <15.635882, 18.640125, 26.561289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.960122, 17.976370, 26.161840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.623276, 18.033682, 25.953875>,  <15.421168, 18.068069, 25.829094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.623276, 18.033682, 25.953875>,  <15.960122, 17.976370, 26.161840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.623276, 18.033682, 25.953875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467078, -0.288154, -0.835946,
		-0.269575, -0.946807, 0.175746,
		-0.842120, 0.143263, -0.519912,
		15.370641, 18.076666, 25.797899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.746286, 17.320675, 25.770649>,  <15.960122, 17.976370, 26.161840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.746286, 17.320675, 25.770649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.618266, 17.653009, 25.588537>,  <15.541453, 17.852409, 25.479271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.618266, 17.653009, 25.588537>,  <15.746286, 17.320675, 25.770649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.618266, 17.653009, 25.588537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605182, -0.190444, -0.772972,
		-0.728918, -0.522917, -0.441855,
		-0.320051, 0.830836, -0.455278,
		15.522251, 17.902260, 25.451954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.664186, 17.034817, 25.127983>,  <15.746286, 17.320675, 25.770649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.664186, 17.034817, 25.127983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.642515, 17.429625, 25.067503>,  <15.629513, 17.666510, 25.031216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.642515, 17.429625, 25.067503>,  <15.664186, 17.034817, 25.127983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.642515, 17.429625, 25.067503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533429, -0.099397, -0.839984,
		-0.844108, -0.126163, -0.521119,
		-0.054177, 0.987017, -0.151201,
		15.626262, 17.725729, 25.022142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.222057, 17.286503, 24.472271>,  <15.664186, 17.034817, 25.127983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.222057, 17.286503, 24.472271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.537470, 17.516678, 24.559071>,  <15.726718, 17.654783, 24.611151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.537470, 17.516678, 24.559071>,  <15.222057, 17.286503, 24.472271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.537470, 17.516678, 24.559071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422996, -0.251345, -0.870574,
		-0.446420, 0.778265, -0.441602,
		0.788532, 0.575438, 0.216997,
		15.774030, 17.689310, 24.624170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.396248, 17.591234, 23.814444>,  <15.222057, 17.286503, 24.472271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.396248, 17.591234, 23.814444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.727130, 17.608873, 24.038511>,  <15.925659, 17.619457, 24.172951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.727130, 17.608873, 24.038511>,  <15.396248, 17.591234, 23.814444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.727130, 17.608873, 24.038511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558617, -0.172156, -0.811363,
		0.060655, 0.984082, -0.167043,
		0.827205, 0.044100, 0.560167,
		15.975291, 17.622103, 24.206562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.871521, 18.193447, 23.606773>,  <15.396248, 17.591234, 23.814444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.871521, 18.193447, 23.606773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.078222, 17.899368, 23.782251>,  <16.202244, 17.722921, 23.887539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.078222, 17.899368, 23.782251>,  <15.871521, 18.193447, 23.606773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.078222, 17.899368, 23.782251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499270, -0.157476, -0.852016,
		0.695482, 0.659309, 0.285685,
		0.516753, -0.735196, 0.438695,
		16.233248, 17.678810, 23.913860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.553131, 18.335651, 23.316902>,  <15.871521, 18.193447, 23.606773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.553131, 18.335651, 23.316902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.538830, 17.959450, 23.452061>,  <16.530249, 17.733728, 23.533155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.538830, 17.959450, 23.452061>,  <16.553131, 18.335651, 23.316902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.538830, 17.959450, 23.452061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466002, -0.314791, -0.826891,
		0.884061, 0.127897, 0.449531,
		-0.035751, -0.940505, 0.337894,
		16.528105, 17.677298, 23.553429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.233255, 17.936499, 23.181065>,  <16.553131, 18.335651, 23.316902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.233255, 17.936499, 23.181065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.946606, 17.659378, 23.213259>,  <16.774616, 17.493107, 23.232576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.946606, 17.659378, 23.213259>,  <17.233255, 17.936499, 23.181065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.946606, 17.659378, 23.213259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379847, -0.484461, -0.788044,
		0.584949, -0.534159, 0.610335,
		-0.716624, -0.692800, 0.080487,
		16.731619, 17.451538, 23.237404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.640934, 17.298559, 23.072903>,  <17.233255, 17.936499, 23.181065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.640934, 17.298559, 23.072903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.258259, 17.193359, 23.022978>,  <17.028654, 17.130239, 22.993023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.258259, 17.193359, 23.022978>,  <17.640934, 17.298559, 23.072903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.258259, 17.193359, 23.022978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263885, -0.602398, -0.753313,
		0.122935, -0.753622, 0.645709,
		-0.956688, -0.263001, -0.124814,
		16.971252, 17.114460, 22.985533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.648426, 16.581104, 22.995184>,  <17.640934, 17.298559, 23.072903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.648426, 16.581104, 22.995184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.306965, 16.703110, 22.826307>,  <17.102089, 16.776314, 22.724981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.306965, 16.703110, 22.826307>,  <17.648426, 16.581104, 22.995184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.306965, 16.703110, 22.826307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156086, -0.623523, -0.766066,
		-0.496908, -0.719851, 0.484662,
		-0.853651, 0.305015, -0.422192,
		17.050869, 16.794615, 22.699650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.467760, 16.004267, 22.656900>,  <17.648426, 16.581104, 22.995184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.467760, 16.004267, 22.656900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.221909, 16.267756, 22.483318>,  <17.074398, 16.425848, 22.379169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.221909, 16.267756, 22.483318>,  <17.467760, 16.004267, 22.656900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.221909, 16.267756, 22.483318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008644, -0.544476, -0.838732,
		-0.788769, -0.519259, 0.328957,
		-0.614629, 0.658723, -0.433955,
		17.037519, 16.465372, 22.353132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.108477, 15.614031, 22.107849>,  <17.467760, 16.004267, 22.656900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.108477, 15.614031, 22.107849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.027493, 15.994965, 22.016573>,  <16.978903, 16.223524, 21.961807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.027493, 15.994965, 22.016573>,  <17.108477, 15.614031, 22.107849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.027493, 15.994965, 22.016573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074987, -0.247409, -0.966005,
		-0.976415, -0.178466, 0.121503,
		-0.202460, 0.952333, -0.228191,
		16.966755, 16.280664, 21.948116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.553877, 15.565460, 21.774115>,  <17.108477, 15.614031, 22.107849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.553877, 15.565460, 21.774115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.722078, 15.913248, 21.670424>,  <16.822998, 16.121922, 21.608210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.722078, 15.913248, 21.670424>,  <16.553877, 15.565460, 21.774115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.722078, 15.913248, 21.670424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144064, -0.218105, -0.965234,
		-0.895781, 0.443228, 0.033546,
		0.420502, 0.869471, -0.259227,
		16.848228, 16.174089, 21.592655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.116022, 15.768775, 21.255486>,  <16.553877, 15.565460, 21.774115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.116022, 15.768775, 21.255486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.480455, 15.929215, 21.217443>,  <16.699116, 16.025480, 21.194618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.480455, 15.929215, 21.217443>,  <16.116022, 15.768775, 21.255486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.480455, 15.929215, 21.217443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000393, -0.231554, -0.972822,
		-0.412221, 0.886285, -0.211123,
		0.911084, 0.401100, -0.095103,
		16.753780, 16.049545, 21.188913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.088036, 16.260553, 20.615778>,  <16.116022, 15.768775, 21.255486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.088036, 16.260553, 20.615778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.467527, 16.160732, 20.693377>,  <16.695223, 16.100840, 20.739935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.467527, 16.160732, 20.693377>,  <16.088036, 16.260553, 20.615778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.467527, 16.160732, 20.693377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190342, -0.038930, -0.980946,
		0.252350, 0.967579, 0.010566,
		0.948731, -0.249552, 0.193995,
		16.752146, 16.085867, 20.751575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.503862, 16.459427, 20.010990>,  <16.088036, 16.260553, 20.615778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.503862, 16.459427, 20.010990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.765381, 16.222752, 20.199652>,  <16.922293, 16.080748, 20.312849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.765381, 16.222752, 20.199652>,  <16.503862, 16.459427, 20.010990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.765381, 16.222752, 20.199652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323033, -0.345414, -0.881101,
		0.684251, 0.728421, -0.034696,
		0.653797, -0.591686, 0.471654,
		16.961519, 16.045246, 20.341148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.095072, 16.521395, 19.681913>,  <16.503862, 16.459427, 20.010990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.095072, 16.521395, 19.681913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.128780, 16.169571, 19.869221>,  <17.149006, 15.958477, 19.981606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.128780, 16.169571, 19.869221>,  <17.095072, 16.521395, 19.681913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.128780, 16.169571, 19.869221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270400, -0.432122, -0.860322,
		0.959053, 0.199121, 0.201417,
		0.084271, -0.879558, 0.468270,
		17.154062, 15.905704, 20.009701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.811621, 16.246010, 19.602293>,  <17.095072, 16.521395, 19.681913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.811621, 16.246010, 19.602293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.559425, 15.942378, 19.667137>,  <17.408108, 15.760199, 19.706043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.559425, 15.942378, 19.667137>,  <17.811621, 16.246010, 19.602293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.559425, 15.942378, 19.667137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271522, -0.411345, -0.870098,
		0.727159, -0.504570, 0.465455,
		-0.630488, -0.759081, 0.162111,
		17.370279, 15.714654, 19.715771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.170961, 15.582166, 19.359476>,  <17.811621, 16.246010, 19.602293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.170961, 15.582166, 19.359476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.776218, 15.526277, 19.327002>,  <17.539373, 15.492743, 19.307516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.776218, 15.526277, 19.327002>,  <18.170961, 15.582166, 19.359476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.776218, 15.526277, 19.327002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129938, -0.387394, -0.912711,
		0.096076, -0.911264, 0.400458,
		-0.986856, -0.139724, -0.081188,
		17.480162, 15.484360, 19.302645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.177376, 15.000440, 19.041046>,  <18.170961, 15.582166, 19.359476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.177376, 15.000440, 19.041046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.797230, 15.109919, 18.981857>,  <17.569141, 15.175606, 18.946344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.797230, 15.109919, 18.981857>,  <18.177376, 15.000440, 19.041046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.797230, 15.109919, 18.981857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060051, -0.305287, -0.950365,
		-0.305287, -0.912079, 0.273698,
		0.950365, -0.273698, 0.147971,
		17.512119, 15.192028, 18.937466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.890282, 14.322902, 18.732708>,  <18.177376, 15.000440, 19.041046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.890282, 14.322902, 18.732708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.670410, 14.644709, 18.642723>,  <17.538488, 14.837792, 18.588732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.670410, 14.644709, 18.642723>,  <17.890282, 14.322902, 18.732708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.670410, 14.644709, 18.642723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052573, -0.235444, -0.970465,
		-0.833721, -0.545270, 0.087122,
		-0.549678, 0.804517, -0.224961,
		17.505507, 14.886064, 18.575235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.540930, 14.180118, 18.078144>,  <17.890282, 14.322902, 18.732708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.540930, 14.180118, 18.078144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.480042, 14.575454, 18.076832>,  <17.443508, 14.812655, 18.076044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.480042, 14.575454, 18.076832>,  <17.540930, 14.180118, 18.078144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.480042, 14.575454, 18.076832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056426, -0.012003, -0.998335,
		-0.986735, -0.151781, 0.057595,
		-0.152220, 0.988341, -0.003279,
		17.434376, 14.871956, 18.075848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.105320, 14.206096, 17.483427>,  <17.540930, 14.180118, 18.078144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.105320, 14.206096, 17.483427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.271776, 14.559175, 17.570761>,  <17.371649, 14.771023, 17.623161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.271776, 14.559175, 17.570761>,  <17.105320, 14.206096, 17.483427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.271776, 14.559175, 17.570761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152038, 0.169190, -0.973786,
		-0.896500, 0.438426, -0.063797,
		0.416139, 0.882699, 0.218336,
		17.396618, 14.823985, 17.636261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.869364, 14.556170, 16.997700>,  <17.105320, 14.206096, 17.483427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.869364, 14.556170, 16.997700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.161451, 14.801529, 17.118048>,  <17.336704, 14.948745, 17.190256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.161451, 14.801529, 17.118048>,  <16.869364, 14.556170, 16.997700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.161451, 14.801529, 17.118048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139437, 0.297306, -0.944546,
		-0.668832, 0.731678, 0.131568,
		0.730219, 0.613397, 0.300871,
		17.380518, 14.985548, 17.208309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.758348, 15.237105, 16.671293>,  <16.869364, 14.556170, 16.997700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.758348, 15.237105, 16.671293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.139153, 15.260921, 16.791382>,  <17.367636, 15.275211, 16.863434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.139153, 15.260921, 16.791382>,  <16.758348, 15.237105, 16.671293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.139153, 15.260921, 16.791382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286835, 0.168665, -0.943015,
		-0.106785, 0.983874, 0.143493,
		0.952010, 0.059541, 0.300220,
		17.424755, 15.278784, 16.881449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.983107, 15.836267, 16.622747>,  <16.758348, 15.237105, 16.671293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.983107, 15.836267, 16.622747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.302519, 15.599163, 16.580818>,  <17.494165, 15.456901, 16.555660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.302519, 15.599163, 16.580818>,  <16.983107, 15.836267, 16.622747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.302519, 15.599163, 16.580818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130354, 0.340281, -0.931245,
		0.587673, 0.729962, 0.348993,
		0.798529, -0.592760, -0.104821,
		17.542078, 15.421335, 16.549372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.488085, 16.220320, 16.337885>,  <16.983107, 15.836267, 16.622747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.488085, 16.220320, 16.337885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.616400, 15.851138, 16.252798>,  <17.693388, 15.629628, 16.201746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.616400, 15.851138, 16.252798>,  <17.488085, 16.220320, 16.337885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.616400, 15.851138, 16.252798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371118, 0.329109, -0.868308,
		0.871417, 0.199598, 0.448099,
		0.320786, -0.922956, -0.212716,
		17.712635, 15.574251, 16.188984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.129158, 16.322046, 16.191256>,  <17.488085, 16.220320, 16.337885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.129158, 16.322046, 16.191256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.073774, 15.949448, 16.056709>,  <18.040545, 15.725888, 15.975981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.073774, 15.949448, 16.056709>,  <18.129158, 16.322046, 16.191256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.073774, 15.949448, 16.056709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581523, 0.198456, -0.788953,
		0.801661, -0.304843, 0.514209,
		-0.138459, -0.931497, -0.336367,
		18.032236, 15.669998, 15.955799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.902184, 15.992364, 16.047565>,  <18.129158, 16.322046, 16.191256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.902184, 15.992364, 16.047565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.624044, 15.818217, 15.818848>,  <18.457161, 15.713729, 15.681617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.624044, 15.818217, 15.818848>,  <18.902184, 15.992364, 16.047565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.624044, 15.818217, 15.818848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497551, 0.282489, -0.820148,
		0.518592, -0.854784, 0.020190,
		-0.695346, -0.435367, -0.571795,
		18.415442, 15.687607, 15.647309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.340986, 15.810779, 15.630811>,  <18.902184, 15.992364, 16.047565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.340986, 15.810779, 15.630811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.988625, 15.773133, 15.445274>,  <18.777206, 15.750546, 15.333952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.988625, 15.773133, 15.445274>,  <19.340986, 15.810779, 15.630811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.988625, 15.773133, 15.445274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400916, 0.372475, -0.836976,
		0.251539, -0.923258, -0.290384,
		-0.880905, -0.094113, -0.463841,
		18.724354, 15.744899, 15.306122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.514284, 15.519930, 15.017580>,  <19.340986, 15.810779, 15.630811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.514284, 15.519930, 15.017580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.167757, 15.710176, 14.956547>,  <18.959841, 15.824323, 14.919927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.167757, 15.710176, 14.956547>,  <19.514284, 15.519930, 15.017580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.167757, 15.710176, 14.956547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463231, 0.650764, -0.601601,
		-0.186835, -0.591859, -0.784089,
		-0.866319, 0.475615, -0.152582,
		18.907862, 15.852859, 14.910772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.519709, 15.678582, 14.304660>,  <19.514284, 15.519930, 15.017580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.519709, 15.678582, 14.304660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.289425, 15.926209, 14.518318>,  <19.151255, 16.074785, 14.646513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.289425, 15.926209, 14.518318>,  <19.519709, 15.678582, 14.304660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.289425, 15.926209, 14.518318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327311, 0.773130, -0.543266,
		-0.749283, -0.137932, -0.647727,
		-0.575711, 0.619068, 0.534146,
		19.116711, 16.111929, 14.678562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.127497, 16.003048, 13.776177>,  <19.519709, 15.678582, 14.304660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.127497, 16.003048, 13.776177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.095579, 16.206854, 14.118879>,  <19.076429, 16.329138, 14.324500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.095579, 16.206854, 14.118879>,  <19.127497, 16.003048, 13.776177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.095579, 16.206854, 14.118879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112039, 0.858633, -0.500196,
		-0.990495, 0.056078, -0.125598,
		-0.079793, 0.509514, 0.856755,
		19.071642, 16.359709, 14.375906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.677280, 16.680161, 13.709669>,  <19.127497, 16.003048, 13.776177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.677280, 16.680161, 13.709669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.942255, 16.737520, 14.003775>,  <19.101240, 16.771936, 14.180238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.942255, 16.737520, 14.003775>,  <18.677280, 16.680161, 13.709669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.942255, 16.737520, 14.003775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299335, 0.849074, -0.435283,
		-0.686714, 0.508438, 0.519534,
		0.662437, 0.143400, 0.735264,
		19.140985, 16.780540, 14.224354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.887508, 17.391788, 13.645669>,  <18.677280, 16.680161, 13.709669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.887508, 17.391788, 13.645669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.149231, 17.186115, 13.867478>,  <19.306265, 17.062712, 14.000564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.149231, 17.186115, 13.867478>,  <18.887508, 17.391788, 13.645669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.149231, 17.186115, 13.867478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.742375, 0.576450, -0.341445,
		-0.144089, 0.635074, 0.758894,
		0.654307, -0.514185, 0.554523,
		19.345524, 17.031860, 14.033835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.312366, 17.851856, 13.969787>,  <18.887508, 17.391788, 13.645669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.312366, 17.851856, 13.969787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.537590, 17.521421, 13.960483>,  <19.672724, 17.323160, 13.954901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.537590, 17.521421, 13.960483>,  <19.312366, 17.851856, 13.969787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.537590, 17.521421, 13.960483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.780553, 0.540847, -0.313403,
		0.271479, 0.158310, 0.949335,
		0.563059, -0.826089, -0.023259,
		19.706509, 17.273594, 13.953505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.895412, 17.993868, 14.409888>,  <19.312366, 17.851856, 13.969787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.895412, 17.993868, 14.409888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.004406, 17.747730, 14.114022>,  <20.069801, 17.600048, 13.936502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.004406, 17.747730, 14.114022>,  <19.895412, 17.993868, 14.409888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.004406, 17.747730, 14.114022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.791305, 0.580644, -0.191544,
		0.547347, -0.533106, 0.645142,
		0.272484, -0.615345, -0.739664,
		20.086151, 17.563128, 13.892123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.630089, 17.753195, 14.221989>,  <19.895412, 17.993868, 14.409888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.630089, 17.753195, 14.221989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.439535, 17.807203, 13.874465>,  <20.325203, 17.839609, 13.665951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.439535, 17.807203, 13.874465>,  <20.630089, 17.753195, 14.221989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.439535, 17.807203, 13.874465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.777979, 0.525112, -0.344973,
		0.409643, -0.840254, -0.355199,
		-0.476384, 0.135021, -0.868808,
		20.296619, 17.847710, 13.613823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.141375, 17.910610, 13.614331>,  <20.630089, 17.753195, 14.221989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.141375, 17.910610, 13.614331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.779581, 18.056959, 13.526654>,  <20.562504, 18.144768, 13.474048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.779581, 18.056959, 13.526654>,  <21.141375, 17.910610, 13.614331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.779581, 18.056959, 13.526654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425905, 0.747517, -0.509729,
		-0.022645, -0.554398, -0.831944,
		-0.904484, 0.365871, -0.219193,
		20.508236, 18.166721, 13.460896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.217896, 18.211504, 12.932205>,  <21.141375, 17.910610, 13.614331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.217896, 18.211504, 12.932205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.885275, 18.378325, 13.078951>,  <20.685701, 18.478416, 13.166998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.885275, 18.378325, 13.078951>,  <21.217896, 18.211504, 12.932205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.885275, 18.378325, 13.078951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171135, 0.820724, -0.545092,
		-0.528424, -0.390490, -0.753847,
		-0.831553, 0.417050, 0.366864,
		20.635809, 18.503439, 13.189010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.834805, 18.528833, 12.340800>,  <21.217896, 18.211504, 12.932205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.834805, 18.528833, 12.340800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.759369, 18.716835, 12.685714>,  <20.714108, 18.829636, 12.892662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.759369, 18.716835, 12.685714>,  <20.834805, 18.528833, 12.340800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.759369, 18.716835, 12.685714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314226, 0.860758, -0.400447,
		-0.930428, 0.195431, -0.310017,
		-0.188590, 0.470002, 0.862283,
		20.702791, 18.857836, 12.944399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.847502, 19.278513, 12.019581>,  <20.834805, 18.528833, 12.340800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.847502, 19.278513, 12.019581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.770443, 19.310751, 12.410762>,  <20.724209, 19.330093, 12.645471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.770443, 19.310751, 12.410762>,  <20.847502, 19.278513, 12.019581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.770443, 19.310751, 12.410762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128200, 0.990146, -0.056346,
		-0.972858, 0.114519, -0.201079,
		-0.192645, 0.080595, 0.977953,
		20.712648, 19.334930, 12.704147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.368862, 19.846601, 12.164755>,  <20.847502, 19.278513, 12.019581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.368862, 19.846601, 12.164755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.585531, 19.781990, 12.494725>,  <20.715532, 19.743223, 12.692707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.585531, 19.781990, 12.494725>,  <20.368862, 19.846601, 12.164755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.585531, 19.781990, 12.494725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400149, 0.912587, -0.084058,
		-0.739239, 0.375625, 0.558956,
		0.541670, -0.161527, 0.824926,
		20.748032, 19.733532, 12.742203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.508451, 20.468676, 12.543122>,  <20.368862, 19.846601, 12.164755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.508451, 20.468676, 12.543122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.796789, 20.213167, 12.650718>,  <20.969791, 20.059862, 12.715275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.796789, 20.213167, 12.650718>,  <20.508451, 20.468676, 12.543122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.796789, 20.213167, 12.650718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693051, 0.668796, -0.269058,
		-0.008032, 0.380372, 0.924799,
		0.720844, -0.638771, 0.268988,
		21.013042, 20.021536, 12.731414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.942099, 20.919325, 12.959476>,  <20.508451, 20.468676, 12.543122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.942099, 20.919325, 12.959476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.162457, 20.599983, 12.862196>,  <21.294670, 20.408379, 12.803828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.162457, 20.599983, 12.862196>,  <20.942099, 20.919325, 12.959476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.162457, 20.599983, 12.862196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.812571, 0.579565, -0.061915,
		0.190380, -0.163508, 0.967998,
		0.550894, -0.798355, -0.243200,
		21.327724, 20.360477, 12.789236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.483356, 20.971245, 13.375559>,  <20.942099, 20.919325, 12.959476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.483356, 20.971245, 13.375559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.619806, 20.716589, 13.098915>,  <21.701675, 20.563795, 12.932929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.619806, 20.716589, 13.098915>,  <21.483356, 20.971245, 13.375559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.619806, 20.716589, 13.098915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.894944, 0.445048, 0.031739,
		0.287592, -0.629778, 0.721575,
		0.341124, -0.636641, -0.691608,
		21.722143, 20.525597, 12.891433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.074915, 20.802774, 13.646048>,  <21.483356, 20.971245, 13.375559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.074915, 20.802774, 13.646048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.089191, 20.713081, 13.256495>,  <22.097757, 20.659266, 13.022763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.089191, 20.713081, 13.256495>,  <22.074915, 20.802774, 13.646048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.089191, 20.713081, 13.256495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.945820, 0.322275, -0.039540,
		0.322724, -0.919706, 0.223584,
		0.035690, -0.224231, -0.973882,
		22.099899, 20.645811, 12.964330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.705080, 20.406052, 13.594301>,  <22.074915, 20.802774, 13.646048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.705080, 20.406052, 13.594301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.598297, 20.596689, 13.259257>,  <22.534227, 20.711073, 13.058230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.598297, 20.596689, 13.259257>,  <22.705080, 20.406052, 13.594301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.598297, 20.596689, 13.259257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.940438, 0.318682, -0.118400,
		0.210502, -0.819328, -0.533283,
		-0.266956, 0.476596, -0.837610,
		22.518209, 20.739668, 13.007975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.284845, 20.223019, 13.050737>,  <22.705080, 20.406052, 13.594301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.284845, 20.223019, 13.050737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.099407, 20.542055, 12.896374>,  <22.988144, 20.733479, 12.803756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.099407, 20.542055, 12.896374>,  <23.284845, 20.223019, 13.050737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.099407, 20.542055, 12.896374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.883101, 0.380434, -0.274596,
		-0.072203, -0.468097, -0.880723,
		-0.463594, 0.797594, -0.385908,
		22.960329, 20.781334, 12.780602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.610468, 20.326042, 12.480858>,  <23.284845, 20.223019, 13.050737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.610468, 20.326042, 12.480858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.429060, 20.682304, 12.493859>,  <23.320215, 20.896061, 12.501660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.429060, 20.682304, 12.493859>,  <23.610468, 20.326042, 12.480858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.429060, 20.682304, 12.493859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.848629, 0.442689, -0.289577,
		-0.272301, -0.103745, -0.956603,
		-0.453520, 0.890653, 0.032503,
		23.293005, 20.949501, 12.503611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.750353, 20.677765, 11.803637>,  <23.610468, 20.326042, 12.480858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.750353, 20.677765, 11.803637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.641447, 20.966217, 12.058461>,  <23.576103, 21.139288, 12.211356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.641447, 20.966217, 12.058461>,  <23.750353, 20.677765, 11.803637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.641447, 20.966217, 12.058461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684563, 0.610435, -0.398424,
		-0.676199, 0.327632, -0.659857,
		-0.272264, 0.721128, 0.637061,
		23.559769, 21.182556, 12.249579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.457306, 21.262951, 11.402843>,  <23.750353, 20.677765, 11.803637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.457306, 21.262951, 11.402843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.630035, 21.351339, 11.752632>,  <23.733673, 21.404371, 11.962505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.630035, 21.351339, 11.752632>,  <23.457306, 21.262951, 11.402843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.630035, 21.351339, 11.752632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696310, 0.534583, -0.478930,
		-0.573306, 0.815717, 0.076982,
		0.431824, 0.220970, 0.874471,
		23.759583, 21.417631, 12.014974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.663372, 21.916107, 11.376669>,  <23.457306, 21.262951, 11.402843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.663372, 21.916107, 11.376669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.880236, 21.835577, 11.702990>,  <24.010353, 21.787260, 11.898782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.880236, 21.835577, 11.702990>,  <23.663372, 21.916107, 11.376669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.880236, 21.835577, 11.702990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672978, 0.685390, -0.278103,
		-0.503154, 0.699792, 0.507077,
		0.542160, -0.201323, 0.815801,
		24.042883, 21.775181, 11.947730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.921455, 22.557831, 11.656293>,  <23.663372, 21.916107, 11.376669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.921455, 22.557831, 11.656293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.174685, 22.279726, 11.792428>,  <24.326622, 22.112864, 11.874109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.174685, 22.279726, 11.792428>,  <23.921455, 22.557831, 11.656293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.174685, 22.279726, 11.792428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.767212, 0.622034, -0.156394,
		-0.102968, 0.360121, 0.927206,
		0.633075, -0.695260, 0.340339,
		24.364607, 22.071148, 11.894529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.545424, 22.909634, 11.791422>,  <23.921455, 22.557831, 11.656293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.545424, 22.909634, 11.791422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.686329, 22.539818, 11.849573>,  <24.770872, 22.317928, 11.884463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.686329, 22.539818, 11.849573>,  <24.545424, 22.909634, 11.791422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.686329, 22.539818, 11.849573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.924459, 0.319517, -0.208050,
		0.145900, 0.207683, 0.967254,
		0.352262, -0.924541, 0.145377,
		24.792007, 22.262455, 11.893187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.198534, 22.992441, 12.180596>,  <24.545424, 22.909634, 11.791422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.198534, 22.992441, 12.180596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.188303, 22.650585, 11.973160>,  <25.182163, 22.445473, 11.848698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.188303, 22.650585, 11.973160>,  <25.198534, 22.992441, 12.180596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.188303, 22.650585, 11.973160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.943695, 0.150514, -0.294593,
		0.329826, -0.496928, 0.802669,
		-0.025579, -0.854639, -0.518592,
		25.180630, 22.394194, 11.817582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.782759, 22.680384, 12.432324>,  <25.198534, 22.992441, 12.180596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.782759, 22.680384, 12.432324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.668093, 22.505199, 12.091498>,  <25.599293, 22.400089, 11.887003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.668093, 22.505199, 12.091498>,  <25.782759, 22.680384, 12.432324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.668093, 22.505199, 12.091498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.929268, 0.089179, -0.358479,
		0.232986, -0.894560, 0.381418,
		-0.286667, -0.437960, -0.852064,
		25.582092, 22.373812, 11.835879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.343990, 22.202234, 12.273776>,  <25.782759, 22.680384, 12.432324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.343990, 22.202234, 12.273776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.138908, 22.322176, 11.951976>,  <26.015860, 22.394140, 11.758896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.138908, 22.322176, 11.951976>,  <26.343990, 22.202234, 12.273776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.138908, 22.322176, 11.951976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.857104, 0.124122, -0.499967,
		-0.050061, -0.945876, -0.320643,
		-0.512706, 0.299853, -0.804500,
		25.985096, 22.412132, 11.710626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.796576, 22.044243, 11.671465>,  <26.343990, 22.202234, 12.273776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.796576, 22.044243, 11.671465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.543022, 22.306925, 11.508034>,  <26.390890, 22.464533, 11.409975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.543022, 22.306925, 11.508034>,  <26.796576, 22.044243, 11.671465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.543022, 22.306925, 11.508034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741247, 0.365016, -0.563309,
		-0.220789, -0.659928, -0.718156,
		-0.633881, 0.656703, -0.408578,
		26.352858, 22.503935, 11.385461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.917749, 22.012896, 10.903599>,  <26.796576, 22.044243, 11.671465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.917749, 22.012896, 10.903599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.750467, 22.366060, 10.988993>,  <26.650099, 22.577959, 11.040229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.750467, 22.366060, 10.988993>,  <26.917749, 22.012896, 10.903599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.750467, 22.366060, 10.988993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706498, 0.463881, -0.534486,
		-0.570935, -0.072697, -0.817771,
		-0.418204, 0.882909, 0.213486,
		26.625006, 22.630934, 11.053039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.504385, 22.425440, 10.344452>,  <26.917749, 22.012896, 10.903599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.504385, 22.425440, 10.344452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.731882, 22.596029, 10.625777>,  <26.868380, 22.698383, 10.794573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.731882, 22.596029, 10.625777>,  <26.504385, 22.425440, 10.344452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.731882, 22.596029, 10.625777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640571, 0.306711, -0.703987,
		-0.515947, 0.850910, -0.098747,
		0.568743, 0.426474, 0.703314,
		26.902506, 22.723972, 10.836772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.292521, 22.443165, 9.600289>,  <26.504385, 22.425440, 10.344452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.292521, 22.443165, 9.600289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.200539, 22.257431, 9.942404>,  <26.145350, 22.145990, 10.147673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.200539, 22.257431, 9.942404>,  <26.292521, 22.443165, 9.600289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.200539, 22.257431, 9.942404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053574, -0.871466, -0.487522,
		0.971725, -0.157929, 0.175523,
		-0.229956, -0.464334, 0.855286,
		26.131552, 22.118132, 10.198990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.812977, 21.871782, 9.775222>,  <26.292521, 22.443165, 9.600289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.812977, 21.871782, 9.775222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.439417, 21.792278, 9.894099>,  <26.215281, 21.744576, 9.965425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.439417, 21.792278, 9.894099>,  <26.812977, 21.871782, 9.775222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.439417, 21.792278, 9.894099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079176, -0.925569, -0.370208,
		0.348656, -0.322207, 0.880126,
		-0.933901, -0.198760, 0.297194,
		26.159246, 21.732651, 9.983257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.869188, 21.177710, 10.151853>,  <26.812977, 21.871782, 9.775222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.869188, 21.177710, 10.151853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.506149, 21.270866, 10.012124>,  <26.288326, 21.326761, 9.928287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.506149, 21.270866, 10.012124>,  <26.869188, 21.177710, 10.151853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.506149, 21.270866, 10.012124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012362, -0.816854, -0.576712,
		-0.419656, -0.527742, 0.738497,
		-0.907599, 0.232891, -0.349321,
		26.233870, 21.340734, 9.907328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.289427, 20.799280, 10.287290>,  <26.869188, 21.177710, 10.151853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.289427, 20.799280, 10.287290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.229517, 20.942390, 9.918602>,  <26.193571, 21.028255, 9.697390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.229517, 20.942390, 9.918602>,  <26.289427, 20.799280, 10.287290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.229517, 20.942390, 9.918602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271512, -0.881512, -0.386287,
		-0.950709, -0.308115, 0.034890,
		-0.149776, 0.357774, -0.921719,
		26.184584, 21.049723, 9.642086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.692970, 20.529417, 9.952080>,  <26.289427, 20.799280, 10.287290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.692970, 20.529417, 9.952080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.997318, 20.623732, 9.710261>,  <26.179928, 20.680321, 9.565170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.997318, 20.623732, 9.710261>,  <25.692970, 20.529417, 9.952080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.997318, 20.623732, 9.710261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206567, -0.971192, -0.118808,
		-0.615145, -0.034481, -0.787659,
		0.760872, 0.235789, -0.604547,
		26.225580, 20.694468, 9.528897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.748871, 20.274900, 9.211923>,  <25.692970, 20.529417, 9.952080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.748871, 20.274900, 9.211923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.120556, 20.326572, 9.350416>,  <26.343567, 20.357576, 9.433513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.120556, 20.326572, 9.350416>,  <25.748871, 20.274900, 9.211923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.120556, 20.326572, 9.350416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242444, -0.920199, -0.307334,
		0.278904, 0.369521, -0.886379,
		0.929211, 0.129181, 0.346235,
		26.399319, 20.365326, 9.454287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.048613, 20.023672, 9.178572>,  <25.748871, 20.274900, 9.211923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.048613, 20.023672, 9.178572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.843164, 19.980919, 8.838038>,  <24.719896, 19.955267, 8.633718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.843164, 19.980919, 8.838038>,  <25.048613, 20.023672, 9.178572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.843164, 19.980919, 8.838038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497368, -0.771414, 0.396920,
		-0.699156, 0.627292, 0.343053,
		-0.513621, -0.106885, -0.851334,
		24.689077, 19.948853, 8.582638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.417734, 19.979027, 9.381521>,  <25.048613, 20.023672, 9.178572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.417734, 19.979027, 9.381521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.424292, 19.778061, 9.035732>,  <24.428226, 19.657482, 8.828259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.424292, 19.778061, 9.035732>,  <24.417734, 19.979027, 9.381521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.424292, 19.778061, 9.035732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359838, -0.809623, 0.463711,
		-0.932871, 0.303468, -0.194060,
		0.016394, -0.502412, -0.864472,
		24.429211, 19.627337, 8.776390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.707577, 19.822901, 9.190021>,  <24.417734, 19.979027, 9.381521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.707577, 19.822901, 9.190021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.999430, 19.575897, 9.072496>,  <24.174541, 19.427696, 9.001982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.999430, 19.575897, 9.072496>,  <23.707577, 19.822901, 9.190021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.999430, 19.575897, 9.072496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407965, -0.737873, 0.537688,
		-0.548820, -0.272450, -0.790296,
		0.729631, -0.617507, -0.293809,
		24.218319, 19.390644, 8.984354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.368288, 19.283356, 9.101864>,  <23.707577, 19.822901, 9.190021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.368288, 19.283356, 9.101864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.743071, 19.153097, 9.152571>,  <23.967939, 19.074942, 9.182995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.743071, 19.153097, 9.152571>,  <23.368288, 19.283356, 9.101864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.743071, 19.153097, 9.152571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333646, -0.725788, 0.601592,
		-0.103898, -0.605960, -0.788680,
		0.936955, -0.325644, 0.126768,
		24.024157, 19.055405, 9.190601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.400150, 18.590456, 9.005176>,  <23.368288, 19.283356, 9.101864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.400150, 18.590456, 9.005176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.741333, 18.639851, 9.208042>,  <23.946043, 18.669487, 9.329762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.741333, 18.639851, 9.208042>,  <23.400150, 18.590456, 9.005176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.741333, 18.639851, 9.208042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238992, -0.771401, 0.589765,
		0.464057, -0.624252, -0.628459,
		0.852956, 0.123488, 0.507165,
		23.997219, 18.676897, 9.360191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.432713, 17.931023, 9.318046>,  <23.400150, 18.590456, 9.005176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.432713, 17.931023, 9.318046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.701124, 18.143007, 9.525453>,  <23.862171, 18.270199, 9.649897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.701124, 18.143007, 9.525453>,  <23.432713, 17.931023, 9.318046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.701124, 18.143007, 9.525453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151622, -0.586480, 0.795645,
		0.725762, -0.612519, -0.313191,
		0.671029, 0.529963, 0.518517,
		23.902433, 18.301996, 9.681007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.980173, 17.448257, 9.528458>,  <23.432713, 17.931023, 9.318046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.980173, 17.448257, 9.528458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.903147, 17.776480, 9.743717>,  <23.856932, 17.973413, 9.872873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.903147, 17.776480, 9.743717>,  <23.980173, 17.448257, 9.528458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.903147, 17.776480, 9.743717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282583, -0.571553, 0.770372,
		0.939715, -0.003724, 0.341938,
		-0.192566, 0.820557, 0.538150,
		23.845377, 18.022646, 9.905162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.174042, 17.173208, 10.183462>,  <23.980173, 17.448257, 9.528458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.174042, 17.173208, 10.183462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.994793, 17.517633, 10.279592>,  <23.887243, 17.724289, 10.337270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.994793, 17.517633, 10.279592>,  <24.174042, 17.173208, 10.183462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.994793, 17.517633, 10.279592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290264, -0.394408, 0.871888,
		0.845537, 0.320956, 0.426679,
		-0.448123, 0.861063, 0.240324,
		23.860355, 17.775953, 10.351689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.374975, 17.483164, 10.935355>,  <24.174042, 17.173208, 10.183462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.374975, 17.483164, 10.935355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.027864, 17.662815, 10.850267>,  <23.819599, 17.770607, 10.799215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.027864, 17.662815, 10.850267>,  <24.374975, 17.483164, 10.935355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.027864, 17.662815, 10.850267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328520, -0.197271, 0.923666,
		0.372883, 0.871416, 0.318735,
		-0.867775, 0.449130, -0.212719,
		23.767532, 17.797554, 10.786451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.258060, 17.861364, 11.539624>,  <24.374975, 17.483164, 10.935355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.258060, 17.861364, 11.539624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.895720, 17.857027, 11.370244>,  <23.678314, 17.854425, 11.268616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.895720, 17.857027, 11.370244>,  <24.258060, 17.861364, 11.539624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.895720, 17.857027, 11.370244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423576, 0.031225, 0.905322,
		0.003407, 0.999454, -0.032877,
		-0.905854, -0.010841, -0.423451,
		23.623962, 17.853775, 11.243209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.792891, 18.300177, 11.931170>,  <24.258060, 17.861364, 11.539624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.792891, 18.300177, 11.931170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.559525, 18.032618, 11.746909>,  <23.419506, 17.872082, 11.636353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.559525, 18.032618, 11.746909>,  <23.792891, 18.300177, 11.931170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.559525, 18.032618, 11.746909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475516, -0.178487, 0.861410,
		-0.658417, 0.721607, -0.213940,
		-0.583414, -0.668899, -0.460654,
		23.384501, 17.831947, 11.608713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.180483, 18.255322, 12.353732>,  <23.792891, 18.300177, 11.931170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.180483, 18.255322, 12.353732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.093361, 17.937145, 12.127515>,  <23.041088, 17.746241, 11.991785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.093361, 17.937145, 12.127515>,  <23.180483, 18.255322, 12.353732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.093361, 17.937145, 12.127515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536941, -0.386224, 0.750017,
		-0.815019, 0.467021, -0.342981,
		-0.217806, -0.795439, -0.565543,
		23.028019, 17.698513, 11.957852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.479063, 18.151680, 12.551655>,  <23.180483, 18.255322, 12.353732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.479063, 18.151680, 12.551655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.629314, 17.822062, 12.382020>,  <22.719465, 17.624290, 12.280239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.629314, 17.822062, 12.382020>,  <22.479063, 18.151680, 12.551655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.629314, 17.822062, 12.382020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561600, -0.566404, 0.603151,
		-0.737229, 0.011606, -0.675543,
		0.375630, -0.824046, -0.424088,
		22.742004, 17.574848, 12.254794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.850693, 17.765226, 12.320790>,  <22.479063, 18.151680, 12.551655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.850693, 17.765226, 12.320790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.163328, 17.523197, 12.381467>,  <22.350908, 17.377979, 12.417872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.163328, 17.523197, 12.381467>,  <21.850693, 17.765226, 12.320790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.163328, 17.523197, 12.381467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593939, -0.647505, 0.477466,
		-0.190681, -0.463276, -0.865457,
		0.781586, -0.605072, 0.151691,
		22.397804, 17.341675, 12.426974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.567854, 17.050934, 12.215611>,  <21.850693, 17.765226, 12.320790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.567854, 17.050934, 12.215611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.921907, 17.015194, 12.398280>,  <22.134340, 16.993750, 12.507882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.921907, 17.015194, 12.398280>,  <21.567854, 17.050934, 12.215611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.921907, 17.015194, 12.398280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333854, -0.805586, 0.489462,
		0.324157, -0.585703, -0.742883,
		0.885135, -0.089352, 0.456676,
		22.187449, 16.988388, 12.535283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.714844, 16.310448, 12.336921>,  <21.567854, 17.050934, 12.215611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.714844, 16.310448, 12.336921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.938272, 16.500635, 12.608782>,  <22.072330, 16.614748, 12.771898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.938272, 16.500635, 12.608782>,  <21.714844, 16.310448, 12.336921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.938272, 16.500635, 12.608782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225031, -0.701796, 0.675901,
		0.798347, -0.530483, -0.285009,
		0.558572, 0.475468, 0.679652,
		22.105844, 16.643276, 12.812677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.069496, 15.779592, 12.637638>,  <21.714844, 16.310448, 12.336921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.069496, 15.779592, 12.637638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.117029, 16.086607, 12.889594>,  <22.145548, 16.270817, 13.040768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.117029, 16.086607, 12.889594>,  <22.069496, 15.779592, 12.637638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.117029, 16.086607, 12.889594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088718, -0.623641, 0.776661,
		0.988943, -0.148175, -0.006013,
		0.118832, 0.767540, 0.629891,
		22.152679, 16.316870, 13.078561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.580154, 15.542980, 13.081777>,  <22.069496, 15.779592, 12.637638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.580154, 15.542980, 13.081777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.357933, 15.815637, 13.272241>,  <22.224600, 15.979230, 13.386519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.357933, 15.815637, 13.272241>,  <22.580154, 15.542980, 13.081777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.357933, 15.815637, 13.272241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051836, -0.599943, 0.798362,
		0.829865, 0.418849, 0.368633,
		-0.555552, 0.681640, 0.476160,
		22.191267, 16.020128, 13.415089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.788584, 15.454256, 13.766454>,  <22.580154, 15.542980, 13.081777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.788584, 15.454256, 13.766454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.450169, 15.667464, 13.770685>,  <22.247120, 15.795389, 13.773224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.450169, 15.667464, 13.770685>,  <22.788584, 15.454256, 13.766454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.450169, 15.667464, 13.770685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333429, -0.544512, 0.769631,
		0.415989, 0.647609, 0.638401,
		-0.846037, 0.533020, 0.010579,
		22.196358, 15.827370, 13.773859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.006310, 15.883680, 14.228719>,  <22.788584, 15.454256, 13.766454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.006310, 15.883680, 14.228719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.635656, 16.033836, 14.220395>,  <22.413265, 16.123930, 14.215401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.635656, 16.033836, 14.220395>,  <23.006310, 15.883680, 14.228719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.635656, 16.033836, 14.220395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129267, 0.266140, -0.955227,
		-0.353045, -0.887835, -0.295140,
		-0.926633, 0.375390, -0.020808,
		22.357666, 16.146454, 14.214152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.487823, 15.299726, 14.481708>,  <23.006310, 15.883680, 14.228719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.487823, 15.299726, 14.481708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.563543, 15.605938, 14.727677>,  <23.608974, 15.789665, 14.875259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.563543, 15.605938, 14.727677>,  <23.487823, 15.299726, 14.481708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.563543, 15.605938, 14.727677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.981457, -0.166745, -0.094547,
		0.030157, 0.621420, -0.782897,
		0.189298, 0.765529, 0.614925,
		23.620333, 15.835596, 14.912155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.035252, 15.747622, 14.122553>,  <23.487823, 15.299726, 14.481708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.035252, 15.747622, 14.122553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.069172, 15.747710, 14.521112>,  <24.089523, 15.747763, 14.760248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.069172, 15.747710, 14.521112>,  <24.035252, 15.747622, 14.122553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.069172, 15.747710, 14.521112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.950141, -0.301171, -0.080798,
		0.300069, 0.953570, -0.025748,
		0.084801, 0.000220, 0.996398,
		24.094612, 15.747776, 14.820032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.642733, 16.048367, 14.176476>,  <24.035252, 15.747622, 14.122553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.642733, 16.048367, 14.176476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.559319, 15.831190, 14.501862>,  <24.509270, 15.700884, 14.697093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.559319, 15.831190, 14.501862>,  <24.642733, 16.048367, 14.176476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.559319, 15.831190, 14.501862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.914308, -0.403509, -0.034934,
		0.347208, 0.736474, 0.580562,
		-0.208534, -0.542942, 0.813466,
		24.496758, 15.668307, 14.745901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.287735, 16.256729, 14.450412>,  <24.642733, 16.048367, 14.176476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.287735, 16.256729, 14.450412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.114025, 15.924041, 14.588772>,  <25.009798, 15.724428, 14.671788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.114025, 15.924041, 14.588772>,  <25.287735, 16.256729, 14.450412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.114025, 15.924041, 14.588772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.879015, -0.475195, -0.039009,
		0.196815, 0.287111, 0.937460,
		-0.434277, -0.831719, 0.345901,
		24.983742, 15.674525, 14.692542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.704256, 15.804276, 14.689086>,  <25.287735, 16.256729, 14.450412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.704256, 15.804276, 14.689086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.430563, 15.513485, 14.712168>,  <25.266348, 15.339010, 14.726017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.430563, 15.513485, 14.712168>,  <25.704256, 15.804276, 14.689086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.430563, 15.513485, 14.712168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728945, -0.679451, 0.083579,
		-0.021553, 0.099250, 0.994829,
		-0.684233, -0.726977, 0.057703,
		25.225292, 15.295392, 14.729479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.912048, 15.305252, 15.192609>,  <25.704256, 15.804276, 14.689086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.912048, 15.305252, 15.192609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.672033, 15.119410, 14.932117>,  <25.528025, 15.007904, 14.775823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.672033, 15.119410, 14.932117>,  <25.912048, 15.305252, 15.192609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.672033, 15.119410, 14.932117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591045, -0.806062, 0.030483,
		-0.539093, -0.366614, 0.758270,
		-0.600037, -0.464605, -0.651228,
		25.492022, 14.980028, 14.736749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.662716, 15.170286, 15.226558>,  <25.912048, 15.305252, 15.192609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.662716, 15.170286, 15.226558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.747839, 14.874908, 14.970616>,  <26.798914, 14.697681, 14.817052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.747839, 14.874908, 14.970616>,  <26.662716, 15.170286, 15.226558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.747839, 14.874908, 14.970616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.787802, -0.517051, 0.334704,
		-0.577997, 0.432850, -0.691780,
		0.212809, -0.738444, -0.639854,
		26.811682, 14.653375, 14.778661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<11.727125, 16.277147, 22.804995> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.352973, 16.149908, 22.743189>,  <11.128481, 16.073565, 22.706106>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.352973, 16.149908, 22.743189>,  <11.727125, 16.277147, 22.804995>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.352973, 16.149908, 22.743189> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228001, -0.208464, -0.951083,
		0.270327, -0.924855, 0.267521,
		-0.935382, -0.318099, -0.154514,
		11.072358, 16.054478, 22.696835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.822519, 15.756514, 22.285332>,  <11.727125, 16.277147, 22.804995>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.822519, 15.756514, 22.285332> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.450347, 15.902493, 22.298672>,  <11.227043, 15.990080, 22.306675>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.450347, 15.902493, 22.298672>,  <11.822519, 15.756514, 22.285332>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.450347, 15.902493, 22.298672> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075031, -0.100630, -0.992091,
		-0.358706, -0.925573, 0.121012,
		-0.930430, 0.364948, 0.033350,
		11.171218, 16.011976, 22.308678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.541251, 15.455413, 21.679268>,  <11.822519, 15.756514, 22.285332>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.541251, 15.455413, 21.679268> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.302680, 15.756990, 21.789425>,  <11.159537, 15.937937, 21.855518>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.302680, 15.756990, 21.789425>,  <11.541251, 15.455413, 21.679268>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.302680, 15.756990, 21.789425> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265287, 0.138658, -0.954147,
		-0.757560, -0.642138, 0.117312,
		-0.596428, 0.753944, 0.275393,
		11.123752, 15.983173, 21.872044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.988141, 15.335951, 21.387962>,  <11.541251, 15.455413, 21.679268>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.988141, 15.335951, 21.387962> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<10.970207, 15.728380, 21.463314>,  <10.959447, 15.963838, 21.508524>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<10.970207, 15.728380, 21.463314>,  <10.988141, 15.335951, 21.387962>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.970207, 15.728380, 21.463314> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104194, 0.182946, -0.977586,
		-0.993546, -0.063457, 0.094020,
		-0.044834, 0.981073, 0.188377,
		10.956757, 16.022701, 21.519827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.313292, 15.612761, 21.165264>,  <10.988141, 15.335951, 21.387962>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.313292, 15.612761, 21.165264> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<10.560239, 15.927413, 21.168669>,  <10.708407, 16.116203, 21.170712>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<10.560239, 15.927413, 21.168669>,  <10.313292, 15.612761, 21.165264>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.560239, 15.927413, 21.168669> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101288, 0.090213, -0.990759,
		-0.780126, 0.610801, 0.135370,
		0.617368, 0.786628, 0.008511,
		10.745449, 16.163401, 21.171223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.084069, 15.935568, 20.655203>,  <10.313292, 15.612761, 21.165264>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.084069, 15.935568, 20.655203> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<10.433668, 16.124332, 20.701551>,  <10.643428, 16.237591, 20.729361>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<10.433668, 16.124332, 20.701551>,  <10.084069, 15.935568, 20.655203>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.433668, 16.124332, 20.701551> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068526, 0.116372, -0.990839,
		-0.481073, 0.873932, 0.069370,
		0.873998, 0.471912, 0.115871,
		10.695868, 16.265905, 20.736313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.052646, 16.581863, 20.390755>,  <10.084069, 15.935568, 20.655203>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.052646, 16.581863, 20.390755> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<10.447048, 16.517267, 20.374210>,  <10.683690, 16.478510, 20.364285>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<10.447048, 16.517267, 20.374210>,  <10.052646, 16.581863, 20.390755>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.447048, 16.517267, 20.374210> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008588, 0.296974, -0.954847,
		0.166482, 0.941131, 0.294205,
		0.986007, -0.161492, -0.041359,
		10.742850, 16.468821, 20.361803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.192017, 17.025345, 19.816584>,  <10.052646, 16.581863, 20.390755>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.192017, 17.025345, 19.816584> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<10.506030, 16.783848, 19.872032>,  <10.694438, 16.638950, 19.905302>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<10.506030, 16.783848, 19.872032>,  <10.192017, 17.025345, 19.816584>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.506030, 16.783848, 19.872032> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183015, 0.012261, -0.983034,
		0.591800, 0.797085, 0.120119,
		0.785034, -0.603743, 0.138622,
		10.741540, 16.602726, 19.913618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.673625, 17.212355, 19.255209>,  <10.192017, 17.025345, 19.816584>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.673625, 17.212355, 19.255209> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<10.829714, 16.872009, 19.395926>,  <10.923368, 16.667803, 19.480356>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<10.829714, 16.872009, 19.395926>,  <10.673625, 17.212355, 19.255209>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.829714, 16.872009, 19.395926> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386347, -0.195500, -0.901397,
		0.835740, 0.487660, 0.252439,
		0.390223, -0.850863, 0.351794,
		10.946781, 16.616751, 19.501463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.351708, 17.325623, 19.124119>,  <10.673625, 17.212355, 19.255209>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.351708, 17.325623, 19.124119> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.273447, 16.935553, 19.165606>,  <11.226490, 16.701511, 19.190496>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.273447, 16.935553, 19.165606>,  <11.351708, 17.325623, 19.124119>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.273447, 16.935553, 19.165606> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608204, -0.203624, -0.767219,
		0.769291, -0.087029, 0.632944,
		-0.195653, -0.975173, 0.103714,
		11.214751, 16.643000, 19.196720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.997309, 16.921768, 19.151045>,  <11.351708, 17.325623, 19.124119>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.997309, 16.921768, 19.151045> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.713319, 16.667826, 19.029131>,  <11.542925, 16.515461, 18.955982>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.713319, 16.667826, 19.029131>,  <11.997309, 16.921768, 19.151045>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.713319, 16.667826, 19.029131> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626038, -0.370776, -0.686004,
		0.322508, -0.677852, 0.660686,
		-0.709975, -0.634856, -0.304783,
		11.500326, 16.477369, 18.937696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.388040, 16.446381, 18.966051>,  <11.997309, 16.921768, 19.151045>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.388040, 16.446381, 18.966051> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.042280, 16.368507, 18.780615>,  <11.834825, 16.321783, 18.669353>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.042280, 16.368507, 18.780615>,  <12.388040, 16.446381, 18.966051>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.042280, 16.368507, 18.780615> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502807, -0.336757, -0.796103,
		-0.001130, -0.921245, 0.388980,
		-0.864398, -0.194683, -0.463589,
		11.782961, 16.310102, 18.641539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.410530, 15.748062, 18.727631>,  <12.388040, 16.446381, 18.966051>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.410530, 15.748062, 18.727631> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.146906, 15.942043, 18.497688>,  <11.988731, 16.058432, 18.359722>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.146906, 15.942043, 18.497688>,  <12.410530, 15.748062, 18.727631>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.146906, 15.942043, 18.497688> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434261, -0.378677, -0.817326,
		-0.614050, -0.788304, 0.038974,
		-0.659060, 0.484955, -0.574856,
		11.949188, 16.087530, 18.325232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.312282, 15.352807, 18.213535>,  <12.410530, 15.748062, 18.727631>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.312282, 15.352807, 18.213535> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.192142, 15.697728, 18.050453>,  <12.120057, 15.904681, 17.952604>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.192142, 15.697728, 18.050453>,  <12.312282, 15.352807, 18.213535>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.192142, 15.697728, 18.050453> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472065, -0.237036, -0.849099,
		-0.828822, -0.447490, -0.335869,
		-0.300350, 0.862303, -0.407704,
		12.102036, 15.956419, 17.928143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.279794, 15.284527, 17.479458>,  <12.312282, 15.352807, 18.213535>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.279794, 15.284527, 17.479458> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.277108, 15.683367, 17.509779>,  <12.275497, 15.922670, 17.527971>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.277108, 15.683367, 17.509779>,  <12.279794, 15.284527, 17.479458>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.277108, 15.683367, 17.509779> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611897, 0.064052, -0.788340,
		-0.790909, 0.041092, -0.610553,
		-0.006713, 0.997100, 0.075804,
		12.275094, 15.982497, 17.532520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.096045, 15.431804, 16.793976>,  <12.279794, 15.284527, 17.479458>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.096045, 15.431804, 16.793976> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.242973, 15.772550, 16.943321>,  <12.331131, 15.976997, 17.032928>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.242973, 15.772550, 16.943321>,  <12.096045, 15.431804, 16.793976>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.242973, 15.772550, 16.943321> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509299, 0.151675, -0.847118,
		-0.778260, 0.501320, -0.378140,
		0.367323, 0.851865, 0.373364,
		12.353170, 16.028109, 17.055330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.950350, 16.033514, 16.315519>,  <12.096045, 15.431804, 16.793976>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.950350, 16.033514, 16.315519> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.272908, 16.107447, 16.540220>,  <12.466443, 16.151806, 16.675041>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.272908, 16.107447, 16.540220>,  <11.950350, 16.033514, 16.315519>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.272908, 16.107447, 16.540220> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489329, 0.324880, -0.809327,
		-0.332092, 0.927518, 0.171537,
		0.806395, 0.184833, 0.561751,
		12.514827, 16.162897, 16.708746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.162642, 16.663666, 16.083517>,  <11.950350, 16.033514, 16.315519>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.162642, 16.663666, 16.083517> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.493448, 16.534739, 16.267757>,  <12.691933, 16.457382, 16.378302>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.493448, 16.534739, 16.267757>,  <12.162642, 16.663666, 16.083517>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.493448, 16.534739, 16.267757> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545388, 0.261264, -0.796425,
		0.136361, 0.909865, 0.391857,
		0.827017, -0.322316, 0.460603,
		12.741553, 16.438044, 16.405939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.741666, 17.178215, 15.881235>,  <12.162642, 16.663666, 16.083517>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.741666, 17.178215, 15.881235> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.898739, 16.826008, 15.987431>,  <12.992983, 16.614683, 16.051147>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.898739, 16.826008, 15.987431>,  <12.741666, 17.178215, 15.881235>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.898739, 16.826008, 15.987431> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708784, 0.105804, -0.697446,
		0.586025, 0.462050, 0.665646,
		0.392683, -0.880520, 0.265490,
		13.016544, 16.561852, 16.067078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.467381, 17.324018, 15.915606>,  <12.741666, 17.178215, 15.881235>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.467381, 17.324018, 15.915606> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.451701, 16.924343, 15.919354>,  <13.442293, 16.684538, 15.921603>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.451701, 16.924343, 15.919354>,  <13.467381, 17.324018, 15.915606>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.451701, 16.924343, 15.919354> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664167, -0.033062, -0.746853,
		0.746556, -0.023053, 0.664923,
		-0.039201, -0.999187, 0.009372,
		13.439940, 16.624586, 15.922166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.116865, 17.101952, 15.911183>,  <13.467381, 17.324018, 15.915606>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.116865, 17.101952, 15.911183> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.940208, 16.775883, 15.761276>,  <13.834214, 16.580242, 15.671332>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.940208, 16.775883, 15.761276>,  <14.116865, 17.101952, 15.911183>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.940208, 16.775883, 15.761276> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529987, 0.100007, -0.842088,
		0.723925, -0.570522, 0.387863,
		-0.441640, -0.815171, -0.374767,
		13.807716, 16.531332, 15.648846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.528161, 16.596231, 15.852463>,  <14.116865, 17.101952, 15.911183>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.528161, 16.596231, 15.852463> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.249918, 16.467182, 15.595700>,  <14.082973, 16.389753, 15.441643>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.249918, 16.467182, 15.595700>,  <14.528161, 16.596231, 15.852463>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.249918, 16.467182, 15.595700> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684113, -0.024643, -0.728959,
		0.219360, -0.946207, 0.237852,
		-0.695608, -0.322622, -0.641907,
		14.041236, 16.370396, 15.403128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.793325, 15.909847, 15.733386>,  <14.528161, 16.596231, 15.852463>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.793325, 15.909847, 15.733386> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.092117, 16.139715, 15.599655>,  <15.271393, 16.277636, 15.519417>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.092117, 16.139715, 15.599655>,  <14.793325, 15.909847, 15.733386>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.092117, 16.139715, 15.599655> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251372, 0.221415, 0.942225,
		0.615494, -0.787863, 0.020937,
		0.746980, 0.574671, -0.334326,
		15.316212, 16.312117, 15.499357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.178353, 15.819854, 16.315210>,  <14.793325, 15.909847, 15.733386>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.178353, 15.819854, 16.315210> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.333662, 16.124058, 16.107029>,  <15.426847, 16.306580, 15.982121>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.333662, 16.124058, 16.107029>,  <15.178353, 15.819854, 16.315210>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.333662, 16.124058, 16.107029> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487258, 0.309938, 0.816405,
		0.782192, -0.570581, -0.250224,
		0.388272, 0.760510, -0.520452,
		15.450144, 16.352211, 15.950893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.806732, 15.856664, 16.473862>,  <15.178353, 15.819854, 16.315210>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.806732, 15.856664, 16.473862> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.762347, 16.236511, 16.356619>,  <15.735717, 16.464420, 16.286274>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.762347, 16.236511, 16.356619>,  <15.806732, 15.856664, 16.473862>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.762347, 16.236511, 16.356619> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290586, 0.313041, 0.904193,
		0.950393, 0.015158, -0.310682,
		-0.110962, 0.949619, -0.293107,
		15.729059, 16.521397, 16.268686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.384207, 16.268377, 16.668037>,  <15.806732, 15.856664, 16.473862>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.384207, 16.268377, 16.668037> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.084234, 16.529602, 16.625862>,  <15.904251, 16.686337, 16.600557>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.084234, 16.529602, 16.625862>,  <16.384207, 16.268377, 16.668037>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.084234, 16.529602, 16.625862> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255020, 0.432476, 0.864829,
		0.610385, 0.621672, -0.490871,
		-0.749930, 0.653060, -0.105438,
		15.859255, 16.725521, 16.594231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.659159, 16.951159, 16.867020>,  <16.384207, 16.268377, 16.668037>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.659159, 16.951159, 16.867020> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.265953, 17.012123, 16.907915>,  <16.030029, 17.048702, 16.932451>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.265953, 17.012123, 16.907915>,  <16.659159, 16.951159, 16.867020>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.265953, 17.012123, 16.907915> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160054, 0.439363, 0.883936,
		0.089805, 0.885286, -0.456294,
		-0.983015, 0.152413, 0.102237,
		15.971048, 17.057848, 16.938585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.510145, 17.582235, 17.215746>,  <16.659159, 16.951159, 16.867020>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.510145, 17.582235, 17.215746> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.153450, 17.412817, 17.279507>,  <15.939432, 17.311167, 17.317764>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.153450, 17.412817, 17.279507>,  <16.510145, 17.582235, 17.215746>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.153450, 17.412817, 17.279507> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040136, 0.424866, 0.904366,
		-0.450766, 0.800061, -0.395869,
		-0.891739, -0.423546, 0.159404,
		15.885928, 17.285753, 17.327328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.060925, 18.122486, 17.676477>,  <16.510145, 17.582235, 17.215746>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.060925, 18.122486, 17.676477> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.870864, 17.772375, 17.712526>,  <15.756827, 17.562309, 17.734156>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.870864, 17.772375, 17.712526>,  <16.060925, 18.122486, 17.676477>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.870864, 17.772375, 17.712526> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388724, 0.300695, 0.870905,
		-0.789382, 0.378780, -0.483117,
		-0.475152, -0.875276, 0.090122,
		15.728318, 17.509792, 17.739563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.356618, 18.277328, 17.746820>,  <16.060925, 18.122486, 17.676477>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.356618, 18.277328, 17.746820> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.421638, 17.909758, 17.890570>,  <15.460649, 17.689215, 17.976820>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.421638, 17.909758, 17.890570>,  <15.356618, 18.277328, 17.746820>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.421638, 17.909758, 17.890570> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405314, 0.269886, 0.873431,
		-0.899610, -0.287635, -0.328585,
		0.162549, -0.918927, 0.359375,
		15.470403, 17.634079, 17.998383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.746687, 18.085947, 18.174402>,  <15.356618, 18.277328, 17.746820>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.746687, 18.085947, 18.174402> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.996788, 17.811386, 18.322948>,  <15.146849, 17.646650, 18.412077>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.996788, 17.811386, 18.322948>,  <14.746687, 18.085947, 18.174402>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.996788, 17.811386, 18.322948> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407841, 0.118321, 0.905354,
		-0.665376, -0.717533, -0.205962,
		0.625252, -0.686401, 0.371367,
		15.184363, 17.605465, 18.434359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.301047, 17.586674, 18.464579>,  <14.746687, 18.085947, 18.174402>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.301047, 17.586674, 18.464579> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.652572, 17.518545, 18.642874>,  <14.863486, 17.477669, 18.749851>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.652572, 17.518545, 18.642874>,  <14.301047, 17.586674, 18.464579>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.652572, 17.518545, 18.642874> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470202, -0.150061, 0.869708,
		-0.081238, -0.973896, -0.211958,
		0.878812, -0.170316, 0.445737,
		14.916215, 17.467449, 18.776594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.385286, 16.881983, 18.880840>,  <14.301047, 17.586674, 18.464579>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.385286, 16.881983, 18.880840> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.667551, 17.117456, 19.038570>,  <14.836910, 17.258741, 19.133209>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.667551, 17.117456, 19.038570>,  <14.385286, 16.881983, 18.880840>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.667551, 17.117456, 19.038570> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440396, -0.071565, 0.894947,
		0.555061, -0.805189, 0.208753,
		0.705662, 0.588684, 0.394325,
		14.879250, 17.294062, 19.156868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.576911, 16.540623, 19.438292>,  <14.385286, 16.881983, 18.880840>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.576911, 16.540623, 19.438292> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.738826, 16.901764, 19.496264>,  <14.835975, 17.118448, 19.531046>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.738826, 16.901764, 19.496264>,  <14.576911, 16.540623, 19.438292>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.738826, 16.901764, 19.496264> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196083, -0.069102, 0.978150,
		0.893140, -0.424360, 0.149062,
		0.404787, 0.902853, 0.144928,
		14.860262, 17.172619, 19.539742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.007973, 16.456736, 19.997574>,  <14.576911, 16.540623, 19.438292>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.007973, 16.456736, 19.997574> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.915264, 16.845125, 19.973951>,  <14.859639, 17.078159, 19.959778>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.915264, 16.845125, 19.973951>,  <15.007973, 16.456736, 19.997574>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.915264, 16.845125, 19.973951> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225453, 0.005439, 0.974239,
		0.946284, 0.239114, 0.217649,
		-0.231771, 0.970976, -0.059055,
		14.845733, 17.136417, 19.956234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.333384, 16.767723, 20.607908>,  <15.007973, 16.456736, 19.997574>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.333384, 16.767723, 20.607908> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.037773, 17.003860, 20.478086>,  <14.860407, 17.145542, 20.400194>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.037773, 17.003860, 20.478086>,  <15.333384, 16.767723, 20.607908>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.037773, 17.003860, 20.478086> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279437, 0.169743, 0.945041,
		0.612988, 0.789103, 0.039519,
		-0.739027, 0.590342, -0.324555,
		14.816065, 17.180964, 20.380720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.273774, 17.197697, 21.144209>,  <15.333384, 16.767723, 20.607908>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.273774, 17.197697, 21.144209> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.915280, 17.229948, 20.969732>,  <14.700184, 17.249300, 20.865047>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.915280, 17.229948, 20.969732>,  <15.273774, 17.197697, 21.144209>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.915280, 17.229948, 20.969732> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435445, 0.027537, 0.899794,
		0.084561, 0.996364, 0.010430,
		-0.896235, 0.080629, -0.436190,
		14.646410, 17.254137, 20.838875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.822386, 17.804543, 21.535620>,  <15.273774, 17.197697, 21.144209>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.822386, 17.804543, 21.535620> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.580603, 17.547993, 21.346615>,  <14.435533, 17.394062, 21.233212>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.580603, 17.547993, 21.346615>,  <14.822386, 17.804543, 21.535620>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.580603, 17.547993, 21.346615> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498595, -0.158017, 0.852311,
		-0.621317, 0.750778, -0.224273,
		-0.604457, -0.641376, -0.472512,
		14.399265, 17.355579, 21.204861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.301680, 18.041368, 21.801594>,  <14.822386, 17.804543, 21.535620>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.301680, 18.041368, 21.801594> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.200760, 17.684990, 21.650564>,  <14.140208, 17.471163, 21.559946>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.200760, 17.684990, 21.650564>,  <14.301680, 18.041368, 21.801594>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.200760, 17.684990, 21.650564> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632062, -0.143716, 0.761474,
		-0.732696, 0.430768, -0.526873,
		-0.252299, -0.890946, -0.377573,
		14.125071, 17.417706, 21.537292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.581700, 17.994976, 21.680695>,  <14.301680, 18.041368, 21.801594>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.581700, 17.994976, 21.680695> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.682539, 17.609884, 21.719885>,  <13.743042, 17.378830, 21.743399>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.682539, 17.609884, 21.719885>,  <13.581700, 17.994976, 21.680695>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.682539, 17.609884, 21.719885> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634570, -0.088023, 0.767836,
		-0.730594, -0.255742, -0.633110,
		0.252096, -0.962729, 0.097977,
		13.758168, 17.321066, 21.749279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<12.834984, 17.486843, 21.610518> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.129920, 17.274929, 21.778164>,  <13.306882, 17.147781, 21.878752>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.129920, 17.274929, 21.778164>,  <12.834984, 17.486843, 21.610518>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.129920, 17.274929, 21.778164> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549670, -0.109886, 0.828123,
		-0.392673, -0.840983, -0.372231,
		0.737340, -0.529786, 0.419114,
		13.351122, 17.115993, 21.903898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.498275, 16.953045, 21.981531>,  <12.834984, 17.486843, 21.610518>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.498275, 16.953045, 21.981531> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.863487, 16.928030, 22.142757>,  <13.082615, 16.913021, 22.239492>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.863487, 16.928030, 22.142757>,  <12.498275, 16.953045, 21.981531>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.863487, 16.928030, 22.142757> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398699, -0.345404, 0.849550,
		0.086094, -0.936368, -0.340298,
		0.913032, -0.062535, 0.403066,
		13.137397, 16.909269, 22.263678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.417738, 16.287266, 22.337273>,  <12.498275, 16.953045, 21.981531>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.417738, 16.287266, 22.337273> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.737720, 16.493084, 22.460764>,  <12.929710, 16.616575, 22.534859>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.737720, 16.493084, 22.460764>,  <12.417738, 16.287266, 22.337273>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.737720, 16.493084, 22.460764> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218763, -0.229005, 0.948525,
		0.558759, -0.826317, -0.070630,
		0.799956, 0.514546, 0.308726,
		12.977708, 16.647448, 22.553381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.716444, 15.814394, 22.823149>,  <12.417738, 16.287266, 22.337273>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.716444, 15.814394, 22.823149> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.836810, 16.183262, 22.920355>,  <12.909030, 16.404583, 22.978678>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.836810, 16.183262, 22.920355>,  <12.716444, 15.814394, 22.823149>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.836810, 16.183262, 22.920355> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280159, -0.158098, 0.946845,
		0.911571, -0.353002, 0.210780,
		0.300914, 0.922168, 0.243014,
		12.927085, 16.459913, 22.993259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.238719, 15.740398, 23.374315>,  <12.716444, 15.814394, 22.823149>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.238719, 15.740398, 23.374315> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.106346, 16.116962, 23.400333>,  <13.026922, 16.342901, 23.415943>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.106346, 16.116962, 23.400333>,  <13.238719, 15.740398, 23.374315>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.106346, 16.116962, 23.400333> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162747, -0.124833, 0.978739,
		0.929515, 0.313310, 0.194523,
		-0.330932, 0.941411, 0.065044,
		13.007067, 16.399385, 23.419847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.617534, 16.119068, 23.905081>,  <13.238719, 15.740398, 23.374315>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.617534, 16.119068, 23.905081> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.268743, 16.312733, 23.876116>,  <13.059468, 16.428932, 23.858736>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.268743, 16.312733, 23.876116>,  <13.617534, 16.119068, 23.905081>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.268743, 16.312733, 23.876116> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099648, -0.030716, 0.994549,
		0.479298, 0.874439, 0.075029,
		-0.871977, 0.484161, -0.072414,
		13.007150, 16.457981, 23.854391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.616209, 16.596941, 24.351345>,  <13.617534, 16.119068, 23.905081>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.616209, 16.596941, 24.351345> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.222598, 16.598656, 24.280161>,  <12.986431, 16.599686, 24.237450>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.222598, 16.598656, 24.280161>,  <13.616209, 16.596941, 24.351345>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.222598, 16.598656, 24.280161> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171536, 0.244392, 0.954384,
		0.047585, 0.969667, -0.239753,
		-0.984028, 0.004288, -0.177962,
		12.927390, 16.599941, 24.226772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.305467, 17.265965, 24.571836>,  <13.616209, 16.596941, 24.351345>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.305467, 17.265965, 24.571836> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.992145, 17.017714, 24.557663>,  <12.804152, 16.868763, 24.549160>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.992145, 17.017714, 24.557663>,  <13.305467, 17.265965, 24.571836>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.992145, 17.017714, 24.557663> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249816, 0.262082, 0.932151,
		-0.569231, 0.739011, -0.360333,
		-0.783306, -0.620626, -0.035432,
		12.757153, 16.831526, 24.547033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.743696, 17.640749, 24.726881>,  <13.305467, 17.265965, 24.571836>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.743696, 17.640749, 24.726881> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.611255, 17.269753, 24.796316>,  <12.531790, 17.047155, 24.837976>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.611255, 17.269753, 24.796316>,  <12.743696, 17.640749, 24.726881>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.611255, 17.269753, 24.796316> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444511, 0.315588, 0.838340,
		-0.832334, 0.200416, -0.516772,
		-0.331104, -0.927490, 0.173588,
		12.511924, 16.991505, 24.848392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.198838, 17.774921, 24.973061>,  <12.743696, 17.640749, 24.726881>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.198838, 17.774921, 24.973061> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.291292, 17.403845, 25.090340>,  <12.346765, 17.181198, 25.160707>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.291292, 17.403845, 25.090340>,  <12.198838, 17.774921, 24.973061>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.291292, 17.403845, 25.090340> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328465, 0.209259, 0.921044,
		-0.915798, -0.309191, -0.256347,
		0.231136, -0.927692, 0.293197,
		12.360633, 17.125538, 25.178299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.639359, 17.488020, 25.307322>,  <12.198838, 17.774921, 24.973061>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.639359, 17.488020, 25.307322> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.946097, 17.278112, 25.455143>,  <12.130140, 17.152168, 25.543835>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.946097, 17.278112, 25.455143>,  <11.639359, 17.488020, 25.307322>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.946097, 17.278112, 25.455143> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271322, 0.256756, 0.927610,
		-0.581664, -0.811600, 0.054511,
		0.766845, -0.524768, 0.369551,
		12.176151, 17.120682, 25.566008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.327089, 17.210007, 25.873016>,  <11.639359, 17.488020, 25.307322>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.327089, 17.210007, 25.873016> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.712583, 17.151358, 25.962208>,  <11.943879, 17.116167, 26.015722>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.712583, 17.151358, 25.962208>,  <11.327089, 17.210007, 25.873016>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.712583, 17.151358, 25.962208> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221568, 0.026082, 0.974796,
		-0.148745, -0.988848, -0.007351,
		0.963734, -0.146624, 0.222977,
		12.001702, 17.107370, 26.029100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.423769, 16.591145, 26.338776>,  <11.327089, 17.210007, 25.873016>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.423769, 16.591145, 26.338776> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.716910, 16.857090, 26.396580>,  <11.892796, 17.016657, 26.431261>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.716910, 16.857090, 26.396580>,  <11.423769, 16.591145, 26.338776>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.716910, 16.857090, 26.396580> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251925, 0.067866, 0.965364,
		0.632028, -0.743876, 0.217231,
		0.732854, 0.664863, 0.144508,
		11.936767, 17.056549, 26.439932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.544726, 16.493673, 26.977999>,  <11.423769, 16.591145, 26.338776>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.544726, 16.493673, 26.977999> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.777152, 16.815559, 26.929338>,  <11.916607, 17.008692, 26.900143>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.777152, 16.815559, 26.929338>,  <11.544726, 16.493673, 26.977999>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.777152, 16.815559, 26.929338> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260818, 0.325714, 0.908782,
		0.770934, -0.496330, 0.399145,
		0.581063, 0.804715, -0.121652,
		11.951471, 17.056974, 26.892843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.866042, 16.587519, 27.626251>,  <11.544726, 16.493673, 26.977999>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.866042, 16.587519, 27.626251> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.932890, 16.944777, 27.459223>,  <11.972999, 17.159130, 27.359005>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.932890, 16.944777, 27.459223>,  <11.866042, 16.587519, 27.626251>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.932890, 16.944777, 27.459223> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202886, 0.445618, 0.871930,
		0.964836, -0.060997, 0.255678,
		0.167120, 0.893143, -0.417573,
		11.983026, 17.212719, 27.333950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.264488, 17.008919, 28.099758>,  <11.866042, 16.587519, 27.626251>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.264488, 17.008919, 28.099758> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.088875, 17.291428, 27.877613>,  <11.983506, 17.460934, 27.744326>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.088875, 17.291428, 27.877613>,  <12.264488, 17.008919, 28.099758>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.088875, 17.291428, 27.877613> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200866, 0.525318, 0.826858,
		0.875729, 0.474572, -0.088767,
		-0.439034, 0.706273, -0.555362,
		11.957165, 17.503309, 27.711004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.680231, 17.635733, 28.130489>,  <12.264488, 17.008919, 28.099758>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.680231, 17.635733, 28.130489> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.316381, 17.748262, 28.008217>,  <12.098071, 17.815781, 27.934855>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.316381, 17.748262, 28.008217>,  <12.680231, 17.635733, 28.130489>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.316381, 17.748262, 28.008217> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037056, 0.677937, 0.734185,
		0.413775, 0.679161, -0.606244,
		-0.909625, 0.281323, -0.305680,
		12.043494, 17.832659, 27.916513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.710850, 18.342422, 28.215935>,  <12.680231, 17.635733, 28.130489>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.710850, 18.342422, 28.215935> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.324080, 18.241076, 28.204155>,  <12.092019, 18.180267, 28.197088>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.324080, 18.241076, 28.204155>,  <12.710850, 18.342422, 28.215935>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.324080, 18.241076, 28.204155> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187806, 0.629053, 0.754335,
		-0.172599, 0.734913, -0.655829,
		-0.966922, -0.253366, -0.029448,
		12.034004, 18.165066, 28.195320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.358250, 19.028913, 28.173859>,  <12.710850, 18.342422, 28.215935>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.358250, 19.028913, 28.173859> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.114807, 18.734909, 28.293430>,  <11.968741, 18.558506, 28.365173>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.114807, 18.734909, 28.293430>,  <12.358250, 19.028913, 28.173859>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.114807, 18.734909, 28.293430> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317915, 0.571054, 0.756854,
		-0.727000, 0.365592, -0.581218,
		-0.608606, -0.735011, 0.298929,
		11.932225, 18.514406, 28.383108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.763954, 19.440823, 28.088291>,  <12.358250, 19.028913, 28.173859>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.763954, 19.440823, 28.088291> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.692859, 19.119188, 28.315222>,  <11.650202, 18.926208, 28.451380>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.692859, 19.119188, 28.315222>,  <11.763954, 19.440823, 28.088291>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.692859, 19.119188, 28.315222> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492031, 0.571884, 0.656395,
		-0.852241, -0.162476, -0.497280,
		-0.177738, -0.804084, 0.567326,
		11.639538, 18.877964, 28.485420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.982291, 19.484926, 28.352039>,  <11.763954, 19.440823, 28.088291>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.982291, 19.484926, 28.352039> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.202858, 19.255606, 28.594450>,  <11.335197, 19.118013, 28.739897>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.202858, 19.255606, 28.594450>,  <10.982291, 19.484926, 28.352039>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.202858, 19.255606, 28.594450> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517866, 0.334292, 0.787441,
		-0.654030, -0.748048, -0.112559,
		0.551416, -0.573301, 0.606025,
		11.368283, 19.083616, 28.776258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.536210, 19.016367, 28.706158>,  <10.982291, 19.484926, 28.352039>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.536210, 19.016367, 28.706158> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.858644, 19.053490, 28.939949>,  <11.052104, 19.075764, 29.080225>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.858644, 19.053490, 28.939949>,  <10.536210, 19.016367, 28.706158>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.858644, 19.053490, 28.939949> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558231, 0.447149, 0.698882,
		-0.196490, -0.889632, 0.412245,
		0.806084, 0.092804, 0.584480,
		11.100469, 19.081331, 29.115294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.504065, 18.663368, 29.409472>,  <10.536210, 19.016367, 28.706158>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.504065, 18.663368, 29.409472> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.748255, 18.979420, 29.431433>,  <10.894769, 19.169050, 29.444609>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.748255, 18.979420, 29.431433>,  <10.504065, 18.663368, 29.409472>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.748255, 18.979420, 29.431433> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594655, 0.411451, 0.690719,
		0.523169, -0.454315, 0.721036,
		0.610476, 0.790130, 0.054902,
		10.931397, 19.216459, 29.447903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.435001, 18.135624, 29.945480>,  <10.504065, 18.663368, 29.409472>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.435001, 18.135624, 29.945480> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.056895, 18.032272, 30.025192>,  <9.830031, 17.970261, 30.073019>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.056895, 18.032272, 30.025192>,  <10.435001, 18.135624, 29.945480>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.056895, 18.032272, 30.025192> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086097, -0.391584, -0.916106,
		0.314737, -0.883121, 0.347905,
		-0.945266, -0.258379, 0.199280,
		9.773315, 17.954760, 30.084976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.260406, 17.340160, 30.019772>,  <10.435001, 18.135624, 29.945480>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.260406, 17.340160, 30.019772> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.927768, 17.529675, 29.903856>,  <9.728185, 17.643383, 29.834307>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.927768, 17.529675, 29.903856>,  <10.260406, 17.340160, 30.019772>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.927768, 17.529675, 29.903856> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069933, -0.606959, -0.791650,
		-0.550962, -0.638067, 0.537877,
		-0.831595, 0.473785, -0.289790,
		9.678289, 17.671810, 29.816919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.774108, 16.807125, 29.750210>,  <10.260406, 17.340160, 30.019772>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.774108, 16.807125, 29.750210> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.649471, 17.155672, 29.598616>,  <9.574689, 17.364799, 29.507658>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.649471, 17.155672, 29.598616>,  <9.774108, 16.807125, 29.750210>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.649471, 17.155672, 29.598616> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313471, -0.470778, -0.824685,
		-0.897021, -0.138163, 0.419838,
		-0.311592, 0.871366, -0.378987,
		9.555994, 17.417082, 29.484919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.058578, 16.765757, 29.696466>,  <9.774108, 16.807125, 29.750210>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.058578, 16.765757, 29.696466> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.193270, 17.003012, 29.403946>,  <9.274084, 17.145365, 29.228434>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.193270, 17.003012, 29.403946>,  <9.058578, 16.765757, 29.696466>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.193270, 17.003012, 29.403946> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363542, -0.634542, -0.682051,
		-0.868592, 0.495524, 0.001963,
		0.336727, 0.593138, -0.731302,
		9.294288, 17.180952, 29.184555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.444659, 16.843279, 29.209522>,  <9.058578, 16.765757, 29.696466>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.444659, 16.843279, 29.209522> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<8.765308, 16.958038, 28.999725>,  <8.957698, 17.026894, 28.873848>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<8.765308, 16.958038, 28.999725>,  <8.444659, 16.843279, 29.209522>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.765308, 16.958038, 28.999725> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347376, -0.490484, -0.799221,
		-0.486551, 0.822869, -0.293521,
		0.801622, 0.286900, -0.524491,
		9.005795, 17.044107, 28.842379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.167693, 16.851540, 28.550362>,  <8.444659, 16.843279, 29.209522>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.167693, 16.851540, 28.550362> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<8.557611, 16.904154, 28.478279>,  <8.791561, 16.935722, 28.435030>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<8.557611, 16.904154, 28.478279>,  <8.167693, 16.851540, 28.550362>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.557611, 16.904154, 28.478279> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072019, -0.578962, -0.812168,
		-0.211161, 0.804675, -0.554896,
		0.974794, 0.131535, -0.180206,
		8.850049, 16.943615, 28.424217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.172354, 16.806475, 27.853401>,  <8.167693, 16.851540, 28.550362>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.172354, 16.806475, 27.853401> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<8.561471, 16.755930, 27.931074>,  <8.794941, 16.725603, 27.977678>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<8.561471, 16.755930, 27.931074>,  <8.172354, 16.806475, 27.853401>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.561471, 16.755930, 27.931074> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118975, -0.446726, -0.886725,
		0.198796, 0.885702, -0.419537,
		0.972792, -0.126363, 0.194184,
		8.853309, 16.718021, 27.989328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.580673, 17.198694, 27.389284>,  <8.172354, 16.806475, 27.853401>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.580673, 17.198694, 27.389284> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<8.784286, 16.880394, 27.520533>,  <8.906455, 16.689413, 27.599281>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<8.784286, 16.880394, 27.520533>,  <8.580673, 17.198694, 27.389284>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.784286, 16.880394, 27.520533> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207251, -0.256680, -0.944014,
		0.835423, 0.548539, 0.034262,
		0.509034, -0.795752, 0.328121,
		8.936996, 16.641668, 27.618969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.185758, 17.086899, 26.947760>,  <8.580673, 17.198694, 27.389284>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.185758, 17.086899, 26.947760> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.198238, 16.742695, 27.151152>,  <9.205727, 16.536173, 27.273188>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.198238, 16.742695, 27.151152>,  <9.185758, 17.086899, 26.947760>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.198238, 16.742695, 27.151152> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257120, -0.484696, -0.836038,
		0.965876, 0.156827, 0.206130,
		0.031202, -0.860509, 0.508479,
		9.207599, 16.484543, 27.303696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.834084, 16.876333, 27.026777>,  <9.185758, 17.086899, 26.947760>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.834084, 16.876333, 27.026777> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.640785, 16.530748, 27.083403>,  <9.524806, 16.323397, 27.117378>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.640785, 16.530748, 27.083403>,  <9.834084, 16.876333, 27.026777>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.640785, 16.530748, 27.083403> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541208, -0.421904, -0.727386,
		0.688162, -0.274892, 0.671467,
		-0.483247, -0.863963, 0.141564,
		9.495811, 16.271559, 27.125872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.286476, 16.334734, 27.088039>,  <9.834084, 16.876333, 27.026777>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.286476, 16.334734, 27.088039> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.941692, 16.181215, 26.955538>,  <9.734822, 16.089104, 26.876038>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.941692, 16.181215, 26.955538>,  <10.286476, 16.334734, 27.088039>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.941692, 16.181215, 26.955538> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431304, -0.211709, -0.877015,
		0.266466, -0.898821, 0.348017,
		-0.861959, -0.383796, -0.331252,
		9.683105, 16.066076, 26.856163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.492260, 15.885956, 26.740776>,  <10.286476, 16.334734, 27.088039>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.492260, 15.885956, 26.740776> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.119908, 15.949121, 26.609001>,  <9.896498, 15.987020, 26.529936>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.119908, 15.949121, 26.609001>,  <10.492260, 15.885956, 26.740776>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.119908, 15.949121, 26.609001> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322199, -0.070182, -0.944067,
		-0.172201, -0.984956, 0.014451,
		-0.930878, 0.157913, -0.329438,
		9.840645, 15.996494, 26.510170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.454313, 15.409325, 26.256729>,  <10.492260, 15.885956, 26.740776>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.454313, 15.409325, 26.256729> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.133079, 15.624002, 26.153185>,  <9.940337, 15.752810, 26.091059>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.133079, 15.624002, 26.153185>,  <10.454313, 15.409325, 26.256729>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.133079, 15.624002, 26.153185> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244660, -0.099118, -0.964529,
		-0.543316, -0.837934, -0.051707,
		-0.803087, 0.536695, -0.258862,
		9.892153, 15.785010, 26.075527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.037837, 14.938805, 25.879303>,  <10.454313, 15.409325, 26.256729>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.037837, 14.938805, 25.879303> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.916410, 15.305466, 25.775307>,  <9.843554, 15.525462, 25.712910>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.916410, 15.305466, 25.775307>,  <10.037837, 14.938805, 25.879303>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.916410, 15.305466, 25.775307> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265308, -0.180755, -0.947068,
		-0.915128, -0.356476, -0.188324,
		-0.303567, 0.916653, -0.259990,
		9.825340, 15.580462, 25.697309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.612444, 14.858644, 25.339287>,  <10.037837, 14.938805, 25.879303>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.612444, 14.858644, 25.339287> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.763099, 15.229005, 25.327612>,  <9.853492, 15.451221, 25.320606>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.763099, 15.229005, 25.327612>,  <9.612444, 14.858644, 25.339287>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.763099, 15.229005, 25.327612> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211995, -0.116821, -0.970264,
		-0.901778, 0.359250, -0.240285,
		0.376637, 0.925901, -0.029188,
		9.876090, 15.506775, 25.318855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.408171, 15.118473, 24.758108>,  <9.612444, 14.858644, 25.339287>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.408171, 15.118473, 24.758108> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.715627, 15.365578, 24.824516>,  <9.900101, 15.513841, 24.864361>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.715627, 15.365578, 24.824516>,  <9.408171, 15.118473, 24.758108>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.715627, 15.365578, 24.824516> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117703, 0.118522, -0.985951,
		-0.628760, 0.777382, 0.018389,
		0.768640, 0.617762, 0.166022,
		9.946218, 15.550906, 24.874323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.421181, 15.540915, 24.245363>,  <9.408171, 15.118473, 24.758108>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.421181, 15.540915, 24.245363> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.787439, 15.630486, 24.378899>,  <10.007195, 15.684229, 24.459019>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.787439, 15.630486, 24.378899>,  <9.421181, 15.540915, 24.245363>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.787439, 15.630486, 24.378899> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308221, 0.142023, -0.940654,
		-0.258052, 0.964202, 0.061023,
		0.915647, 0.223929, 0.333837,
		10.062134, 15.697665, 24.479050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.591581, 16.113018, 23.920929>,  <9.421181, 15.540915, 24.245363>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.591581, 16.113018, 23.920929> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.937893, 15.932492, 24.007410>,  <10.145679, 15.824178, 24.059299>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.937893, 15.932492, 24.007410>,  <9.591581, 16.113018, 23.920929>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.937893, 15.932492, 24.007410> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278301, 0.075163, -0.957548,
		0.415903, 0.889195, 0.190675,
		0.865779, -0.451312, 0.216203,
		10.197627, 15.797098, 24.072271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.083208, 16.686211, 23.746403>,  <9.591581, 16.113018, 23.920929>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.083208, 16.686211, 23.746403> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.278153, 16.337057, 23.755821>,  <10.395121, 16.127565, 23.761473>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.278153, 16.337057, 23.755821>,  <10.083208, 16.686211, 23.746403>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.278153, 16.337057, 23.755821> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475595, 0.242735, -0.845512,
		0.732316, 0.423269, 0.533438,
		0.487363, -0.872882, 0.023546,
		10.424362, 16.075193, 23.762884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.633442, 16.823324, 23.412642>,  <10.083208, 16.686211, 23.746403>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.633442, 16.823324, 23.412642> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.638810, 16.425137, 23.374987>,  <10.642031, 16.186224, 23.352394>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.638810, 16.425137, 23.374987>,  <10.633442, 16.823324, 23.412642>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.638810, 16.425137, 23.374987> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469324, 0.089404, -0.878488,
		0.882924, -0.032392, 0.468397,
		0.013420, -0.995469, -0.094139,
		10.642837, 16.126495, 23.346745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.298637, 16.687513, 23.270590>,  <10.633442, 16.823324, 23.412642>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.298637, 16.687513, 23.270590> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.086285, 16.363010, 23.172586>,  <10.958873, 16.168308, 23.113785>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.086285, 16.363010, 23.172586>,  <11.298637, 16.687513, 23.270590>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.086285, 16.363010, 23.172586> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447967, -0.023226, -0.893748,
		0.719368, -0.584230, 0.375746,
		-0.530882, -0.811256, -0.245008,
		10.927020, 16.119635, 23.099085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<28.391884, 25.491369, 8.845246> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.523905, 25.852713, 8.954797>,  <28.603117, 26.069519, 9.020527>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.523905, 25.852713, 8.954797>,  <28.391884, 25.491369, 8.845246>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.523905, 25.852713, 8.954797> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096273, 0.256408, -0.961762,
		-0.939041, 0.343797, -0.002341,
		0.330051, 0.903360, 0.273875,
		28.622919, 26.123720, 9.036960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.195211, 24.929296, 8.502867>,  <28.391884, 25.491369, 8.845246>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.195211, 24.929296, 8.502867> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.980204, 25.066839, 8.194883>,  <27.851198, 25.149364, 8.010094>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.980204, 25.066839, 8.194883>,  <28.195211, 24.929296, 8.502867>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.980204, 25.066839, 8.194883> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314461, -0.765479, -0.561388,
		-0.782428, -0.543876, 0.303324,
		-0.537513, 0.343862, -0.769960,
		27.818947, 25.169996, 7.963896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.975056, 24.253077, 8.292986>,  <28.195211, 24.929296, 8.502867>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.975056, 24.253077, 8.292986> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.935019, 24.533508, 8.010577>,  <27.910995, 24.701767, 7.841132>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.935019, 24.533508, 8.010577>,  <27.975056, 24.253077, 8.292986>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.935019, 24.533508, 8.010577> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519270, -0.568477, -0.638117,
		-0.848728, -0.430487, -0.307150,
		-0.100093, 0.701082, -0.706021,
		27.904991, 24.743834, 7.798771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.094902, 24.127550, 8.991313>,  <27.975056, 24.253077, 8.292986>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.094902, 24.127550, 8.991313> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.397469, 23.871410, 8.937966>,  <28.579008, 23.717728, 8.905958>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.397469, 23.871410, 8.937966>,  <28.094902, 24.127550, 8.991313>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.397469, 23.871410, 8.937966> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622494, 0.642151, 0.447374,
		-0.200833, -0.421421, 0.884347,
		0.756418, -0.640348, -0.133367,
		28.624393, 23.679306, 8.897956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.635275, 24.044577, 9.661582>,  <28.094902, 24.127550, 8.991313>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.635275, 24.044577, 9.661582> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.767742, 24.146288, 10.025047>,  <27.847221, 24.207315, 10.243127>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.767742, 24.146288, 10.025047>,  <27.635275, 24.044577, 9.661582>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.767742, 24.146288, 10.025047> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.856933, -0.322045, 0.402433,
		0.394962, -0.911937, 0.111252,
		0.331166, 0.254281, 0.908664,
		27.867092, 24.222572, 10.297647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.664923, 23.398165, 10.014312>,  <27.635275, 24.044577, 9.661582>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.664923, 23.398165, 10.014312> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.598198, 23.728031, 10.230495>,  <27.558163, 23.925951, 10.360206>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.598198, 23.728031, 10.230495>,  <27.664923, 23.398165, 10.014312>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.598198, 23.728031, 10.230495> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.837166, -0.408040, 0.364220,
		0.520890, -0.391698, 0.758450,
		-0.166814, 0.824667, 0.540460,
		27.548153, 23.975431, 10.392633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.639652, 23.213884, 10.790583>,  <27.664923, 23.398165, 10.014312>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.639652, 23.213884, 10.790583> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.414473, 23.538116, 10.726026>,  <27.279364, 23.732655, 10.687291>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.414473, 23.538116, 10.726026>,  <27.639652, 23.213884, 10.790583>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.414473, 23.538116, 10.726026> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.761302, -0.432552, 0.483030,
		0.321723, 0.394791, 0.860601,
		-0.562951, 0.810579, -0.161393,
		27.245586, 23.781290, 10.677608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.351583, 23.444571, 11.392122>,  <27.639652, 23.213884, 10.790583>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.351583, 23.444571, 11.392122> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.129154, 23.517397, 11.067744>,  <26.995697, 23.561092, 10.873117>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.129154, 23.517397, 11.067744>,  <27.351583, 23.444571, 11.392122>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.129154, 23.517397, 11.067744> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.777286, -0.459406, 0.429852,
		-0.294291, 0.869366, 0.396983,
		-0.556075, 0.182067, -0.810945,
		26.962332, 23.572018, 10.824461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.668665, 23.715225, 11.569841>,  <27.351583, 23.444571, 11.392122>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.668665, 23.715225, 11.569841> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.653635, 23.469187, 11.254818>,  <26.644617, 23.321564, 11.065804>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.653635, 23.469187, 11.254818>,  <26.668665, 23.715225, 11.569841>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.653635, 23.469187, 11.254818> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.773002, -0.481567, 0.412990,
		-0.633290, 0.624301, -0.457375,
		-0.037574, -0.615094, -0.787558,
		26.642363, 23.284658, 11.018551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.985376, 23.734690, 11.230186>,  <26.668665, 23.715225, 11.569841>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.985376, 23.734690, 11.230186> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.177769, 23.388145, 11.176413>,  <26.293205, 23.180218, 11.144148>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.177769, 23.388145, 11.176413>,  <25.985376, 23.734690, 11.230186>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.177769, 23.388145, 11.176413> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.839905, -0.499304, 0.212732,
		-0.251427, 0.010592, -0.967818,
		0.480982, -0.866362, -0.134435,
		26.322063, 23.128237, 11.136083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.450573, 23.328888, 10.940572>,  <25.985376, 23.734690, 11.230186>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.450573, 23.328888, 10.940572> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.729803, 23.077469, 11.077754>,  <25.897341, 22.926619, 11.160063>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.729803, 23.077469, 11.077754>,  <25.450573, 23.328888, 10.940572>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.729803, 23.077469, 11.077754> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.714949, -0.638091, 0.285811,
		0.039192, -0.444714, -0.894815,
		0.698077, -0.628545, 0.342955,
		25.939226, 22.888905, 11.180640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.283604, 22.619785, 10.566251>,  <25.450573, 23.328888, 10.940572>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.283604, 22.619785, 10.566251> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.489191, 22.559650, 10.904063>,  <25.612543, 22.523569, 11.106750>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.489191, 22.559650, 10.904063>,  <25.283604, 22.619785, 10.566251>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.489191, 22.559650, 10.904063> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.778033, -0.496313, 0.385147,
		0.361250, -0.855027, -0.372058,
		0.513969, -0.150339, 0.844532,
		25.643381, 22.514549, 11.157423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.243849, 21.898039, 10.707560>,  <25.283604, 22.619785, 10.566251>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.243849, 21.898039, 10.707560> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.355896, 22.056217, 11.057452>,  <25.423124, 22.151125, 11.267387>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.355896, 22.056217, 11.057452>,  <25.243849, 21.898039, 10.707560>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.355896, 22.056217, 11.057452> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.761940, -0.462691, 0.453172,
		0.583936, -0.793434, 0.171699,
		0.280119, 0.395448, 0.874731,
		25.439932, 22.174850, 11.319872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.341749, 21.280437, 11.115778>,  <25.243849, 21.898039, 10.707560>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.341749, 21.280437, 11.115778> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.264593, 21.619062, 11.314220>,  <25.218300, 21.822237, 11.433286>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.264593, 21.619062, 11.314220>,  <25.341749, 21.280437, 11.115778>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.264593, 21.619062, 11.314220> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.724360, -0.463911, 0.509989,
		0.661888, -0.260989, 0.702701,
		-0.192889, 0.846565, 0.496107,
		25.206726, 21.873032, 11.463053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.238493, 21.082556, 11.812728>,  <25.341749, 21.280437, 11.115778>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.238493, 21.082556, 11.812728> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.101200, 21.457842, 11.830379>,  <25.018824, 21.683014, 11.840969>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.101200, 21.457842, 11.830379>,  <25.238493, 21.082556, 11.812728>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.101200, 21.457842, 11.830379> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.733270, -0.297023, 0.611631,
		0.586948, 0.177574, 0.789911,
		-0.343231, 0.938214, 0.044128,
		24.998230, 21.739305, 11.843616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.121075, 21.261683, 12.551536>,  <25.238493, 21.082556, 11.812728>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.121075, 21.261683, 12.551536> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.880995, 21.469788, 12.308526>,  <24.736946, 21.594650, 12.162721>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.880995, 21.469788, 12.308526>,  <25.121075, 21.261683, 12.551536>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.880995, 21.469788, 12.308526> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.799094, -0.357032, 0.483712,
		0.034752, 0.775793, 0.630030,
		-0.600201, 0.520263, -0.607524,
		24.700933, 21.625866, 12.126269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.674740, 21.530949, 13.035577>,  <25.121075, 21.261683, 12.551536>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.674740, 21.530949, 13.035577> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.490011, 21.587923, 12.685392>,  <24.379173, 21.622108, 12.475282>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.490011, 21.587923, 12.685392>,  <24.674740, 21.530949, 13.035577>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.490011, 21.587923, 12.685392> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.886413, -0.109165, 0.449839,
		-0.031495, 0.983765, 0.176673,
		-0.461822, 0.142438, -0.875461,
		24.351465, 21.630655, 12.422754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.089296, 21.924688, 13.223726>,  <24.674740, 21.530949, 13.035577>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.089296, 21.924688, 13.223726> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.010624, 21.774698, 12.861354>,  <23.963421, 21.684704, 12.643930>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.010624, 21.774698, 12.861354>,  <24.089296, 21.924688, 13.223726>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.010624, 21.774698, 12.861354> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.942152, -0.183500, 0.280496,
		-0.271417, 0.908692, -0.317195,
		-0.196679, -0.374977, -0.905931,
		23.951620, 21.662205, 12.589575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.359638, 22.166260, 13.061417>,  <24.089296, 21.924688, 13.223726>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.359638, 22.166260, 13.061417> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.405640, 21.870630, 12.795923>,  <23.433241, 21.693253, 12.636627>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.405640, 21.870630, 12.795923>,  <23.359638, 22.166260, 13.061417>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.405640, 21.870630, 12.795923> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.910598, -0.345448, 0.226884,
		-0.396969, 0.578303, -0.712728,
		0.115003, -0.739075, -0.663734,
		23.440140, 21.648907, 12.596804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.656851, 22.082956, 12.705556>,  <23.359638, 22.166260, 13.061417>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.656851, 22.082956, 12.705556> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.869074, 21.745314, 12.674598>,  <22.996408, 21.542728, 12.656023>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.869074, 21.745314, 12.674598>,  <22.656851, 22.082956, 12.705556>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.869074, 21.745314, 12.674598> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.819537, -0.534140, 0.207493,
		-0.216487, -0.046658, -0.975170,
		0.530559, -0.844107, -0.077396,
		23.028242, 21.492081, 12.651379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.293833, 21.744207, 12.210208>,  <22.656851, 22.082956, 12.705556>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.293833, 21.744207, 12.210208> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.527224, 21.464867, 12.376033>,  <22.667257, 21.297262, 12.475528>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.527224, 21.464867, 12.376033>,  <22.293833, 21.744207, 12.210208>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.527224, 21.464867, 12.376033> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.753513, -0.655931, -0.044415,
		0.302941, -0.286463, -0.908937,
		0.583477, -0.698350, 0.414562,
		22.702267, 21.255362, 12.500401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.175951, 21.176668, 11.833804>,  <22.293833, 21.744207, 12.210208>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.175951, 21.176668, 11.833804> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.307741, 21.030809, 12.182167>,  <22.386814, 20.943295, 12.391185>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.307741, 21.030809, 12.182167>,  <22.175951, 21.176668, 11.833804>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.307741, 21.030809, 12.182167> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612727, -0.784367, -0.096610,
		0.718340, -0.501799, -0.481856,
		0.329473, -0.364645, 0.870908,
		22.406584, 20.921415, 12.443439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.412502, 20.461744, 11.725689>,  <22.175951, 21.176668, 11.833804>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.412502, 20.461744, 11.725689> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.298006, 20.505466, 12.106450>,  <22.229307, 20.531700, 12.334907>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.298006, 20.505466, 12.106450>,  <22.412502, 20.461744, 11.725689>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.298006, 20.505466, 12.106450> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610215, -0.786740, -0.093154,
		0.738717, -0.607530, 0.291898,
		-0.286242, 0.109307, 0.951902,
		22.212133, 20.538258, 12.392021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.193872, 19.803230, 11.941094>,  <22.412502, 20.461744, 11.725689>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.193872, 19.803230, 11.941094> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.041729, 20.021812, 12.239548>,  <21.950443, 20.152962, 12.418620>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.041729, 20.021812, 12.239548>,  <22.193872, 19.803230, 11.941094>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.041729, 20.021812, 12.239548> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607381, -0.755995, 0.244050,
		0.697436, -0.360362, 0.619454,
		-0.380358, 0.546453, 0.746134,
		21.927622, 20.185749, 12.463388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.108494, 19.356651, 12.529093>,  <22.193872, 19.803230, 11.941094>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.108494, 19.356651, 12.529093> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.874992, 19.672453, 12.604896>,  <21.734892, 19.861935, 12.650377>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.874992, 19.672453, 12.604896>,  <22.108494, 19.356651, 12.529093>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.874992, 19.672453, 12.604896> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649452, -0.594119, 0.474589,
		0.487279, 0.153968, 0.859565,
		-0.583756, 0.789504, 0.189507,
		21.699865, 19.909304, 12.661748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.975994, 19.374958, 13.243111>,  <22.108494, 19.356651, 12.529093>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.975994, 19.374958, 13.243111> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.673538, 19.564955, 13.063051>,  <21.492065, 19.678953, 12.955015>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.673538, 19.564955, 13.063051>,  <21.975994, 19.374958, 13.243111>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.673538, 19.564955, 13.063051> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647758, -0.641075, 0.411621,
		-0.093063, 0.602831, 0.792423,
		-0.756141, 0.474992, -0.450149,
		21.446695, 19.707453, 12.928006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.514505, 19.604702, 13.800594>,  <21.975994, 19.374958, 13.243111>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.514505, 19.604702, 13.800594> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.309175, 19.577541, 13.458393>,  <21.185978, 19.561245, 13.253073>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.309175, 19.577541, 13.458393>,  <21.514505, 19.604702, 13.800594>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.309175, 19.577541, 13.458393> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.733364, -0.483042, 0.478379,
		-0.445728, 0.872960, 0.198160,
		-0.513326, -0.067903, -0.855503,
		21.155178, 19.557171, 13.201742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.861849, 19.450619, 14.014077>,  <21.514505, 19.604702, 13.800594>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.861849, 19.450619, 14.014077> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.797184, 19.406313, 13.621833>,  <20.758385, 19.379730, 13.386486>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.797184, 19.406313, 13.621833>,  <20.861849, 19.450619, 14.014077>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.797184, 19.406313, 13.621833> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.718094, -0.668394, 0.193881,
		-0.676909, 0.735514, 0.028516,
		-0.161663, -0.110763, -0.980610,
		20.748686, 19.373085, 13.327650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.060677, 19.537811, 13.840020>,  <20.861849, 19.450619, 14.014077>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.060677, 19.537811, 13.840020> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.273212, 19.311560, 13.587753>,  <20.400734, 19.175808, 13.436393>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.273212, 19.311560, 13.587753>,  <20.060677, 19.537811, 13.840020>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.273212, 19.311560, 13.587753> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606402, -0.773790, 0.183099,
		-0.591571, 0.285151, -0.754143,
		0.531338, -0.565631, -0.630668,
		20.432613, 19.141870, 13.398553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.590460, 19.043310, 13.651661>,  <20.060677, 19.537811, 13.840020>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.590460, 19.043310, 13.651661> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.917286, 18.867119, 13.502863>,  <20.113382, 18.761404, 13.413585>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.917286, 18.867119, 13.502863>,  <19.590460, 19.043310, 13.651661>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.917286, 18.867119, 13.502863> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392764, -0.897593, 0.200158,
		-0.422065, -0.017437, -0.906398,
		0.817066, -0.440480, -0.371994,
		20.162405, 18.734974, 13.391265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.341261, 18.633982, 13.056607>,  <19.590460, 19.043310, 13.651661>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.341261, 18.633982, 13.056607> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.691011, 18.498617, 13.195716>,  <19.900862, 18.417398, 13.279181>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.691011, 18.498617, 13.195716>,  <19.341261, 18.633982, 13.056607>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.691011, 18.498617, 13.195716> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405972, -0.902744, 0.142264,
		0.265805, -0.265577, -0.926724,
		0.874377, -0.338410, 0.347771,
		19.953325, 18.397095, 13.300047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.387405, 17.963093, 12.778170>,  <19.341261, 18.633982, 13.056607>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.387405, 17.963093, 12.778170> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.627546, 17.973694, 13.097889>,  <19.771631, 17.980055, 13.289721>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.627546, 17.973694, 13.097889>,  <19.387405, 17.963093, 12.778170>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.627546, 17.973694, 13.097889> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154999, -0.976644, 0.148800,
		0.784572, -0.213223, -0.582222,
		0.600351, 0.026501, 0.799297,
		19.807652, 17.981644, 13.337678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.672186, 17.280518, 12.608347>,  <19.387405, 17.963093, 12.778170>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.672186, 17.280518, 12.608347> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.705904, 17.423143, 12.980531>,  <19.726135, 17.508718, 13.203841>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.705904, 17.423143, 12.980531>,  <19.672186, 17.280518, 12.608347>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.705904, 17.423143, 12.980531> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173697, -0.914228, 0.366082,
		0.981185, -0.192478, -0.015132,
		0.084297, 0.356566, 0.930459,
		19.731194, 17.530113, 13.259668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.166079, 16.805655, 12.985262>,  <19.672186, 17.280518, 12.608347>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.166079, 16.805655, 12.985262> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.948839, 16.992298, 13.264496>,  <19.818495, 17.104284, 13.432036>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.948839, 16.992298, 13.264496>,  <20.166079, 16.805655, 12.985262>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.948839, 16.992298, 13.264496> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127185, -0.776074, 0.617684,
		0.829981, 0.424249, 0.362138,
		-0.543098, 0.466608, 0.698085,
		19.785910, 17.132280, 13.473921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.466938, 16.762554, 13.526153>,  <20.166079, 16.805655, 12.985262>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.466938, 16.762554, 13.526153> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.093641, 16.796680, 13.665739>,  <19.869663, 16.817156, 13.749491>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.093641, 16.796680, 13.665739>,  <20.466938, 16.762554, 13.526153>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.093641, 16.796680, 13.665739> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089966, -0.884932, 0.456948,
		0.347797, 0.457839, 0.818181,
		-0.933244, 0.085316, 0.348967,
		19.813667, 16.822275, 13.770429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.071447, 16.520311, 13.905406>,  <20.466938, 16.762554, 13.526153>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.071447, 16.520311, 13.905406> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.426382, 16.338095, 13.876785>,  <21.639343, 16.228765, 13.859612>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.426382, 16.338095, 13.876785>,  <21.071447, 16.520311, 13.905406>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.426382, 16.338095, 13.876785> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365147, 0.788895, -0.494280,
		0.281612, 0.412465, 0.866353,
		0.887335, -0.455541, -0.071552,
		21.692583, 16.201433, 13.855320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.620632, 16.982807, 14.088024>,  <21.071447, 16.520311, 13.905406>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.620632, 16.982807, 14.088024> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.791979, 16.691454, 13.874123>,  <21.894787, 16.516642, 13.745782>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.791979, 16.691454, 13.874123>,  <21.620632, 16.982807, 14.088024>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.791979, 16.691454, 13.874123> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245985, 0.663449, -0.706631,
		0.869480, 0.171154, 0.463369,
		0.428364, -0.728383, -0.534754,
		21.920488, 16.472939, 13.713696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.287333, 17.362757, 13.853443>,  <21.620632, 16.982807, 14.088024>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.287333, 17.362757, 13.853443> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.248075, 17.040537, 13.619705>,  <22.224522, 16.847204, 13.479463>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.248075, 17.040537, 13.619705>,  <22.287333, 17.362757, 13.853443>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.248075, 17.040537, 13.619705> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508494, 0.464151, -0.725257,
		0.855454, -0.368314, 0.364065,
		-0.098141, -0.805549, -0.584345,
		22.218634, 16.798872, 13.444402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.945522, 17.218870, 13.689870>,  <22.287333, 17.362757, 13.853443>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.945522, 17.218870, 13.689870> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.714048, 17.059999, 13.404950>,  <22.575163, 16.964676, 13.233998>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.714048, 17.059999, 13.404950>,  <22.945522, 17.218870, 13.689870>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.714048, 17.059999, 13.404950> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557890, 0.444288, -0.700976,
		0.594879, -0.803030, -0.035521,
		-0.578686, -0.397178, -0.712300,
		22.540443, 16.940845, 13.191260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.354548, 16.957869, 13.148690>,  <22.945522, 17.218870, 13.689870>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.354548, 16.957869, 13.148690> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.006899, 16.947834, 12.951106>,  <22.798309, 16.941813, 12.832556>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.006899, 16.947834, 12.951106>,  <23.354548, 16.957869, 13.148690>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.006899, 16.947834, 12.951106> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479854, 0.199259, -0.854421,
		0.119865, -0.979626, -0.161140,
		-0.869122, -0.025091, -0.493962,
		22.746162, 16.940308, 12.802917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.444410, 16.543482, 12.561990>,  <23.354548, 16.957869, 13.148690>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.444410, 16.543482, 12.561990> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.122280, 16.769772, 12.491102>,  <22.929003, 16.905546, 12.448569>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.122280, 16.769772, 12.491102>,  <23.444410, 16.543482, 12.561990>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.122280, 16.769772, 12.491102> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388841, 0.278410, -0.878231,
		-0.447500, -0.776171, -0.444188,
		-0.805324, 0.565726, -0.177219,
		22.880682, 16.939489, 12.437937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.347328, 16.468365, 11.935495>,  <23.444410, 16.543482, 12.561990>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.347328, 16.468365, 11.935495> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.129807, 16.794846, 12.013565>,  <22.999294, 16.990734, 12.060407>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.129807, 16.794846, 12.013565>,  <23.347328, 16.468365, 11.935495>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.129807, 16.794846, 12.013565> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163924, 0.331396, -0.929143,
		-0.823048, -0.473277, -0.314009,
		-0.543803, 0.816202, 0.195173,
		22.966665, 17.039707, 12.072117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.870947, 16.587969, 11.389465>,  <23.347328, 16.468365, 11.935495>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.870947, 16.587969, 11.389465> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.949471, 16.940941, 11.560476>,  <22.996584, 17.152723, 11.663083>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.949471, 16.940941, 11.560476>,  <22.870947, 16.587969, 11.389465>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.949471, 16.940941, 11.560476> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130754, 0.408560, -0.903318,
		-0.971785, 0.233231, -0.035177,
		0.196309, 0.882430, 0.427528,
		23.008364, 17.205669, 11.688735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.537050, 17.123844, 10.935798>,  <22.870947, 16.587969, 11.389465>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.537050, 17.123844, 10.935798> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.806469, 17.330851, 11.146895>,  <22.968121, 17.455055, 11.273554>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.806469, 17.330851, 11.146895>,  <22.537050, 17.123844, 10.935798>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.806469, 17.330851, 11.146895> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219897, 0.541366, -0.811522,
		-0.705678, 0.662646, 0.250835,
		0.673546, 0.517515, 0.527744,
		23.008533, 17.486105, 11.305219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.424181, 17.850325, 10.751956>,  <22.537050, 17.123844, 10.935798>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.424181, 17.850325, 10.751956> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.799891, 17.859457, 10.888920>,  <23.025316, 17.864937, 10.971098>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.799891, 17.859457, 10.888920>,  <22.424181, 17.850325, 10.751956>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.799891, 17.859457, 10.888920> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273250, 0.553867, -0.786490,
		-0.207604, 0.832292, 0.513994,
		0.939274, 0.022830, 0.342409,
		23.081673, 17.866306, 10.991643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.701845, 18.479454, 10.525873>,  <22.424181, 17.850325, 10.751956>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.701845, 18.479454, 10.525873> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.030003, 18.271152, 10.620336>,  <23.226896, 18.146172, 10.677013>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.030003, 18.271152, 10.620336>,  <22.701845, 18.479454, 10.525873>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.030003, 18.271152, 10.620336> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473706, 0.387669, -0.790769,
		0.320245, 0.760611, 0.564726,
		0.820394, -0.520753, 0.236157,
		23.276121, 18.114927, 10.691182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.187487, 18.940708, 10.526263>,  <22.701845, 18.479454, 10.525873>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.187487, 18.940708, 10.526263> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.395903, 18.601852, 10.484561>,  <23.520952, 18.398539, 10.459539>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.395903, 18.601852, 10.484561>,  <23.187487, 18.940708, 10.526263>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.395903, 18.601852, 10.484561> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650255, 0.473099, -0.594428,
		0.552887, 0.241929, 0.797362,
		0.521041, -0.847140, -0.104254,
		23.552216, 18.347710, 10.453284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.847576, 19.162228, 10.587646>,  <23.187487, 18.940708, 10.526263>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.847576, 19.162228, 10.587646> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.864683, 18.802874, 10.412796>,  <23.874947, 18.587261, 10.307886>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.864683, 18.802874, 10.412796>,  <23.847576, 19.162228, 10.587646>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.864683, 18.802874, 10.412796> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579893, 0.378604, -0.721376,
		0.813569, -0.222635, 0.537159,
		0.042767, -0.898384, -0.437125,
		23.877514, 18.533358, 10.281658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.602766, 18.981171, 10.475119>,  <23.847576, 19.162228, 10.587646>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.602766, 18.981171, 10.475119> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.375340, 18.790939, 10.206624>,  <24.238884, 18.676802, 10.045527>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.375340, 18.790939, 10.206624>,  <24.602766, 18.981171, 10.475119>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.375340, 18.790939, 10.206624> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385226, 0.567040, -0.728057,
		0.726865, -0.672526, -0.139195,
		-0.568566, -0.475578, -0.671237,
		24.204769, 18.648266, 10.005253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.097752, 18.787128, 9.946835>,  <24.602766, 18.981171, 10.475119>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.097752, 18.787128, 9.946835> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.741207, 18.784792, 9.765533>,  <24.527281, 18.783390, 9.656753>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.741207, 18.784792, 9.765533>,  <25.097752, 18.787128, 9.946835>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.741207, 18.784792, 9.765533> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420559, 0.362406, -0.831741,
		0.169119, -0.932002, -0.320579,
		-0.891364, -0.005841, -0.453251,
		24.473799, 18.783039, 9.629558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.276224, 18.688396, 9.364275>,  <25.097752, 18.787128, 9.946835>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.276224, 18.688396, 9.364275> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.901720, 18.819490, 9.313662>,  <24.677017, 18.898146, 9.283294>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.901720, 18.819490, 9.313662>,  <25.276224, 18.688396, 9.364275>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.901720, 18.819490, 9.313662> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296026, 0.542022, -0.786499,
		-0.189178, -0.773824, -0.604490,
		-0.936258, 0.327733, -0.126534,
		24.620842, 18.917810, 9.275702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.175785, 18.580778, 8.768826>,  <25.276224, 18.688396, 9.364275>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.175785, 18.580778, 8.768826> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.875059, 18.840612, 8.814096>,  <24.694622, 18.996513, 8.841258>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.875059, 18.840612, 8.814096>,  <25.175785, 18.580778, 8.768826>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.875059, 18.840612, 8.814096> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244783, 0.434336, -0.866853,
		-0.612252, -0.624011, -0.485549,
		-0.751817, 0.649586, 0.113175,
		24.649513, 19.035488, 8.848049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<15.227122, 18.400751, 19.745262> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.136050, 18.013929, 19.699717>,  <15.081407, 17.781836, 19.672390>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.136050, 18.013929, 19.699717>,  <15.227122, 18.400751, 19.745262>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.136050, 18.013929, 19.699717> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552897, -0.032136, -0.832630,
		0.801540, -0.252528, 0.541999,
		-0.227680, -0.967056, -0.113863,
		15.067746, 17.723812, 19.665558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.847971, 18.058203, 19.559046>,  <15.227122, 18.400751, 19.745262>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.847971, 18.058203, 19.559046> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.535917, 17.839161, 19.438038>,  <15.348685, 17.707737, 19.365433>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.535917, 17.839161, 19.438038>,  <15.847971, 18.058203, 19.559046>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.535917, 17.839161, 19.438038> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447575, -0.150670, -0.881462,
		0.437111, -0.823061, 0.362636,
		-0.780135, -0.547604, -0.302522,
		15.301877, 17.674879, 19.347281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.177864, 17.595840, 19.137981>,  <15.847971, 18.058203, 19.559046>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.177864, 17.595840, 19.137981> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.798594, 17.514997, 19.039911>,  <15.571031, 17.466492, 18.981070>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.798594, 17.514997, 19.039911>,  <16.177864, 17.595840, 19.137981>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.798594, 17.514997, 19.039911> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304913, -0.361767, -0.880995,
		0.089360, -0.910097, 0.404645,
		-0.948179, -0.202107, -0.245173,
		15.514140, 17.454365, 18.966360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.130730, 16.849779, 18.827982>,  <16.177864, 17.595840, 19.137981>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.130730, 16.849779, 18.827982> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.831928, 17.086061, 18.705965>,  <15.652647, 17.227831, 18.632755>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.831928, 17.086061, 18.705965>,  <16.130730, 16.849779, 18.827982>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.831928, 17.086061, 18.705965> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071538, -0.384750, -0.920244,
		-0.660960, -0.709248, 0.245152,
		-0.747004, 0.590707, -0.305043,
		15.607827, 17.263273, 18.614452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.616559, 16.441782, 18.526485>,  <16.130730, 16.849779, 18.827982>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.616559, 16.441782, 18.526485> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.587343, 16.798374, 18.347633>,  <15.569814, 17.012329, 18.240322>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.587343, 16.798374, 18.347633>,  <15.616559, 16.441782, 18.526485>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.587343, 16.798374, 18.347633> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042656, -0.445126, -0.894451,
		-0.996416, -0.084403, -0.005515,
		-0.073039, 0.891481, -0.447131,
		15.565432, 17.065819, 18.213493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.270168, 16.281065, 17.820393>,  <15.616559, 16.441782, 18.526485>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.270168, 16.281065, 17.820393> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.396799, 16.660011, 17.801292>,  <15.472777, 16.887379, 17.789833>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.396799, 16.660011, 17.801292>,  <15.270168, 16.281065, 17.820393>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.396799, 16.660011, 17.801292> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127315, -0.007447, -0.991834,
		-0.939984, 0.320071, 0.118256,
		0.316576, 0.947364, -0.047750,
		15.491772, 16.944221, 17.786968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.804319, 16.600519, 17.371946>,  <15.270168, 16.281065, 17.820393>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.804319, 16.600519, 17.371946> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.130615, 16.831795, 17.365435>,  <15.326393, 16.970560, 17.361526>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.130615, 16.831795, 17.365435>,  <14.804319, 16.600519, 17.371946>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.130615, 16.831795, 17.365435> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063829, 0.062006, -0.996033,
		-0.574885, 0.813543, 0.087486,
		0.815741, 0.578189, -0.016281,
		15.375338, 17.005251, 17.360550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.700322, 17.245770, 16.997147>,  <14.804319, 16.600519, 17.371946>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.700322, 17.245770, 16.997147> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.095437, 17.187286, 16.975607>,  <15.332506, 17.152197, 16.962683>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.095437, 17.187286, 16.975607>,  <14.700322, 17.245770, 16.997147>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.095437, 17.187286, 16.975607> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074954, -0.142922, -0.986892,
		0.136594, 0.978875, -0.152136,
		0.987787, -0.146207, -0.053848,
		15.391773, 17.143425, 16.959452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.907545, 17.592236, 16.306026>,  <14.700322, 17.245770, 16.997147>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.907545, 17.592236, 16.306026> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.205509, 17.345882, 16.408630>,  <15.384288, 17.198071, 16.470194>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.205509, 17.345882, 16.408630>,  <14.907545, 17.592236, 16.306026>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.205509, 17.345882, 16.408630> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034943, -0.347938, -0.936866,
		0.666248, 0.706845, -0.237662,
		0.744911, -0.615881, 0.256512,
		15.428983, 17.161118, 16.485584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.450930, 17.688784, 15.827152>,  <14.907545, 17.592236, 16.306026>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.450930, 17.688784, 15.827152> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.504500, 17.323414, 15.980890>,  <15.536643, 17.104193, 16.073133>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.504500, 17.323414, 15.980890>,  <15.450930, 17.688784, 15.827152>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.504500, 17.323414, 15.980890> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159263, -0.402637, -0.901398,
		0.978110, 0.059509, -0.199398,
		0.133927, -0.913423, 0.384346,
		15.544679, 17.049387, 16.096193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.954672, 17.436966, 15.438159>,  <15.450930, 17.688784, 15.827152>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.954672, 17.436966, 15.438159> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.798571, 17.104103, 15.595748>,  <15.704909, 16.904385, 15.690301>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.798571, 17.104103, 15.595748>,  <15.954672, 17.436966, 15.438159>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.798571, 17.104103, 15.595748> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006816, -0.430501, -0.902564,
		0.920682, -0.349544, 0.173677,
		-0.390254, -0.832159, 0.393972,
		15.681495, 16.854456, 15.713940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.418831, 16.966909, 15.235860>,  <15.954672, 17.436966, 15.438159>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.418831, 16.966909, 15.235860> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.064022, 16.790493, 15.290521>,  <15.851137, 16.684643, 15.323318>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.064022, 16.790493, 15.290521>,  <16.418831, 16.966909, 15.235860>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.064022, 16.790493, 15.290521> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085566, -0.447849, -0.890005,
		0.453729, -0.777762, 0.434991,
		-0.887022, -0.441042, 0.136652,
		15.797915, 16.658180, 15.331516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.082712, 17.202864, 15.370849>,  <16.418831, 16.966909, 15.235860>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.082712, 17.202864, 15.370849> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.227354, 17.287592, 15.007668>,  <17.314138, 17.338428, 14.789761>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.227354, 17.287592, 15.007668>,  <17.082712, 17.202864, 15.370849>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.227354, 17.287592, 15.007668> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.925950, 0.032157, 0.376276,
		0.108900, -0.976779, -0.184507,
		0.361605, 0.211820, -0.907950,
		17.335836, 17.351137, 14.735283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.680552, 16.732527, 15.220105>,  <17.082712, 17.202864, 15.370849>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.680552, 16.732527, 15.220105> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.700201, 17.063152, 14.995827>,  <17.711990, 17.261528, 14.861259>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.700201, 17.063152, 14.995827>,  <17.680552, 16.732527, 15.220105>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.700201, 17.063152, 14.995827> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.995862, 0.002439, 0.090848,
		0.076459, -0.562838, -0.823023,
		0.049125, 0.826563, -0.560696,
		17.714939, 17.311121, 14.827618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.794033, 16.366385, 14.596974>,  <17.680552, 16.732527, 15.220105>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.794033, 16.366385, 14.596974> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.151529, 16.214903, 14.693149>,  <18.366028, 16.124014, 14.750854>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.151529, 16.214903, 14.693149>,  <17.794033, 16.366385, 14.596974>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.151529, 16.214903, 14.693149> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445874, -0.691171, 0.568752,
		-0.049205, -0.615522, -0.786582,
		0.893742, -0.378702, 0.240437,
		18.419651, 16.101292, 14.765280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.593800, 15.629229, 14.628594>,  <17.794033, 16.366385, 14.596974>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.593800, 15.629229, 14.628594> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.928673, 15.672851, 14.842971>,  <18.129597, 15.699024, 14.971597>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.928673, 15.672851, 14.842971>,  <17.593800, 15.629229, 14.628594>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.928673, 15.672851, 14.842971> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399000, -0.548430, 0.734863,
		0.374067, -0.829055, -0.415623,
		0.837182, 0.109055, 0.535942,
		18.179827, 15.705567, 15.003754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.665260, 14.895034, 14.955027>,  <17.593800, 15.629229, 14.628594>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.665260, 14.895034, 14.955027> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.887039, 15.152314, 15.166263>,  <18.020107, 15.306683, 15.293004>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.887039, 15.152314, 15.166263>,  <17.665260, 14.895034, 14.955027>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.887039, 15.152314, 15.166263> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303838, -0.434306, 0.847975,
		0.774770, -0.630613, -0.045372,
		0.554449, 0.643200, 0.528091,
		18.053373, 15.345274, 15.324690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.970205, 14.452642, 15.364405>,  <17.665260, 14.895034, 14.955027>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.970205, 14.452642, 15.364405> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.008783, 14.803252, 15.553043>,  <18.031931, 15.013618, 15.666227>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.008783, 14.803252, 15.553043>,  <17.970205, 14.452642, 15.364405>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.008783, 14.803252, 15.553043> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284347, -0.429797, 0.856984,
		0.953858, -0.216750, 0.207784,
		0.096446, 0.876524, 0.471598,
		18.037718, 15.066209, 15.694523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.206030, 14.358046, 16.033009>,  <17.970205, 14.452642, 15.364405>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.206030, 14.358046, 16.033009> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.028734, 14.715511, 16.061014>,  <17.922356, 14.929991, 16.077818>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.028734, 14.715511, 16.061014>,  <18.206030, 14.358046, 16.033009>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.028734, 14.715511, 16.061014> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211783, -0.180296, 0.960542,
		0.871026, 0.410923, 0.269177,
		-0.443241, 0.893664, 0.070016,
		17.895761, 14.983610, 16.082020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.589571, 14.695912, 16.676662>,  <18.206030, 14.358046, 16.033009>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.589571, 14.695912, 16.676662> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.258472, 14.909894, 16.608942>,  <18.059814, 15.038283, 16.568310>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.258472, 14.909894, 16.608942>,  <18.589571, 14.695912, 16.676662>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.258472, 14.909894, 16.608942> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162519, 0.060221, 0.984866,
		0.537054, 0.842732, 0.037092,
		-0.827744, 0.534954, -0.169302,
		18.010149, 15.070380, 16.558151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.657745, 15.294773, 17.129757>,  <18.589571, 14.695912, 16.676662>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.657745, 15.294773, 17.129757> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.264004, 15.272910, 17.062752>,  <18.027760, 15.259792, 17.022549>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.264004, 15.272910, 17.062752>,  <18.657745, 15.294773, 17.129757>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.264004, 15.272910, 17.062752> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173250, 0.126843, 0.976676,
		-0.032135, 0.990416, -0.134328,
		-0.984353, -0.054658, -0.167514,
		17.968699, 15.256513, 17.012497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.421062, 15.717942, 17.550856>,  <18.657745, 15.294773, 17.129757>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.421062, 15.717942, 17.550856> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.097260, 15.500842, 17.461309>,  <17.902977, 15.370582, 17.407581>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.097260, 15.500842, 17.461309>,  <18.421062, 15.717942, 17.550856>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.097260, 15.500842, 17.461309> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299006, 0.052976, 0.952780,
		-0.505262, 0.838221, -0.205170,
		-0.809509, -0.542751, -0.223867,
		17.854406, 15.338017, 17.394150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.931425, 16.034889, 17.807211>,  <18.421062, 15.717942, 17.550856>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.931425, 16.034889, 17.807211> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.787844, 15.663416, 17.769905>,  <17.701694, 15.440532, 17.747522>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.787844, 15.663416, 17.769905>,  <17.931425, 16.034889, 17.807211>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.787844, 15.663416, 17.769905> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321872, 0.029373, 0.946327,
		-0.876100, 0.369705, -0.309461,
		-0.358952, -0.928685, -0.093264,
		17.680159, 15.384810, 17.741926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.270651, 16.137987, 18.079485>,  <17.931425, 16.034889, 17.807211>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.270651, 16.137987, 18.079485> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.322422, 15.741537, 18.091587>,  <17.353485, 15.503667, 18.098848>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.322422, 15.741537, 18.091587>,  <17.270651, 16.137987, 18.079485>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.322422, 15.741537, 18.091587> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304697, -0.010719, 0.952389,
		-0.943614, -0.132485, -0.303381,
		0.129429, -0.991127, 0.030253,
		17.361250, 15.444199, 18.100662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.686398, 15.911274, 18.345314>,  <17.270651, 16.137987, 18.079485>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.686398, 15.911274, 18.345314> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.940403, 15.613166, 18.426638>,  <17.092806, 15.434301, 18.475431>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.940403, 15.613166, 18.426638>,  <16.686398, 15.911274, 18.345314>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.940403, 15.613166, 18.426638> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343459, -0.036640, 0.938453,
		-0.691951, -0.665756, -0.279237,
		0.635011, -0.745270, 0.203307,
		17.130907, 15.389585, 18.487629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.249830, 15.500640, 18.842741>,  <16.686398, 15.911274, 18.345314>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.249830, 15.500640, 18.842741> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.637503, 15.406529, 18.871958>,  <16.870106, 15.350063, 18.889488>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.637503, 15.406529, 18.871958>,  <16.249830, 15.500640, 18.842741>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.637503, 15.406529, 18.871958> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083130, -0.033237, 0.995984,
		-0.231905, -0.971360, -0.051771,
		0.969180, -0.235278, 0.073042,
		16.928257, 15.335946, 18.893869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.298382, 14.959370, 19.262657>,  <16.249830, 15.500640, 18.842741>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.298382, 14.959370, 19.262657> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.666098, 15.116389, 19.274046>,  <16.886728, 15.210601, 19.280878>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.666098, 15.116389, 19.274046>,  <16.298382, 14.959370, 19.262657>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.666098, 15.116389, 19.274046> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046326, 0.036084, 0.998274,
		0.390844, -0.919023, 0.051357,
		0.919290, 0.392549, 0.028471,
		16.941885, 15.234154, 19.282587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.534618, 14.699714, 19.889200>,  <16.298382, 14.959370, 19.262657>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.534618, 14.699714, 19.889200> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.792080, 15.000908, 19.834471>,  <16.946558, 15.181624, 19.801632>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.792080, 15.000908, 19.834471>,  <16.534618, 14.699714, 19.889200>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.792080, 15.000908, 19.834471> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009990, 0.187034, 0.982302,
		0.765250, -0.630897, 0.127908,
		0.643655, 0.752985, -0.136826,
		16.985176, 15.226804, 19.793423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.947805, 14.056692, 19.925865>,  <16.534618, 14.699714, 19.889200>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.947805, 14.056692, 19.925865> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.608801, 13.844426, 19.921497>,  <16.405397, 13.717067, 19.918877>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.608801, 13.844426, 19.921497>,  <16.947805, 14.056692, 19.925865>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.608801, 13.844426, 19.921497> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044676, 0.091825, -0.994772,
		0.528894, -0.842593, -0.101531,
		-0.847512, -0.530665, -0.010922,
		16.354548, 13.685227, 19.918221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.962929, 13.566689, 19.318846>,  <16.947805, 14.056692, 19.925865>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.962929, 13.566689, 19.318846> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.582100, 13.629474, 19.423855>,  <16.353601, 13.667145, 19.486860>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.582100, 13.629474, 19.423855>,  <16.962929, 13.566689, 19.318846>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.582100, 13.629474, 19.423855> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265732, 0.000555, -0.964047,
		-0.151464, -0.987605, 0.041181,
		-0.952074, 0.156961, 0.262522,
		16.296478, 13.676562, 19.502611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.630367, 13.009041, 18.917963>,  <16.962929, 13.566689, 19.318846>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.630367, 13.009041, 18.917963> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.364428, 13.283381, 19.036345>,  <16.204865, 13.447985, 19.107372>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.364428, 13.283381, 19.036345>,  <16.630367, 13.009041, 18.917963>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.364428, 13.283381, 19.036345> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502092, -0.116969, -0.856867,
		-0.553065, -0.718282, 0.422126,
		-0.664848, 0.685850, 0.295952,
		16.164972, 13.489136, 19.125130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.078436, 12.644555, 19.028238>,  <16.630367, 13.009041, 18.917963>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.078436, 12.644555, 19.028238> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.958838, 13.016418, 18.942129>,  <15.887079, 13.239534, 18.890463>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.958838, 13.016418, 18.942129>,  <16.078436, 12.644555, 19.028238>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.958838, 13.016418, 18.942129> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423182, -0.331375, -0.843272,
		-0.855289, -0.161034, 0.492493,
		-0.298995, 0.929655, -0.215275,
		15.869140, 13.295314, 18.877546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.397432, 12.536128, 18.743711>,  <16.078436, 12.644555, 19.028238>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.397432, 12.536128, 18.743711> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.516497, 12.894994, 18.613178>,  <15.587935, 13.110313, 18.534859>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.516497, 12.894994, 18.613178>,  <15.397432, 12.536128, 18.743711>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.516497, 12.894994, 18.613178> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320118, -0.228240, -0.919473,
		-0.899401, 0.378158, 0.219260,
		0.297662, 0.897164, -0.326334,
		15.605795, 13.164143, 18.515278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.805044, 12.720211, 18.501472>,  <15.397432, 12.536128, 18.743711>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.805044, 12.720211, 18.501472> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.094563, 12.942442, 18.337790>,  <15.268273, 13.075781, 18.239580>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.094563, 12.942442, 18.337790>,  <14.805044, 12.720211, 18.501472>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.094563, 12.942442, 18.337790> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303277, -0.276546, -0.911891,
		-0.619791, 0.784128, -0.031669,
		0.723797, 0.555577, -0.409209,
		15.311702, 13.109116, 18.215027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.469362, 13.180787, 18.007870>,  <14.805044, 12.720211, 18.501472>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.469362, 13.180787, 18.007870> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.858508, 13.142117, 17.923784>,  <15.091995, 13.118915, 17.873333>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.858508, 13.142117, 17.923784>,  <14.469362, 13.180787, 18.007870>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.858508, 13.142117, 17.923784> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230956, -0.350938, -0.907470,
		0.013960, 0.931395, -0.363743,
		0.972864, -0.096677, -0.210212,
		15.150368, 13.113113, 17.860720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.574533, 13.588709, 17.435324>,  <14.469362, 13.180787, 18.007870>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.574533, 13.588709, 17.435324> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.884413, 13.335912, 17.427092>,  <15.070341, 13.184234, 17.422153>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.884413, 13.335912, 17.427092>,  <14.574533, 13.588709, 17.435324>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.884413, 13.335912, 17.427092> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246845, -0.272303, -0.930010,
		0.582156, 0.725560, -0.366957,
		0.774701, -0.631992, -0.020578,
		15.116823, 13.146314, 17.420918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.019190, 13.655536, 16.839005>,  <14.574533, 13.588709, 17.435324>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.019190, 13.655536, 16.839005> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.126553, 13.285176, 16.945341>,  <15.190970, 13.062961, 17.009144>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.126553, 13.285176, 16.945341>,  <15.019190, 13.655536, 16.839005>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.126553, 13.285176, 16.945341> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122795, -0.306602, -0.943884,
		0.955447, 0.220701, -0.195990,
		0.268407, -0.925897, 0.265841,
		15.207075, 13.007407, 17.025093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.323433, 13.430163, 16.293573>,  <15.019190, 13.655536, 16.839005>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.323433, 13.430163, 16.293573> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.237279, 13.084967, 16.476376>,  <15.185587, 12.877849, 16.586058>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.237279, 13.084967, 16.476376>,  <15.323433, 13.430163, 16.293573>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.237279, 13.084967, 16.476376> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264929, -0.398801, -0.877936,
		0.939905, -0.310169, -0.142736,
		-0.215385, -0.862991, 0.457008,
		15.172664, 12.826069, 16.613478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.706692, 12.860827, 15.905702>,  <15.323433, 13.430163, 16.293573>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.706692, 12.860827, 15.905702> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.394211, 12.716614, 16.109560>,  <15.206722, 12.630085, 16.231874>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.394211, 12.716614, 16.109560>,  <15.706692, 12.860827, 15.905702>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.394211, 12.716614, 16.109560> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404046, -0.330325, -0.853013,
		0.475890, -0.872296, 0.112378,
		-0.781202, -0.360535, 0.509646,
		15.159850, 12.608454, 16.262453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.499478, 12.223250, 15.534557>,  <15.706692, 12.860827, 15.905702>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.499478, 12.223250, 15.534557> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.192019, 12.362419, 15.749267>,  <15.007543, 12.445920, 15.878093>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.192019, 12.362419, 15.749267>,  <15.499478, 12.223250, 15.534557>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.192019, 12.362419, 15.749267> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639281, -0.447051, -0.625672,
		0.022281, -0.824073, 0.566046,
		-0.768650, 0.347922, 0.536774,
		14.961423, 12.466796, 15.910299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<14.227776, 14.102131, 24.715187> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.584033, 14.188629, 24.875183>,  <14.797788, 14.240528, 24.971180>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.584033, 14.188629, 24.875183>,  <14.227776, 14.102131, 24.715187>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.584033, 14.188629, 24.875183> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436760, -0.651525, -0.620286,
		0.126470, 0.727154, -0.674724,
		0.890643, 0.216245, 0.399991,
		14.851226, 14.253503, 24.995180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.769009, 14.421055, 24.178026>,  <14.227776, 14.102131, 24.715187>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.769009, 14.421055, 24.178026> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.936737, 14.218369, 24.479334>,  <15.037374, 14.096758, 24.660118>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.936737, 14.218369, 24.479334>,  <14.769009, 14.421055, 24.178026>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.936737, 14.218369, 24.479334> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597861, -0.470273, -0.649158,
		0.683179, 0.722554, 0.105749,
		0.419320, -0.506714, 0.753267,
		15.062533, 14.066356, 24.705315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.600307, 14.493926, 24.199881>,  <14.769009, 14.421055, 24.178026>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.600307, 14.493926, 24.199881> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.497501, 14.149674, 24.375727>,  <15.435818, 13.943123, 24.481234>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.497501, 14.149674, 24.375727>,  <15.600307, 14.493926, 24.199881>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.497501, 14.149674, 24.375727> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559897, -0.503377, -0.658124,
		0.787693, 0.076991, 0.611239,
		-0.257014, -0.860630, 0.439613,
		15.420398, 13.891485, 24.507610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.197145, 14.091046, 24.337698>,  <15.600307, 14.493926, 24.199881>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.197145, 14.091046, 24.337698> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.902744, 13.823120, 24.298414>,  <15.726103, 13.662365, 24.274843>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.902744, 13.823120, 24.298414>,  <16.197145, 14.091046, 24.337698>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.902744, 13.823120, 24.298414> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490259, -0.427326, -0.759631,
		0.466844, -0.607241, 0.642896,
		-0.736005, -0.669815, -0.098211,
		15.681943, 13.622176, 24.268951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.579435, 13.417295, 24.193766>,  <16.197145, 14.091046, 24.337698>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.579435, 13.417295, 24.193766> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.202133, 13.379892, 24.066313>,  <15.975752, 13.357450, 23.989841>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.202133, 13.379892, 24.066313>,  <16.579435, 13.417295, 24.193766>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.202133, 13.379892, 24.066313> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323191, -0.478887, -0.816220,
		-0.076264, -0.872882, 0.481934,
		-0.943256, -0.093508, -0.318630,
		15.919156, 13.351840, 23.970724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.695913, 12.860998, 23.776533>,  <16.579435, 13.417295, 24.193766>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.695913, 12.860998, 23.776533> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.333374, 13.000145, 23.680599>,  <16.115850, 13.083633, 23.623039>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.333374, 13.000145, 23.680599>,  <16.695913, 12.860998, 23.776533>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.333374, 13.000145, 23.680599> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191736, -0.167206, -0.967098,
		-0.376524, -0.922513, 0.084848,
		-0.906348, 0.347867, -0.239836,
		16.061470, 13.104505, 23.608648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.429522, 12.361977, 23.242292>,  <16.695913, 12.860998, 23.776533>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.429522, 12.361977, 23.242292> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.208954, 12.691393, 23.189045>,  <16.076614, 12.889043, 23.157097>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.208954, 12.691393, 23.189045>,  <16.429522, 12.361977, 23.242292>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.208954, 12.691393, 23.189045> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137107, -0.067935, -0.988224,
		-0.822886, -0.563175, -0.075452,
		-0.551417, 0.823540, -0.133118,
		16.043530, 12.938455, 23.149109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.030100, 12.152356, 22.618193>,  <16.429522, 12.361977, 23.242292>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.030100, 12.152356, 22.618193> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.995185, 12.547113, 22.672485>,  <15.974236, 12.783968, 22.705061>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.995185, 12.547113, 22.672485>,  <16.030100, 12.152356, 22.618193>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.995185, 12.547113, 22.672485> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103077, 0.144469, -0.984126,
		-0.990836, -0.071911, -0.114336,
		-0.087288, 0.986893, 0.135732,
		15.968999, 12.843182, 22.713205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.418859, 12.401588, 22.233791>,  <16.030100, 12.152356, 22.618193>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.418859, 12.401588, 22.233791> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.685935, 12.699287, 22.240595>,  <15.846180, 12.877907, 22.244677>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.685935, 12.699287, 22.240595>,  <15.418859, 12.401588, 22.233791>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.685935, 12.699287, 22.240595> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128391, 0.137628, -0.982128,
		-0.733286, 0.653572, 0.187447,
		0.667689, 0.744246, 0.017008,
		15.886242, 12.922562, 22.245697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.243238, 12.807129, 21.751343>,  <15.418859, 12.401588, 22.233791>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.243238, 12.807129, 21.751343> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.611121, 12.943074, 21.829962>,  <15.831851, 13.024641, 21.877132>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.611121, 12.943074, 21.829962>,  <15.243238, 12.807129, 21.751343>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.611121, 12.943074, 21.829962> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160544, 0.131291, -0.978258,
		-0.358279, 0.931265, 0.066187,
		0.919707, 0.339864, 0.196548,
		15.887033, 13.045033, 21.888926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.249133, 13.508143, 21.533960>,  <15.243238, 12.807129, 21.751343>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.249133, 13.508143, 21.533960> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.624121, 13.368979, 21.529753>,  <15.849113, 13.285480, 21.527227>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.624121, 13.368979, 21.529753>,  <15.249133, 13.508143, 21.533960>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.624121, 13.368979, 21.529753> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057270, 0.183989, -0.981258,
		0.343327, 0.919296, 0.192409,
		0.937468, -0.347912, -0.010521,
		15.905361, 13.264605, 21.526596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.675986, 14.064397, 21.287960>,  <15.249133, 13.508143, 21.533960>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.675986, 14.064397, 21.287960> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.868834, 13.719479, 21.225981>,  <15.984542, 13.512527, 21.188793>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.868834, 13.719479, 21.225981>,  <15.675986, 14.064397, 21.287960>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.868834, 13.719479, 21.225981> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403419, 0.375493, -0.834421,
		0.777699, 0.339780, 0.528898,
		0.482117, -0.862296, -0.154946,
		16.013468, 13.460790, 21.179497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.395899, 14.174299, 21.121185>,  <15.675986, 14.064397, 21.287960>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.395899, 14.174299, 21.121185> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.281202, 13.823468, 20.967035>,  <16.212385, 13.612969, 20.874546>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.281202, 13.823468, 20.967035>,  <16.395899, 14.174299, 21.121185>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.281202, 13.823468, 20.967035> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248074, 0.320565, -0.914165,
		0.925332, -0.357730, 0.125661,
		-0.286742, -0.877079, -0.385373,
		16.195179, 13.560345, 20.851423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.569330, 14.275108, 20.510452>,  <16.395899, 14.174299, 21.121185>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.569330, 14.275108, 20.510452> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.394146, 13.925469, 20.426407>,  <16.289036, 13.715686, 20.375978>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.394146, 13.925469, 20.426407>,  <16.569330, 14.275108, 20.510452>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.394146, 13.925469, 20.426407> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103910, 0.182936, -0.977618,
		0.892970, -0.449989, 0.010709,
		-0.437958, -0.874096, -0.210114,
		16.262758, 13.663240, 20.363373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.139660, 14.783118, 20.637287>,  <16.569330, 14.275108, 20.510452>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.139660, 14.783118, 20.637287> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.154474, 15.132095, 20.442362>,  <17.163363, 15.341481, 20.325407>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.154474, 15.132095, 20.442362>,  <17.139660, 14.783118, 20.637287>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.154474, 15.132095, 20.442362> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037536, 0.488516, 0.871747,
		0.998609, -0.013993, 0.050840,
		0.037034, 0.872443, -0.487311,
		17.165585, 15.393828, 20.296169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.762331, 15.199151, 20.922441>,  <17.139660, 14.783118, 20.637287>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.762331, 15.199151, 20.922441> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.515585, 15.463369, 20.751253>,  <17.367538, 15.621901, 20.648540>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.515585, 15.463369, 20.751253>,  <17.762331, 15.199151, 20.922441>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.515585, 15.463369, 20.751253> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053969, 0.577968, 0.814273,
		0.785218, 0.479198, -0.392177,
		-0.616864, 0.660547, -0.427969,
		17.330526, 15.661533, 20.622862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.035336, 15.930174, 20.976597>,  <17.762331, 15.199151, 20.922441>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.035336, 15.930174, 20.976597> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.638624, 15.952467, 20.930521>,  <17.400597, 15.965843, 20.902876>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.638624, 15.952467, 20.930521>,  <18.035336, 15.930174, 20.976597>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.638624, 15.952467, 20.930521> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054576, 0.629973, 0.774697,
		0.115743, 0.774615, -0.621752,
		-0.991779, 0.055733, -0.115190,
		17.341091, 15.969187, 20.895964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.856861, 16.582319, 20.885227>,  <18.035336, 15.930174, 20.976597>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.856861, 16.582319, 20.885227> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.511595, 16.413643, 20.996313>,  <17.304436, 16.312437, 21.062963>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.511595, 16.413643, 20.996313>,  <17.856861, 16.582319, 20.885227>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.511595, 16.413643, 20.996313> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155052, 0.744804, 0.649020,
		-0.480527, 0.517151, -0.708272,
		-0.863164, -0.421690, 0.277713,
		17.252645, 16.287136, 21.079628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.361128, 17.145042, 20.887703>,  <17.856861, 16.582319, 20.885227>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.361128, 17.145042, 20.887703> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.229092, 16.843714, 21.115229>,  <17.149870, 16.662916, 21.251745>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.229092, 16.843714, 21.115229>,  <17.361128, 17.145042, 20.887703>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.229092, 16.843714, 21.115229> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299117, 0.655011, 0.693894,
		-0.895305, 0.058904, -0.441543,
		-0.330089, -0.753320, 0.568815,
		17.130066, 16.617718, 21.285873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.060902, 17.504080, 21.470562>,  <17.361128, 17.145042, 20.887703>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.060902, 17.504080, 21.470562> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.001200, 17.124998, 21.583399>,  <16.965380, 16.897549, 21.651100>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.001200, 17.124998, 21.583399>,  <17.060902, 17.504080, 21.470562>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.001200, 17.124998, 21.583399> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425901, 0.319083, 0.846637,
		-0.892374, 0.006220, -0.451253,
		-0.149253, -0.947706, 0.282093,
		16.956425, 16.840687, 21.668026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.377064, 17.478380, 21.814096>,  <17.060902, 17.504080, 21.470562>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.377064, 17.478380, 21.814096> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.560261, 17.164639, 21.981443>,  <16.670179, 16.976393, 22.081852>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.560261, 17.164639, 21.981443>,  <16.377064, 17.478380, 21.814096>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.560261, 17.164639, 21.981443> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251420, 0.337120, 0.907269,
		-0.852661, -0.520709, -0.042804,
		0.457993, -0.784354, 0.418366,
		16.697659, 16.929333, 22.106953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.920940, 17.204275, 22.170584>,  <16.377064, 17.478380, 21.814096>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.920940, 17.204275, 22.170584> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.245972, 17.055216, 22.349850>,  <16.440990, 16.965780, 22.457409>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.245972, 17.055216, 22.349850>,  <15.920940, 17.204275, 22.170584>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.245972, 17.055216, 22.349850> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312524, 0.370469, 0.874689,
		-0.491983, -0.850815, 0.184573,
		0.812577, -0.372649, 0.448165,
		16.489744, 16.943420, 22.484299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.693977, 16.765228, 22.789253>,  <15.920940, 17.204275, 22.170584>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.693977, 16.765228, 22.789253> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.063950, 16.904100, 22.851183>,  <16.285933, 16.987423, 22.888340>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.063950, 16.904100, 22.851183>,  <15.693977, 16.765228, 22.789253>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.063950, 16.904100, 22.851183> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257306, 0.272000, 0.927259,
		0.279849, -0.897474, 0.340918,
		0.924921, 0.347213, 0.154807,
		16.341429, 17.008253, 22.897629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.910326, 16.517559, 23.489517>,  <15.693977, 16.765228, 22.789253>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.910326, 16.517559, 23.489517> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.160378, 16.817396, 23.402498>,  <16.310408, 16.997299, 23.350286>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.160378, 16.817396, 23.402498>,  <15.910326, 16.517559, 23.489517>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.160378, 16.817396, 23.402498> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136272, 0.379254, 0.915203,
		0.768535, -0.542472, 0.339231,
		0.625127, 0.749593, -0.217547,
		16.347916, 17.042274, 23.337234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.413080, 16.456476, 24.047895>,  <15.910326, 16.517559, 23.489517>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.413080, 16.456476, 24.047895> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.453964, 16.823513, 23.894232>,  <16.478495, 17.043736, 23.802034>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.453964, 16.823513, 23.894232>,  <16.413080, 16.456476, 24.047895>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.453964, 16.823513, 23.894232> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016368, 0.384577, 0.922948,
		0.994628, -0.100623, 0.024289,
		0.102211, 0.917592, -0.384158,
		16.484627, 17.098791, 23.778984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.920643, 16.765570, 24.444904>,  <16.413080, 16.456476, 24.047895>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.920643, 16.765570, 24.444904> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.689396, 17.045181, 24.276554>,  <16.550648, 17.212948, 24.175543>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.689396, 17.045181, 24.276554>,  <16.920643, 16.765570, 24.444904>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.689396, 17.045181, 24.276554> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208345, 0.372249, 0.904446,
		0.788906, 0.610564, -0.069564,
		-0.578118, 0.699029, -0.420877,
		16.515961, 17.254890, 24.150291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.025213, 17.375938, 24.912554>,  <16.920643, 16.765570, 24.444904>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.025213, 17.375938, 24.912554> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.686502, 17.453352, 24.714355>,  <16.483276, 17.499800, 24.595436>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.686502, 17.453352, 24.714355>,  <17.025213, 17.375938, 24.912554>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.686502, 17.453352, 24.714355> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379704, 0.432456, 0.817806,
		0.372555, 0.880639, -0.292707,
		-0.846775, 0.193535, -0.495496,
		16.432470, 17.511412, 24.565706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.890451, 17.094330, 25.583166>,  <17.025213, 17.375938, 24.912554>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.890451, 17.094330, 25.583166> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.789623, 17.241726, 25.941088>,  <16.729126, 17.330164, 26.155842>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.789623, 17.241726, 25.941088>,  <16.890451, 17.094330, 25.583166>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.789623, 17.241726, 25.941088> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.876804, 0.304301, -0.372311,
		-0.409483, -0.878417, 0.246388,
		-0.252069, 0.368489, 0.894806,
		16.714003, 17.352272, 26.209530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<7.626009, 13.729523, 24.250242> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<8.022626, 13.678332, 24.241617>,  <8.260596, 13.647618, 24.236443>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<8.022626, 13.678332, 24.241617>,  <7.626009, 13.729523, 24.250242>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.022626, 13.678332, 24.241617> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012072, 0.074467, -0.997150,
		0.129218, 0.988977, 0.072292,
		0.991543, -0.127977, -0.021562,
		8.320088, 13.639939, 24.235149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.779034, 14.271151, 23.808270>,  <7.626009, 13.729523, 24.250242>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.779034, 14.271151, 23.808270> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<8.068690, 13.995301, 23.805710>,  <8.242484, 13.829792, 23.804174>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<8.068690, 13.995301, 23.805710>,  <7.779034, 14.271151, 23.808270>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.068690, 13.995301, 23.805710> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212104, 0.231534, -0.949423,
		0.656226, 0.686158, 0.313935,
		0.724141, -0.689623, -0.006401,
		8.285933, 13.788414, 23.803789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.485938, 14.530409, 23.635040>,  <7.779034, 14.271151, 23.808270>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.485938, 14.530409, 23.635040> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<8.563981, 14.150231, 23.538219>,  <8.610806, 13.922125, 23.480127>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<8.563981, 14.150231, 23.538219>,  <8.485938, 14.530409, 23.635040>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.563981, 14.150231, 23.538219> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270388, 0.289357, -0.918239,
		0.942774, 0.113707, 0.313444,
		0.195108, -0.950444, -0.242054,
		8.622513, 13.865098, 23.465603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.101346, 14.604714, 23.288074>,  <8.485938, 14.530409, 23.635040>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.101346, 14.604714, 23.288074> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<8.943738, 14.255480, 23.173204>,  <8.849174, 14.045939, 23.104282>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<8.943738, 14.255480, 23.173204>,  <9.101346, 14.604714, 23.288074>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.943738, 14.255480, 23.173204> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325043, 0.159889, -0.932085,
		0.859706, -0.460604, 0.220791,
		-0.394020, -0.873086, -0.287174,
		8.825532, 13.993554, 23.087051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.641110, 14.170012, 22.978607>,  <9.101346, 14.604714, 23.288074>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.641110, 14.170012, 22.978607> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.304430, 14.026753, 22.816980>,  <9.102422, 13.940799, 22.720003>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.304430, 14.026753, 22.816980>,  <9.641110, 14.170012, 22.978607>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.304430, 14.026753, 22.816980> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434493, -0.004980, -0.900662,
		0.320556, -0.933653, 0.159803,
		-0.841701, -0.358145, -0.404069,
		9.051920, 13.919310, 22.695759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.823187, 13.614373, 22.595995>,  <9.641110, 14.170012, 22.978607>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.823187, 13.614373, 22.595995> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.468347, 13.698766, 22.431782>,  <9.255443, 13.749401, 22.333254>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.468347, 13.698766, 22.431782>,  <9.823187, 13.614373, 22.595995>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.468347, 13.698766, 22.431782> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361384, -0.235843, -0.902097,
		-0.287150, -0.948612, 0.132971,
		-0.887100, 0.210984, -0.410535,
		9.202216, 13.762060, 22.308620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.926021, 13.462102, 21.882492>,  <9.823187, 13.614373, 22.595995>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.926021, 13.462102, 21.882492> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.559857, 13.620613, 21.854227>,  <9.340159, 13.715720, 21.837269>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.559857, 13.620613, 21.854227>,  <9.926021, 13.462102, 21.882492>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.559857, 13.620613, 21.854227> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024079, -0.121323, -0.992321,
		-0.401808, -0.910079, 0.101518,
		-0.915407, 0.396278, -0.070663,
		9.285235, 13.739496, 21.833029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.651914, 13.000819, 21.384748>,  <9.926021, 13.462102, 21.882492>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.651914, 13.000819, 21.384748> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.460054, 13.351721, 21.392365>,  <9.344938, 13.562262, 21.396935>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.460054, 13.351721, 21.392365>,  <9.651914, 13.000819, 21.384748>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.460054, 13.351721, 21.392365> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172656, 0.115630, -0.978171,
		-0.860306, -0.465892, -0.206925,
		-0.479649, 0.877254, 0.019038,
		9.316159, 13.614897, 21.398075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.115396, 12.971602, 20.858566>,  <9.651914, 13.000819, 21.384748>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.115396, 12.971602, 20.858566> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.186374, 13.363959, 20.890480>,  <9.228960, 13.599373, 20.909628>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.186374, 13.363959, 20.890480>,  <9.115396, 12.971602, 20.858566>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.186374, 13.363959, 20.890480> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074217, 0.067504, -0.994955,
		-0.981329, 0.182469, -0.060821,
		0.177443, 0.980892, 0.079786,
		9.239607, 13.658227, 20.914415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.763371, 13.287094, 20.278376>,  <9.115396, 12.971602, 20.858566>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.763371, 13.287094, 20.278376> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.034186, 13.548617, 20.413525>,  <9.196675, 13.705531, 20.494614>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.034186, 13.548617, 20.413525>,  <8.763371, 13.287094, 20.278376>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.034186, 13.548617, 20.413525> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209844, 0.268537, -0.940135,
		-0.705398, 0.707406, 0.044613,
		0.677037, 0.653807, 0.337870,
		9.237297, 13.744760, 20.514885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.611918, 13.946517, 19.925831>,  <8.763371, 13.287094, 20.278376>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.611918, 13.946517, 19.925831> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.000429, 13.957587, 20.020365>,  <9.233536, 13.964230, 20.077085>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.000429, 13.957587, 20.020365>,  <8.611918, 13.946517, 19.925831>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.000429, 13.957587, 20.020365> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219208, 0.282300, -0.933946,
		-0.092566, 0.958927, 0.268125,
		0.971277, 0.027676, 0.236336,
		9.291812, 13.965890, 20.091265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.830831, 14.457665, 19.490988>,  <8.611918, 13.946517, 19.925831>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.830831, 14.457665, 19.490988> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.183883, 14.317763, 19.616611>,  <9.395714, 14.233822, 19.691986>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.183883, 14.317763, 19.616611>,  <8.830831, 14.457665, 19.490988>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.183883, 14.317763, 19.616611> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434166, 0.350489, -0.829854,
		0.180171, 0.868809, 0.461204,
		0.882631, -0.349755, 0.314059,
		9.448672, 14.212837, 19.710829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.272564, 14.923844, 19.292679>,  <8.830831, 14.457665, 19.490988>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.272564, 14.923844, 19.292679> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.499588, 14.598469, 19.343582>,  <9.635802, 14.403244, 19.374125>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.499588, 14.598469, 19.343582>,  <9.272564, 14.923844, 19.292679>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.499588, 14.598469, 19.343582> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465729, 0.189728, -0.864349,
		0.678949, 0.549839, 0.486524,
		0.567560, -0.813438, 0.127260,
		9.669856, 14.354438, 19.381760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.067253, 15.080516, 19.303394>,  <9.272564, 14.923844, 19.292679>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.067253, 15.080516, 19.303394> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.022498, 14.701711, 19.182964>,  <9.995645, 14.474427, 19.110706>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.022498, 14.701711, 19.182964>,  <10.067253, 15.080516, 19.303394>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.022498, 14.701711, 19.182964> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578322, 0.184326, -0.794712,
		0.808100, -0.263037, 0.527055,
		-0.111888, -0.947014, -0.301074,
		9.988932, 14.417606, 19.092642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.746837, 15.393632, 19.306320>,  <10.067253, 15.080516, 19.303394>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.746837, 15.393632, 19.306320> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.917321, 15.751903, 19.255554>,  <11.019611, 15.966865, 19.225094>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.917321, 15.751903, 19.255554>,  <10.746837, 15.393632, 19.306320>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.917321, 15.751903, 19.255554> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124682, 0.197121, 0.972418,
		0.895990, -0.398631, 0.195690,
		0.426211, 0.895677, -0.126916,
		11.045184, 16.020605, 19.217480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.407226, 15.440318, 19.692150>,  <10.746837, 15.393632, 19.306320>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.407226, 15.440318, 19.692150> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.295518, 15.822015, 19.649378>,  <11.228494, 16.051033, 19.623714>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.295518, 15.822015, 19.649378>,  <11.407226, 15.440318, 19.692150>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.295518, 15.822015, 19.649378> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111347, 0.142791, 0.983470,
		0.953735, 0.262746, -0.146129,
		-0.279269, 0.954241, -0.106929,
		11.211738, 16.108288, 19.617300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.739542, 15.801887, 20.171114>,  <11.407226, 15.440318, 19.692150>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.739542, 15.801887, 20.171114> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.437252, 16.054411, 20.101458>,  <11.255877, 16.205925, 20.059664>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.437252, 16.054411, 20.101458>,  <11.739542, 15.801887, 20.171114>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.437252, 16.054411, 20.101458> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021671, 0.241655, 0.970120,
		0.654529, 0.736919, -0.168944,
		-0.755726, 0.631311, -0.174140,
		11.210534, 16.243805, 20.049215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.027661, 16.433998, 20.472649>,  <11.739542, 15.801887, 20.171114>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.027661, 16.433998, 20.472649> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.630887, 16.469219, 20.436180>,  <11.392822, 16.490353, 20.414299>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.630887, 16.469219, 20.436180>,  <12.027661, 16.433998, 20.472649>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.630887, 16.469219, 20.436180> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053000, 0.365263, 0.929394,
		0.115137, 0.926731, -0.357651,
		-0.991935, 0.088053, -0.091172,
		11.333306, 16.495634, 20.408829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.813880, 16.785559, 20.997017>,  <12.027661, 16.433998, 20.472649>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.813880, 16.785559, 20.997017> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.445777, 16.666521, 20.895378>,  <11.224916, 16.595098, 20.834394>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.445777, 16.666521, 20.895378>,  <11.813880, 16.785559, 20.997017>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.445777, 16.666521, 20.895378> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245533, -0.066479, 0.967106,
		-0.304699, 0.952374, -0.011891,
		-0.920256, -0.297596, -0.254095,
		11.169700, 16.577242, 20.819149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.404244, 17.267271, 21.263494>,  <11.813880, 16.785559, 20.997017>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.404244, 17.267271, 21.263494> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.209500, 16.919651, 21.228359>,  <11.092653, 16.711079, 21.207279>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.209500, 16.919651, 21.228359>,  <11.404244, 17.267271, 21.263494>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.209500, 16.919651, 21.228359> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131117, -0.026707, 0.991007,
		-0.863582, 0.493999, -0.100945,
		-0.486861, -0.869052, -0.087836,
		11.063442, 16.658936, 21.202009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.905399, 17.297342, 21.777781>,  <11.404244, 17.267271, 21.263494>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.905399, 17.297342, 21.777781> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.919047, 16.906967, 21.691637>,  <10.927237, 16.672743, 21.639950>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.919047, 16.906967, 21.691637>,  <10.905399, 17.297342, 21.777781>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.919047, 16.906967, 21.691637> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148031, -0.218043, 0.964647,
		-0.988394, -0.001035, -0.151909,
		0.034121, -0.975938, -0.215360,
		10.929284, 16.614185, 21.627029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.281182, 16.929920, 22.095509>,  <10.905399, 17.297342, 21.777781>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.281182, 16.929920, 22.095509> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.544174, 16.638050, 22.020361>,  <10.701969, 16.462929, 21.975271>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.544174, 16.638050, 22.020361>,  <10.281182, 16.929920, 22.095509>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.544174, 16.638050, 22.020361> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253427, -0.448969, 0.856856,
		-0.709575, -0.515753, -0.480107,
		0.657479, -0.729675, -0.187871,
		10.741418, 16.419147, 21.963999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.904957, 16.329498, 22.305258>,  <10.281182, 16.929920, 22.095509>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.904957, 16.329498, 22.305258> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.292384, 16.230774, 22.317654>,  <10.524840, 16.171539, 22.325090>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.292384, 16.230774, 22.317654>,  <9.904957, 16.329498, 22.305258>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.292384, 16.230774, 22.317654> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142099, -0.446738, 0.883308,
		-0.204165, -0.859948, -0.467767,
		0.968568, -0.246810, 0.030990,
		10.582954, 16.156731, 22.326950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.910399, 15.578192, 22.374863>,  <9.904957, 16.329498, 22.305258>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.910399, 15.578192, 22.374863> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.253076, 15.747608, 22.492640>,  <10.458681, 15.849258, 22.563305>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.253076, 15.747608, 22.492640>,  <9.910399, 15.578192, 22.374863>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.253076, 15.747608, 22.492640> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037109, -0.518725, 0.854135,
		0.514495, -0.742656, -0.428670,
		0.856690, 0.423541, 0.294441,
		10.510082, 15.874671, 22.580973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.166704, 15.057829, 22.780500>,  <9.910399, 15.578192, 22.374863>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.166704, 15.057829, 22.780500> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.370294, 15.394564, 22.852339>,  <10.492448, 15.596604, 22.895443>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.370294, 15.394564, 22.852339>,  <10.166704, 15.057829, 22.780500>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.370294, 15.394564, 22.852339> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104053, -0.267286, 0.957983,
		0.854469, -0.468901, -0.223637,
		0.508975, 0.841837, 0.179598,
		10.522986, 15.647115, 22.906218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.656310, 14.835958, 23.300919>,  <10.166704, 15.057829, 22.780500>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.656310, 14.835958, 23.300919> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.633863, 15.234995, 23.317226>,  <10.620396, 15.474417, 23.327011>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.633863, 15.234995, 23.317226>,  <10.656310, 14.835958, 23.300919>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.633863, 15.234995, 23.317226> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051932, -0.043696, 0.997694,
		0.997073, 0.053869, 0.054259,
		-0.056116, 0.997592, 0.040771,
		10.617028, 15.534272, 23.329458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.064940, 14.943619, 23.843090>,  <10.656310, 14.835958, 23.300919>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.064940, 14.943619, 23.843090> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.849867, 15.278955, 23.807137>,  <10.720822, 15.480158, 23.785564>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.849867, 15.278955, 23.807137>,  <11.064940, 14.943619, 23.843090>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.849867, 15.278955, 23.807137> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169409, -0.002987, 0.985541,
		0.825951, 0.545137, 0.143628,
		-0.537684, 0.838341, -0.089884,
		10.688561, 15.530457, 23.780172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.379610, 15.404873, 24.350592>,  <11.064940, 14.943619, 23.843090>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.379610, 15.404873, 24.350592> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.003412, 15.513708, 24.269165>,  <10.777694, 15.579009, 24.220308>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.003412, 15.513708, 24.269165>,  <11.379610, 15.404873, 24.350592>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.003412, 15.513708, 24.269165> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206327, 0.018752, 0.978303,
		0.270001, 0.962090, 0.038503,
		-0.940494, 0.272087, -0.203569,
		10.721264, 15.595334, 24.208094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.756602, 15.981492, 24.480024>,  <11.379610, 15.404873, 24.350592>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.756602, 15.981492, 24.480024> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.054773, 16.245796, 24.515194>,  <12.233676, 16.404379, 24.536295>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.054773, 16.245796, 24.515194>,  <11.756602, 15.981492, 24.480024>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.054773, 16.245796, 24.515194> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085016, 0.036583, -0.995708,
		-0.661142, 0.749704, -0.028906,
		0.745429, 0.660761, 0.087923,
		12.278402, 16.444025, 24.541571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.667370, 16.407131, 23.916933>,  <11.756602, 15.981492, 24.480024>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.667370, 16.407131, 23.916933> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.045271, 16.473763, 24.029854>,  <12.272012, 16.513741, 24.097607>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.045271, 16.473763, 24.029854>,  <11.667370, 16.407131, 23.916933>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.045271, 16.473763, 24.029854> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260021, 0.143514, -0.954878,
		-0.199576, 0.975528, 0.092272,
		0.944753, 0.166578, 0.282300,
		12.328697, 16.523735, 24.114544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.911156, 17.086060, 23.760920>,  <11.667370, 16.407131, 23.916933>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.911156, 17.086060, 23.760920> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.249058, 16.873606, 23.787100>,  <12.451799, 16.746134, 23.802807>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.249058, 16.873606, 23.787100>,  <11.911156, 17.086060, 23.760920>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.249058, 16.873606, 23.787100> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284117, 0.341481, -0.895917,
		0.453504, 0.775426, 0.439373,
		0.844755, -0.531136, 0.065449,
		12.502484, 16.714266, 23.806734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.486248, 17.600554, 23.446398>,  <11.911156, 17.086060, 23.760920>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.486248, 17.600554, 23.446398> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.658655, 17.239965, 23.430544>,  <12.762099, 17.023613, 23.421032>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.658655, 17.239965, 23.430544>,  <12.486248, 17.600554, 23.446398>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.658655, 17.239965, 23.430544> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505724, 0.277713, -0.816773,
		0.747306, 0.332000, 0.575596,
		0.431019, -0.901472, -0.039636,
		12.787961, 16.969524, 23.418653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.241388, 17.670717, 23.250059>,  <12.486248, 17.600554, 23.446398>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.241388, 17.670717, 23.250059> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.151288, 17.287514, 23.179089>,  <13.097228, 17.057592, 23.136505>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.151288, 17.287514, 23.179089>,  <13.241388, 17.670717, 23.250059>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.151288, 17.287514, 23.179089> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489430, 0.046204, -0.870818,
		0.842449, -0.282991, 0.458471,
		-0.225250, -0.958009, -0.177428,
		13.083713, 17.000111, 23.125860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.855417, 17.302786, 23.160229>,  <13.241388, 17.670717, 23.250059>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.855417, 17.302786, 23.160229> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.583426, 17.082029, 22.967129>,  <13.420232, 16.949575, 22.851269>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.583426, 17.082029, 22.967129>,  <13.855417, 17.302786, 23.160229>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.583426, 17.082029, 22.967129> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591977, -0.024713, -0.805576,
		0.432662, -0.833548, 0.343513,
		-0.679976, -0.551894, -0.482749,
		13.379434, 16.916462, 22.822304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.287372, 16.860876, 22.874506>,  <13.855417, 17.302786, 23.160229>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.287372, 16.860876, 22.874506> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.937243, 16.862183, 22.681095>,  <13.727165, 16.862967, 22.565048>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.937243, 16.862183, 22.681095>,  <14.287372, 16.860876, 22.874506>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.937243, 16.862183, 22.681095> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482500, -0.059598, -0.873866,
		-0.031667, -0.998217, 0.050594,
		-0.875323, 0.003261, -0.483526,
		13.674645, 16.863161, 22.536037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.332467, 16.324163, 22.323589>,  <14.287372, 16.860876, 22.874506>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.332467, 16.324163, 22.323589> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.046535, 16.578411, 22.206964>,  <13.874976, 16.730959, 22.136990>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.046535, 16.578411, 22.206964>,  <14.332467, 16.324163, 22.323589>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.046535, 16.578411, 22.206964> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382007, 0.005705, -0.924142,
		-0.585739, -0.771981, -0.246890,
		-0.714828, 0.635620, -0.291560,
		13.832087, 16.769096, 22.119495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.084638, 16.050446, 21.696110>,  <14.332467, 16.324163, 22.323589>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.084638, 16.050446, 21.696110> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.980332, 16.436197, 21.713873>,  <13.917749, 16.667648, 21.724531>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.980332, 16.436197, 21.713873>,  <14.084638, 16.050446, 21.696110>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.980332, 16.436197, 21.713873> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387885, 0.146783, -0.909945,
		-0.884052, -0.220054, -0.412344,
		-0.260763, 0.964381, 0.044408,
		13.902103, 16.725512, 21.727196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.737049, 16.240290, 21.078592>,  <14.084638, 16.050446, 21.696110>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.737049, 16.240290, 21.078592> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.861882, 16.595282, 21.214228>,  <13.936782, 16.808277, 21.295609>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.861882, 16.595282, 21.214228>,  <13.737049, 16.240290, 21.078592>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.861882, 16.595282, 21.214228> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377081, 0.211890, -0.901617,
		-0.872018, 0.409243, -0.268525,
		0.312082, 0.887481, 0.339090,
		13.955507, 16.861526, 21.315954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.502809, 16.674507, 20.552401>,  <13.737049, 16.240290, 21.078592>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.502809, 16.674507, 20.552401> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.789476, 16.870125, 20.751286>,  <13.961477, 16.987495, 20.870617>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.789476, 16.870125, 20.751286>,  <13.502809, 16.674507, 20.552401>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.789476, 16.870125, 20.751286> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375193, 0.330617, -0.865981,
		-0.587891, 0.807172, 0.053456,
		0.716669, 0.489046, 0.497212,
		14.004477, 17.016838, 20.900450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.471734, 17.294193, 20.299644>,  <13.502809, 16.674507, 20.552401>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.471734, 17.294193, 20.299644> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.840166, 17.261459, 20.451916>,  <14.061225, 17.241819, 20.543278>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.840166, 17.261459, 20.451916>,  <13.471734, 17.294193, 20.299644>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.840166, 17.261459, 20.451916> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378405, 0.418557, -0.825602,
		-0.091771, 0.904496, 0.416491,
		0.921079, -0.081836, 0.380678,
		14.116490, 17.236908, 20.566118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.787040, 17.959145, 20.152710>,  <13.471734, 17.294193, 20.299644>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.787040, 17.959145, 20.152710> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.078817, 17.688929, 20.195709>,  <14.253883, 17.526798, 20.221508>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.078817, 17.688929, 20.195709>,  <13.787040, 17.959145, 20.152710>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.078817, 17.688929, 20.195709> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473880, 0.385723, -0.791616,
		0.493305, 0.628380, 0.601489,
		0.729444, -0.675542, 0.107498,
		14.297650, 17.486267, 20.227959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.435491, 18.333925, 19.949474>,  <13.787040, 17.959145, 20.152710>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.435491, 18.333925, 19.949474> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.563808, 17.955708, 19.927425>,  <14.640799, 17.728777, 19.914196>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.563808, 17.955708, 19.927425>,  <14.435491, 18.333925, 19.949474>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.563808, 17.955708, 19.927425> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642870, 0.260107, -0.720460,
		0.695564, 0.195682, 0.691302,
		0.320794, -0.945544, -0.055123,
		14.660047, 17.672045, 19.910889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<14.037677, 19.833046, 10.828602> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<13.671354, 19.800753, 10.985970>,  <13.451561, 19.781376, 11.080392>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<13.671354, 19.800753, 10.985970>,  <14.037677, 19.833046, 10.828602>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.671354, 19.800753, 10.985970> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400627, 0.252488, -0.880765,
		-0.028226, -0.964226, -0.263575,
		-0.915807, -0.080735, 0.393421,
		13.396612, 19.776533, 11.103997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.630203, 19.382847, 10.430700>,  <14.037677, 19.833046, 10.828602>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.630203, 19.382847, 10.430700> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<13.358994, 19.625317, 10.596994>,  <13.196268, 19.770798, 10.696772>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<13.358994, 19.625317, 10.596994>,  <13.630203, 19.382847, 10.430700>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.358994, 19.625317, 10.596994> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341508, 0.241055, -0.908441,
		-0.650889, -0.757921, 0.043572,
		-0.678023, 0.606175, 0.415736,
		13.155586, 19.807169, 10.721715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.966194, 19.429295, 9.981865>,  <13.630203, 19.382847, 10.430700>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.966194, 19.429295, 9.981865> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.973281, 19.750807, 10.219731>,  <12.977533, 19.943714, 10.362451>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.973281, 19.750807, 10.219731>,  <12.966194, 19.429295, 9.981865>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.973281, 19.750807, 10.219731> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376570, 0.556327, -0.740740,
		-0.926219, -0.210809, 0.312535,
		0.017717, 0.803778, 0.594665,
		12.978596, 19.991940, 10.398130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.287979, 19.680979, 10.093790>,  <12.966194, 19.429295, 9.981865>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.287979, 19.680979, 10.093790> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.540158, 19.991470, 10.093374>,  <12.691465, 20.177765, 10.093125>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.540158, 19.991470, 10.093374>,  <12.287979, 19.680979, 10.093790>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.540158, 19.991470, 10.093374> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570404, 0.462369, -0.678862,
		-0.526474, 0.428579, 0.734265,
		0.630448, 0.776231, -0.001038,
		12.729293, 20.224340, 10.093062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.067657, 20.221514, 10.568322>,  <12.287979, 19.680979, 10.093790>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.067657, 20.221514, 10.568322> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.262639, 20.291471, 10.226141>,  <12.379628, 20.333447, 10.020832>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.262639, 20.291471, 10.226141>,  <12.067657, 20.221514, 10.568322>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.262639, 20.291471, 10.226141> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.814047, 0.445352, -0.372812,
		0.315775, 0.878108, 0.359461,
		0.487456, 0.174893, -0.855453,
		12.408875, 20.343939, 9.969505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.842999, 20.881989, 10.060516>,  <12.067657, 20.221514, 10.568322>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.842999, 20.881989, 10.060516> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.130799, 20.942244, 10.331699>,  <12.303479, 20.978395, 10.494410>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.130799, 20.942244, 10.331699>,  <11.842999, 20.881989, 10.060516>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.130799, 20.942244, 10.331699> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302172, 0.946850, 0.110307,
		-0.625308, -0.284226, 0.726777,
		0.719501, 0.150636, 0.677958,
		12.346649, 20.987434, 10.535087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.496509, 21.014816, 10.710238>,  <11.842999, 20.881989, 10.060516>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.496509, 21.014816, 10.710238> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.852352, 21.192474, 10.667661>,  <12.065859, 21.299068, 10.642115>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.852352, 21.192474, 10.667661>,  <11.496509, 21.014816, 10.710238>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.852352, 21.192474, 10.667661> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437210, 0.895546, 0.082736,
		0.132071, -0.027065, 0.990871,
		0.889609, 0.444146, -0.106442,
		12.119235, 21.325718, 10.635728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.231024, 20.699095, 11.349338>,  <11.496509, 21.014816, 10.710238>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.231024, 20.699095, 11.349338> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.548472, 20.482695, 11.237995>,  <11.738942, 20.352854, 11.171190>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.548472, 20.482695, 11.237995>,  <11.231024, 20.699095, 11.349338>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.548472, 20.482695, 11.237995> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027394, -0.425274, 0.904650,
		-0.607794, -0.725575, -0.322687,
		0.793622, -0.541001, -0.278355,
		11.786559, 20.320395, 11.154489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.034381, 20.154175, 11.568582>,  <11.231024, 20.699095, 11.349338>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.034381, 20.154175, 11.568582> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.421181, 20.096596, 11.484496>,  <11.653261, 20.062048, 11.434045>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.421181, 20.096596, 11.484496>,  <11.034381, 20.154175, 11.568582>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.421181, 20.096596, 11.484496> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085198, -0.594889, 0.799280,
		-0.240108, -0.790814, -0.562994,
		0.967000, -0.143948, -0.210213,
		11.711281, 20.053411, 11.421432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.238018, 19.467449, 11.246669>,  <11.034381, 20.154175, 11.568582>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.238018, 19.467449, 11.246669> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.446976, 19.689779, 11.505330>,  <11.572351, 19.823177, 11.660527>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.446976, 19.689779, 11.505330>,  <11.238018, 19.467449, 11.246669>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.446976, 19.689779, 11.505330> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163139, -0.679199, 0.715593,
		0.836953, -0.479316, -0.264132,
		0.522393, 0.555828, 0.646653,
		11.603694, 19.856527, 11.699327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.753569, 19.034782, 11.597984>,  <11.238018, 19.467449, 11.246669>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.753569, 19.034782, 11.597984> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.686044, 19.353600, 11.829924>,  <11.645529, 19.544889, 11.969088>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.686044, 19.353600, 11.829924>,  <11.753569, 19.034782, 11.597984>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.686044, 19.353600, 11.829924> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062172, -0.595731, 0.800774,
		0.983686, 0.099130, 0.150120,
		-0.168812, 0.797044, 0.579849,
		11.635400, 19.592712, 12.003879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.137835, 18.937334, 12.181439>,  <11.753569, 19.034782, 11.597984>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.137835, 18.937334, 12.181439> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.849404, 19.192488, 12.289628>,  <11.676346, 19.345579, 12.354541>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.849404, 19.192488, 12.289628>,  <12.137835, 18.937334, 12.181439>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.849404, 19.192488, 12.289628> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220499, -0.581347, 0.783209,
		0.656834, 0.505114, 0.559848,
		-0.721075, 0.637884, 0.270471,
		11.633081, 19.383852, 12.370770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.094854, 18.896870, 12.865353>,  <12.137835, 18.937334, 12.181439>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.094854, 18.896870, 12.865353> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.760953, 19.116503, 12.848902>,  <11.560612, 19.248283, 12.839031>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.760953, 19.116503, 12.848902>,  <12.094854, 18.896870, 12.865353>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.760953, 19.116503, 12.848902> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377577, -0.516449, 0.768581,
		0.400776, 0.657105, 0.638429,
		-0.834754, 0.549085, -0.041127,
		11.510527, 19.281229, 12.836563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.889427, 19.019165, 13.573482>,  <12.094854, 18.896870, 12.865353>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.889427, 19.019165, 13.573482> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.570766, 19.063700, 13.335844>,  <11.379570, 19.090422, 13.193261>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.570766, 19.063700, 13.335844>,  <11.889427, 19.019165, 13.573482>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.570766, 19.063700, 13.335844> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551522, -0.536072, 0.639100,
		-0.247321, 0.836797, 0.488469,
		-0.796653, 0.111339, -0.594094,
		11.331771, 19.097101, 13.157616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.361518, 19.197515, 14.022781>,  <11.889427, 19.019165, 13.573482>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.361518, 19.197515, 14.022781> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.167099, 19.042303, 13.709555>,  <11.050447, 18.949177, 13.521619>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.167099, 19.042303, 13.709555>,  <11.361518, 19.197515, 14.022781>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.167099, 19.042303, 13.709555> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657191, -0.428349, 0.620175,
		-0.576072, 0.816058, -0.046811,
		-0.486047, -0.388029, -0.783066,
		11.021285, 18.925894, 13.474635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.623727, 19.232349, 14.230341>,  <11.361518, 19.197515, 14.022781>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.623727, 19.232349, 14.230341> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.645769, 18.955410, 13.942558>,  <10.658995, 18.789248, 13.769888>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.645769, 18.955410, 13.942558>,  <10.623727, 19.232349, 14.230341>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.645769, 18.955410, 13.942558> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.672372, -0.558422, 0.485881,
		-0.738160, 0.456969, -0.496286,
		0.055105, -0.692347, -0.719458,
		10.662300, 18.747705, 13.726721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.991549, 19.167805, 13.963324>,  <10.623727, 19.232349, 14.230341>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.991549, 19.167805, 13.963324> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.156442, 18.819868, 13.854923>,  <10.255378, 18.611107, 13.789884>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.156442, 18.819868, 13.854923>,  <9.991549, 19.167805, 13.963324>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.156442, 18.819868, 13.854923> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.764446, -0.492055, 0.416539,
		-0.495668, 0.035451, -0.867788,
		0.412233, -0.869842, -0.270996,
		10.280111, 18.558916, 13.773623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.456896, 18.772144, 13.832024>,  <9.991549, 19.167805, 13.963324>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.456896, 18.772144, 13.832024> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.749230, 18.499788, 13.851069>,  <9.924631, 18.336374, 13.862496>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.749230, 18.499788, 13.851069>,  <9.456896, 18.772144, 13.832024>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.749230, 18.499788, 13.851069> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643797, -0.664490, 0.379445,
		-0.226721, -0.307966, -0.923988,
		0.730837, -0.680889, 0.047614,
		9.968481, 18.295521, 13.865354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.193143, 18.161503, 13.451404>,  <9.456896, 18.772144, 13.832024>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.193143, 18.161503, 13.451404> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.485724, 18.015963, 13.682085>,  <9.661273, 17.928638, 13.820494>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.485724, 18.015963, 13.682085>,  <9.193143, 18.161503, 13.451404>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.485724, 18.015963, 13.682085> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599458, -0.746211, 0.289515,
		0.325002, -0.557477, -0.763933,
		0.731453, -0.363853, 0.576704,
		9.705160, 17.906807, 13.855096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.448785, 17.515650, 13.186464>,  <9.193143, 18.161503, 13.451404>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.448785, 17.515650, 13.186464> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.496579, 17.555964, 13.581547>,  <9.525256, 17.580153, 13.818597>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.496579, 17.555964, 13.581547>,  <9.448785, 17.515650, 13.186464>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.496579, 17.555964, 13.581547> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602756, -0.783153, 0.152830,
		0.788929, -0.613607, -0.032826,
		0.119485, 0.100786, 0.987707,
		9.532425, 17.586199, 13.877859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.476245, 16.830233, 13.452173>,  <9.448785, 17.515650, 13.186464>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.476245, 16.830233, 13.452173> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.357338, 17.051525, 13.763447>,  <9.285994, 17.184299, 13.950211>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.357338, 17.051525, 13.763447>,  <9.476245, 16.830233, 13.452173>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.357338, 17.051525, 13.763447> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.671213, -0.700731, 0.241763,
		0.679048, -0.450458, 0.579639,
		-0.297267, 0.553230, 0.778183,
		9.268158, 17.217495, 13.996902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.272165, 16.290714, 13.827291>,  <9.476245, 16.830233, 13.452173>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.272165, 16.290714, 13.827291> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.167899, 16.617569, 14.032948>,  <9.105339, 16.813683, 14.156342>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.167899, 16.617569, 14.032948>,  <9.272165, 16.290714, 13.827291>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.167899, 16.617569, 14.032948> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.759762, -0.502207, 0.412976,
		0.595663, -0.282976, 0.751738,
		-0.260666, 0.817137, 0.514141,
		9.089700, 16.862709, 14.187190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.165225, 16.010281, 14.473202>,  <9.272165, 16.290714, 13.827291>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.165225, 16.010281, 14.473202> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.978876, 16.364182, 14.467850>,  <8.867067, 16.576521, 14.464639>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.978876, 16.364182, 14.467850>,  <9.165225, 16.010281, 14.473202>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.978876, 16.364182, 14.467850> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.812259, -0.421604, 0.403096,
		0.350998, 0.198659, 0.915060,
		-0.465871, 0.884751, -0.013381,
		8.839115, 16.629606, 14.463836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.845285, 16.169714, 15.106406>,  <9.165225, 16.010281, 14.473202>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.845285, 16.169714, 15.106406> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.640724, 16.399321, 14.850603>,  <8.517987, 16.537085, 14.697122>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.640724, 16.399321, 14.850603>,  <8.845285, 16.169714, 15.106406>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.640724, 16.399321, 14.850603> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.848304, -0.456108, 0.268974,
		-0.137289, 0.680051, 0.720196,
		-0.511403, 0.574018, -0.639508,
		8.487304, 16.571526, 14.658751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.281185, 16.337564, 15.444558>,  <8.845285, 16.169714, 15.106406>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.281185, 16.337564, 15.444558> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.168929, 16.436247, 15.073532>,  <8.101576, 16.495457, 14.850916>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.168929, 16.436247, 15.073532>,  <8.281185, 16.337564, 15.444558>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.168929, 16.436247, 15.073532> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.922177, -0.337272, 0.189305,
		-0.266140, 0.908507, 0.322158,
		-0.280640, 0.246705, -0.927565,
		8.084737, 16.510258, 14.795262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.691439, 16.712221, 15.463266>,  <8.281185, 16.337564, 15.444558>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.691439, 16.712221, 15.463266> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.675705, 16.558376, 15.094371>,  <7.666265, 16.466070, 14.873034>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.675705, 16.558376, 15.094371>,  <7.691439, 16.712221, 15.463266>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.675705, 16.558376, 15.094371> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.979358, -0.168296, 0.111958,
		-0.198270, 0.907607, -0.370052,
		-0.039335, -0.384612, -0.922240,
		7.663905, 16.442993, 14.817698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.093570, 17.022305, 15.118273>,  <7.691439, 16.712221, 15.463266>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.093570, 17.022305, 15.118273> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.189428, 16.698053, 14.904561>,  <7.246943, 16.503502, 14.776334>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.189428, 16.698053, 14.904561>,  <7.093570, 17.022305, 15.118273>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.189428, 16.698053, 14.904561> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.960464, -0.278270, -0.008605,
		-0.141699, 0.515218, -0.845265,
		0.239645, -0.810627, -0.534279,
		7.261322, 16.454865, 14.744277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.617441, 16.946421, 14.639055>,  <7.093570, 17.022305, 15.118273>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.617441, 16.946421, 14.639055> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.766498, 16.575411, 14.650634>,  <6.855932, 16.352806, 14.657581>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.766498, 16.575411, 14.650634>,  <6.617441, 16.946421, 14.639055>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.766498, 16.575411, 14.650634> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.917939, -0.373009, -0.135101,
		0.136106, 0.023773, -0.990409,
		0.372643, -0.927523, 0.028947,
		6.878291, 16.297153, 14.659318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.296725, 16.562078, 14.235913>,  <6.617441, 16.946421, 14.639055>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.296725, 16.562078, 14.235913> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.462757, 16.259415, 14.437974>,  <6.562376, 16.077816, 14.559211>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.462757, 16.259415, 14.437974>,  <6.296725, 16.562078, 14.235913>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.462757, 16.259415, 14.437974> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.866539, -0.497959, -0.033857,
		0.277163, -0.423681, -0.862366,
		0.415078, -0.756658, 0.505152,
		6.587280, 16.032417, 14.589520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.269204, 15.867615, 13.836981>,  <6.296725, 16.562078, 14.235913>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.269204, 15.867615, 13.836981> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.282809, 15.789081, 14.228959>,  <6.290972, 15.741961, 14.464147>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.282809, 15.789081, 14.228959>,  <6.269204, 15.867615, 13.836981>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.282809, 15.789081, 14.228959> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.765202, -0.635845, -0.100834,
		0.642892, -0.746427, -0.171863,
		0.034013, -0.196335, 0.979947,
		6.293013, 15.730180, 14.522943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.069065, 15.161590, 13.939606>,  <6.269204, 15.867615, 13.836981>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.069065, 15.161590, 13.939606> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.026843, 15.299077, 14.312854>,  <6.001510, 15.381570, 14.536803>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.026843, 15.299077, 14.312854>,  <6.069065, 15.161590, 13.939606>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.026843, 15.299077, 14.312854> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.848438, -0.520557, 0.095774,
		0.518662, -0.781586, 0.346572,
		-0.105555, 0.343720, 0.933121,
		5.995177, 15.402193, 14.592791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.543116, 14.682934, 13.680074>,  <6.069065, 15.161590, 13.939606>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.543116, 14.682934, 13.680074> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.530071, 14.387739, 13.410462>,  <6.522244, 14.210623, 13.248695>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.530071, 14.387739, 13.410462>,  <6.543116, 14.682934, 13.680074>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.530071, 14.387739, 13.410462> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.977213, -0.165066, 0.133447,
		-0.209741, -0.654317, 0.726552,
		-0.032612, -0.737986, -0.674028,
		6.520287, 14.166344, 13.208254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.943315, 14.160656, 13.979539>,  <6.543116, 14.682934, 13.680074>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.943315, 14.160656, 13.979539> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.934088, 14.117646, 13.581965>,  <6.928552, 14.091841, 13.343421>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.934088, 14.117646, 13.581965>,  <6.943315, 14.160656, 13.979539>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.934088, 14.117646, 13.581965> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.997264, -0.072311, -0.015322,
		-0.070225, -0.991569, 0.108897,
		-0.023068, -0.107523, -0.993935,
		6.927167, 14.085389, 13.283785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.539970, 13.757172, 13.893445>,  <6.943315, 14.160656, 13.979539>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.539970, 13.757172, 13.893445> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.437282, 13.926126, 13.545725>,  <7.375669, 14.027499, 13.337092>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.437282, 13.926126, 13.545725>,  <7.539970, 13.757172, 13.893445>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.437282, 13.926126, 13.545725> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.952676, 0.262096, -0.153992,
		0.162796, -0.867695, -0.469683,
		-0.256720, 0.422387, -0.869301,
		7.360266, 14.052842, 13.284935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.134589, 13.721546, 13.508571>,  <7.539970, 13.757172, 13.893445>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.134589, 13.721546, 13.508571> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.953391, 13.976289, 13.259025>,  <7.844672, 14.129134, 13.109297>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.953391, 13.976289, 13.259025>,  <8.134589, 13.721546, 13.508571>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.953391, 13.976289, 13.259025> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.891504, 0.320609, -0.320046,
		-0.003808, -0.701158, -0.712996,
		-0.452996, 0.636857, -0.623865,
		7.817492, 14.167346, 13.071865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.475366, 13.596797, 12.904645>,  <8.134589, 13.721546, 13.508571>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.475366, 13.596797, 12.904645> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.320977, 13.963981, 12.868030>,  <8.228344, 14.184291, 12.846061>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.320977, 13.963981, 12.868030>,  <8.475366, 13.596797, 12.904645>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.320977, 13.963981, 12.868030> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.889541, 0.344049, -0.300579,
		-0.244425, -0.197442, -0.949354,
		-0.385971, 0.917958, -0.091538,
		8.205186, 14.239368, 12.840568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.678185, 13.828524, 12.243015>,  <8.475366, 13.596797, 12.904645>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.678185, 13.828524, 12.243015> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.586900, 14.134724, 12.483657>,  <8.532128, 14.318444, 12.628042>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.586900, 14.134724, 12.483657>,  <8.678185, 13.828524, 12.243015>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.586900, 14.134724, 12.483657> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.904854, 0.394847, -0.159169,
		-0.359385, 0.508040, -0.782776,
		-0.228213, 0.765501, 0.601604,
		8.518436, 14.364374, 12.664138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.846773, 14.496531, 11.872873>,  <8.678185, 13.828524, 12.243015>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.846773, 14.496531, 11.872873> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.827324, 14.624784, 12.251255>,  <8.815654, 14.701735, 12.478284>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.827324, 14.624784, 12.251255>,  <8.846773, 14.496531, 11.872873>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.827324, 14.624784, 12.251255> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.868212, 0.481793, -0.118676,
		-0.493805, 0.815519, -0.301803,
		-0.048624, 0.320632, 0.945955,
		8.812737, 14.720973, 12.535042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.014810, 15.168868, 11.876087>,  <8.846773, 14.496531, 11.872873>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.014810, 15.168868, 11.876087> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.069750, 15.084445, 12.263198>,  <9.102714, 15.033792, 12.495464>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.069750, 15.084445, 12.263198>,  <9.014810, 15.168868, 11.876087>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.069750, 15.084445, 12.263198> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.751707, 0.658464, 0.036916,
		-0.645037, 0.722413, 0.249092,
		0.137349, -0.211057, 0.967776,
		9.110954, 15.021128, 12.553531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.062986, 15.746126, 12.242742>,  <9.014810, 15.168868, 11.876087>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.062986, 15.746126, 12.242742> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.244379, 15.511564, 12.511214>,  <9.353214, 15.370827, 12.672297>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.244379, 15.511564, 12.511214>,  <9.062986, 15.746126, 12.242742>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.244379, 15.511564, 12.511214> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704053, 0.697454, 0.133668,
		-0.546501, 0.411931, 0.729143,
		0.453482, -0.586405, 0.671181,
		9.380424, 15.335643, 12.712568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.434204, 16.250113, 12.649892>,  <9.062986, 15.746126, 12.242742>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.434204, 16.250113, 12.649892> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.603479, 15.896302, 12.728404>,  <9.705045, 15.684016, 12.775512>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.603479, 15.896302, 12.728404>,  <9.434204, 16.250113, 12.649892>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.603479, 15.896302, 12.728404> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.875488, 0.454991, 0.162801,
		-0.233307, 0.102946, 0.966938,
		0.423189, -0.884525, 0.196281,
		9.730436, 15.630944, 12.787289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.855135, 16.271719, 13.193164>,  <9.434204, 16.250113, 12.649892>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.855135, 16.271719, 13.193164> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.027830, 15.957556, 13.015744>,  <10.131447, 15.769057, 12.909292>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.027830, 15.957556, 13.015744>,  <9.855135, 16.271719, 13.193164>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.027830, 15.957556, 13.015744> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.900865, 0.400107, 0.168391,
		0.045211, -0.472278, 0.880289,
		0.431738, -0.785409, -0.443548,
		10.157351, 15.721933, 12.882680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.390891, 16.336123, 13.517912>,  <9.855135, 16.271719, 13.193164>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.390891, 16.336123, 13.517912> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.479842, 16.079884, 13.223924>,  <10.533213, 15.926140, 13.047531>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.479842, 16.079884, 13.223924>,  <10.390891, 16.336123, 13.517912>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.479842, 16.079884, 13.223924> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.948690, 0.315994, 0.011623,
		0.224800, -0.699844, 0.677999,
		0.222378, -0.640598, -0.734971,
		10.546556, 15.887704, 13.003432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.944686, 15.805247, 13.694126>,  <10.390891, 16.336123, 13.517912>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.944686, 15.805247, 13.694126> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.953407, 15.838473, 13.295604>,  <10.958640, 15.858409, 13.056490>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.953407, 15.838473, 13.295604>,  <10.944686, 15.805247, 13.694126>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.953407, 15.838473, 13.295604> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.970520, 0.237501, 0.041039,
		0.240032, -0.967829, -0.075439,
		0.021802, 0.083066, -0.996305,
		10.959948, 15.863393, 12.996712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.567689, 15.593549, 13.404416>,  <10.944686, 15.805247, 13.694126>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.567689, 15.593549, 13.404416> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.413647, 15.823294, 13.115473>,  <11.321221, 15.961141, 12.942106>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.413647, 15.823294, 13.115473>,  <11.567689, 15.593549, 13.404416>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.413647, 15.823294, 13.115473> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.910034, 0.366449, -0.193787,
		0.153403, -0.731999, -0.663811,
		-0.385105, 0.574363, -0.722358,
		11.298115, 15.995603, 12.898766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.988850, 15.496709, 12.861111>,  <11.567689, 15.593549, 13.404416>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.988850, 15.496709, 12.861111> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.789688, 15.834261, 12.781154>,  <11.670191, 16.036793, 12.733179>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.789688, 15.834261, 12.781154>,  <11.988850, 15.496709, 12.861111>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.789688, 15.834261, 12.781154> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.841036, 0.413638, -0.348657,
		-0.211542, -0.341715, -0.915686,
		-0.497904, 0.843881, -0.199893,
		11.640317, 16.087425, 12.721186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.391528, 15.737330, 12.216669>,  <11.988850, 15.496709, 12.861111>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.391528, 15.737330, 12.216669> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.194890, 16.056494, 12.356198>,  <12.076907, 16.247992, 12.439916>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.194890, 16.056494, 12.356198>,  <12.391528, 15.737330, 12.216669>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.194890, 16.056494, 12.356198> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593309, 0.600098, -0.536532,
		-0.637431, -0.056797, -0.768411,
		-0.491595, 0.797908, 0.348823,
		12.047411, 16.295866, 12.460845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.443390, 16.219694, 11.630688>,  <12.391528, 15.737330, 12.216669>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.443390, 16.219694, 11.630688> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.346506, 16.448128, 11.944426>,  <12.288376, 16.585188, 12.132668>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.346506, 16.448128, 11.944426>,  <12.443390, 16.219694, 11.630688>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.346506, 16.448128, 11.944426> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643347, 0.699666, -0.310761,
		-0.726250, 0.429336, -0.536872,
		-0.242211, 0.571085, 0.784344,
		12.273843, 16.619453, 12.179729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.342983, 16.898636, 11.364018>,  <12.443390, 16.219694, 11.630688>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.342983, 16.898636, 11.364018> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.422173, 16.935688, 11.754347>,  <12.469687, 16.957918, 11.988544>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.422173, 16.935688, 11.754347>,  <12.342983, 16.898636, 11.364018>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.422173, 16.935688, 11.754347> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713100, 0.669428, -0.208217,
		-0.672529, 0.737080, 0.066475,
		0.197973, 0.092628, 0.975821,
		12.481565, 16.963476, 12.047093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.638049, 17.524588, 11.395562>,  <12.342983, 16.898636, 11.364018>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.638049, 17.524588, 11.395562> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.719870, 17.409506, 11.769811>,  <12.768962, 17.340456, 11.994360>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.719870, 17.409506, 11.769811>,  <12.638049, 17.524588, 11.395562>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.719870, 17.409506, 11.769811> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.789902, 0.613029, 0.015813,
		-0.578112, 0.735814, 0.352653,
		0.204551, -0.287704, 0.935620,
		12.781235, 17.323195, 12.050497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.710013, 18.100153, 11.874421>,  <12.638049, 17.524588, 11.395562>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.710013, 18.100153, 11.874421> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.925632, 17.788593, 12.002635>,  <13.055002, 17.601658, 12.079563>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.925632, 17.788593, 12.002635>,  <12.710013, 18.100153, 11.874421>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.925632, 17.788593, 12.002635> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.820373, 0.571746, 0.009715,
		-0.190832, 0.257721, 0.947187,
		0.539046, -0.778901, 0.320535,
		13.087345, 17.554922, 12.098796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.204540, 18.433664, 12.198486>,  <12.710013, 18.100153, 11.874421>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.204540, 18.433664, 12.198486> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<13.345182, 18.065361, 12.130871>,  <13.429567, 17.844379, 12.090302>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<13.345182, 18.065361, 12.130871>,  <13.204540, 18.433664, 12.198486>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.345182, 18.065361, 12.130871> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.899194, 0.382407, -0.212639,
		0.260431, -0.077233, 0.962398,
		0.351605, -0.920760, -0.169039,
		13.450664, 17.789133, 12.080159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<15.558924, 19.009819, 24.830992> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.586298, 18.613272, 24.875731>,  <15.602723, 18.375343, 24.902575>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.586298, 18.613272, 24.875731>,  <15.558924, 19.009819, 24.830992>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.586298, 18.613272, 24.875731> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.700828, 0.032017, 0.712611,
		-0.710040, -0.127153, -0.692586,
		0.068436, -0.991366, 0.111846,
		15.606829, 18.315863, 24.909285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.884126, 18.789721, 24.717234>,  <15.558924, 19.009819, 24.830992>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.884126, 18.789721, 24.717234> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.073202, 18.518606, 24.942505>,  <15.186648, 18.355938, 25.077667>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.073202, 18.518606, 24.942505>,  <14.884126, 18.789721, 24.717234>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.073202, 18.518606, 24.942505> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.754122, 0.019520, 0.656445,
		-0.455921, -0.735001, -0.501905,
		0.472690, -0.677785, 0.563180,
		15.215010, 18.315271, 25.111460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.397940, 18.463072, 25.028978>,  <14.884126, 18.789721, 24.717234>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.397940, 18.463072, 25.028978> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.696934, 18.345564, 25.267294>,  <14.876330, 18.275059, 25.410284>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.696934, 18.345564, 25.267294>,  <14.397940, 18.463072, 25.028978>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.696934, 18.345564, 25.267294> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635803, -0.056606, 0.769773,
		-0.192410, -0.954199, -0.229091,
		0.747485, -0.293769, 0.595791,
		14.921179, 18.257433, 25.446032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.086306, 17.892982, 25.425209>,  <14.397940, 18.463072, 25.028978>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.086306, 17.892982, 25.425209> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.399212, 18.001652, 25.649443>,  <14.586956, 18.066853, 25.783983>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.399212, 18.001652, 25.649443>,  <14.086306, 17.892982, 25.425209>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.399212, 18.001652, 25.649443> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593069, 0.049460, 0.803631,
		0.190602, -0.961117, 0.199814,
		0.782266, 0.271677, 0.560582,
		14.633892, 18.083153, 25.817617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.098757, 17.465019, 26.085827>,  <14.086306, 17.892982, 25.425209>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.098757, 17.465019, 26.085827> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.307050, 17.798332, 26.160101>,  <14.432026, 17.998320, 26.204664>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.307050, 17.798332, 26.160101>,  <14.098757, 17.465019, 26.085827>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.307050, 17.798332, 26.160101> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387894, 0.037182, 0.920953,
		0.760510, -0.551596, 0.342587,
		0.520733, 0.833282, 0.185684,
		14.463269, 18.048317, 26.215807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.240470, 17.408012, 26.824310>,  <14.098757, 17.465019, 26.085827>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.240470, 17.408012, 26.824310> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.304936, 17.794256, 26.742704>,  <14.343616, 18.026003, 26.693741>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.304936, 17.794256, 26.742704>,  <14.240470, 17.408012, 26.824310>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.304936, 17.794256, 26.742704> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316532, 0.246372, 0.916028,
		0.934790, -0.083056, 0.345354,
		0.161167, 0.965610, -0.204016,
		14.353287, 18.083939, 26.681499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.687124, 17.746756, 27.432177>,  <14.240470, 17.408012, 26.824310>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.687124, 17.746756, 27.432177> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.492697, 18.053307, 27.264174>,  <14.376040, 18.237236, 27.163372>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.492697, 18.053307, 27.264174>,  <14.687124, 17.746756, 27.432177>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.492697, 18.053307, 27.264174> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254962, 0.335337, 0.906942,
		0.835902, 0.547921, 0.032400,
		-0.486068, 0.766376, -0.420008,
		14.346876, 18.283218, 27.138170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.039310, 18.330437, 27.735329>,  <14.687124, 17.746756, 27.432177>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.039310, 18.330437, 27.735329> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.672297, 18.437193, 27.617411>,  <14.452089, 18.501247, 27.546659>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.672297, 18.437193, 27.617411>,  <15.039310, 18.330437, 27.735329>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.672297, 18.437193, 27.617411> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218652, 0.280608, 0.934586,
		0.332156, 0.921970, -0.199111,
		-0.917532, 0.266892, -0.294796,
		14.397038, 18.517260, 27.528973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.844402, 18.825130, 28.186268>,  <15.039310, 18.330437, 27.735329>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.844402, 18.825130, 28.186268> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.485608, 18.756302, 28.023390>,  <14.270331, 18.715006, 27.925663>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.485608, 18.756302, 28.023390>,  <14.844402, 18.825130, 28.186268>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.485608, 18.756302, 28.023390> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433997, 0.167663, 0.885175,
		-0.084040, 0.970712, -0.225069,
		-0.896986, -0.172069, -0.407196,
		14.216513, 18.704681, 27.901232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.449121, 19.385630, 28.432310>,  <14.844402, 18.825130, 28.186268>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.449121, 19.385630, 28.432310> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.218343, 19.074005, 28.334167>,  <14.079876, 18.887030, 28.275282>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.218343, 19.074005, 28.334167>,  <14.449121, 19.385630, 28.432310>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.218343, 19.074005, 28.334167> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461785, 0.063346, 0.884727,
		-0.673714, 0.623740, -0.396306,
		-0.576944, -0.779061, -0.245356,
		14.045259, 18.840286, 28.260561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.792636, 19.554174, 28.605146>,  <14.449121, 19.385630, 28.432310>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.792636, 19.554174, 28.605146> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.772768, 19.154934, 28.590572>,  <13.760847, 18.915390, 28.581827>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.772768, 19.154934, 28.590572>,  <13.792636, 19.554174, 28.605146>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.772768, 19.154934, 28.590572> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194202, -0.026135, 0.980613,
		-0.979703, 0.055783, -0.192535,
		-0.049670, -0.998101, -0.036437,
		13.757867, 18.855503, 28.579641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.224698, 19.365782, 28.926760>,  <13.792636, 19.554174, 28.605146>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.224698, 19.365782, 28.926760> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.450162, 19.035885, 28.945042>,  <13.585441, 18.837946, 28.956011>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.450162, 19.035885, 28.945042>,  <13.224698, 19.365782, 28.926760>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.450162, 19.035885, 28.945042> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126912, -0.031797, 0.991404,
		-0.816199, -0.564615, -0.122593,
		0.563660, -0.824742, 0.045704,
		13.619260, 18.788462, 28.958754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.806853, 18.834150, 29.139805>,  <13.224698, 19.365782, 28.926760>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.806853, 18.834150, 29.139805> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.191565, 18.785923, 29.238148>,  <13.422391, 18.756987, 29.297153>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.191565, 18.785923, 29.238148>,  <12.806853, 18.834150, 29.139805>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.191565, 18.785923, 29.238148> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256332, -0.080601, 0.963222,
		-0.096324, -0.989427, -0.108427,
		0.961777, -0.120575, 0.245858,
		13.480098, 18.749752, 29.311905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.782650, 18.369875, 29.677860>,  <12.806853, 18.834150, 29.139805>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.782650, 18.369875, 29.677860> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.113391, 18.583525, 29.748318>,  <13.311835, 18.711716, 29.790592>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.113391, 18.583525, 29.748318>,  <12.782650, 18.369875, 29.677860>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.113391, 18.583525, 29.748318> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135765, -0.114369, 0.984118,
		0.545788, -0.837633, -0.022051,
		0.826851, 0.534126, 0.176143,
		13.361446, 18.743763, 29.801161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.231730, 19.016979, 29.735254>,  <12.782650, 18.369875, 29.677860>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.231730, 19.016979, 29.735254> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.864999, 19.037952, 29.576925>,  <11.644960, 19.050537, 29.481928>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.864999, 19.037952, 29.576925>,  <12.231730, 19.016979, 29.735254>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.864999, 19.037952, 29.576925> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294789, -0.579745, -0.759602,
		-0.269306, -0.813109, 0.516070,
		-0.916828, 0.052434, -0.395824,
		11.589951, 19.053682, 29.458178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.034088, 18.357347, 29.592993>,  <12.231730, 19.016979, 29.735254>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.034088, 18.357347, 29.592993> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.819260, 18.575478, 29.335567>,  <11.690363, 18.706356, 29.181112>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.819260, 18.575478, 29.335567>,  <12.034088, 18.357347, 29.592993>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.819260, 18.575478, 29.335567> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289401, -0.597510, -0.747816,
		-0.792339, -0.587879, 0.163087,
		-0.537072, 0.545326, -0.643563,
		11.658138, 18.739075, 29.142498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.533834, 17.854143, 29.286589>,  <12.034088, 18.357347, 29.592993>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.533834, 17.854143, 29.286589> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.551414, 18.166487, 29.037325>,  <11.561962, 18.353893, 28.887766>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.551414, 18.166487, 29.037325>,  <11.533834, 17.854143, 29.286589>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.551414, 18.166487, 29.037325> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131606, -0.622851, -0.771191,
		-0.990327, -0.048117, -0.130140,
		0.043950, 0.780859, -0.623159,
		11.564599, 18.400745, 28.850378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.984960, 17.700804, 28.837400>,  <11.533834, 17.854143, 29.286589>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.984960, 17.700804, 28.837400> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.237309, 17.960958, 28.668169>,  <11.388718, 18.117052, 28.566629>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.237309, 17.960958, 28.668169>,  <10.984960, 17.700804, 28.837400>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.237309, 17.960958, 28.668169> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131923, -0.627261, -0.767555,
		-0.764589, 0.428416, -0.481523,
		0.630873, 0.650388, -0.423078,
		11.426570, 18.156075, 28.541246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.767241, 17.784166, 28.097189>,  <10.984960, 17.700804, 28.837400>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.767241, 17.784166, 28.097189> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.150085, 17.898085, 28.118471>,  <11.379792, 17.966436, 28.131241>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.150085, 17.898085, 28.118471>,  <10.767241, 17.784166, 28.097189>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.150085, 17.898085, 28.118471> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192112, -0.486398, -0.852356,
		-0.216869, 0.826020, -0.520249,
		0.957111, 0.284796, 0.053204,
		11.437219, 17.983524, 28.134432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.917075, 18.278990, 27.531345>,  <10.767241, 17.784166, 28.097189>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.917075, 18.278990, 27.531345> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.285690, 18.160166, 27.631363>,  <11.506860, 18.088871, 27.691374>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.285690, 18.160166, 27.631363>,  <10.917075, 18.278990, 27.531345>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.285690, 18.160166, 27.631363> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172855, -0.262777, -0.949247,
		0.347688, 0.917989, -0.190811,
		0.921539, -0.297059, 0.250044,
		11.562152, 18.071049, 27.706375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.331557, 18.318117, 26.967939>,  <10.917075, 18.278990, 27.531345>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.331557, 18.318117, 26.967939> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.560621, 18.083323, 27.196852>,  <11.698060, 17.942446, 27.334200>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.560621, 18.083323, 27.196852>,  <11.331557, 18.318117, 26.967939>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.560621, 18.083323, 27.196852> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441243, -0.367640, -0.818624,
		0.690916, 0.721308, 0.048472,
		0.572660, -0.586988, 0.572281,
		11.732419, 17.907227, 27.368536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.014299, 18.435259, 26.852537>,  <11.331557, 18.318117, 26.967939>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.014299, 18.435259, 26.852537> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.015573, 18.064646, 27.003019>,  <12.016336, 17.842278, 27.093309>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.015573, 18.064646, 27.003019>,  <12.014299, 18.435259, 26.852537>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.015573, 18.064646, 27.003019> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556241, -0.310995, -0.770635,
		0.831015, 0.211715, 0.514384,
		0.003184, -0.926531, 0.376206,
		12.016528, 17.786686, 27.115881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.629758, 18.112766, 26.659529>,  <12.014299, 18.435259, 26.852537>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.629758, 18.112766, 26.659529> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.415304, 17.781921, 26.726995>,  <12.286632, 17.583414, 26.767475>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.415304, 17.781921, 26.726995>,  <12.629758, 18.112766, 26.659529>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.415304, 17.781921, 26.726995> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559200, -0.497681, -0.663030,
		0.632341, -0.261155, 0.729345,
		-0.536135, -0.827110, 0.168666,
		12.254464, 17.533789, 26.777596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.105870, 17.611433, 26.620977>,  <12.629758, 18.112766, 26.659529>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.105870, 17.611433, 26.620977> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.745339, 17.447826, 26.563965>,  <12.529021, 17.349663, 26.529757>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.745339, 17.447826, 26.563965>,  <13.105870, 17.611433, 26.620977>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.745339, 17.447826, 26.563965> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348322, -0.488867, -0.799800,
		0.257452, -0.770528, 0.583099,
		-0.901327, -0.409016, -0.142532,
		12.474941, 17.325121, 26.521206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.209782, 16.833174, 26.457937>,  <13.105870, 17.611433, 26.620977>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.209782, 16.833174, 26.457937> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.852624, 16.922920, 26.301785>,  <12.638330, 16.976768, 26.208094>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.852624, 16.922920, 26.301785>,  <13.209782, 16.833174, 26.457937>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.852624, 16.922920, 26.301785> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326429, -0.274613, -0.904451,
		-0.310135, -0.935011, 0.171960,
		-0.892895, 0.224369, -0.390383,
		12.584755, 16.990231, 26.184669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.135756, 16.339279, 25.858763>,  <13.209782, 16.833174, 26.457937>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.135756, 16.339279, 25.858763> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.804669, 16.549999, 25.781437>,  <12.606018, 16.676432, 25.735043>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.804669, 16.549999, 25.781437>,  <13.135756, 16.339279, 25.858763>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.804669, 16.549999, 25.781437> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062809, -0.255356, -0.964805,
		-0.557622, -0.810725, 0.178274,
		-0.827715, 0.526799, -0.193313,
		12.556355, 16.708038, 25.723442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.704363, 15.906324, 25.546503>,  <13.135756, 16.339279, 25.858763>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.704363, 15.906324, 25.546503> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.570310, 16.265398, 25.432066>,  <12.489878, 16.480843, 25.363403>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.570310, 16.265398, 25.432066>,  <12.704363, 15.906324, 25.546503>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.570310, 16.265398, 25.432066> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023132, -0.311402, -0.949997,
		-0.941887, -0.311757, 0.125126,
		-0.335133, 0.897684, -0.286095,
		12.469769, 16.534702, 25.346237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.965693, 15.890439, 25.162157>,  <12.704363, 15.906324, 25.546503>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.965693, 15.890439, 25.162157> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.160081, 16.222534, 25.052952>,  <12.276714, 16.421791, 24.987429>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.160081, 16.222534, 25.052952>,  <11.965693, 15.890439, 25.162157>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.160081, 16.222534, 25.052952> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004946, -0.314990, -0.949082,
		-0.873961, 0.459876, -0.157182,
		0.485971, 0.830238, -0.273014,
		12.305872, 16.471605, 24.971048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.231175, 15.810166, 24.988815>,  <11.965693, 15.890439, 25.162157>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.231175, 15.810166, 24.988815> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.865317, 15.774453, 24.831106>,  <10.645802, 15.753025, 24.736481>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.865317, 15.774453, 24.831106>,  <11.231175, 15.810166, 24.988815>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<10.865317, 15.774453, 24.831106> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398368, 0.364920, 0.841508,
		0.068745, 0.926748, -0.369341,
		-0.914646, -0.089284, -0.394273,
		10.590923, 15.747668, 24.712824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.845675, 16.420197, 25.241310>,  <11.231175, 15.810166, 24.988815>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.845675, 16.420197, 25.241310> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.582493, 16.148100, 25.112087>,  <10.424583, 15.984841, 25.034554>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.582493, 16.148100, 25.112087>,  <10.845675, 16.420197, 25.241310>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<10.582493, 16.148100, 25.112087> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517258, 0.096456, 0.850377,
		-0.547302, 0.726613, -0.415324,
		-0.657955, -0.680243, -0.323056,
		10.385106, 15.944027, 25.015171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.237716, 16.793085, 25.339945>,  <10.845675, 16.420197, 25.241310>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.237716, 16.793085, 25.339945> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.146425, 16.403650, 25.337479>,  <10.091651, 16.169989, 25.335999>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.146425, 16.403650, 25.337479>,  <10.237716, 16.793085, 25.339945>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<10.146425, 16.403650, 25.337479> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571639, 0.128870, 0.810322,
		-0.788125, 0.188462, -0.585953,
		-0.228227, -0.973589, -0.006166,
		10.077957, 16.111574, 25.335629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.521261, 16.819597, 25.406164>,  <10.237716, 16.793085, 25.339945>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.521261, 16.819597, 25.406164> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.611916, 16.441053, 25.498283>,  <9.666308, 16.213926, 25.553555>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.611916, 16.441053, 25.498283>,  <9.521261, 16.819597, 25.406164>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<9.611916, 16.441053, 25.498283> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.665336, 0.022257, 0.746212,
		-0.711311, -0.322345, -0.624604,
		0.226635, -0.946361, 0.230299,
		9.679906, 16.157145, 25.567373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.932692, 16.516003, 25.664892>,  <9.521261, 16.819597, 25.406164>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.932692, 16.516003, 25.664892> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.230394, 16.281769, 25.793373>,  <9.409016, 16.141228, 25.870462>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.230394, 16.281769, 25.793373>,  <8.932692, 16.516003, 25.664892>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<9.230394, 16.281769, 25.793373> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472568, -0.121855, 0.872830,
		-0.471978, -0.801398, -0.367420,
		0.744256, -0.585587, 0.321202,
		9.453671, 16.106092, 25.889734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.626884, 15.962575, 25.982624>,  <8.932692, 16.516003, 25.664892>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.626884, 15.962575, 25.982624> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<8.993316, 15.976560, 26.142412>,  <9.213175, 15.984951, 26.238285>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<8.993316, 15.976560, 26.142412>,  <8.626884, 15.962575, 25.982624>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<8.993316, 15.976560, 26.142412> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365652, -0.336109, 0.867945,
		0.164611, -0.941174, -0.295118,
		0.916080, 0.034963, 0.399470,
		9.268140, 15.987048, 26.262253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.691230, 15.366787, 26.443798>,  <8.626884, 15.962575, 25.982624>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.691230, 15.366787, 26.443798> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<8.960718, 15.641057, 26.554035>,  <9.122411, 15.805619, 26.620178>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<8.960718, 15.641057, 26.554035>,  <8.691230, 15.366787, 26.443798>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<8.960718, 15.641057, 26.554035> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221185, -0.168735, 0.960523,
		0.705109, -0.708081, 0.037981,
		0.673720, 0.685675, 0.275594,
		9.162834, 15.846760, 26.636713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.906017, 14.695802, 26.732162>,  <8.691230, 15.366787, 26.443798>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.906017, 14.695802, 26.732162> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<8.893057, 14.312220, 26.844841>,  <8.885281, 14.082070, 26.912449>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<8.893057, 14.312220, 26.844841>,  <8.906017, 14.695802, 26.732162>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<8.893057, 14.312220, 26.844841> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343161, -0.275387, -0.897999,
		0.938718, 0.067571, 0.337999,
		-0.032401, -0.958956, 0.281698,
		8.883336, 14.024533, 26.929350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.551083, 14.402895, 26.566128>,  <8.906017, 14.695802, 26.732162>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.551083, 14.402895, 26.566128> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.278581, 14.110232, 26.556583>,  <9.115080, 13.934634, 26.550856>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.278581, 14.110232, 26.556583>,  <9.551083, 14.402895, 26.566128>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<9.278581, 14.110232, 26.556583> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238376, -0.190899, -0.952226,
		0.692148, -0.654396, 0.304460,
		-0.681254, -0.731658, -0.023862,
		9.074204, 13.890735, 26.549425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.814390, 13.935650, 26.059959>,  <9.551083, 14.402895, 26.566128>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.814390, 13.935650, 26.059959> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.447603, 13.783917, 26.109404>,  <9.227531, 13.692878, 26.139071>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.447603, 13.783917, 26.109404>,  <9.814390, 13.935650, 26.059959>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<9.447603, 13.783917, 26.109404> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001005, -0.312021, -0.950075,
		0.398961, -0.871063, 0.286494,
		-0.916967, -0.379331, 0.123609,
		9.172513, 13.670118, 26.146486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.845946, 13.270369, 25.757992>,  <9.814390, 13.935650, 26.059959>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.845946, 13.270369, 25.757992> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.477983, 13.427183, 25.761389>,  <9.257204, 13.521272, 25.763428>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.477983, 13.427183, 25.761389>,  <9.845946, 13.270369, 25.757992>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<9.477983, 13.427183, 25.761389> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124441, -0.271321, -0.954410,
		-0.371860, -0.879029, 0.298377,
		-0.919910, 0.392037, 0.008494,
		9.202009, 13.544794, 25.763937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.386110, 12.724043, 25.572090>,  <9.845946, 13.270369, 25.757992>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.386110, 12.724043, 25.572090> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.170472, 13.056861, 25.519815>,  <9.041089, 13.256552, 25.488451>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.170472, 13.056861, 25.519815>,  <9.386110, 12.724043, 25.572090>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<9.170472, 13.056861, 25.519815> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113429, -0.225473, -0.967624,
		-0.834573, -0.506817, 0.215929,
		-0.539094, 0.832045, -0.130686,
		9.008744, 13.306475, 25.480610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.739204, 12.490177, 25.164831>,  <9.386110, 12.724043, 25.572090>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.739204, 12.490177, 25.164831> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<8.797990, 12.881811, 25.108553>,  <8.833261, 13.116792, 25.074787>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<8.797990, 12.881811, 25.108553>,  <8.739204, 12.490177, 25.164831>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<8.797990, 12.881811, 25.108553> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203606, -0.109249, -0.972938,
		-0.967960, 0.171632, 0.183292,
		0.146963, 0.979085, -0.140694,
		8.842078, 13.175537, 25.066345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.282929, 12.557330, 24.719015>,  <8.739204, 12.490177, 25.164831>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.282929, 12.557330, 24.719015> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<8.503193, 12.889427, 24.684437>,  <8.635351, 13.088685, 24.663691>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<8.503193, 12.889427, 24.684437>,  <8.282929, 12.557330, 24.719015>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<8.503193, 12.889427, 24.684437> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148457, -0.004501, -0.988908,
		-0.821423, 0.557384, 0.120777,
		0.550658, 0.830243, -0.086445,
		8.668390, 13.138500, 24.658503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<12.169200, 15.719369, 28.126942> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.191245, 15.871263, 27.757561>,  <12.204473, 15.962399, 27.535933>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.191245, 15.871263, 27.757561>,  <12.169200, 15.719369, 28.126942>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.191245, 15.871263, 27.757561> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100453, -0.918057, -0.383511,
		-0.993414, 0.113900, -0.012451,
		0.055112, 0.379734, -0.923452,
		12.207779, 15.985183, 27.480524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.710079, 15.958920, 27.638784>,  <12.169200, 15.719369, 28.126942>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.710079, 15.958920, 27.638784> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.087446, 15.907522, 27.761065>,  <13.313867, 15.876683, 27.834433>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.087446, 15.907522, 27.761065>,  <12.710079, 15.958920, 27.638784>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.087446, 15.907522, 27.761065> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137590, -0.687097, -0.713419,
		0.301717, 0.715113, -0.630539,
		0.943417, -0.128495, 0.305701,
		13.370471, 15.868974, 27.852776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.257593, 16.193474, 27.141682>,  <12.710079, 15.958920, 27.638784>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.257593, 16.193474, 27.141682> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.439335, 15.928687, 27.380133>,  <13.548380, 15.769815, 27.523203>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.439335, 15.928687, 27.380133>,  <13.257593, 16.193474, 27.141682>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.439335, 15.928687, 27.380133> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134047, -0.610762, -0.780385,
		0.880678, 0.434479, -0.188767,
		0.454353, -0.661965, 0.596125,
		13.575641, 15.730098, 27.558969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.421423, 16.649233, 27.619627>,  <13.257593, 16.193474, 27.141682>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.421423, 16.649233, 27.619627> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.632966, 16.843996, 27.897686>,  <13.759892, 16.960854, 28.064522>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.632966, 16.843996, 27.897686>,  <13.421423, 16.649233, 27.619627>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.632966, 16.843996, 27.897686> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245971, -0.871843, 0.423543,
		0.812285, -0.053008, -0.580847,
		0.528858, 0.486909, 0.695147,
		13.791623, 16.990068, 28.106230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.080359, 16.564734, 27.520395>,  <13.421423, 16.649233, 27.619627>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.080359, 16.564734, 27.520395> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.013954, 16.590807, 27.913982>,  <13.974112, 16.606451, 28.150135>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.013954, 16.590807, 27.913982>,  <14.080359, 16.564734, 27.520395>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.013954, 16.590807, 27.913982> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599320, -0.785720, 0.153166,
		0.783107, 0.615138, 0.091371,
		-0.166011, 0.065185, 0.983967,
		13.964150, 16.610363, 28.209173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.080453, 16.160946, 26.939196>,  <14.080359, 16.564734, 27.520395>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.080453, 16.160946, 26.939196> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.003776, 15.827286, 27.146055>,  <13.957769, 15.627090, 27.270170>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.003776, 15.827286, 27.146055>,  <14.080453, 16.160946, 26.939196>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.003776, 15.827286, 27.146055> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614149, -0.512959, -0.599745,
		0.765555, 0.202641, 0.610624,
		-0.191692, -0.834152, 0.517150,
		13.946268, 15.577040, 27.301201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.684439, 15.790682, 27.009426>,  <14.080453, 16.160946, 26.939196>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.684439, 15.790682, 27.009426> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.406507, 15.506447, 27.053755>,  <14.239749, 15.335906, 27.080351>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.406507, 15.506447, 27.053755>,  <14.684439, 15.790682, 27.009426>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.406507, 15.506447, 27.053755> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522709, -0.604815, -0.600811,
		0.493954, -0.359533, 0.791673,
		-0.694827, -0.710587, 0.110820,
		14.198059, 15.293271, 27.087000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.090336, 15.179852, 27.045910>,  <14.684439, 15.790682, 27.009426>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.090336, 15.179852, 27.045910> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.712571, 15.085388, 26.954420>,  <14.485912, 15.028709, 26.899527>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.712571, 15.085388, 26.954420>,  <15.090336, 15.179852, 27.045910>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.712571, 15.085388, 26.954420> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328716, -0.666328, -0.669293,
		0.005657, -0.707272, 0.706918,
		-0.944412, -0.236161, -0.228722,
		14.429248, 15.014540, 26.885803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.055643, 14.456182, 27.213850>,  <15.090336, 15.179852, 27.045910>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.055643, 14.456182, 27.213850> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.745543, 14.544732, 26.977213>,  <14.559484, 14.597862, 26.835230>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.745543, 14.544732, 26.977213>,  <15.055643, 14.456182, 27.213850>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.745543, 14.544732, 26.977213> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241933, -0.761090, -0.601840,
		-0.583487, -0.609702, 0.536477,
		-0.775249, 0.221374, -0.591593,
		14.512969, 14.611145, 26.799734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.701654, 13.837247, 27.112638>,  <15.055643, 14.456182, 27.213850>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.701654, 13.837247, 27.112638> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.622170, 14.080074, 26.804876>,  <14.574480, 14.225771, 26.620220>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.622170, 14.080074, 26.804876>,  <14.701654, 13.837247, 27.112638>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.622170, 14.080074, 26.804876> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237607, -0.731797, -0.638761,
		-0.950819, -0.309744, 0.001173,
		-0.198711, 0.607068, -0.769404,
		14.562557, 14.262195, 26.574055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.315074, 13.403487, 26.666380>,  <14.701654, 13.837247, 27.112638>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.315074, 13.403487, 26.666380> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.444388, 13.692975, 26.422504>,  <14.521976, 13.866668, 26.276180>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.444388, 13.692975, 26.422504>,  <14.315074, 13.403487, 26.666380>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.444388, 13.692975, 26.422504> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351249, -0.690029, -0.632838,
		-0.878698, -0.009564, -0.477282,
		0.323286, 0.723719, -0.609686,
		14.541374, 13.910090, 26.239599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.029185, 13.353840, 26.056412>,  <14.315074, 13.403487, 26.666380>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.029185, 13.353840, 26.056412> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.374749, 13.533816, 25.965891>,  <14.582088, 13.641802, 25.911579>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.374749, 13.533816, 25.965891>,  <14.029185, 13.353840, 26.056412>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.374749, 13.533816, 25.965891> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123731, -0.625164, -0.770624,
		-0.488210, 0.637749, -0.595757,
		0.863911, 0.449940, -0.226302,
		14.633923, 13.668798, 25.898001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.495811, 13.117574, 26.512951>,  <14.029185, 13.353840, 26.056412>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.495811, 13.117574, 26.512951> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.184706, 12.869941, 26.469454>,  <12.998043, 12.721361, 26.443356>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.184706, 12.869941, 26.469454>,  <13.495811, 13.117574, 26.512951>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.184706, 12.869941, 26.469454> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313931, 0.232711, 0.920485,
		-0.544550, 0.750056, -0.375342,
		-0.777761, -0.619081, -0.108743,
		12.951377, 12.684216, 26.436831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.866437, 13.512222, 26.699038>,  <13.495811, 13.117574, 26.512951>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.866437, 13.512222, 26.699038> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.766987, 13.127551, 26.745272>,  <12.707316, 12.896749, 26.773012>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.766987, 13.127551, 26.745272>,  <12.866437, 13.512222, 26.699038>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.766987, 13.127551, 26.745272> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471220, 0.224350, 0.853006,
		-0.846249, 0.157612, -0.508941,
		-0.248625, -0.961678, 0.115586,
		12.692399, 12.839047, 26.779947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.165014, 13.486082, 26.868399>,  <12.866437, 13.512222, 26.699038>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.165014, 13.486082, 26.868399> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.285880, 13.115552, 26.958391>,  <12.358399, 12.893233, 27.012386>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.285880, 13.115552, 26.958391>,  <12.165014, 13.486082, 26.868399>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.285880, 13.115552, 26.958391> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489865, 0.051573, 0.870271,
		-0.817758, -0.373175, -0.438191,
		0.302165, -0.926326, 0.224980,
		12.376530, 12.837654, 27.025885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.628959, 13.096519, 27.142202>,  <12.165014, 13.486082, 26.868399>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.628959, 13.096519, 27.142202> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.941641, 12.894920, 27.289129>,  <12.129251, 12.773961, 27.377285>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.941641, 12.894920, 27.289129>,  <11.628959, 13.096519, 27.142202>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.941641, 12.894920, 27.289129> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456008, -0.060134, 0.887942,
		-0.425434, -0.861608, -0.276835,
		0.781705, -0.503999, 0.367317,
		12.176152, 12.743721, 27.399324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.472486, 12.430233, 27.451359>,  <11.628959, 13.096519, 27.142202>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.472486, 12.430233, 27.451359> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.817974, 12.522052, 27.630825>,  <12.025267, 12.577143, 27.738504>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.817974, 12.522052, 27.630825>,  <11.472486, 12.430233, 27.451359>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.817974, 12.522052, 27.630825> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459836, -0.005401, 0.887988,
		0.206258, -0.973283, 0.100889,
		0.863718, 0.229547, 0.448664,
		12.077089, 12.590916, 27.765425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.553323, 12.010898, 28.053656>,  <11.472486, 12.430233, 27.451359>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.553323, 12.010898, 28.053656> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.809923, 12.302623, 28.148800>,  <11.963883, 12.477658, 28.205887>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.809923, 12.302623, 28.148800>,  <11.553323, 12.010898, 28.053656>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.809923, 12.302623, 28.148800> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336269, -0.011349, 0.941698,
		0.689493, -0.684085, 0.237966,
		0.641500, 0.729314, 0.237861,
		12.002374, 12.521417, 28.220158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.876981, 11.834710, 28.720053>,  <11.553323, 12.010898, 28.053656>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.876981, 11.834710, 28.720053> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.929439, 12.231194, 28.713118>,  <11.960913, 12.469086, 28.708956>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.929439, 12.231194, 28.713118>,  <11.876981, 11.834710, 28.720053>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.929439, 12.231194, 28.713118> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349355, 0.062576, 0.934899,
		0.927768, -0.116549, 0.354491,
		0.131144, 0.991212, -0.017339,
		11.968781, 12.528558, 28.707916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.914108, 12.068212, 29.444017>,  <11.876981, 11.834710, 28.720053>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.914108, 12.068212, 29.444017> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.849140, 12.406446, 29.240604>,  <11.810159, 12.609385, 29.118557>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.849140, 12.406446, 29.240604>,  <11.914108, 12.068212, 29.444017>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.849140, 12.406446, 29.240604> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430060, 0.403184, 0.807770,
		0.888070, 0.349898, 0.298167,
		-0.162421, 0.845585, -0.508533,
		11.800414, 12.660121, 29.088045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.156075, 12.528912, 29.890577>,  <11.914108, 12.068212, 29.444017>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.156075, 12.528912, 29.890577> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.914652, 12.734316, 29.646603>,  <11.769797, 12.857558, 29.500217>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.914652, 12.734316, 29.646603>,  <12.156075, 12.528912, 29.890577>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.914652, 12.734316, 29.646603> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511415, 0.337557, 0.790260,
		0.611695, 0.788899, 0.058881,
		-0.603560, 0.513510, -0.609937,
		11.733584, 12.888369, 29.463621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.135634, 13.219625, 30.220793>,  <12.156075, 12.528912, 29.890577>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.135634, 13.219625, 30.220793> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.826514, 13.190995, 29.968552>,  <11.641043, 13.173818, 29.817207>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.826514, 13.190995, 29.968552>,  <12.135634, 13.219625, 30.220793>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.826514, 13.190995, 29.968552> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632311, 0.172048, 0.755369,
		0.054429, 0.982485, -0.178216,
		-0.772800, -0.071574, -0.630601,
		11.594674, 13.169523, 29.779371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.890772, 13.859281, 30.237900>,  <12.135634, 13.219625, 30.220793>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.890772, 13.859281, 30.237900> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.596765, 13.614028, 30.122093>,  <11.420361, 13.466877, 30.052608>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.596765, 13.614028, 30.122093>,  <11.890772, 13.859281, 30.237900>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.596765, 13.614028, 30.122093> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617250, 0.428329, 0.659952,
		-0.280627, 0.663781, -0.693285,
		-0.735017, -0.613131, -0.289518,
		11.376260, 13.430089, 30.035238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.333675, 14.292135, 30.277075>,  <11.890772, 13.859281, 30.237900>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.333675, 14.292135, 30.277075> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.201090, 13.914894, 30.266590>,  <11.121538, 13.688549, 30.260300>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.201090, 13.914894, 30.266590>,  <11.333675, 14.292135, 30.277075>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.201090, 13.914894, 30.266590> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.710374, 0.231192, 0.664769,
		-0.620886, 0.238968, -0.746589,
		-0.331464, -0.943103, -0.026213,
		11.101650, 13.631963, 30.258726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.616067, 14.296966, 30.254322>,  <11.333675, 14.292135, 30.277075>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.616067, 14.296966, 30.254322> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.679403, 13.925940, 30.389704>,  <10.717405, 13.703323, 30.470932>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.679403, 13.925940, 30.389704>,  <10.616067, 14.296966, 30.254322>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<10.679403, 13.925940, 30.389704> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.723782, 0.124119, 0.678773,
		-0.671616, -0.352443, -0.651703,
		0.158340, -0.927566, 0.338452,
		10.726905, 13.647670, 30.491240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.043482, 13.810875, 30.155046>,  <10.616067, 14.296966, 30.254322>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.043482, 13.810875, 30.155046> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.258298, 13.700557, 30.473927>,  <10.387187, 13.634366, 30.665255>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.258298, 13.700557, 30.473927>,  <10.043482, 13.810875, 30.155046>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<10.258298, 13.700557, 30.473927> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.824360, 0.028879, 0.565328,
		-0.178940, -0.960781, -0.211849,
		0.537039, -0.275799, 0.797197,
		10.419410, 13.617818, 30.713085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.365396, 14.156275, 29.862158>,  <10.043482, 13.810875, 30.155046>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.365396, 14.156275, 29.862158> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.035235, 14.359504, 29.763712>,  <8.837139, 14.481441, 29.704643>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.035235, 14.359504, 29.763712>,  <9.365396, 14.156275, 29.862158>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<9.035235, 14.359504, 29.763712> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085010, -0.319128, -0.943891,
		-0.558109, -0.800012, 0.220217,
		-0.825402, 0.508074, -0.246117,
		8.787615, 14.511926, 29.689877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.828391, 13.698782, 29.559032>,  <9.365396, 14.156275, 29.862158>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.828391, 13.698782, 29.559032> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.725906, 14.066408, 29.439251>,  <8.664415, 14.286984, 29.367382>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.725906, 14.066408, 29.439251>,  <8.828391, 13.698782, 29.559032>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<8.725906, 14.066408, 29.439251> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072154, -0.327115, -0.942225,
		-0.963924, -0.219802, 0.150125,
		-0.256211, 0.919066, -0.299455,
		8.649043, 14.342128, 29.349415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.328781, 13.531241, 29.193972>,  <8.828391, 13.698782, 29.559032>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.328781, 13.531241, 29.193972> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.440304, 13.896193, 29.074081>,  <8.507217, 14.115163, 29.002148>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.440304, 13.896193, 29.074081>,  <8.328781, 13.531241, 29.193972>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<8.440304, 13.896193, 29.074081> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092960, -0.284995, -0.954011,
		-0.955838, 0.293846, 0.005356,
		0.278806, 0.912377, -0.299724,
		8.523946, 14.169906, 28.984163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.823678, 13.708175, 28.672802>,  <8.328781, 13.531241, 29.193972>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.823678, 13.708175, 28.672802> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.143088, 13.936612, 28.596689>,  <8.334735, 14.073675, 28.551022>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.143088, 13.936612, 28.596689>,  <7.823678, 13.708175, 28.672802>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<8.143088, 13.936612, 28.596689> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034424, -0.272267, -0.961606,
		-0.600976, 0.774417, -0.197753,
		0.798526, 0.571094, -0.190284,
		8.382646, 14.107941, 28.539604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.692651, 14.057600, 28.056118>,  <7.823678, 13.708175, 28.672802>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.692651, 14.057600, 28.056118> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.090770, 14.049141, 28.093931>,  <8.329641, 14.044065, 28.116619>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.090770, 14.049141, 28.093931>,  <7.692651, 14.057600, 28.056118>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<8.090770, 14.049141, 28.093931> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084380, -0.290040, -0.953287,
		0.047577, 0.956781, -0.286892,
		0.995297, -0.021147, 0.094533,
		8.389359, 14.042797, 28.122292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.819263, 14.396611, 27.535721>,  <7.692651, 14.057600, 28.056118>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.819263, 14.396611, 27.535721> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.180738, 14.246705, 27.618568>,  <8.397624, 14.156761, 27.668276>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.180738, 14.246705, 27.618568>,  <7.819263, 14.396611, 27.535721>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<8.180738, 14.246705, 27.618568> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137021, -0.205168, -0.969088,
		0.405675, 0.904133, -0.134057,
		0.903688, -0.374766, 0.207117,
		8.451845, 14.134275, 27.680704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.155622, 14.632046, 27.036810>,  <7.819263, 14.396611, 27.535721>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.155622, 14.632046, 27.036810> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.376431, 14.328143, 27.174238>,  <8.508917, 14.145802, 27.256695>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.376431, 14.328143, 27.174238>,  <8.155622, 14.632046, 27.036810>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<8.376431, 14.328143, 27.174238> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181991, -0.292322, -0.938843,
		0.813725, 0.580791, -0.023100,
		0.552025, -0.759756, 0.343569,
		8.542039, 14.100216, 27.277309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.657276, 15.259256, 27.145174>,  <8.155622, 14.632046, 27.036810>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.657276, 15.259256, 27.145174> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.911958, 15.567693, 27.147276>,  <9.064767, 15.752754, 27.148537>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.911958, 15.567693, 27.147276>,  <8.657276, 15.259256, 27.145174>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<8.911958, 15.567693, 27.147276> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243198, 0.194337, 0.950309,
		0.731754, -0.606343, 0.311263,
		0.636703, 0.771091, 0.005254,
		9.102968, 15.799020, 27.148851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.093671, 15.282301, 27.801836>,  <8.657276, 15.259256, 27.145174>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.093671, 15.282301, 27.801836> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.120504, 15.657635, 27.666172>,  <9.136604, 15.882835, 27.584774>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.120504, 15.657635, 27.666172>,  <9.093671, 15.282301, 27.801836>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<9.120504, 15.657635, 27.666172> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055826, 0.342922, 0.937703,
		0.996184, -0.043970, 0.075388,
		0.067083, 0.938334, -0.339159,
		9.140630, 15.939135, 27.564425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.621871, 15.704841, 28.153889>,  <9.093671, 15.282301, 27.801836>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.621871, 15.704841, 28.153889> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.402736, 15.988687, 27.976656>,  <9.271255, 16.158995, 27.870316>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.402736, 15.988687, 27.976656>,  <9.621871, 15.704841, 28.153889>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<9.402736, 15.988687, 27.976656> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100201, 0.581477, 0.807369,
		0.830562, 0.397911, -0.389659,
		-0.547838, 0.709614, -0.443082,
		9.238384, 16.201571, 27.843731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.986206, 16.290546, 28.396465>,  <9.621871, 15.704841, 28.153889>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.986206, 16.290546, 28.396465> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.656707, 16.468718, 28.256161>,  <9.459007, 16.575621, 28.171978>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.656707, 16.468718, 28.256161>,  <9.986206, 16.290546, 28.396465>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<9.656707, 16.468718, 28.256161> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147976, 0.766142, 0.625404,
		0.547304, 0.463272, -0.697021,
		-0.823749, 0.445428, -0.350760,
		9.409582, 16.602346, 28.150932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.130014, 16.935038, 28.240978>,  <9.986206, 16.290546, 28.396465>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.130014, 16.935038, 28.240978> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.732911, 16.978146, 28.262203>,  <9.494649, 17.004009, 28.274939>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.732911, 16.978146, 28.262203>,  <10.130014, 16.935038, 28.240978>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<9.732911, 16.978146, 28.262203> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114405, 0.713618, 0.691130,
		0.036616, 0.692196, -0.720780,
		-0.992759, 0.107768, 0.053061,
		9.435083, 17.010475, 28.278122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.965102, 17.591248, 28.160498>,  <10.130014, 16.935038, 28.240978>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.965102, 17.591248, 28.160498> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.672543, 17.434139, 28.383492>,  <9.497006, 17.339874, 28.517288>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.672543, 17.434139, 28.383492>,  <9.965102, 17.591248, 28.160498>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<9.672543, 17.434139, 28.383492> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137604, 0.715669, 0.684750,
		-0.667922, 0.577538, -0.469394,
		-0.731400, -0.392769, 0.557483,
		9.453123, 17.316309, 28.550735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.495819, 18.151525, 28.385498>,  <9.965102, 17.591248, 28.160498>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.495819, 18.151525, 28.385498> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.479737, 17.851168, 28.649176>,  <9.470088, 17.670952, 28.807383>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.479737, 17.851168, 28.649176>,  <9.495819, 18.151525, 28.385498>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<9.479737, 17.851168, 28.649176> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038871, 0.658054, 0.751966,
		-0.998435, 0.055857, 0.002731,
		-0.040206, -0.750896, 0.659196,
		9.467675, 17.625898, 28.846935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.160893, 18.543304, 28.924004>,  <9.495819, 18.151525, 28.385498>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.160893, 18.543304, 28.924004> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.252985, 18.196659, 29.101080>,  <9.308240, 17.988672, 29.207325>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.252985, 18.196659, 29.101080>,  <9.160893, 18.543304, 28.924004>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<9.252985, 18.196659, 29.101080> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032352, 0.461476, 0.886562,
		-0.972599, -0.189791, 0.134282,
		0.230229, -0.866614, 0.442691,
		9.322054, 17.936674, 29.233887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.699390, 18.465750, 29.480101>,  <9.160893, 18.543304, 28.924004>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.699390, 18.465750, 29.480101> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.993431, 18.212511, 29.577106>,  <9.169855, 18.060568, 29.635311>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.993431, 18.212511, 29.577106>,  <8.699390, 18.465750, 29.480101>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<8.993431, 18.212511, 29.577106> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028685, 0.386441, 0.921868,
		-0.677351, -0.670708, 0.302234,
		0.735100, -0.633098, 0.242517,
		9.213962, 18.022581, 29.649862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<13.041741, 16.148510, 14.651319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.363673, 16.219324, 14.877913>,  <13.556832, 16.261812, 15.013870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.363673, 16.219324, 14.877913>,  <13.041741, 16.148510, 14.651319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.363673, 16.219324, 14.877913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495983, -0.323590, 0.805786,
		0.325962, -0.929488, -0.172629,
		0.804829, 0.177034, 0.566488,
		13.605122, 16.272434, 15.047860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.062478, 15.566593, 15.171506>,  <13.041741, 16.148510, 14.651319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.062478, 15.566593, 15.171506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.287263, 15.871160, 15.300776>,  <13.422134, 16.053900, 15.378337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.287263, 15.871160, 15.300776>,  <13.062478, 15.566593, 15.171506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.287263, 15.871160, 15.300776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430451, -0.064432, 0.900311,
		0.706335, -0.645052, 0.291545,
		0.561963, 0.761417, 0.323174,
		13.455852, 16.099585, 15.397728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.490175, 15.372650, 15.837220>,  <13.062478, 15.566593, 15.171506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.490175, 15.372650, 15.837220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.484910, 15.772554, 15.844195>,  <13.481750, 16.012497, 15.848380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.484910, 15.772554, 15.844195>,  <13.490175, 15.372650, 15.837220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.484910, 15.772554, 15.844195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415312, -0.021330, 0.909429,
		0.909584, 0.004730, 0.415494,
		-0.013164, 0.999761, 0.017437,
		13.480961, 16.072483, 15.849426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.625784, 15.408862, 16.484104>,  <13.490175, 15.372650, 15.837220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.625784, 15.408862, 16.484104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.475524, 15.770891, 16.404373>,  <13.385367, 15.988109, 16.356535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.475524, 15.770891, 16.404373>,  <13.625784, 15.408862, 16.484104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.475524, 15.770891, 16.404373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405757, 0.032749, 0.913394,
		0.833216, 0.423995, 0.354937,
		-0.375650, 0.905073, -0.199325,
		13.362829, 16.042414, 16.344576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.832813, 15.993674, 16.922596>,  <13.625784, 15.408862, 16.484104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.832813, 15.993674, 16.922596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.492244, 16.144072, 16.776335>,  <13.287902, 16.234310, 16.688578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.492244, 16.144072, 16.776335>,  <13.832813, 15.993674, 16.922596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.492244, 16.144072, 16.776335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334673, 0.147303, 0.930750,
		0.403819, 0.914839, 0.000417,
		-0.851425, 0.375994, -0.365655,
		13.236816, 16.256870, 16.666637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.586727, 16.457544, 17.433126>,  <13.832813, 15.993674, 16.922596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.586727, 16.457544, 17.433126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.262794, 16.393959, 17.207241>,  <13.068434, 16.355808, 17.071711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.262794, 16.393959, 17.207241>,  <13.586727, 16.457544, 17.433126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.262794, 16.393959, 17.207241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565149, -0.046890, 0.823655,
		-0.157409, 0.986171, -0.051864,
		-0.809833, -0.158962, -0.564714,
		13.019844, 16.346270, 17.037827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.993876, 16.973425, 17.635509>,  <13.586727, 16.457544, 17.433126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.993876, 16.973425, 17.635509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.798733, 16.672640, 17.458174>,  <12.681647, 16.492168, 17.351772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.798733, 16.672640, 17.458174>,  <12.993876, 16.973425, 17.635509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.798733, 16.672640, 17.458174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610741, -0.068840, 0.788833,
		-0.623692, 0.655602, -0.425670,
		-0.487857, -0.751962, -0.443337,
		12.652375, 16.447052, 17.325172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.249704, 17.266115, 17.694250>,  <12.993876, 16.973425, 17.635509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.249704, 17.266115, 17.694250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.262457, 16.873110, 17.620876>,  <12.270108, 16.637306, 17.576853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.262457, 16.873110, 17.620876>,  <12.249704, 17.266115, 17.694250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.262457, 16.873110, 17.620876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.801265, -0.134830, 0.582919,
		-0.597459, 0.128396, -0.791554,
		0.031881, -0.982515, -0.183435,
		12.272021, 16.578356, 17.565845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.517400, 17.047270, 17.416473>,  <12.249704, 17.266115, 17.694250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.517400, 17.047270, 17.416473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.695313, 16.723387, 17.569597>,  <11.802061, 16.529057, 17.661472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.695313, 16.723387, 17.569597>,  <11.517400, 17.047270, 17.416473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.695313, 16.723387, 17.569597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.790335, -0.153754, 0.593069,
		-0.421354, -0.566334, -0.708327,
		0.444783, -0.809707, 0.382809,
		11.828749, 16.480474, 17.684441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.966342, 16.691206, 17.719414>,  <11.517400, 17.047270, 17.416473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.966342, 16.691206, 17.719414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.279659, 16.513041, 17.892878>,  <11.467649, 16.406141, 17.996956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.279659, 16.513041, 17.892878>,  <10.966342, 16.691206, 17.719414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.279659, 16.513041, 17.892878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577942, -0.264809, 0.771919,
		-0.228991, -0.855265, -0.464849,
		0.783292, -0.445418, 0.433655,
		11.514647, 16.379416, 18.022974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.756425, 15.995378, 17.933628>,  <10.966342, 16.691206, 17.719414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.756425, 15.995378, 17.933628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.081820, 16.097282, 18.142752>,  <11.277058, 16.158424, 18.268227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.081820, 16.097282, 18.142752>,  <10.756425, 15.995378, 17.933628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.081820, 16.097282, 18.142752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507257, -0.128903, 0.852100,
		0.284473, -0.958374, 0.024367,
		0.813490, 0.254760, 0.522811,
		11.325868, 16.173710, 18.299595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.622349, 15.596985, 18.551968>,  <10.756425, 15.995378, 17.933628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.622349, 15.596985, 18.551968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.873968, 15.888161, 18.661074>,  <11.024940, 16.062866, 18.726538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.873968, 15.888161, 18.661074>,  <10.622349, 15.596985, 18.551968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.873968, 15.888161, 18.661074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544818, 0.162553, 0.822648,
		0.554501, -0.666092, 0.498849,
		0.629049, 0.727941, 0.272763,
		11.062683, 16.106543, 18.742903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.660835, 14.892741, 18.810764>,  <10.622349, 15.596985, 18.551968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.660835, 14.892741, 18.810764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.417699, 14.578162, 18.766890>,  <10.271817, 14.389415, 18.740564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.417699, 14.578162, 18.766890>,  <10.660835, 14.892741, 18.810764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.417699, 14.578162, 18.766890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449280, -0.226721, -0.864144,
		0.654735, -0.574542, 0.491145,
		-0.607840, -0.786447, -0.109688,
		10.235347, 14.342228, 18.733984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.073586, 14.328455, 18.572073>,  <10.660835, 14.892741, 18.810764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.073586, 14.328455, 18.572073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.711372, 14.205641, 18.454948>,  <10.494044, 14.131952, 18.384674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.711372, 14.205641, 18.454948>,  <11.073586, 14.328455, 18.572073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.711372, 14.205641, 18.454948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390304, -0.332245, -0.858648,
		0.166351, -0.891819, 0.420697,
		-0.905533, -0.307036, -0.292812,
		10.439713, 14.113530, 18.367105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.213610, 13.731963, 18.329508>,  <11.073586, 14.328455, 18.572073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.213610, 13.731963, 18.329508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.857552, 13.827335, 18.174181>,  <10.643916, 13.884559, 18.080984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.857552, 13.827335, 18.174181>,  <11.213610, 13.731963, 18.329508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.857552, 13.827335, 18.174181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291824, -0.356206, -0.887669,
		-0.349958, -0.903479, 0.247500,
		-0.890150, 0.238420, -0.388314,
		10.590508, 13.898865, 18.057686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.933880, 13.160411, 17.939203>,  <11.213610, 13.731963, 18.329508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.933880, 13.160411, 17.939203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.731256, 13.457262, 17.763639>,  <10.609681, 13.635373, 17.658300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.731256, 13.457262, 17.763639>,  <10.933880, 13.160411, 17.939203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.731256, 13.457262, 17.763639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257249, -0.355780, -0.898467,
		-0.822934, -0.568037, -0.010689,
		-0.506560, 0.742129, -0.438910,
		10.579288, 13.679900, 17.631966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.553895, 12.906750, 17.343380>,  <10.933880, 13.160411, 17.939203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.553895, 12.906750, 17.343380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.578291, 13.299190, 17.269924>,  <10.592929, 13.534654, 17.225851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.578291, 13.299190, 17.269924>,  <10.553895, 12.906750, 17.343380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.578291, 13.299190, 17.269924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093623, -0.188795, -0.977544,
		-0.993738, 0.042428, -0.103368,
		0.060991, 0.981100, -0.183641,
		10.596588, 13.593519, 17.214832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.029969, 13.036929, 16.998747>,  <10.553895, 12.906750, 17.343380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.029969, 13.036929, 16.998747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.271202, 13.342381, 16.906515>,  <10.415941, 13.525651, 16.851177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.271202, 13.342381, 16.906515>,  <10.029969, 13.036929, 16.998747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.271202, 13.342381, 16.906515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036927, -0.315477, -0.948214,
		-0.796825, 0.563336, -0.218457,
		0.603081, 0.763627, -0.230578,
		10.452127, 13.571468, 16.837341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.691553, 13.389616, 16.345821>,  <10.029969, 13.036929, 16.998747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.691553, 13.389616, 16.345821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.069840, 13.516964, 16.371922>,  <10.296813, 13.593372, 16.387581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.069840, 13.516964, 16.371922>,  <9.691553, 13.389616, 16.345821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.069840, 13.516964, 16.371922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102163, -0.100649, -0.989663,
		-0.308511, 0.942608, -0.127711,
		0.945719, 0.318369, 0.065248,
		10.353556, 13.612474, 16.391497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.741817, 13.900645, 15.878200>,  <9.691553, 13.389616, 16.345821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.741817, 13.900645, 15.878200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.117705, 13.796512, 15.966879>,  <10.343239, 13.734032, 16.020086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.117705, 13.796512, 15.966879>,  <9.741817, 13.900645, 15.878200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.117705, 13.796512, 15.966879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219771, -0.036873, -0.974854,
		0.261963, 0.964814, 0.022564,
		0.939721, -0.260335, 0.221698,
		10.399622, 13.718411, 16.033388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.100124, 14.266017, 15.356408>,  <9.741817, 13.900645, 15.878200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.100124, 14.266017, 15.356408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.359595, 13.990457, 15.485797>,  <10.515278, 13.825120, 15.563431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.359595, 13.990457, 15.485797>,  <10.100124, 14.266017, 15.356408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.359595, 13.990457, 15.485797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275529, -0.183622, -0.943592,
		0.709438, 0.701212, 0.070701,
		0.648677, -0.688901, 0.323473,
		10.554198, 13.783787, 15.582839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.784995, 14.413472, 15.011188>,  <10.100124, 14.266017, 15.356408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.784995, 14.413472, 15.011188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.812425, 14.030064, 15.121848>,  <10.828882, 13.800018, 15.188245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.812425, 14.030064, 15.121848>,  <10.784995, 14.413472, 15.011188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.812425, 14.030064, 15.121848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455357, -0.216663, -0.863543,
		0.887664, 0.185191, 0.421612,
		0.068573, -0.958520, 0.276653,
		10.832996, 13.742508, 15.204844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.426073, 14.269682, 14.887072>,  <10.784995, 14.413472, 15.011188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.426073, 14.269682, 14.887072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.226579, 13.923236, 14.873755>,  <11.106882, 13.715368, 14.865766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.226579, 13.923236, 14.873755>,  <11.426073, 14.269682, 14.887072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.226579, 13.923236, 14.873755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441233, -0.220641, -0.869846,
		0.746041, -0.448511, 0.492200,
		-0.498735, -0.866115, -0.033291,
		11.076959, 13.663402, 14.863769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.912003, 13.718302, 14.768508>,  <11.426073, 14.269682, 14.887072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.912003, 13.718302, 14.768508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.558878, 13.561680, 14.664718>,  <11.347003, 13.467707, 14.602444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.558878, 13.561680, 14.664718>,  <11.912003, 13.718302, 14.768508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.558878, 13.561680, 14.664718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413687, -0.386439, -0.824335,
		0.222502, -0.835074, 0.503134,
		-0.882812, -0.391556, -0.259476,
		11.294034, 13.444213, 14.586875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.957351, 13.035448, 14.753506>,  <11.912003, 13.718302, 14.768508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.957351, 13.035448, 14.753506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.660746, 13.136869, 14.505032>,  <11.482782, 13.197722, 14.355947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.660746, 13.136869, 14.505032>,  <11.957351, 13.035448, 14.753506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.660746, 13.136869, 14.505032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559842, -0.276443, -0.781125,
		-0.369781, -0.926978, 0.063034,
		-0.741511, 0.253557, -0.621185,
		11.438293, 13.212935, 14.318676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.981840, 12.546493, 14.282324>,  <11.957351, 13.035448, 14.753506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.981840, 12.546493, 14.282324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.753910, 12.826624, 14.110352>,  <11.617152, 12.994702, 14.007168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.753910, 12.826624, 14.110352>,  <11.981840, 12.546493, 14.282324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.753910, 12.826624, 14.110352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466136, -0.155407, -0.870957,
		-0.676770, -0.696699, -0.237894,
		-0.569824, 0.700328, -0.429931,
		11.582963, 13.036722, 13.981372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.462640, 12.377356, 14.810567>,  <11.981840, 12.546493, 14.282324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.462640, 12.377356, 14.810567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.233148, 12.118743, 15.011696>,  <12.095452, 11.963575, 15.132374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.233148, 12.118743, 15.011696>,  <12.462640, 12.377356, 14.810567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.233148, 12.118743, 15.011696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565040, -0.131992, -0.814437,
		0.592928, -0.751382, -0.289589,
		-0.573730, -0.646532, 0.502823,
		12.061028, 11.924784, 15.162542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.337222, 12.761866, 15.424806>,  <12.462640, 12.377356, 14.810567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.337222, 12.761866, 15.424806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.724052, 12.777642, 15.525370>,  <12.956151, 12.787108, 15.585709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.724052, 12.777642, 15.525370>,  <12.337222, 12.761866, 15.424806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.724052, 12.777642, 15.525370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206795, -0.453980, 0.866682,
		0.148320, -0.890138, -0.430877,
		0.967077, 0.039443, 0.251411,
		13.014175, 12.789475, 15.600793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.329539, 12.198710, 15.775988>,  <12.337222, 12.761866, 15.424806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.329539, 12.198710, 15.775988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.649349, 12.404897, 15.899312>,  <12.841235, 12.528608, 15.973307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.649349, 12.404897, 15.899312>,  <12.329539, 12.198710, 15.775988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.649349, 12.404897, 15.899312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209232, -0.242135, 0.947414,
		0.563012, -0.821989, -0.085741,
		0.799524, 0.515466, 0.308312,
		12.889207, 12.559536, 15.991805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.494803, 11.810377, 16.290104>,  <12.329539, 12.198710, 15.775988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.494803, 11.810377, 16.290104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.691893, 12.149014, 16.370605>,  <12.810146, 12.352197, 16.418907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.691893, 12.149014, 16.370605>,  <12.494803, 11.810377, 16.290104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.691893, 12.149014, 16.370605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160462, -0.138915, 0.977218,
		0.855263, -0.513792, 0.067399,
		0.492724, 0.846593, 0.201253,
		12.839710, 12.402992, 16.430981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.069182, 11.618417, 16.778429>,  <12.494803, 11.810377, 16.290104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.069182, 11.618417, 16.778429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.007590, 12.013076, 16.799650>,  <12.970635, 12.249871, 16.812384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.007590, 12.013076, 16.799650>,  <13.069182, 11.618417, 16.778429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.007590, 12.013076, 16.799650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105673, -0.069830, 0.991946,
		0.982407, 0.147134, 0.115015,
		-0.153980, 0.986649, 0.053053,
		12.961396, 12.309071, 16.815567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.565436, 11.843771, 17.194908>,  <13.069182, 11.618417, 16.778429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.565436, 11.843771, 17.194908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.269341, 12.110937, 17.225716>,  <13.091682, 12.271237, 17.244200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.269341, 12.110937, 17.225716>,  <13.565436, 11.843771, 17.194908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.269341, 12.110937, 17.225716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028886, -0.082855, 0.996143,
		0.671722, 0.739610, 0.042039,
		-0.740240, 0.667917, 0.077020,
		13.047269, 12.311312, 17.248821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.773962, 12.153960, 17.687735>,  <13.565436, 11.843771, 17.194908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.773962, 12.153960, 17.687735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.406267, 12.309626, 17.663879>,  <13.185651, 12.403025, 17.649567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.406267, 12.309626, 17.663879>,  <13.773962, 12.153960, 17.687735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.406267, 12.309626, 17.663879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061875, 0.006800, 0.998061,
		0.388815, 0.921144, 0.017829,
		-0.919236, 0.389164, -0.059640,
		13.130496, 12.426374, 17.645987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.714466, 12.723240, 18.182095>,  <13.773962, 12.153960, 17.687735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.714466, 12.723240, 18.182095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.325197, 12.645866, 18.132261>,  <13.091636, 12.599442, 18.102362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.325197, 12.645866, 18.132261>,  <13.714466, 12.723240, 18.182095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.325197, 12.645866, 18.132261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134987, 0.041523, 0.989977,
		-0.186321, 0.980234, -0.066520,
		-0.973172, -0.193433, -0.124582,
		13.033246, 12.587836, 18.094887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.318826, 13.165506, 18.596556>,  <13.714466, 12.723240, 18.182095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.318826, 13.165506, 18.596556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.063236, 12.865892, 18.526514>,  <12.909883, 12.686124, 18.484489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.063236, 12.865892, 18.526514>,  <13.318826, 13.165506, 18.596556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.063236, 12.865892, 18.526514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233693, -0.027853, 0.971911,
		-0.732872, 0.661946, -0.157247,
		-0.638973, -0.749034, -0.175105,
		12.871545, 12.641182, 18.473982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.727468, 13.388309, 18.855343>,  <13.318826, 13.165506, 18.596556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.727468, 13.388309, 18.855343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.715508, 12.988490, 18.856426>,  <12.708332, 12.748598, 18.857077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.715508, 12.988490, 18.856426>,  <12.727468, 13.388309, 18.855343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.715508, 12.988490, 18.856426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254563, 0.010234, 0.967002,
		-0.966594, 0.028225, -0.254754,
		-0.029901, -0.999549, 0.002707,
		12.706538, 12.688625, 18.857239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.111943, 13.223798, 19.330292>,  <12.727468, 13.388309, 18.855343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.111943, 13.223798, 19.330292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.338015, 12.895586, 19.296103>,  <12.473658, 12.698659, 19.275589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.338015, 12.895586, 19.296103>,  <12.111943, 13.223798, 19.330292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.338015, 12.895586, 19.296103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048924, -0.136764, 0.989395,
		-0.823517, -0.555003, -0.117439,
		0.565178, -0.820529, -0.085474,
		12.507568, 12.649427, 19.270460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.851369, 12.767322, 19.777611>,  <12.111943, 13.223798, 19.330292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.851369, 12.767322, 19.777611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.217748, 12.625392, 19.702627>,  <12.437575, 12.540235, 19.657637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.217748, 12.625392, 19.702627>,  <11.851369, 12.767322, 19.777611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.217748, 12.625392, 19.702627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092455, -0.267983, 0.958977,
		-0.390504, -0.895704, -0.212653,
		0.915947, -0.354824, -0.187461,
		12.492532, 12.518945, 19.646389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.817657, 12.346567, 20.284676>,  <11.851369, 12.767322, 19.777611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.817657, 12.346567, 20.284676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.195200, 12.365913, 20.153959>,  <12.421726, 12.377522, 20.075529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.195200, 12.365913, 20.153959>,  <11.817657, 12.346567, 20.284676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.195200, 12.365913, 20.153959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330216, -0.110111, 0.937461,
		0.009360, -0.992742, -0.119901,
		0.943859, 0.048368, -0.326789,
		12.478357, 12.380424, 20.055923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.118827, 11.705881, 20.408449>,  <11.817657, 12.346567, 20.284676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.118827, 11.705881, 20.408449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.381567, 12.007469, 20.404993>,  <12.539211, 12.188422, 20.402920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.381567, 12.007469, 20.404993>,  <12.118827, 11.705881, 20.408449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.381567, 12.007469, 20.404993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210906, -0.172710, 0.962128,
		0.723924, -0.633797, -0.272462,
		0.656851, 0.753971, -0.008642,
		12.578623, 12.233661, 20.402401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.578941, 11.461736, 20.915819>,  <12.118827, 11.705881, 20.408449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.578941, 11.461736, 20.915819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.652241, 11.854533, 20.897453>,  <12.696220, 12.090212, 20.886435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.652241, 11.854533, 20.897453>,  <12.578941, 11.461736, 20.915819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.652241, 11.854533, 20.897453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160038, 0.016282, 0.986977,
		0.969952, -0.188210, -0.154173,
		0.183249, 0.981994, -0.045914,
		12.707215, 12.149132, 20.883678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.267076, 11.680836, 21.311033>,  <12.578941, 11.461736, 20.915819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.267076, 11.680836, 21.311033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.052111, 12.017592, 21.291414>,  <12.923132, 12.219646, 21.279642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.052111, 12.017592, 21.291414>,  <13.267076, 11.680836, 21.311033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.052111, 12.017592, 21.291414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179690, 0.171142, 0.968722,
		0.823954, 0.511789, -0.243253,
		-0.537412, 0.841892, -0.049050,
		12.890887, 12.270160, 21.276699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.601466, 12.083531, 21.810884>,  <13.267076, 11.680836, 21.311033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.601466, 12.083531, 21.810884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.269221, 12.295183, 21.741484>,  <13.069874, 12.422174, 21.699842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.269221, 12.295183, 21.741484>,  <13.601466, 12.083531, 21.810884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.269221, 12.295183, 21.741484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005687, 0.319623, 0.947528,
		0.556821, 0.786042, -0.268492,
		-0.830613, 0.529131, -0.173502,
		13.020038, 12.453922, 21.689432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.765839, 12.910152, 21.928555>,  <13.601466, 12.083531, 21.810884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.765839, 12.910152, 21.928555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.379613, 12.821144, 21.982475>,  <13.147878, 12.767739, 22.014828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.379613, 12.821144, 21.982475>,  <13.765839, 12.910152, 21.928555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.379613, 12.821144, 21.982475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018090, 0.459455, 0.888017,
		-0.259538, 0.859875, -0.439607,
		-0.965563, -0.222522, 0.134801,
		13.089944, 12.754388, 22.022915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.537820, 13.444476, 22.342028>,  <13.765839, 12.910152, 21.928555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.537820, 13.444476, 22.342028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.250278, 13.170146, 22.387447>,  <13.077754, 13.005548, 22.414700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.250278, 13.170146, 22.387447>,  <13.537820, 13.444476, 22.342028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.250278, 13.170146, 22.387447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013220, 0.176802, 0.984158,
		-0.695036, 0.705964, -0.136162,
		-0.718853, -0.685825, 0.113551,
		13.034622, 12.964398, 22.421513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.947992, 13.660645, 22.863625>,  <13.537820, 13.444476, 22.342028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.947992, 13.660645, 22.863625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.927724, 13.261642, 22.843958>,  <12.915563, 13.022242, 22.832157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.927724, 13.261642, 22.843958>,  <12.947992, 13.660645, 22.863625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.927724, 13.261642, 22.843958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130899, -0.042173, 0.990498,
		-0.990100, 0.056625, -0.128436,
		-0.050671, -0.997504, -0.049168,
		12.912522, 12.962391, 22.829208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.370976, 13.566054, 23.116192>,  <12.947992, 13.660645, 22.863625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.370976, 13.566054, 23.116192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.588990, 13.236064, 23.175995>,  <12.719799, 13.038070, 23.211876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.588990, 13.236064, 23.175995>,  <12.370976, 13.566054, 23.116192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.588990, 13.236064, 23.175995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131790, 0.091804, 0.987018,
		-0.827991, -0.557662, -0.058687,
		0.545035, -0.824975, 0.149507,
		12.752501, 12.988571, 23.220846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.106373, 13.280852, 23.693085>,  <12.370976, 13.566054, 23.116192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.106373, 13.280852, 23.693085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.415339, 13.028008, 23.668383>,  <12.600718, 12.876302, 23.653561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.415339, 13.028008, 23.668383>,  <12.106373, 13.280852, 23.693085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.415339, 13.028008, 23.668383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048136, -0.155218, 0.986707,
		-0.633293, -0.759173, -0.150320,
		0.772414, -0.632111, -0.061755,
		12.647062, 12.838375, 23.649857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.976968, 12.650937, 24.071861>,  <12.106373, 13.280852, 23.693085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.976968, 12.650937, 24.071861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.375176, 12.685247, 24.055960>,  <12.614101, 12.705833, 24.046419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.375176, 12.685247, 24.055960>,  <11.976968, 12.650937, 24.071861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.375176, 12.685247, 24.055960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054111, -0.172156, 0.983582,
		0.077525, -0.981328, -0.176026,
		0.995521, 0.085777, -0.039754,
		12.673833, 12.710980, 24.044033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.089966, 12.108117, 24.465656>,  <11.976968, 12.650937, 24.071861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.089966, 12.108117, 24.465656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.431499, 12.316181, 24.473642>,  <12.636420, 12.441020, 24.478434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.431499, 12.316181, 24.473642>,  <12.089966, 12.108117, 24.465656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.431499, 12.316181, 24.473642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150567, -0.283504, 0.947077,
		0.498293, -0.805641, -0.320385,
		0.853835, 0.520161, 0.019965,
		12.687650, 12.472230, 24.479631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.645658, 11.670345, 24.704651>,  <12.089966, 12.108117, 24.465656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.645658, 11.670345, 24.704651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.779212, 12.034256, 24.803301>,  <12.859344, 12.252603, 24.862492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.779212, 12.034256, 24.803301>,  <12.645658, 11.670345, 24.704651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.779212, 12.034256, 24.803301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018068, -0.267770, 0.963313,
		0.942440, -0.317181, -0.105842,
		0.333886, 0.909778, 0.246627,
		12.879377, 12.307189, 24.877289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.176515, 11.576612, 25.343121>,  <12.645658, 11.670345, 24.704651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.176515, 11.576612, 25.343121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.083970, 11.964419, 25.310852>,  <13.028443, 12.197104, 25.291491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.083970, 11.964419, 25.310852>,  <13.176515, 11.576612, 25.343121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.083970, 11.964419, 25.310852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055004, 0.069753, 0.996047,
		0.971312, 0.234885, 0.037189,
		-0.231362, 0.969517, -0.080671,
		13.014562, 12.255275, 25.286652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.662271, 11.901940, 25.730764>,  <13.176515, 11.576612, 25.343121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.662271, 11.901940, 25.730764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.347132, 12.147572, 25.711992>,  <13.158049, 12.294950, 25.700729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.347132, 12.147572, 25.711992>,  <13.662271, 11.901940, 25.730764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.347132, 12.147572, 25.711992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067805, 0.162227, 0.984421,
		0.612126, 0.772392, -0.169448,
		-0.787848, 0.614079, -0.046931,
		13.110777, 12.331795, 25.697912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.812705, 12.521306, 26.209007>,  <13.662271, 11.901940, 25.730764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.812705, 12.521306, 26.209007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.418478, 12.532564, 26.142239>,  <13.181942, 12.539319, 26.102179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.418478, 12.532564, 26.142239>,  <13.812705, 12.521306, 26.209007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.418478, 12.532564, 26.142239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156701, 0.221273, 0.962540,
		0.064025, 0.974806, -0.213669,
		-0.985569, 0.028145, -0.166920,
		13.122808, 12.541008, 26.092163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
