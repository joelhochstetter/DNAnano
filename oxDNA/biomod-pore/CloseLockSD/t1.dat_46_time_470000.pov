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
	<4.019494, 14.569696, 15.375920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.248805, 14.682404, 15.068165>,  <4.386392, 14.750028, 14.883512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.248805, 14.682404, 15.068165>,  <4.019494, 14.569696, 15.375920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.248805, 14.682404, 15.068165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.816408, -0.276070, 0.507211,
		-0.069489, -0.918908, -0.388303,
		0.573279, 0.281768, -0.769388,
		4.420789, 14.766934, 14.837348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.606855, 14.166407, 15.459768>,  <4.019494, 14.569696, 15.375920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.606855, 14.166407, 15.459768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.740891, 14.469503, 15.235789>,  <4.821312, 14.651361, 15.101402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.740891, 14.469503, 15.235789>,  <4.606855, 14.166407, 15.459768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.740891, 14.469503, 15.235789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.934592, -0.192011, 0.299450,
		0.119390, -0.623664, -0.772521,
		0.335089, 0.757743, -0.559947,
		4.841417, 14.696826, 15.067805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.005774, 13.959644, 14.833436>,  <4.606855, 14.166407, 15.459768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.005774, 13.959644, 14.833436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.113909, 14.310289, 14.992669>,  <5.178790, 14.520677, 15.088209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.113909, 14.310289, 14.992669>,  <5.005774, 13.959644, 14.833436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.113909, 14.310289, 14.992669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.856076, -0.408056, 0.317214,
		0.440513, 0.255034, -0.860759,
		0.270337, 0.876612, 0.398082,
		5.195010, 14.573273, 15.112094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.455448, 14.006913, 14.251889>,  <5.005774, 13.959644, 14.833436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.455448, 14.006913, 14.251889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.707212, 14.260911, 14.431053>,  <5.858271, 14.413310, 14.538551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.707212, 14.260911, 14.431053>,  <5.455448, 14.006913, 14.251889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.707212, 14.260911, 14.431053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339526, 0.743202, -0.576518,
		-0.698973, 0.210790, 0.683377,
		0.629411, 0.634995, 0.447910,
		5.896036, 14.451409, 14.565426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.058219, 14.605736, 14.342396>,  <5.455448, 14.006913, 14.251889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.058219, 14.605736, 14.342396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.443396, 14.713242, 14.351414>,  <5.674502, 14.777745, 14.356825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.443396, 14.713242, 14.351414>,  <5.058219, 14.605736, 14.342396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.443396, 14.713242, 14.351414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198126, 0.761610, -0.617006,
		-0.183000, 0.589674, 0.786636,
		0.962942, 0.268765, 0.022545,
		5.732278, 14.793871, 14.358177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.084561, 15.282119, 14.544211>,  <5.058219, 14.605736, 14.342396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.084561, 15.282119, 14.544211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.413591, 15.205084, 14.330191>,  <5.611009, 15.158863, 14.201778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.413591, 15.205084, 14.330191>,  <5.084561, 15.282119, 14.544211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.413591, 15.205084, 14.330191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178574, 0.805825, -0.564586,
		0.539890, 0.559961, 0.628460,
		0.822575, -0.192588, -0.535051,
		5.660364, 15.147307, 14.169675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.344631, 15.956062, 14.469023>,  <5.084561, 15.282119, 14.544211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.344631, 15.956062, 14.469023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.500894, 15.738874, 14.171682>,  <5.594652, 15.608562, 13.993279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.500894, 15.738874, 14.171682>,  <5.344631, 15.956062, 14.469023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.500894, 15.738874, 14.171682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175924, 0.748598, -0.639258,
		0.903569, 0.380504, 0.196924,
		0.390657, -0.542971, -0.743350,
		5.618091, 15.575983, 13.948677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.624231, 16.521637, 14.061979>,  <5.344631, 15.956062, 14.469023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.624231, 16.521637, 14.061979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.563577, 16.191799, 13.843968>,  <5.527184, 15.993896, 13.713162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.563577, 16.191799, 13.843968>,  <5.624231, 16.521637, 14.061979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.563577, 16.191799, 13.843968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241680, 0.565596, -0.788474,
		0.958435, 0.012161, -0.285052,
		-0.151635, -0.824593, -0.545027,
		5.518086, 15.944422, 13.680460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.022845, 16.575686, 13.460309>,  <5.624231, 16.521637, 14.061979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.022845, 16.575686, 13.460309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.726014, 16.319740, 13.380415>,  <5.547915, 16.166174, 13.332479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.726014, 16.319740, 13.380415>,  <6.022845, 16.575686, 13.460309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.726014, 16.319740, 13.380415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244555, 0.535874, -0.808104,
		0.624108, -0.550832, -0.554142,
		-0.742079, -0.639862, -0.199735,
		5.503390, 16.127781, 13.320495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.961450, 16.531874, 12.762716>,  <6.022845, 16.575686, 13.460309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.961450, 16.531874, 12.762716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.594305, 16.408922, 12.863152>,  <5.374017, 16.335152, 12.923412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.594305, 16.408922, 12.863152>,  <5.961450, 16.531874, 12.762716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.594305, 16.408922, 12.863152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363440, 0.396705, -0.842933,
		0.159490, -0.864954, -0.475834,
		-0.917864, -0.307377, 0.251089,
		5.318945, 16.316710, 12.938478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.775297, 16.205278, 12.134425>,  <5.961450, 16.531874, 12.762716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.775297, 16.205278, 12.134425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.441874, 16.276947, 12.343452>,  <5.241819, 16.319948, 12.468869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.441874, 16.276947, 12.343452>,  <5.775297, 16.205278, 12.134425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.441874, 16.276947, 12.343452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410791, 0.431443, -0.803186,
		-0.369366, -0.884169, -0.286031,
		-0.833558, 0.179170, 0.522569,
		5.191806, 16.330698, 12.500223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.212977, 16.069277, 11.589731>,  <5.775297, 16.205278, 12.134425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.212977, 16.069277, 11.589731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.039558, 16.272442, 11.887472>,  <4.935506, 16.394341, 12.066117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.039558, 16.272442, 11.887472>,  <5.212977, 16.069277, 11.589731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.039558, 16.272442, 11.887472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447254, 0.595815, -0.667059,
		-0.782305, -0.622117, -0.031148,
		-0.433547, 0.507912, 0.744353,
		4.909494, 16.424816, 12.110778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.488504, 16.150688, 11.454687>,  <5.212977, 16.069277, 11.589731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.488504, 16.150688, 11.454687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.600138, 16.443920, 11.702785>,  <4.667119, 16.619860, 11.851645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.600138, 16.443920, 11.702785>,  <4.488504, 16.150688, 11.454687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.600138, 16.443920, 11.702785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322888, 0.679940, -0.658350,
		-0.904353, -0.016534, 0.426464,
		0.279084, 0.733081, 0.620245,
		4.683864, 16.663845, 11.888859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.903877, 16.597614, 11.507614>,  <4.488504, 16.150688, 11.454687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.903877, 16.597614, 11.507614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.217477, 16.823532, 11.610645>,  <4.405638, 16.959084, 11.672464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.217477, 16.823532, 11.610645>,  <3.903877, 16.597614, 11.507614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.217477, 16.823532, 11.610645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133751, 0.558889, -0.818385,
		-0.606178, 0.607163, 0.513712,
		0.784001, 0.564797, 0.257578,
		4.452678, 16.992971, 11.687919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.758952, 17.194950, 11.218890>,  <3.903877, 16.597614, 11.507614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.758952, 17.194950, 11.218890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.135673, 17.252014, 11.340648>,  <4.361706, 17.286253, 11.413702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.135673, 17.252014, 11.340648>,  <3.758952, 17.194950, 11.218890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.135673, 17.252014, 11.340648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111502, 0.721656, -0.683213,
		-0.317136, 0.677392, 0.663750,
		0.941803, 0.142662, 0.304394,
		4.418214, 17.294813, 11.431966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.802307, 17.902594, 11.418373>,  <3.758952, 17.194950, 11.218890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.802307, 17.902594, 11.418373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.180475, 17.793238, 11.347446>,  <4.407375, 17.727625, 11.304891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.180475, 17.793238, 11.347446>,  <3.802307, 17.902594, 11.418373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.180475, 17.793238, 11.347446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113154, 0.785727, -0.608136,
		0.305580, 0.554879, 0.773776,
		0.945419, -0.273390, -0.177316,
		4.464100, 17.711220, 11.294251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.217365, 18.533718, 11.441046>,  <3.802307, 17.902594, 11.418373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.217365, 18.533718, 11.441046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.457403, 18.280439, 11.245516>,  <4.601426, 18.128473, 11.128198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.457403, 18.280439, 11.245516>,  <4.217365, 18.533718, 11.441046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.457403, 18.280439, 11.245516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242626, 0.726375, -0.643049,
		0.762244, 0.267290, 0.589525,
		0.600096, -0.633195, -0.488824,
		4.637432, 18.090481, 11.098868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.749640, 18.971689, 11.279946>,  <4.217365, 18.533718, 11.441046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.749640, 18.971689, 11.279946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.808510, 18.662098, 11.033599>,  <4.843832, 18.476343, 10.885791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.808510, 18.662098, 11.033599>,  <4.749640, 18.971689, 11.279946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.808510, 18.662098, 11.033599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279364, 0.629825, -0.724759,
		0.948839, -0.065385, 0.308917,
		0.147176, -0.773980, -0.615869,
		4.852663, 18.429903, 10.848838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.391803, 19.037117, 11.052400>,  <4.749640, 18.971689, 11.279946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.391803, 19.037117, 11.052400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.192694, 18.828449, 10.775248>,  <5.073229, 18.703249, 10.608956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.192694, 18.828449, 10.775248>,  <5.391803, 19.037117, 11.052400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.192694, 18.828449, 10.775248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379068, 0.587684, -0.714797,
		0.780083, -0.618454, -0.094784,
		-0.497773, -0.521671, -0.692879,
		5.043362, 18.671947, 10.567384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.878127, 18.991920, 10.512873>,  <5.391803, 19.037117, 11.052400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.878127, 18.991920, 10.512873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.514923, 18.921425, 10.360843>,  <5.297001, 18.879128, 10.269625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.514923, 18.921425, 10.360843>,  <5.878127, 18.991920, 10.512873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.514923, 18.921425, 10.360843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198803, 0.617309, -0.761188,
		0.368774, -0.766727, -0.525486,
		-0.908011, -0.176238, -0.380075,
		5.242520, 18.868553, 10.246819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.963380, 18.908463, 9.800602>,  <5.878127, 18.991920, 10.512873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.963380, 18.908463, 9.800602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.576724, 19.004978, 9.834977>,  <5.344730, 19.062887, 9.855602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.576724, 19.004978, 9.834977>,  <5.963380, 18.908463, 9.800602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.576724, 19.004978, 9.834977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085176, 0.619245, -0.780565,
		-0.241557, -0.747206, -0.619139,
		-0.966641, 0.241287, 0.085939,
		5.286732, 19.077364, 9.860759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.784509, 19.004128, 9.109591>,  <5.963380, 18.908463, 9.800602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.784509, 19.004128, 9.109591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.477189, 19.189472, 9.286230>,  <5.292797, 19.300680, 9.392214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.477189, 19.189472, 9.286230>,  <5.784509, 19.004128, 9.109591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.477189, 19.189472, 9.286230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132790, 0.559512, -0.818116,
		-0.626165, -0.687198, -0.368343,
		-0.768299, 0.463363, 0.441600,
		5.246699, 19.328482, 9.418710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.270457, 19.295639, 8.563024>,  <5.784509, 19.004128, 9.109591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.270457, 19.295639, 8.563024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.178291, 19.505260, 8.890993>,  <5.122992, 19.631033, 9.087775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.178291, 19.505260, 8.890993>,  <5.270457, 19.295639, 8.563024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.178291, 19.505260, 8.890993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333892, 0.748864, -0.572468,
		-0.914016, -0.405670, 0.002429,
		-0.230414, 0.524056, 0.819924,
		5.109167, 19.662477, 9.136971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.649091, 19.646591, 8.495398>,  <5.270457, 19.295639, 8.563024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.649091, 19.646591, 8.495398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.826184, 19.852987, 8.788721>,  <4.932439, 19.976826, 8.964715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.826184, 19.852987, 8.788721>,  <4.649091, 19.646591, 8.495398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.826184, 19.852987, 8.788721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179381, 0.852264, -0.491395,
		-0.878528, 0.086014, 0.469883,
		0.442731, 0.515992, 0.733308,
		4.959003, 20.007786, 9.008714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.236297, 20.149185, 8.611295>,  <4.649091, 19.646591, 8.495398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.236297, 20.149185, 8.611295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.568481, 20.302011, 8.773459>,  <4.767792, 20.393707, 8.870758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.568481, 20.302011, 8.773459>,  <4.236297, 20.149185, 8.611295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.568481, 20.302011, 8.773459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148456, 0.853215, -0.499985,
		-0.536931, 0.355032, 0.765282,
		0.830461, 0.382068, 0.405411,
		4.817620, 20.416632, 8.895082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.086189, 20.867607, 8.830310>,  <4.236297, 20.149185, 8.611295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.086189, 20.867607, 8.830310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.481933, 20.840996, 8.778549>,  <4.719378, 20.825029, 8.747493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.481933, 20.840996, 8.778549>,  <4.086189, 20.867607, 8.830310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.481933, 20.840996, 8.778549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024292, 0.801343, -0.597712,
		0.143461, 0.594495, 0.791199,
		0.989358, -0.066529, -0.129402,
		4.778740, 20.821037, 8.739729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.353337, 21.533672, 8.744760>,  <4.086189, 20.867607, 8.830310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.353337, 21.533672, 8.744760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.637645, 21.286316, 8.610657>,  <4.808230, 21.137901, 8.530195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.637645, 21.286316, 8.610657>,  <4.353337, 21.533672, 8.744760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.637645, 21.286316, 8.610657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200100, 0.634666, -0.746431,
		0.674363, 0.463456, 0.574842,
		0.710770, -0.618391, -0.335258,
		4.850876, 21.100798, 8.510079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.146966, 21.712961, 8.883533>,  <4.353337, 21.533672, 8.744760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.146966, 21.712961, 8.883533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.008996, 21.579750, 8.532507>,  <4.926214, 21.499825, 8.321892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.008996, 21.579750, 8.532507>,  <5.146966, 21.712961, 8.883533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.008996, 21.579750, 8.532507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088935, 0.919141, -0.383759,
		0.934408, -0.210413, -0.287415,
		-0.344923, -0.333027, -0.877566,
		4.905519, 21.479843, 8.269238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.062065, 22.226135, 9.416980>,  <5.146966, 21.712961, 8.883533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.062065, 22.226135, 9.416980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.229188, 22.565018, 9.548239>,  <5.329463, 22.768347, 9.626994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.229188, 22.565018, 9.548239>,  <5.062065, 22.226135, 9.416980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.229188, 22.565018, 9.548239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230096, 0.250736, -0.940313,
		-0.878915, 0.468375, -0.090179,
		0.417808, 0.847205, 0.328147,
		5.354531, 22.819180, 9.646683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.670725, 22.244766, 9.828893>,  <5.062065, 22.226135, 9.416980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.670725, 22.244766, 9.828893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.054223, 22.140202, 9.873568>,  <6.284321, 22.077463, 9.900373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.054223, 22.140202, 9.873568>,  <5.670725, 22.244766, 9.828893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.054223, 22.140202, 9.873568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236079, 0.513325, -0.825084,
		0.158354, 0.817412, 0.553861,
		0.958744, -0.261410, 0.111687,
		6.341846, 22.061779, 9.907074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.203253, 22.769550, 9.800273>,  <5.670725, 22.244766, 9.828893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.203253, 22.769550, 9.800273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.342159, 22.425673, 9.650428>,  <6.425502, 22.219347, 9.560520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.342159, 22.425673, 9.650428>,  <6.203253, 22.769550, 9.800273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.342159, 22.425673, 9.650428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462128, 0.504483, -0.729338,
		0.815993, 0.080154, 0.572477,
		0.347264, -0.859693, -0.374614,
		6.446338, 22.167765, 9.538044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.842661, 22.975496, 9.476373>,  <6.203253, 22.769550, 9.800273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.842661, 22.975496, 9.476373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.784476, 22.595816, 9.364761>,  <6.749564, 22.368008, 9.297794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.784476, 22.595816, 9.364761>,  <6.842661, 22.975496, 9.476373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.784476, 22.595816, 9.364761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567922, 0.150824, -0.809145,
		0.810126, -0.276168, 0.517133,
		-0.145464, -0.949201, -0.279029,
		6.740837, 22.311056, 9.281053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.464021, 22.554907, 9.505981>,  <6.842661, 22.975496, 9.476373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.464021, 22.554907, 9.505981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.201111, 22.439791, 9.227365>,  <7.043365, 22.370722, 9.060196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.201111, 22.439791, 9.227365>,  <7.464021, 22.554907, 9.505981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.201111, 22.439791, 9.227365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658728, 0.229648, -0.716478,
		0.366153, -0.929752, 0.038633,
		-0.657274, -0.287789, -0.696539,
		7.003929, 22.353455, 9.018404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.498046, 21.937101, 9.024500>,  <7.464021, 22.554907, 9.505981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.498046, 21.937101, 9.024500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.302156, 22.218149, 8.818007>,  <7.184623, 22.386778, 8.694112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.302156, 22.218149, 8.818007>,  <7.498046, 21.937101, 9.024500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.302156, 22.218149, 8.818007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.801022, 0.128775, -0.584621,
		-0.344290, -0.699814, -0.625879,
		-0.489723, 0.702622, -0.516230,
		7.155240, 22.428936, 8.663138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.793375, 21.401230, 9.205473>,  <7.498046, 21.937101, 9.024500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.793375, 21.401230, 9.205473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.445093, 21.255453, 9.337567>,  <7.236124, 21.167988, 9.416824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.445093, 21.255453, 9.337567>,  <7.793375, 21.401230, 9.205473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.445093, 21.255453, 9.337567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178571, 0.391378, 0.902738,
		-0.458243, 0.844988, -0.275695,
		-0.870704, -0.364442, 0.330237,
		7.183881, 21.146120, 9.436638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.185737, 21.483578, 9.963627>,  <7.793375, 21.401230, 9.205473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.185737, 21.483578, 9.963627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.249910, 21.642326, 10.325125>,  <8.288414, 21.737576, 10.542024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.249910, 21.642326, 10.325125>,  <8.185737, 21.483578, 9.963627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.249910, 21.642326, 10.325125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090752, -0.917658, 0.386868,
		0.982866, 0.019950, -0.183240,
		0.160434, 0.396869, 0.903745,
		8.298040, 21.761387, 10.596249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.782878, 21.144697, 10.234129>,  <8.185737, 21.483578, 9.963627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.782878, 21.144697, 10.234129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.548779, 21.279018, 10.529350>,  <8.408320, 21.359612, 10.706483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.548779, 21.279018, 10.529350>,  <8.782878, 21.144697, 10.234129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.548779, 21.279018, 10.529350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106024, -0.870711, 0.480230,
		0.803894, 0.359304, 0.473978,
		-0.585246, 0.335801, 0.738054,
		8.373205, 21.379759, 10.750767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.119801, 21.216299, 10.906141>,  <8.782878, 21.144697, 10.234129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.119801, 21.216299, 10.906141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.730107, 21.148169, 10.965281>,  <8.496291, 21.107290, 11.000765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.730107, 21.148169, 10.965281>,  <9.119801, 21.216299, 10.906141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.730107, 21.148169, 10.965281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218457, -0.875635, 0.430743,
		0.056096, 0.451943, 0.890281,
		-0.974233, -0.170325, 0.147849,
		8.437838, 21.097071, 11.009635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.969274, 21.215075, 11.679360>,  <9.119801, 21.216299, 10.906141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.969274, 21.215075, 11.679360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.671141, 21.031931, 11.485518>,  <8.492261, 20.922045, 11.369211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.671141, 21.031931, 11.485518>,  <8.969274, 21.215075, 11.679360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.671141, 21.031931, 11.485518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074971, -0.779834, 0.621480,
		-0.662463, 0.426878, 0.615563,
		-0.745333, -0.457857, -0.484608,
		8.447540, 20.894573, 11.340135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.648731, 20.857058, 12.288291>,  <8.969274, 21.215075, 11.679360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.648731, 20.857058, 12.288291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.491859, 20.682549, 11.964349>,  <8.397737, 20.577843, 11.769983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.491859, 20.682549, 11.964349>,  <8.648731, 20.857058, 12.288291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.491859, 20.682549, 11.964349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000753, -0.880230, 0.474547,
		-0.919889, 0.186717, 0.344879,
		-0.392179, -0.436270, -0.809854,
		8.374206, 20.551668, 11.721393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.041018, 20.519209, 12.521338>,  <8.648731, 20.857058, 12.288291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.041018, 20.519209, 12.521338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.164755, 20.339516, 12.186077>,  <8.238997, 20.231699, 11.984921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.164755, 20.339516, 12.186077>,  <8.041018, 20.519209, 12.521338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.164755, 20.339516, 12.186077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149469, -0.893396, 0.423677,
		-0.939130, -0.005785, -0.343513,
		0.309344, -0.449232, -0.838151,
		8.257558, 20.204746, 11.934632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.449296, 20.104088, 12.366898>,  <8.041018, 20.519209, 12.521338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.449296, 20.104088, 12.366898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.780701, 19.973007, 12.185271>,  <7.979544, 19.894358, 12.076295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.780701, 19.973007, 12.185271>,  <7.449296, 20.104088, 12.366898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.780701, 19.973007, 12.185271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096372, -0.882223, 0.460863,
		-0.551615, -0.338071, -0.762515,
		0.828513, -0.327704, -0.454067,
		8.029255, 19.874697, 12.049051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.214349, 19.488092, 12.024901>,  <7.449296, 20.104088, 12.366898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.214349, 19.488092, 12.024901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.611542, 19.454493, 12.058199>,  <7.849858, 19.434332, 12.078177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.611542, 19.454493, 12.058199>,  <7.214349, 19.488092, 12.024901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.611542, 19.454493, 12.058199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103241, -0.959045, 0.263768,
		0.057678, -0.270511, -0.960987,
		0.992982, -0.084000, 0.083243,
		7.909437, 19.429293, 12.083172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.334986, 18.834623, 11.836674>,  <7.214349, 19.488092, 12.024901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.334986, 18.834623, 11.836674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.666835, 18.949553, 12.028161>,  <7.865945, 19.018509, 12.143053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.666835, 18.949553, 12.028161>,  <7.334986, 18.834623, 11.836674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.666835, 18.949553, 12.028161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109900, -0.924684, 0.364528,
		0.547399, -0.249810, -0.798717,
		0.829624, 0.287322, 0.478718,
		7.915722, 19.035749, 12.171777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.871967, 18.380592, 11.637313>,  <7.334986, 18.834623, 11.836674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.871967, 18.380592, 11.637313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.994027, 18.539463, 11.983523>,  <8.067263, 18.634785, 12.191250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.994027, 18.539463, 11.983523>,  <7.871967, 18.380592, 11.637313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.994027, 18.539463, 11.983523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156869, -0.917423, 0.365687,
		0.939295, 0.024185, -0.342256,
		0.305150, 0.397177, 0.865525,
		8.085572, 18.658617, 12.243181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.427613, 18.070118, 11.785955>,  <7.871967, 18.380592, 11.637313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.427613, 18.070118, 11.785955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.304451, 18.201149, 12.143253>,  <8.230554, 18.279768, 12.357633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.304451, 18.201149, 12.143253>,  <8.427613, 18.070118, 11.785955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.304451, 18.201149, 12.143253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060362, -0.943693, 0.325270,
		0.949500, 0.046234, 0.310342,
		-0.307906, 0.327577, 0.893245,
		8.212079, 18.299421, 12.411227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.695805, 17.602966, 12.227720>,  <8.427613, 18.070118, 11.785955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.695805, 17.602966, 12.227720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.435917, 17.800993, 12.458467>,  <8.279984, 17.919809, 12.596914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.435917, 17.800993, 12.458467>,  <8.695805, 17.602966, 12.227720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.435917, 17.800993, 12.458467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150314, -0.827544, 0.540904,
		0.745165, 0.264725, 0.612087,
		-0.649719, 0.495068, 0.576864,
		8.241001, 17.949512, 12.631526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.901254, 17.518108, 12.986816>,  <8.695805, 17.602966, 12.227720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.901254, 17.518108, 12.986816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.509591, 17.593210, 12.955826>,  <8.274593, 17.638271, 12.937232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.509591, 17.593210, 12.955826>,  <8.901254, 17.518108, 12.986816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.509591, 17.593210, 12.955826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202965, -0.889985, 0.408328,
		0.007713, 0.415542, 0.909541,
		-0.979156, 0.187754, -0.077476,
		8.215844, 17.649536, 12.932583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.618158, 17.506617, 13.637037>,  <8.901254, 17.518108, 12.986816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.618158, 17.506617, 13.637037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.336400, 17.414576, 13.368446>,  <8.167345, 17.359352, 13.207292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.336400, 17.414576, 13.368446>,  <8.618158, 17.506617, 13.637037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.336400, 17.414576, 13.368446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130113, -0.888111, 0.440828,
		-0.697780, 0.397885, 0.595643,
		-0.704396, -0.230100, -0.671477,
		8.125081, 17.345545, 13.167004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.324104, 16.851862, 13.891201>,  <8.618158, 17.506617, 13.637037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.324104, 16.851862, 13.891201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.104815, 16.875317, 13.557491>,  <7.973242, 16.889389, 13.357265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.104815, 16.875317, 13.557491>,  <8.324104, 16.851862, 13.891201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.104815, 16.875317, 13.557491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381989, -0.904965, 0.187410,
		-0.744001, 0.421426, 0.518520,
		-0.548222, 0.058636, -0.834275,
		7.940349, 16.892908, 13.307209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.745740, 16.478312, 13.985059>,  <8.324104, 16.851862, 13.891201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.745740, 16.478312, 13.985059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.743261, 16.499756, 13.585642>,  <7.741773, 16.512623, 13.345991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.743261, 16.499756, 13.585642>,  <7.745740, 16.478312, 13.985059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.743261, 16.499756, 13.585642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213082, -0.975699, -0.051061,
		-0.977015, 0.212455, 0.017472,
		-0.006199, 0.053611, -0.998542,
		7.741401, 16.515839, 13.286079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.185551, 16.112951, 13.783298>,  <7.745740, 16.478312, 13.985059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.185551, 16.112951, 13.783298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.418635, 16.136642, 13.459091>,  <7.558486, 16.150858, 13.264566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.418635, 16.136642, 13.459091>,  <7.185551, 16.112951, 13.783298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.418635, 16.136642, 13.459091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205808, -0.954075, -0.217681,
		-0.786188, 0.293656, -0.543760,
		0.582711, 0.059228, -0.810519,
		7.593449, 16.154411, 13.215936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.726788, 16.016216, 13.153475>,  <7.185551, 16.112951, 13.783298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.726788, 16.016216, 13.153475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.101807, 15.932953, 13.041995>,  <7.326819, 15.882995, 12.975107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.101807, 15.932953, 13.041995>,  <6.726788, 16.016216, 13.153475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.101807, 15.932953, 13.041995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267770, -0.943284, -0.196250,
		-0.222041, 0.258621, -0.940113,
		0.937549, -0.208158, -0.278699,
		7.383072, 15.870505, 12.958385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.624637, 15.716341, 12.495508>,  <6.726788, 16.016216, 13.153475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.624637, 15.716341, 12.495508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.978915, 15.590311, 12.631903>,  <7.191482, 15.514693, 12.713739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.978915, 15.590311, 12.631903>,  <6.624637, 15.716341, 12.495508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.978915, 15.590311, 12.631903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243314, -0.940531, -0.237066,
		0.395401, 0.127002, -0.909686,
		0.885695, -0.315076, 0.340986,
		7.244624, 15.495789, 12.734199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.873349, 15.246674, 11.943053>,  <6.624637, 15.716341, 12.495508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.873349, 15.246674, 11.943053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.091475, 15.132980, 12.258482>,  <7.222350, 15.064764, 12.447740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.091475, 15.132980, 12.258482>,  <6.873349, 15.246674, 11.943053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.091475, 15.132980, 12.258482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401082, -0.914549, -0.052284,
		0.736048, -0.287771, -0.612716,
		0.545313, -0.284233, 0.788572,
		7.255068, 15.047710, 12.495053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.279317, 14.641715, 11.747156>,  <6.873349, 15.246674, 11.943053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.279317, 14.641715, 11.747156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.246576, 14.659115, 12.145434>,  <7.226932, 14.669555, 12.384401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.246576, 14.659115, 12.145434>,  <7.279317, 14.641715, 11.747156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.246576, 14.659115, 12.145434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477058, -0.878871, -0.000822,
		0.875052, -0.475072, 0.092688,
		-0.081851, 0.043498, 0.995695,
		7.222021, 14.672164, 12.444143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.532200, 14.031695, 12.027132>,  <7.279317, 14.641715, 11.747156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.532200, 14.031695, 12.027132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.244956, 14.193548, 12.253615>,  <7.072610, 14.290660, 12.389505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.244956, 14.193548, 12.253615>,  <7.532200, 14.031695, 12.027132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.244956, 14.193548, 12.253615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432666, -0.896831, 0.092165,
		0.545086, -0.178794, 0.819094,
		-0.718110, 0.404632, 0.566208,
		7.029523, 14.314938, 12.423478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.234933, 13.732660, 11.763164>,  <7.532200, 14.031695, 12.027132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.234933, 13.732660, 11.763164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.348658, 13.465845, 11.487707>,  <8.416893, 13.305756, 11.322433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.348658, 13.465845, 11.487707>,  <8.234933, 13.732660, 11.763164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.348658, 13.465845, 11.487707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713862, -0.332182, 0.616487,
		-0.639975, -0.666869, 0.381731,
		0.284312, -0.667039, -0.688640,
		8.433951, 13.265734, 11.281116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.304193, 13.068126, 12.060438>,  <8.234933, 13.732660, 11.763164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.304193, 13.068126, 12.060438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.520576, 13.093177, 11.724952>,  <8.650405, 13.108208, 11.523660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.520576, 13.093177, 11.724952>,  <8.304193, 13.068126, 12.060438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.520576, 13.093177, 11.724952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.834426, 0.084963, 0.544531,
		0.105363, -0.994414, -0.006299,
		0.540954, 0.062630, -0.838717,
		8.682862, 13.111965, 11.473336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.770876, 12.415833, 11.838223>,  <8.304193, 13.068126, 12.060438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.770876, 12.415833, 11.838223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.910425, 12.771012, 11.718331>,  <8.994155, 12.984119, 11.646397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.910425, 12.771012, 11.718331>,  <8.770876, 12.415833, 11.838223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.910425, 12.771012, 11.718331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687938, -0.025456, 0.725323,
		0.636419, -0.459240, -0.619734,
		0.348873, 0.887947, -0.299728,
		9.015087, 13.037396, 11.628413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.397340, 12.385155, 12.033245>,  <8.770876, 12.415833, 11.838223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.397340, 12.385155, 12.033245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.331751, 12.775409, 11.974938>,  <9.292397, 13.009562, 11.939954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.331751, 12.775409, 11.974938>,  <9.397340, 12.385155, 12.033245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.331751, 12.775409, 11.974938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651538, 0.218061, 0.726600,
		0.740683, 0.024169, -0.671420,
		-0.163972, 0.975636, -0.145768,
		9.282559, 13.068099, 11.931208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.048213, 12.602643, 12.243062>,  <9.397340, 12.385155, 12.033245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.048213, 12.602643, 12.243062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.811931, 12.921391, 12.192368>,  <9.670161, 13.112640, 12.161951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.811931, 12.921391, 12.192368>,  <10.048213, 12.602643, 12.243062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.811931, 12.921391, 12.192368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482343, 0.474648, 0.736243,
		0.646846, 0.373773, -0.664743,
		-0.590707, 0.796871, -0.126737,
		9.634719, 13.160453, 12.154346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.422350, 13.228509, 12.284141>,  <10.048213, 12.602643, 12.243062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.422350, 13.228509, 12.284141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.051557, 13.349113, 12.373397>,  <9.829081, 13.421476, 12.426950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.051557, 13.349113, 12.373397>,  <10.422350, 13.228509, 12.284141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.051557, 13.349113, 12.373397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360634, 0.552773, 0.751256,
		0.103166, 0.776875, -0.621146,
		-0.926984, 0.301510, 0.223140,
		9.773461, 13.439567, 12.440339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.308539, 13.918768, 12.259552>,  <10.422350, 13.228509, 12.284141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.308539, 13.918768, 12.259552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.063354, 13.760902, 12.533346>,  <9.916244, 13.666183, 12.697622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.063354, 13.760902, 12.533346>,  <10.308539, 13.918768, 12.259552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.063354, 13.760902, 12.533346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470708, 0.513394, 0.717538,
		-0.634595, 0.762016, -0.128920,
		-0.612962, -0.394663, 0.684484,
		9.879466, 13.642504, 12.738691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.037153, 14.568606, 12.671793>,  <10.308539, 13.918768, 12.259552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.037153, 14.568606, 12.671793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.021451, 14.210623, 12.849560>,  <10.012030, 13.995832, 12.956220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.021451, 14.210623, 12.849560>,  <10.037153, 14.568606, 12.671793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.021451, 14.210623, 12.849560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384317, 0.397025, 0.833470,
		-0.922366, 0.203516, 0.328362,
		-0.039256, -0.894960, 0.444417,
		10.009674, 13.942135, 12.982884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.647072, 14.716249, 13.282651>,  <10.037153, 14.568606, 12.671793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.647072, 14.716249, 13.282651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.830706, 14.380087, 13.397860>,  <9.940886, 14.178390, 13.466985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.830706, 14.380087, 13.397860>,  <9.647072, 14.716249, 13.282651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.830706, 14.380087, 13.397860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311635, 0.455946, 0.833665,
		-0.831940, -0.292966, 0.471218,
		0.459085, -0.840407, 0.288021,
		9.968431, 14.127965, 13.484266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.430366, 14.553048, 13.934307>,  <9.647072, 14.716249, 13.282651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.430366, 14.553048, 13.934307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.768290, 14.344028, 13.888283>,  <9.971044, 14.218616, 13.860668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.768290, 14.344028, 13.888283>,  <9.430366, 14.553048, 13.934307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.768290, 14.344028, 13.888283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329265, 0.338207, 0.881590,
		-0.421760, -0.782660, 0.457778,
		0.844809, -0.522550, -0.115060,
		10.021732, 14.187263, 13.853765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.427861, 14.350927, 14.534339>,  <9.430366, 14.553048, 13.934307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.427861, 14.350927, 14.534339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.796255, 14.335927, 14.379223>,  <10.017291, 14.326927, 14.286153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.796255, 14.335927, 14.379223>,  <9.427861, 14.350927, 14.534339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.796255, 14.335927, 14.379223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386739, 0.208396, 0.898334,
		0.047126, -0.977325, 0.206433,
		0.920985, -0.037501, -0.387790,
		10.072551, 14.324677, 14.262886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.803735, 13.928366, 14.974928>,  <9.427861, 14.350927, 14.534339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.803735, 13.928366, 14.974928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.078695, 14.131036, 14.766789>,  <10.243671, 14.252638, 14.641907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.078695, 14.131036, 14.766789>,  <9.803735, 13.928366, 14.974928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.078695, 14.131036, 14.766789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419138, 0.308356, 0.853956,
		0.593131, -0.805106, -0.000403,
		0.687401, 0.506677, -0.520346,
		10.284916, 14.283039, 14.610685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.457904, 13.804926, 15.249335>,  <9.803735, 13.928366, 14.974928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.457904, 13.804926, 15.249335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.493277, 14.159431, 15.067472>,  <10.514501, 14.372135, 14.958353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.493277, 14.159431, 15.067472>,  <10.457904, 13.804926, 15.249335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.493277, 14.159431, 15.067472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245417, 0.422991, 0.872266,
		0.965376, -0.188718, -0.180099,
		0.088432, 0.886264, -0.454660,
		10.519806, 14.425311, 14.931073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.134408, 14.149135, 15.565113>,  <10.457904, 13.804926, 15.249335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.134408, 14.149135, 15.565113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.932490, 14.444367, 15.386042>,  <10.811339, 14.621508, 15.278599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.932490, 14.444367, 15.386042>,  <11.134408, 14.149135, 15.565113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.932490, 14.444367, 15.386042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090625, 0.470427, 0.877773,
		0.858469, 0.483666, -0.170580,
		-0.504794, 0.738083, -0.447679,
		10.781052, 14.665792, 15.251738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.401755, 14.777294, 15.711487>,  <11.134408, 14.149135, 15.565113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.401755, 14.777294, 15.711487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.026081, 14.872701, 15.612661>,  <10.800676, 14.929945, 15.553366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.026081, 14.872701, 15.612661>,  <11.401755, 14.777294, 15.711487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.026081, 14.872701, 15.612661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048828, 0.619382, 0.783570,
		0.339921, 0.747981, -0.570068,
		-0.939186, 0.238517, -0.247063,
		10.744326, 14.944256, 15.538543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.429017, 15.605507, 15.785983>,  <11.401755, 14.777294, 15.711487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.429017, 15.605507, 15.785983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.041378, 15.510496, 15.759355>,  <10.808795, 15.453489, 15.743378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.041378, 15.510496, 15.759355>,  <11.429017, 15.605507, 15.785983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.041378, 15.510496, 15.759355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221080, 0.716586, 0.661535,
		-0.109428, 0.655809, -0.746954,
		-0.969097, -0.237527, -0.066572,
		10.750648, 15.439238, 15.739383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.021314, 16.188520, 15.692786>,  <11.429017, 15.605507, 15.785983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.021314, 16.188520, 15.692786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.749831, 15.927894, 15.828326>,  <10.586942, 15.771518, 15.909651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.749831, 15.927894, 15.828326>,  <11.021314, 16.188520, 15.692786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.749831, 15.927894, 15.828326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363009, 0.698719, 0.616454,
		-0.638422, 0.295385, -0.710749,
		-0.678706, -0.651566, 0.338851,
		10.546220, 15.732424, 15.929981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.226662, 16.465649, 15.693127>,  <11.021314, 16.188520, 15.692786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.226662, 16.465649, 15.693127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.253868, 16.176844, 15.968539>,  <10.270192, 16.003561, 16.133787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.253868, 16.176844, 15.968539>,  <10.226662, 16.465649, 15.693127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.253868, 16.176844, 15.968539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444024, 0.596105, 0.668955,
		-0.893429, -0.351224, -0.280045,
		0.068017, -0.722011, 0.688530,
		10.274273, 15.960240, 16.175098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.615744, 16.644753, 16.083395>,  <10.226662, 16.465649, 15.693127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.615744, 16.644753, 16.083395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.831696, 16.397810, 16.312271>,  <9.961267, 16.249645, 16.449596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.831696, 16.397810, 16.312271>,  <9.615744, 16.644753, 16.083395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.831696, 16.397810, 16.312271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234999, 0.542196, 0.806721,
		-0.808274, -0.569996, 0.147642,
		0.539879, -0.617356, 0.572191,
		9.993659, 16.212603, 16.483929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.200664, 16.471491, 16.625380>,  <9.615744, 16.644753, 16.083395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.200664, 16.471491, 16.625380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.576964, 16.407415, 16.744928>,  <9.802745, 16.368971, 16.816658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.576964, 16.407415, 16.744928>,  <9.200664, 16.471491, 16.625380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.576964, 16.407415, 16.744928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193016, 0.471704, 0.860373,
		-0.278801, -0.867085, 0.412837,
		0.940752, -0.160189, 0.298872,
		9.859190, 16.359360, 16.834589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.117075, 16.096354, 17.300364>,  <9.200664, 16.471491, 16.625380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.117075, 16.096354, 17.300364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.472085, 16.279842, 17.283039>,  <9.685091, 16.389935, 17.272644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.472085, 16.279842, 17.283039>,  <9.117075, 16.096354, 17.300364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.472085, 16.279842, 17.283039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154198, 0.384278, 0.910249,
		0.434196, -0.801189, 0.411789,
		0.887523, 0.458723, -0.043310,
		9.738342, 16.417459, 17.270046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.493215, 15.852275, 17.755417>,  <9.117075, 16.096354, 17.300364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.493215, 15.852275, 17.755417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.646870, 16.215027, 17.686125>,  <9.739062, 16.432678, 17.644550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.646870, 16.215027, 17.686125>,  <9.493215, 15.852275, 17.755417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.646870, 16.215027, 17.686125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257846, 0.285533, 0.923031,
		0.886541, -0.309905, 0.343519,
		0.384138, 0.906880, -0.173229,
		9.762111, 16.487091, 17.634155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.782185, 15.954302, 18.318096>,  <9.493215, 15.852275, 17.755417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.782185, 15.954302, 18.318096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.735562, 16.314123, 18.149706>,  <9.707589, 16.530016, 18.048672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.735562, 16.314123, 18.149706>,  <9.782185, 15.954302, 18.318096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.735562, 16.314123, 18.149706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231162, 0.387652, 0.892351,
		0.965908, 0.201322, 0.162759,
		-0.116556, 0.899553, -0.420974,
		9.700596, 16.583988, 18.023415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.058431, 16.468607, 18.881514>,  <9.782185, 15.954302, 18.318096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.058431, 16.468607, 18.881514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.822394, 16.650681, 18.614801>,  <9.680773, 16.759926, 18.454773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.822394, 16.650681, 18.614801>,  <10.058431, 16.468607, 18.881514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.822394, 16.650681, 18.614801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432951, 0.518683, 0.737238,
		0.681430, 0.723721, -0.108997,
		-0.590090, 0.455186, -0.666783,
		9.645368, 16.787237, 18.414766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.020656, 17.196011, 19.161520>,  <10.058431, 16.468607, 18.881514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.020656, 17.196011, 19.161520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.706866, 17.183300, 18.913782>,  <9.518593, 17.175674, 18.765139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.706866, 17.183300, 18.913782>,  <10.020656, 17.196011, 19.161520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.706866, 17.183300, 18.913782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385140, 0.807717, 0.446385,
		0.486073, 0.588713, -0.645872,
		-0.784475, -0.031775, -0.619347,
		9.471524, 17.173767, 18.727978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.976690, 17.889460, 18.746746>,  <10.020656, 17.196011, 19.161520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.976690, 17.889460, 18.746746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.635980, 17.691612, 18.815830>,  <9.431553, 17.572905, 18.857281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.635980, 17.691612, 18.815830>,  <9.976690, 17.889460, 18.746746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.635980, 17.691612, 18.815830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321036, 0.753289, 0.574013,
		-0.414019, 0.433485, -0.800424,
		-0.851777, -0.494618, 0.172712,
		9.380446, 17.543226, 18.867643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.439034, 18.343264, 18.821795>,  <9.976690, 17.889460, 18.746746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.439034, 18.343264, 18.821795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.218804, 18.039059, 18.959484>,  <9.086667, 17.856535, 19.042099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.218804, 18.039059, 18.959484>,  <9.439034, 18.343264, 18.821795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.218804, 18.039059, 18.959484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306163, 0.567576, 0.764279,
		-0.776617, 0.315402, -0.545332,
		-0.550572, -0.760512, 0.344226,
		9.053633, 17.810905, 19.062752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.801081, 18.630960, 19.066767>,  <9.439034, 18.343264, 18.821795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.801081, 18.630960, 19.066767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.822655, 18.286882, 19.269608>,  <8.835599, 18.080435, 19.391312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.822655, 18.286882, 19.269608>,  <8.801081, 18.630960, 19.066767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.822655, 18.286882, 19.269608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306362, 0.469093, 0.828308,
		-0.950386, -0.200031, -0.238232,
		0.053934, -0.860197, 0.507102,
		8.838835, 18.028824, 19.421738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.322988, 18.661438, 19.634890>,  <8.801081, 18.630960, 19.066767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.322988, 18.661438, 19.634890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.546625, 18.352297, 19.754965>,  <8.680808, 18.166813, 19.827011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.546625, 18.352297, 19.754965>,  <8.322988, 18.661438, 19.634890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.546625, 18.352297, 19.754965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029207, 0.343481, 0.938705,
		-0.828589, -0.533593, 0.169466,
		0.559095, -0.772851, 0.300189,
		8.714354, 18.120441, 19.845022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.083313, 18.403807, 20.191551>,  <8.322988, 18.661438, 19.634890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.083313, 18.403807, 20.191551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.455730, 18.263390, 20.231409>,  <8.679181, 18.179140, 20.255323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.455730, 18.263390, 20.231409>,  <8.083313, 18.403807, 20.191551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.455730, 18.263390, 20.231409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035892, 0.359837, 0.932325,
		-0.363141, -0.864457, 0.347623,
		0.931042, -0.351042, 0.099644,
		8.735044, 18.158077, 20.261303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.076152, 18.090704, 20.893534>,  <8.083313, 18.403807, 20.191551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.076152, 18.090704, 20.893534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.462572, 18.121344, 20.794842>,  <8.694425, 18.139727, 20.735626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.462572, 18.121344, 20.794842>,  <8.076152, 18.090704, 20.893534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.462572, 18.121344, 20.794842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211275, 0.315402, 0.925141,
		0.148684, -0.945862, 0.288511,
		0.966052, 0.076599, -0.246732,
		8.752388, 18.144323, 20.720821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.413702, 17.722374, 21.313538>,  <8.076152, 18.090704, 20.893534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.413702, 17.722374, 21.313538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.707163, 17.966993, 21.195040>,  <8.883240, 18.113766, 21.123941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.707163, 17.966993, 21.195040>,  <8.413702, 17.722374, 21.313538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.707163, 17.966993, 21.195040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357998, 0.022702, 0.933446,
		0.577573, -0.790881, -0.202278,
		0.733653, 0.611549, -0.296246,
		8.927258, 18.150457, 21.106167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.016247, 17.413309, 21.529182>,  <8.413702, 17.722374, 21.313538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.016247, 17.413309, 21.529182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.116091, 17.795368, 21.465445>,  <9.175997, 18.024603, 21.427202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.116091, 17.795368, 21.465445>,  <9.016247, 17.413309, 21.529182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.116091, 17.795368, 21.465445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301290, 0.079781, 0.950189,
		0.920282, -0.285185, -0.267862,
		0.249609, 0.955146, -0.159345,
		9.190973, 18.081913, 21.417641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.624622, 17.501001, 21.882885>,  <9.016247, 17.413309, 21.529182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.624622, 17.501001, 21.882885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.518660, 17.883465, 21.832941>,  <9.455082, 18.112942, 21.802975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.518660, 17.883465, 21.832941>,  <9.624622, 17.501001, 21.882885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.518660, 17.883465, 21.832941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303350, 0.205545, 0.930446,
		0.915316, 0.208605, -0.344500,
		-0.264906, 0.956156, -0.124858,
		9.439188, 18.170311, 21.795485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.221861, 17.927790, 22.058786>,  <9.624622, 17.501001, 21.882885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.221861, 17.927790, 22.058786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.897552, 18.159443, 22.092859>,  <9.702968, 18.298435, 22.113304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.897552, 18.159443, 22.092859>,  <10.221861, 17.927790, 22.058786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.897552, 18.159443, 22.092859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210908, 0.153263, 0.965416,
		0.546049, 0.800697, -0.246404,
		-0.810771, 0.579133, 0.085184,
		9.654322, 18.333183, 22.118414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.466268, 18.465740, 22.518169>,  <10.221861, 17.927790, 22.058786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.466268, 18.465740, 22.518169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.071057, 18.515146, 22.555153>,  <9.833931, 18.544790, 22.577343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.071057, 18.515146, 22.555153>,  <10.466268, 18.465740, 22.518169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.071057, 18.515146, 22.555153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109071, 0.135304, 0.984782,
		0.109128, 0.983075, -0.147156,
		-0.988026, 0.123517, 0.092460,
		9.774650, 18.552202, 22.582891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.302584, 19.092583, 22.884878>,  <10.466268, 18.465740, 22.518169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.302584, 19.092583, 22.884878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.974437, 18.869078, 22.933512>,  <9.777549, 18.734974, 22.962692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.974437, 18.869078, 22.933512>,  <10.302584, 19.092583, 22.884878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.974437, 18.869078, 22.933512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151821, -0.007838, 0.988377,
		-0.551314, 0.829291, 0.091262,
		-0.820367, -0.558762, 0.121583,
		9.728327, 18.701448, 22.969986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.094501, 19.456333, 23.477026>,  <10.302584, 19.092583, 22.884878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.094501, 19.456333, 23.477026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.877114, 19.122143, 23.444479>,  <9.746682, 18.921629, 23.424952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.877114, 19.122143, 23.444479>,  <10.094501, 19.456333, 23.477026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.877114, 19.122143, 23.444479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102896, -0.162503, 0.981328,
		-0.833100, 0.524947, 0.174283,
		-0.543467, -0.835478, -0.081366,
		9.714074, 18.871500, 23.420069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.506320, 19.444178, 23.972198>,  <10.094501, 19.456333, 23.477026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.506320, 19.444178, 23.972198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.581452, 19.053904, 23.927013>,  <9.626532, 18.819740, 23.899902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.581452, 19.053904, 23.927013>,  <9.506320, 19.444178, 23.972198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.581452, 19.053904, 23.927013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027685, -0.109703, 0.993579,
		-0.981811, -0.189752, 0.006406,
		0.187831, -0.975684, -0.112961,
		9.637801, 18.761198, 23.893126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.006173, 19.119019, 24.366253>,  <9.506320, 19.444178, 23.972198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.006173, 19.119019, 24.366253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.305040, 18.855804, 24.328880>,  <9.484361, 18.697876, 24.306458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.305040, 18.855804, 24.328880>,  <9.006173, 19.119019, 24.366253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.305040, 18.855804, 24.328880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040373, -0.185251, 0.981862,
		-0.663408, -0.729844, -0.164980,
		0.747168, -0.658036, -0.093431,
		9.529191, 18.658394, 24.300852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.875873, 18.464682, 24.860886>,  <9.006173, 19.119019, 24.366253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.875873, 18.464682, 24.860886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.256591, 18.386826, 24.766058>,  <9.485022, 18.340113, 24.709162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.256591, 18.386826, 24.766058>,  <8.875873, 18.464682, 24.860886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.256591, 18.386826, 24.766058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189883, -0.233114, 0.953731,
		-0.240914, -0.952768, -0.184914,
		0.951790, -0.194655, -0.237075,
		9.542130, 18.328434, 24.694937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.022276, 17.800886, 25.137028>,  <8.875873, 18.464682, 24.860886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.022276, 17.800886, 25.137028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.358348, 18.014227, 25.097773>,  <9.559992, 18.142231, 25.074219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.358348, 18.014227, 25.097773>,  <9.022276, 17.800886, 25.137028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.358348, 18.014227, 25.097773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141978, -0.041677, 0.988992,
		0.523391, -0.844866, -0.110740,
		0.840181, 0.533353, -0.098139,
		9.610402, 18.174232, 25.068331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.426669, 17.432354, 25.554625>,  <9.022276, 17.800886, 25.137028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.426669, 17.432354, 25.554625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.577441, 17.800358, 25.511721>,  <9.667905, 18.021160, 25.485979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.577441, 17.800358, 25.511721>,  <9.426669, 17.432354, 25.554625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.577441, 17.800358, 25.511721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225569, 0.021135, 0.973998,
		0.898355, -0.391324, -0.199559,
		0.376931, 0.920010, -0.107257,
		9.690520, 18.076361, 25.479544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.144512, 17.368958, 25.878189>,  <9.426669, 17.432354, 25.554625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.144512, 17.368958, 25.878189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.972551, 17.729490, 25.857073>,  <9.869375, 17.945810, 25.844402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.972551, 17.729490, 25.857073>,  <10.144512, 17.368958, 25.878189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.972551, 17.729490, 25.857073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172273, 0.139282, 0.975153,
		0.886288, 0.410126, -0.215152,
		-0.429902, 0.901331, -0.052790,
		9.843581, 17.999889, 25.841236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.468784, 17.802652, 26.321651>,  <10.144512, 17.368958, 25.878189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.468784, 17.802652, 26.321651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.134129, 18.013517, 26.262142>,  <9.933335, 18.140038, 26.226437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.134129, 18.013517, 26.262142>,  <10.468784, 17.802652, 26.321651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.134129, 18.013517, 26.262142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123179, 0.445719, 0.886658,
		0.533726, 0.723486, -0.437841,
		-0.836639, 0.527165, -0.148773,
		9.883137, 18.171667, 26.217510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.612229, 18.313631, 26.746359>,  <10.468784, 17.802652, 26.321651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.612229, 18.313631, 26.746359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.220965, 18.354017, 26.673685>,  <9.986207, 18.378248, 26.630081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.220965, 18.354017, 26.673685>,  <10.612229, 18.313631, 26.746359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.220965, 18.354017, 26.673685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104273, 0.517792, 0.849128,
		0.179806, 0.849528, -0.495956,
		-0.978160, 0.100963, -0.181685,
		9.927517, 18.384306, 26.619179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.518747, 18.912859, 26.934420>,  <10.612229, 18.313631, 26.746359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.518747, 18.912859, 26.934420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.170023, 18.718967, 26.962658>,  <9.960788, 18.602633, 26.979601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.170023, 18.718967, 26.962658>,  <10.518747, 18.912859, 26.934420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.170023, 18.718967, 26.962658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102954, 0.322219, 0.941050,
		-0.478899, 0.813151, -0.330819,
		-0.871812, -0.484727, 0.070594,
		9.908480, 18.573549, 26.983835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.315888, 19.154686, 27.493895>,  <10.518747, 18.912859, 26.934420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.315888, 19.154686, 27.493895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.018869, 18.890661, 27.448395>,  <9.840658, 18.732246, 27.421095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.018869, 18.890661, 27.448395>,  <10.315888, 19.154686, 27.493895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.018869, 18.890661, 27.448395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295467, 0.170395, 0.940035,
		-0.601101, 0.731629, -0.321553,
		-0.742547, -0.660064, -0.113748,
		9.796105, 18.692642, 27.414270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.708543, 19.415232, 27.532267>,  <10.315888, 19.154686, 27.493895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.708543, 19.415232, 27.532267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.668447, 19.035685, 27.652000>,  <9.644388, 18.807957, 27.723841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.668447, 19.035685, 27.652000>,  <9.708543, 19.415232, 27.532267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.668447, 19.035685, 27.652000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309711, 0.315660, 0.896904,
		-0.945532, -0.002800, -0.325517,
		-0.100241, -0.948868, 0.299334,
		9.638374, 18.751024, 27.741800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.082109, 19.243837, 27.753487>,  <9.708543, 19.415232, 27.532267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.082109, 19.243837, 27.753487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.287869, 18.965950, 27.954586>,  <9.411325, 18.799217, 28.075245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.287869, 18.965950, 27.954586>,  <9.082109, 19.243837, 27.753487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.287869, 18.965950, 27.954586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449793, 0.280569, 0.847919,
		-0.730123, -0.662303, -0.168155,
		0.514400, -0.694720, 0.502749,
		9.442189, 18.757534, 28.105412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.586514, 18.725849, 28.250048>,  <9.082109, 19.243837, 27.753487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.586514, 18.725849, 28.250048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.958508, 18.800407, 28.376783>,  <9.181704, 18.845142, 28.452824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.958508, 18.800407, 28.376783>,  <8.586514, 18.725849, 28.250048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.958508, 18.800407, 28.376783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367559, 0.458671, 0.809025,
		0.005475, -0.868837, 0.495069,
		0.929984, 0.186397, 0.316837,
		9.237503, 18.856327, 28.471834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.750194, 18.303392, 28.877857>,  <8.586514, 18.725849, 28.250048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.750194, 18.303392, 28.877857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.943157, 18.652889, 28.853010>,  <9.058935, 18.862587, 28.838102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.943157, 18.652889, 28.853010>,  <8.750194, 18.303392, 28.877857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.943157, 18.652889, 28.853010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656883, 0.407767, 0.634217,
		0.579471, -0.265146, 0.770656,
		0.482408, 0.873741, -0.062119,
		9.087880, 18.915012, 28.834375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.961311, 18.556196, 29.637217>,  <8.750194, 18.303392, 28.877857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.961311, 18.556196, 29.637217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.905708, 18.847023, 29.368277>,  <8.872347, 19.021519, 29.206913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.905708, 18.847023, 29.368277>,  <8.961311, 18.556196, 29.637217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.905708, 18.847023, 29.368277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498301, 0.535370, 0.681964,
		0.855788, 0.429830, 0.287877,
		-0.139008, 0.727066, -0.672348,
		8.864006, 19.065144, 29.166573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.187952, 17.884560, 29.686312>,  <8.961311, 18.556196, 29.637217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.187952, 17.884560, 29.686312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.523527, 18.099005, 29.648849>,  <9.724872, 18.227671, 29.626373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.523527, 18.099005, 29.648849>,  <9.187952, 17.884560, 29.686312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.523527, 18.099005, 29.648849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409919, -0.735662, -0.539228,
		-0.357983, 0.413988, -0.836936,
		0.838937, 0.536110, -0.093653,
		9.775208, 18.259838, 29.620754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.429111, 17.801676, 28.981195>,  <9.187952, 17.884560, 29.686312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.429111, 17.801676, 28.981195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.773676, 17.919270, 29.146868>,  <9.980414, 17.989826, 29.246271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.773676, 17.919270, 29.146868>,  <9.429111, 17.801676, 28.981195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.773676, 17.919270, 29.146868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506550, -0.556885, -0.658244,
		0.037138, 0.776822, -0.628624,
		0.861410, 0.293983, 0.414181,
		10.032099, 18.007465, 29.271122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.898263, 18.212238, 28.546152>,  <9.429111, 17.801676, 28.981195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.898263, 18.212238, 28.546152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.043840, 17.956696, 28.817270>,  <10.131186, 17.803370, 28.979940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.043840, 17.956696, 28.817270>,  <9.898263, 18.212238, 28.546152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.043840, 17.956696, 28.817270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399116, -0.550539, -0.733221,
		0.841577, 0.537370, 0.054613,
		0.363944, -0.638858, 0.677794,
		10.153024, 17.765038, 29.020609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.541706, 17.996574, 28.313555>,  <9.898263, 18.212238, 28.546152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.541706, 17.996574, 28.313555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.406207, 17.712646, 28.560587>,  <10.324907, 17.542290, 28.708805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.406207, 17.712646, 28.560587>,  <10.541706, 17.996574, 28.313555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.406207, 17.712646, 28.560587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189716, -0.694435, -0.694095,
		0.921552, -0.117959, 0.369902,
		-0.338747, -0.709821, 0.617579,
		10.304583, 17.499701, 28.745861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.095675, 17.434864, 28.421751>,  <10.541706, 17.996574, 28.313555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.095675, 17.434864, 28.421751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.742668, 17.265472, 28.503557>,  <10.530864, 17.163837, 28.552641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.742668, 17.265472, 28.503557>,  <11.095675, 17.434864, 28.421751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.742668, 17.265472, 28.503557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221643, -0.758097, -0.613321,
		0.414771, -0.495938, 0.762896,
		-0.882519, -0.423478, 0.204516,
		10.477913, 17.138430, 28.564913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.276187, 16.750578, 28.539268>,  <11.095675, 17.434864, 28.421751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.276187, 16.750578, 28.539268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.905146, 16.786615, 28.394251>,  <10.682521, 16.808237, 28.307241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.905146, 16.786615, 28.394251>,  <11.276187, 16.750578, 28.539268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.905146, 16.786615, 28.394251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156757, -0.787034, -0.596661,
		-0.339088, -0.610295, 0.715932,
		-0.927603, 0.090093, -0.362542,
		10.626865, 16.813643, 28.285488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.925864, 16.035797, 28.605938>,  <11.276187, 16.750578, 28.539268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.925864, 16.035797, 28.605938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.779058, 16.275019, 28.320946>,  <10.690973, 16.418552, 28.149950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.779058, 16.275019, 28.320946>,  <10.925864, 16.035797, 28.605938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.779058, 16.275019, 28.320946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032778, -0.757142, -0.652428,
		-0.929636, -0.262806, 0.258282,
		-0.367018, 0.598054, -0.712481,
		10.668952, 16.454435, 28.107201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.262235, 15.773880, 28.374760>,  <10.925864, 16.035797, 28.605938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.262235, 15.773880, 28.374760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.422150, 16.013498, 28.097252>,  <10.518099, 16.157269, 27.930748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.422150, 16.013498, 28.097252>,  <10.262235, 15.773880, 28.374760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.422150, 16.013498, 28.097252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118507, -0.716753, -0.687184,
		-0.908915, 0.356944, -0.215558,
		0.399787, 0.599046, -0.693768,
		10.542086, 16.193213, 27.889122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.813138, 15.537730, 27.687065>,  <10.262235, 15.773880, 28.374760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.813138, 15.537730, 27.687065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.132451, 15.751039, 27.575089>,  <10.324039, 15.879024, 27.507902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.132451, 15.751039, 27.575089>,  <9.813138, 15.537730, 27.687065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.132451, 15.751039, 27.575089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101622, -0.577395, -0.810116,
		-0.593647, 0.618254, -0.515117,
		0.798283, 0.533270, -0.279941,
		10.371936, 15.911019, 27.491106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.788199, 15.547827, 26.919666>,  <9.813138, 15.537730, 27.687065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.788199, 15.547827, 26.919666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.166725, 15.647033, 27.002590>,  <10.393841, 15.706556, 27.052345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.166725, 15.647033, 27.002590>,  <9.788199, 15.547827, 26.919666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.166725, 15.647033, 27.002590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315309, -0.566992, -0.760986,
		-0.071193, 0.785499, -0.614754,
		0.946315, 0.248015, 0.207309,
		10.450620, 15.721437, 27.064783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.036161, 15.806030, 26.337147>,  <9.788199, 15.547827, 26.919666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.036161, 15.806030, 26.337147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.352441, 15.670732, 26.541258>,  <10.542209, 15.589552, 26.663725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.352441, 15.670732, 26.541258>,  <10.036161, 15.806030, 26.337147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.352441, 15.670732, 26.541258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418715, -0.309278, -0.853830,
		0.446623, 0.888784, -0.102916,
		0.790699, -0.338248, 0.510278,
		10.589651, 15.569258, 26.694342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.538242, 15.948962, 25.877665>,  <10.036161, 15.806030, 26.337147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.538242, 15.948962, 25.877665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.632614, 15.646207, 26.121454>,  <10.689238, 15.464554, 26.267729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.632614, 15.646207, 26.121454>,  <10.538242, 15.948962, 25.877665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.632614, 15.646207, 26.121454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352354, -0.517869, -0.779524,
		0.905640, 0.398664, 0.144512,
		0.235930, -0.756888, 0.609474,
		10.703393, 15.419141, 26.304296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.206195, 15.835794, 25.690798>,  <10.538242, 15.948962, 25.877665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.206195, 15.835794, 25.690798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.088388, 15.498919, 25.871454>,  <11.017705, 15.296794, 25.979849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.088388, 15.498919, 25.871454>,  <11.206195, 15.835794, 25.690798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.088388, 15.498919, 25.871454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520302, -0.537727, -0.663427,
		0.801590, 0.039600, 0.596562,
		-0.294516, -0.842188, 0.451641,
		11.000033, 15.246263, 26.006947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.725142, 15.419467, 25.693726>,  <11.206195, 15.835794, 25.690798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.725142, 15.419467, 25.693726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.431136, 15.152289, 25.740376>,  <11.254732, 14.991983, 25.768366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.431136, 15.152289, 25.740376>,  <11.725142, 15.419467, 25.693726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.431136, 15.152289, 25.740376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487129, -0.639833, -0.594406,
		0.471652, -0.380086, 0.795663,
		-0.735017, -0.667943, 0.116627,
		11.210631, 14.951906, 25.775364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.070190, 14.880194, 25.670052>,  <11.725142, 15.419467, 25.693726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.070190, 14.880194, 25.670052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.688890, 14.769124, 25.622374>,  <11.460109, 14.702482, 25.593767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.688890, 14.769124, 25.622374>,  <12.070190, 14.880194, 25.670052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.688890, 14.769124, 25.622374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283724, -0.686738, -0.669247,
		0.103976, -0.671780, 0.733417,
		-0.953252, -0.277674, -0.119196,
		11.402914, 14.685822, 25.586615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.047222, 14.143542, 25.550768>,  <12.070190, 14.880194, 25.670052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.047222, 14.143542, 25.550768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.679177, 14.251559, 25.437300>,  <11.458350, 14.316369, 25.369219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.679177, 14.251559, 25.437300>,  <12.047222, 14.143542, 25.550768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.679177, 14.251559, 25.437300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081808, -0.575800, -0.813488,
		-0.383012, -0.771707, 0.507710,
		-0.920113, 0.270041, -0.283670,
		11.403143, 14.332572, 25.352198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.631315, 13.545137, 25.460396>,  <12.047222, 14.143542, 25.550768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.631315, 13.545137, 25.460396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.457272, 13.820628, 25.228418>,  <11.352845, 13.985923, 25.089231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.457272, 13.820628, 25.228418>,  <11.631315, 13.545137, 25.460396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.457272, 13.820628, 25.228418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101582, -0.602451, -0.791665,
		-0.894630, -0.403372, 0.192169,
		-0.435108, 0.688727, -0.579946,
		11.326739, 14.027246, 25.054434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.126081, 13.219475, 25.041651>,  <11.631315, 13.545137, 25.460396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.126081, 13.219475, 25.041651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.146862, 13.562273, 24.836571>,  <11.159330, 13.767952, 24.713524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.146862, 13.562273, 24.836571>,  <11.126081, 13.219475, 25.041651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.146862, 13.562273, 24.836571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074189, -0.508662, -0.857764,
		-0.995890, 0.082600, 0.037154,
		0.051952, 0.856995, -0.512699,
		11.162448, 13.819371, 24.682760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.531809, 13.191695, 24.586172>,  <11.126081, 13.219475, 25.041651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.531809, 13.191695, 24.586172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.807105, 13.451738, 24.457373>,  <10.972282, 13.607764, 24.380093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.807105, 13.451738, 24.457373>,  <10.531809, 13.191695, 24.586172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.807105, 13.451738, 24.457373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230158, -0.225258, -0.946724,
		-0.688006, 0.725685, -0.005404,
		0.688241, 0.650108, -0.322001,
		11.013577, 13.646770, 24.360773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.340367, 13.488100, 23.970592>,  <10.531809, 13.191695, 24.586172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.340367, 13.488100, 23.970592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.722314, 13.604632, 23.947420>,  <10.951482, 13.674552, 23.933517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.722314, 13.604632, 23.947420>,  <10.340367, 13.488100, 23.970592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.722314, 13.604632, 23.947420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023406, -0.120621, -0.992423,
		-0.296111, 0.948987, -0.108358,
		0.954867, 0.291331, -0.057929,
		11.008774, 13.692032, 23.930042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.356793, 14.182390, 23.586594>,  <10.340367, 13.488100, 23.970592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.356793, 14.182390, 23.586594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.681137, 13.948685, 23.573086>,  <10.875744, 13.808461, 23.564981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.681137, 13.948685, 23.573086>,  <10.356793, 14.182390, 23.586594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.681137, 13.948685, 23.573086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116025, -0.103934, -0.987793,
		0.573623, 0.804880, -0.152065,
		0.810860, -0.584265, -0.033768,
		10.924396, 13.773405, 23.562956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.496952, 14.299876, 23.015114>,  <10.356793, 14.182390, 23.586594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.496952, 14.299876, 23.015114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.723148, 13.975745, 23.076546>,  <10.858867, 13.781266, 23.113405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.723148, 13.975745, 23.076546>,  <10.496952, 14.299876, 23.015114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.723148, 13.975745, 23.076546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095650, -0.249393, -0.963667,
		0.819189, 0.530256, -0.218537,
		0.565492, -0.810328, 0.153581,
		10.892796, 13.732647, 23.122620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.004685, 14.241530, 22.531572>,  <10.496952, 14.299876, 23.015114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.004685, 14.241530, 22.531572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.922309, 13.879332, 22.679985>,  <10.872883, 13.662012, 22.769033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.922309, 13.879332, 22.679985>,  <11.004685, 14.241530, 22.531572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.922309, 13.879332, 22.679985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385998, -0.273247, -0.881102,
		0.899218, -0.324674, -0.293247,
		-0.205941, -0.905496, 0.371032,
		10.860526, 13.607683, 22.791294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.241898, 13.795304, 21.983437>,  <11.004685, 14.241530, 22.531572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.241898, 13.795304, 21.983437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.011621, 13.557044, 22.207500>,  <10.873454, 13.414088, 22.341940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.011621, 13.557044, 22.207500>,  <11.241898, 13.795304, 21.983437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.011621, 13.557044, 22.207500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317947, -0.468086, -0.824503,
		0.753319, -0.652761, 0.080088,
		-0.575691, -0.595650, 0.560161,
		10.838913, 13.378349, 22.375549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.396009, 13.113857, 21.691692>,  <11.241898, 13.795304, 21.983437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.396009, 13.113857, 21.691692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.047966, 13.067530, 21.883314>,  <10.839140, 13.039733, 21.998287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.047966, 13.067530, 21.883314>,  <11.396009, 13.113857, 21.691692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.047966, 13.067530, 21.883314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336424, -0.570758, -0.749036,
		0.360178, -0.812909, 0.457657,
		-0.870109, -0.115819, 0.479057,
		10.786933, 13.032784, 22.027031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.247689, 12.405457, 21.691441>,  <11.396009, 13.113857, 21.691692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.247689, 12.405457, 21.691441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.895415, 12.582191, 21.759762>,  <10.684051, 12.688232, 21.800755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.895415, 12.582191, 21.759762>,  <11.247689, 12.405457, 21.691441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.895415, 12.582191, 21.759762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413727, -0.541829, -0.731609,
		-0.230705, -0.714983, 0.659980,
		-0.880684, 0.441837, 0.170805,
		10.631210, 12.714743, 21.811003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.792782, 11.848467, 21.784365>,  <11.247689, 12.405457, 21.691441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.792782, 11.848467, 21.784365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.549168, 12.157266, 21.711596>,  <10.402999, 12.342546, 21.667934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.549168, 12.157266, 21.711596>,  <10.792782, 11.848467, 21.784365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.549168, 12.157266, 21.711596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567779, -0.584516, -0.579627,
		-0.553806, -0.249723, 0.794316,
		-0.609037, 0.771997, -0.181921,
		10.366457, 12.388865, 21.657019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.120997, 11.615005, 21.811640>,  <10.792782, 11.848467, 21.784365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.120997, 11.615005, 21.811640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.093410, 11.944302, 21.586246>,  <10.076859, 12.141880, 21.451010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.093410, 11.944302, 21.586246>,  <10.120997, 11.615005, 21.811640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.093410, 11.944302, 21.586246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495430, -0.518519, -0.696912,
		-0.865906, 0.231101, 0.443621,
		-0.068968, 0.823244, -0.563483,
		10.072720, 12.191275, 21.417202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.484758, 11.495974, 21.440765>,  <10.120997, 11.615005, 21.811640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.484758, 11.495974, 21.440765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.666124, 11.780908, 21.226479>,  <9.774944, 11.951868, 21.097906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.666124, 11.780908, 21.226479>,  <9.484758, 11.495974, 21.440765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.666124, 11.780908, 21.226479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350471, -0.410143, -0.841993,
		-0.819502, 0.569526, 0.063688,
		0.453416, 0.712336, -0.535716,
		9.802149, 11.994609, 21.065763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.948572, 11.799598, 20.990705>,  <9.484758, 11.495974, 21.440765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.948572, 11.799598, 20.990705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.292563, 11.911848, 20.820208>,  <9.498959, 11.979198, 20.717909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.292563, 11.911848, 20.820208>,  <8.948572, 11.799598, 20.990705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.292563, 11.911848, 20.820208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388875, -0.180525, -0.903430,
		-0.330474, 0.942687, -0.046120,
		0.859978, 0.280626, -0.426247,
		9.550557, 11.996036, 20.692333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.816943, 12.243102, 20.450340>,  <8.948572, 11.799598, 20.990705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.816943, 12.243102, 20.450340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.193601, 12.158668, 20.345461>,  <9.419596, 12.108007, 20.282534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.193601, 12.158668, 20.345461>,  <8.816943, 12.243102, 20.450340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.193601, 12.158668, 20.345461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299296, -0.168586, -0.939149,
		0.154038, 0.962820, -0.221925,
		0.941645, -0.211086, -0.262199,
		9.476094, 12.095342, 20.266802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.962421, 12.702535, 19.895878>,  <8.816943, 12.243102, 20.450340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.962421, 12.702535, 19.895878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.198225, 12.383206, 19.846619>,  <9.339707, 12.191609, 19.817062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.198225, 12.383206, 19.846619>,  <8.962421, 12.702535, 19.895878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.198225, 12.383206, 19.846619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108003, 0.073187, -0.991453,
		0.800510, 0.597770, -0.043077,
		0.589508, -0.798320, -0.123148,
		9.375077, 12.143710, 19.809675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.406207, 13.002439, 19.387764>,  <8.962421, 12.702535, 19.895878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.406207, 13.002439, 19.387764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.422169, 12.602797, 19.382204>,  <9.431746, 12.363011, 19.378868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.422169, 12.602797, 19.382204>,  <9.406207, 13.002439, 19.387764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.422169, 12.602797, 19.382204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178260, 0.006571, -0.983962,
		0.983174, 0.041741, -0.177839,
		0.039903, -0.999107, -0.013901,
		9.434139, 12.303064, 19.378035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.579549, 12.959429, 18.710766>,  <9.406207, 13.002439, 19.387764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.579549, 12.959429, 18.710766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.527219, 12.581501, 18.830900>,  <9.495821, 12.354744, 18.902981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.527219, 12.581501, 18.830900>,  <9.579549, 12.959429, 18.710766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.527219, 12.581501, 18.830900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231702, -0.265411, -0.935880,
		0.963950, -0.192024, -0.184194,
		-0.130825, -0.944820, 0.300335,
		9.487971, 12.298056, 18.921001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.073820, 12.508510, 18.434574>,  <9.579549, 12.959429, 18.710766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.073820, 12.508510, 18.434574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.753941, 12.285896, 18.524685>,  <9.562013, 12.152328, 18.578751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.753941, 12.285896, 18.524685>,  <10.073820, 12.508510, 18.434574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.753941, 12.285896, 18.524685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077710, -0.276112, -0.957979,
		0.595350, -0.783602, 0.177558,
		-0.799700, -0.556534, 0.225277,
		9.514030, 12.118936, 18.592268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.161153, 11.805842, 18.023996>,  <10.073820, 12.508510, 18.434574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.161153, 11.805842, 18.023996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.770953, 11.834325, 18.107262>,  <9.536834, 11.851414, 18.157221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.770953, 11.834325, 18.107262>,  <10.161153, 11.805842, 18.023996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.770953, 11.834325, 18.107262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218217, -0.192762, -0.956674,
		-0.027993, -0.978659, 0.203577,
		-0.975499, 0.071204, 0.208164,
		9.478304, 11.855686, 18.169710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.847331, 11.246100, 17.720425>,  <10.161153, 11.805842, 18.023996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.847331, 11.246100, 17.720425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.558525, 11.515629, 17.783237>,  <9.385242, 11.677346, 17.820925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.558525, 11.515629, 17.783237>,  <9.847331, 11.246100, 17.720425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.558525, 11.515629, 17.783237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378556, -0.194760, -0.904856,
		-0.579129, -0.712764, 0.395699,
		-0.722015, 0.673823, 0.157030,
		9.341921, 11.717775, 17.830347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.324610, 10.823787, 17.419222>,  <9.847331, 11.246100, 17.720425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.324610, 10.823787, 17.419222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.242887, 11.215297, 17.425669>,  <9.193852, 11.450203, 17.429537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.242887, 11.215297, 17.425669>,  <9.324610, 10.823787, 17.419222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.242887, 11.215297, 17.425669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114768, -0.007601, -0.993363,
		-0.972156, -0.204802, 0.113885,
		-0.204308, 0.978774, 0.016115,
		9.181594, 11.508929, 17.430504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.803204, 10.829260, 17.074446>,  <9.324610, 10.823787, 17.419222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.803204, 10.829260, 17.074446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.919212, 11.211564, 17.094086>,  <8.988817, 11.440947, 17.105869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.919212, 11.211564, 17.094086>,  <8.803204, 10.829260, 17.074446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.919212, 11.211564, 17.094086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256732, 0.127123, -0.958086,
		-0.921942, 0.265261, 0.282242,
		0.290022, 0.955760, 0.049099,
		9.006219, 11.498292, 17.108816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.273149, 11.368517, 16.701067>,  <8.803204, 10.829260, 17.074446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.273149, 11.368517, 16.701067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.649308, 11.504019, 16.689074>,  <8.875004, 11.585320, 16.681877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.649308, 11.504019, 16.689074>,  <8.273149, 11.368517, 16.701067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.649308, 11.504019, 16.689074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142407, 0.312192, -0.939285,
		-0.308826, 0.887571, 0.341825,
		0.940397, 0.338754, -0.029983,
		8.931427, 11.605645, 16.680079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.152752, 11.761907, 16.157070>,  <8.273149, 11.368517, 16.701067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.152752, 11.761907, 16.157070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.547746, 11.794927, 16.210827>,  <8.784741, 11.814738, 16.243080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.547746, 11.794927, 16.210827>,  <8.152752, 11.761907, 16.157070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.547746, 11.794927, 16.210827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116558, 0.192076, -0.974434,
		-0.106253, 0.977902, 0.180050,
		0.987484, 0.082550, 0.134391,
		8.843991, 11.819692, 16.251144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.421443, 12.467919, 15.957899>,  <8.152752, 11.761907, 16.157070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.421443, 12.467919, 15.957899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.741225, 12.227665, 15.962078>,  <8.933094, 12.083512, 15.964585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.741225, 12.227665, 15.962078>,  <8.421443, 12.467919, 15.957899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.741225, 12.227665, 15.962078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203587, 0.254532, -0.945392,
		0.565177, 0.757925, 0.325768,
		0.799455, -0.600636, 0.010448,
		8.981062, 12.047474, 15.965213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.073468, 12.844863, 15.676168>,  <8.421443, 12.467919, 15.957899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.073468, 12.844863, 15.676168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.129307, 12.450271, 15.641832>,  <9.162809, 12.213515, 15.621231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.129307, 12.450271, 15.641832>,  <9.073468, 12.844863, 15.676168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.129307, 12.450271, 15.641832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249524, 0.118936, -0.961037,
		0.958254, 0.112737, 0.262754,
		0.139595, -0.986481, -0.085840,
		9.171185, 12.154326, 15.616080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.748932, 12.817636, 15.570777>,  <9.073468, 12.844863, 15.676168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.748932, 12.817636, 15.570777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.571394, 12.490273, 15.424785>,  <9.464871, 12.293856, 15.337189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.571394, 12.490273, 15.424785>,  <9.748932, 12.817636, 15.570777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.571394, 12.490273, 15.424785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427656, 0.164469, -0.888853,
		0.787473, -0.550598, 0.276999,
		-0.443844, -0.818408, -0.364982,
		9.438241, 12.244751, 15.315290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.305613, 12.264514, 15.347201>,  <9.748932, 12.817636, 15.570777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.305613, 12.264514, 15.347201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.972959, 12.197597, 15.135391>,  <9.773366, 12.157446, 15.008306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.972959, 12.197597, 15.135391>,  <10.305613, 12.264514, 15.347201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.972959, 12.197597, 15.135391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542415, -0.040322, -0.839142,
		0.119033, -0.985082, 0.124276,
		-0.831635, -0.167295, -0.529524,
		9.723468, 12.147408, 14.976534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.891587, 11.795083, 15.105684>,  <10.305613, 12.264514, 15.347201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.891587, 11.795083, 15.105684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.255600, 11.650312, 15.024836>,  <11.474008, 11.563450, 14.976326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.255600, 11.650312, 15.024836>,  <10.891587, 11.795083, 15.105684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.255600, 11.650312, 15.024836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297030, 0.229187, 0.926955,
		-0.289166, -0.903594, 0.316070,
		0.910030, -0.361927, -0.202122,
		11.528609, 11.541735, 14.964199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.023485, 11.370671, 15.564306>,  <10.891587, 11.795083, 15.105684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.023485, 11.370671, 15.564306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.392338, 11.455709, 15.435016>,  <11.613649, 11.506732, 15.357442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.392338, 11.455709, 15.435016>,  <11.023485, 11.370671, 15.564306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.392338, 11.455709, 15.435016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314419, 0.074971, 0.946319,
		0.225415, -0.974260, 0.002289,
		0.922133, 0.212595, -0.323226,
		11.668978, 11.519487, 15.338048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.462667, 10.847426, 15.819761>,  <11.023485, 11.370671, 15.564306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.462667, 10.847426, 15.819761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.680989, 11.175402, 15.750715>,  <11.811982, 11.372187, 15.709288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.680989, 11.175402, 15.750715>,  <11.462667, 10.847426, 15.819761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.680989, 11.175402, 15.750715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253921, 0.034465, 0.966611,
		0.798511, -0.571412, -0.189389,
		0.545805, 0.819939, -0.172614,
		11.844731, 11.421384, 15.698931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.988175, 10.741386, 16.276567>,  <11.462667, 10.847426, 15.819761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.988175, 10.741386, 16.276567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.006867, 11.128126, 16.176153>,  <12.018083, 11.360170, 16.115906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.006867, 11.128126, 16.176153>,  <11.988175, 10.741386, 16.276567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.006867, 11.128126, 16.176153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223715, 0.234795, 0.945951,
		0.973534, -0.100365, -0.205327,
		0.046731, 0.966850, -0.251034,
		12.020886, 11.418181, 16.100843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.422014, 10.967600, 16.736811>,  <11.988175, 10.741386, 16.276567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.422014, 10.967600, 16.736811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.304629, 11.318435, 16.584707>,  <12.234199, 11.528935, 16.493444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.304629, 11.318435, 16.584707>,  <12.422014, 10.967600, 16.736811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.304629, 11.318435, 16.584707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062186, 0.414444, 0.907948,
		0.953946, 0.242802, -0.176166,
		-0.293462, 0.877088, -0.380258,
		12.216591, 11.581561, 16.470631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.986273, 11.496725, 16.852686>,  <12.422014, 10.967600, 16.736811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.986273, 11.496725, 16.852686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.631034, 11.668755, 16.787790>,  <12.417891, 11.771972, 16.748852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.631034, 11.668755, 16.787790>,  <12.986273, 11.496725, 16.852686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.631034, 11.668755, 16.787790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160618, 0.621066, 0.767123,
		0.430681, 0.655221, -0.620644,
		-0.888096, 0.430073, -0.162241,
		12.364605, 11.797776, 16.739119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.182334, 12.184013, 16.817089>,  <12.986273, 11.496725, 16.852686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.182334, 12.184013, 16.817089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.794679, 12.163117, 16.913458>,  <12.562085, 12.150579, 16.971279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.794679, 12.163117, 16.913458>,  <13.182334, 12.184013, 16.817089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.794679, 12.163117, 16.913458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146894, 0.662463, 0.734551,
		-0.197974, 0.747271, -0.634344,
		-0.969138, -0.052241, 0.240920,
		12.503938, 12.147446, 16.985733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.884156, 12.803398, 16.703249>,  <13.182334, 12.184013, 16.817089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.884156, 12.803398, 16.703249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.659597, 12.605637, 16.968699>,  <12.524862, 12.486979, 17.127968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.659597, 12.605637, 16.968699>,  <12.884156, 12.803398, 16.703249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.659597, 12.605637, 16.968699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176617, 0.711861, 0.679751,
		-0.808479, 0.498818, -0.312317,
		-0.561398, -0.494404, 0.663624,
		12.491178, 12.457315, 17.167786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.698414, 13.269107, 17.164568>,  <12.884156, 12.803398, 16.703249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.698414, 13.269107, 17.164568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.635312, 12.941395, 17.385073>,  <12.597451, 12.744767, 17.517376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.635312, 12.941395, 17.385073>,  <12.698414, 13.269107, 17.164568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.635312, 12.941395, 17.385073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179218, 0.525229, 0.831875,
		-0.971079, 0.230028, 0.063973,
		-0.157754, -0.819281, 0.551264,
		12.587986, 12.695610, 17.550451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.293998, 13.436946, 17.723722>,  <12.698414, 13.269107, 17.164568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.293998, 13.436946, 17.723722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.481752, 13.101642, 17.834715>,  <12.594405, 12.900459, 17.901310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.481752, 13.101642, 17.834715>,  <12.293998, 13.436946, 17.723722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.481752, 13.101642, 17.834715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343386, 0.462806, 0.817249,
		-0.813488, -0.288322, 0.505082,
		0.469386, -0.838261, 0.277482,
		12.622568, 12.850163, 17.917959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.284497, 13.446283, 18.538313>,  <12.293998, 13.436946, 17.723722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.284497, 13.446283, 18.538313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.543898, 13.155082, 18.449356>,  <12.699538, 12.980361, 18.395983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.543898, 13.155082, 18.449356>,  <12.284497, 13.446283, 18.538313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.543898, 13.155082, 18.449356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546227, 0.241565, 0.802049,
		-0.530173, -0.641605, 0.554310,
		0.648501, -0.728004, -0.222391,
		12.738448, 12.936681, 18.382639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.211242, 12.909226, 18.991543>,  <12.284497, 13.446283, 18.538313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.211242, 12.909226, 18.991543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.588771, 12.887481, 18.861164>,  <12.815289, 12.874434, 18.782936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.588771, 12.887481, 18.861164>,  <12.211242, 12.909226, 18.991543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.588771, 12.887481, 18.861164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329609, 0.225231, 0.916858,
		0.023568, -0.972787, 0.230497,
		0.943823, -0.054365, -0.325947,
		12.871918, 12.871172, 18.763380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.588708, 12.331122, 19.344614>,  <12.211242, 12.909226, 18.991543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.588708, 12.331122, 19.344614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.845454, 12.605455, 19.207418>,  <12.999502, 12.770055, 19.125101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.845454, 12.605455, 19.207418>,  <12.588708, 12.331122, 19.344614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.845454, 12.605455, 19.207418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290614, 0.196354, 0.936477,
		0.709614, -0.700770, -0.073279,
		0.641866, 0.685833, -0.342989,
		13.038014, 12.811205, 19.104523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.254814, 12.146781, 19.668766>,  <12.588708, 12.331122, 19.344614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.254814, 12.146781, 19.668766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.290456, 12.526704, 19.548815>,  <13.311841, 12.754658, 19.476845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.290456, 12.526704, 19.548815>,  <13.254814, 12.146781, 19.668766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.290456, 12.526704, 19.548815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526448, 0.210671, 0.823693,
		0.845525, -0.231263, -0.481254,
		0.089103, 0.949808, -0.299876,
		13.317186, 12.811646, 19.458853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.920517, 12.285810, 19.868031>,  <13.254814, 12.146781, 19.668766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.920517, 12.285810, 19.868031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.746885, 12.640428, 19.804016>,  <13.642706, 12.853198, 19.765608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.746885, 12.640428, 19.804016>,  <13.920517, 12.285810, 19.868031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.746885, 12.640428, 19.804016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485720, 0.379933, 0.787228,
		0.758717, 0.263986, -0.595534,
		-0.434080, 0.886545, -0.160038,
		13.616661, 12.906391, 19.756004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.378926, 12.738135, 20.097389>,  <13.920517, 12.285810, 19.868031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.378926, 12.738135, 20.097389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.040079, 12.950693, 20.098822>,  <13.836771, 13.078228, 20.099680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.040079, 12.950693, 20.098822>,  <14.378926, 12.738135, 20.097389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.040079, 12.950693, 20.098822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216408, 0.338819, 0.915625,
		0.485345, 0.776416, -0.402017,
		-0.847117, 0.531394, 0.003579,
		13.785944, 13.110111, 20.099895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.554301, 13.464996, 20.308073>,  <14.378926, 12.738135, 20.097389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.554301, 13.464996, 20.308073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.165366, 13.431756, 20.395393>,  <13.932005, 13.411812, 20.447784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.165366, 13.431756, 20.395393>,  <14.554301, 13.464996, 20.308073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.165366, 13.431756, 20.395393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187513, 0.279573, 0.941636,
		-0.139281, 0.956522, -0.256257,
		-0.972337, -0.083101, 0.218299,
		13.873665, 13.406826, 20.460884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.381709, 13.962349, 20.874075>,  <14.554301, 13.464996, 20.308073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.381709, 13.962349, 20.874075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.063080, 13.723038, 20.908798>,  <13.871902, 13.579452, 20.929632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.063080, 13.723038, 20.908798>,  <14.381709, 13.962349, 20.874075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.063080, 13.723038, 20.908798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064347, 0.226683, 0.971841,
		-0.601107, 0.768557, -0.219067,
		-0.796574, -0.598277, 0.086806,
		13.824108, 13.543554, 20.934839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.868725, 14.287653, 21.326548>,  <14.381709, 13.962349, 20.874075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.868725, 14.287653, 21.326548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.773799, 13.901349, 21.368483>,  <13.716844, 13.669567, 21.393644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.773799, 13.901349, 21.368483>,  <13.868725, 14.287653, 21.326548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.773799, 13.901349, 21.368483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258368, 0.166784, 0.951541,
		-0.936444, 0.198728, -0.289101,
		-0.237315, -0.965759, 0.104839,
		13.702604, 13.611621, 21.399935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.440134, 14.402901, 21.756695>,  <13.868725, 14.287653, 21.326548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.440134, 14.402901, 21.756695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.494194, 14.006769, 21.744165>,  <13.526630, 13.769090, 21.736647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.494194, 14.006769, 21.744165>,  <13.440134, 14.402901, 21.756695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.494194, 14.006769, 21.744165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163600, -0.053485, 0.985076,
		-0.977225, -0.128009, -0.169247,
		0.135150, -0.990330, -0.031325,
		13.534739, 13.709670, 21.734768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.823632, 14.172260, 22.097231>,  <13.440134, 14.402901, 21.756695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.823632, 14.172260, 22.097231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.128510, 13.913653, 22.110350>,  <13.311436, 13.758489, 22.118221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.128510, 13.913653, 22.110350>,  <12.823632, 14.172260, 22.097231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.128510, 13.913653, 22.110350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090810, -0.056617, 0.994258,
		-0.640949, -0.760795, -0.101864,
		0.762193, -0.646518, 0.032799,
		13.357167, 13.719698, 22.120190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.549435, 13.738978, 22.552757>,  <12.823632, 14.172260, 22.097231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.549435, 13.738978, 22.552757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.941961, 13.664255, 22.534340>,  <13.177477, 13.619421, 22.523289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.941961, 13.664255, 22.534340>,  <12.549435, 13.738978, 22.552757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.941961, 13.664255, 22.534340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040919, -0.031205, 0.998675,
		-0.187999, -0.981900, -0.022978,
		0.981316, -0.186810, -0.046045,
		13.236357, 13.608212, 22.520527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.656857, 13.154452, 23.046326>,  <12.549435, 13.738978, 22.552757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.656857, 13.154452, 23.046326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.998171, 13.356748, 22.995522>,  <13.202960, 13.478125, 22.965040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.998171, 13.356748, 22.995522>,  <12.656857, 13.154452, 23.046326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.998171, 13.356748, 22.995522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161431, -0.024603, 0.986577,
		0.495824, -0.862337, -0.102635,
		0.853287, 0.505737, -0.127009,
		13.254157, 13.508469, 22.957418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.281758, 12.766372, 23.491077>,  <12.656857, 13.154452, 23.046326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.281758, 12.766372, 23.491077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.387259, 13.142642, 23.405693>,  <13.450559, 13.368404, 23.354464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.387259, 13.142642, 23.405693>,  <13.281758, 12.766372, 23.491077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.387259, 13.142642, 23.405693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157675, 0.176275, 0.971630,
		0.951617, -0.289925, -0.101828,
		0.263751, 0.940676, -0.213460,
		13.466384, 13.424845, 23.341656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.678945, 12.970683, 24.044641>,  <13.281758, 12.766372, 23.491077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.678945, 12.970683, 24.044641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.622349, 13.341033, 23.904507>,  <13.588391, 13.563243, 23.820427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.622349, 13.341033, 23.904507>,  <13.678945, 12.970683, 24.044641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.622349, 13.341033, 23.904507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032455, 0.358044, 0.933141,
		0.989408, 0.120659, -0.080709,
		-0.141489, 0.925876, -0.350336,
		13.579903, 13.618795, 23.799406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.136566, 13.340005, 24.430614>,  <13.678945, 12.970683, 24.044641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.136566, 13.340005, 24.430614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.886188, 13.612630, 24.279003>,  <13.735960, 13.776205, 24.188036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.886188, 13.612630, 24.279003>,  <14.136566, 13.340005, 24.430614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.886188, 13.612630, 24.279003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074456, 0.431570, 0.899002,
		0.776303, 0.590949, -0.219394,
		-0.625948, 0.681562, -0.379028,
		13.698403, 13.817099, 24.165295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.439369, 14.046779, 24.557848>,  <14.136566, 13.340005, 24.430614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.439369, 14.046779, 24.557848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.046685, 14.105940, 24.509897>,  <13.811075, 14.141437, 24.481127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.046685, 14.105940, 24.509897>,  <14.439369, 14.046779, 24.557848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.046685, 14.105940, 24.509897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011753, 0.675540, 0.737230,
		0.190019, 0.722337, -0.664922,
		-0.981710, 0.147903, -0.119876,
		13.752172, 14.150311, 24.473934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.405807, 14.749888, 24.506090>,  <14.439369, 14.046779, 24.557848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.405807, 14.749888, 24.506090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.038310, 14.623435, 24.600727>,  <13.817812, 14.547563, 24.657509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.038310, 14.623435, 24.600727>,  <14.405807, 14.749888, 24.506090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.038310, 14.623435, 24.600727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114983, 0.787403, 0.605619,
		-0.377751, 0.529203, -0.759769,
		-0.918740, -0.316133, 0.236593,
		13.762688, 14.528595, 24.671705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.120514, 15.387011, 24.596165>,  <14.405807, 14.749888, 24.506090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.120514, 15.387011, 24.596165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.862177, 15.138964, 24.774307>,  <13.707174, 14.990135, 24.881193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.862177, 15.138964, 24.774307>,  <14.120514, 15.387011, 24.596165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.862177, 15.138964, 24.774307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309271, 0.745825, 0.589998,
		-0.698024, 0.243311, -0.673470,
		-0.645844, -0.620117, 0.445354,
		13.668424, 14.952929, 24.907913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.427256, 15.684918, 24.559383>,  <14.120514, 15.387011, 24.596165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.427256, 15.684918, 24.559383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.418892, 15.436296, 24.872620>,  <13.413874, 15.287124, 25.060562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.418892, 15.436296, 24.872620>,  <13.427256, 15.684918, 24.559383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.418892, 15.436296, 24.872620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345813, 0.739412, 0.577652,
		-0.938070, -0.258726, -0.230402,
		-0.020909, -0.621555, 0.783092,
		13.412620, 15.249830, 25.107548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.808216, 15.810358, 24.931818>,  <13.427256, 15.684918, 24.559383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.808216, 15.810358, 24.931818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.036563, 15.612725, 25.194115>,  <13.173571, 15.494145, 25.351492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.036563, 15.612725, 25.194115>,  <12.808216, 15.810358, 24.931818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.036563, 15.612725, 25.194115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254698, 0.652699, 0.713522,
		-0.780538, -0.574342, 0.246763,
		0.570867, -0.494081, 0.655740,
		13.207823, 15.464501, 25.390837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.402285, 15.811872, 25.537247>,  <12.808216, 15.810358, 24.931818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.402285, 15.811872, 25.537247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.788110, 15.771924, 25.634935>,  <13.019605, 15.747955, 25.693548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.788110, 15.771924, 25.634935>,  <12.402285, 15.811872, 25.537247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.788110, 15.771924, 25.634935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047519, 0.844714, 0.533105,
		-0.259540, -0.525818, 0.810034,
		0.964562, -0.099870, 0.244223,
		13.077478, 15.741963, 25.708202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.442480, 16.109425, 26.273405>,  <12.402285, 15.811872, 25.537247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.442480, 16.109425, 26.273405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.802836, 16.091534, 26.100710>,  <13.019050, 16.080799, 25.997093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.802836, 16.091534, 26.100710>,  <12.442480, 16.109425, 26.273405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.802836, 16.091534, 26.100710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280771, 0.818592, 0.501074,
		0.331005, -0.572632, 0.750019,
		0.900891, -0.044726, -0.431736,
		13.073104, 16.078115, 25.971189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.943643, 16.312553, 26.782564>,  <12.442480, 16.109425, 26.273405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.943643, 16.312553, 26.782564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.098450, 16.350439, 26.415686>,  <13.191334, 16.373171, 26.195559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.098450, 16.350439, 26.415686>,  <12.943643, 16.312553, 26.782564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.098450, 16.350439, 26.415686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384149, 0.887712, 0.253766,
		0.838241, -0.450551, 0.307175,
		0.387018, 0.094716, -0.917195,
		13.214555, 16.378853, 26.140528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.371294, 16.803831, 27.006615>,  <12.943643, 16.312553, 26.782564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.371294, 16.803831, 27.006615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.372482, 16.826181, 26.607241>,  <13.373196, 16.839592, 26.367617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.372482, 16.826181, 26.607241>,  <13.371294, 16.803831, 27.006615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.372482, 16.826181, 26.607241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336360, 0.940206, 0.053618,
		0.941729, -0.335993, -0.016001,
		0.002971, 0.055876, -0.998433,
		13.373374, 16.842945, 26.307711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.285072, 17.476255, 26.696512>,  <13.371294, 16.803831, 27.006615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.285072, 17.476255, 26.696512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.423472, 17.850075, 26.729755>,  <13.506513, 18.074366, 26.749702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.423472, 17.850075, 26.729755>,  <13.285072, 17.476255, 26.696512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.423472, 17.850075, 26.729755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022574, -0.080264, 0.996518,
		0.937963, -0.346671, -0.006675,
		0.346000, 0.934546, 0.083110,
		13.527272, 18.130438, 26.754688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.025494, 17.605816, 27.026262>,  <13.285072, 17.476255, 26.696512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.025494, 17.605816, 27.026262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.795214, 17.923685, 27.103271>,  <13.657045, 18.114407, 27.149477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.795214, 17.923685, 27.103271>,  <14.025494, 17.605816, 27.026262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.795214, 17.923685, 27.103271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204711, -0.087874, 0.974870,
		0.791621, 0.600644, -0.112090,
		-0.575700, 0.794673, 0.192522,
		13.622504, 18.162086, 27.161028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.384066, 18.192595, 27.388147>,  <14.025494, 17.605816, 27.026262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.384066, 18.192595, 27.388147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.996765, 18.166140, 27.484575>,  <13.764384, 18.150267, 27.542433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.996765, 18.166140, 27.484575>,  <14.384066, 18.192595, 27.388147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.996765, 18.166140, 27.484575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249977, -0.255237, 0.934005,
		-0.000241, 0.964614, 0.263666,
		-0.968252, -0.066136, 0.241070,
		13.706289, 18.146299, 27.556896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.069405, 18.587042, 26.931400>,  <14.384066, 18.192595, 27.388147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.069405, 18.587042, 26.931400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.424771, 18.769709, 26.912769>,  <14.637992, 18.879309, 26.901590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.424771, 18.769709, 26.912769>,  <14.069405, 18.587042, 26.931400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.424771, 18.769709, 26.912769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122239, -0.333168, -0.934910,
		-0.442461, 0.824897, -0.351815,
		0.888418, 0.456667, -0.046579,
		14.691297, 18.906708, 26.898796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.013357, 18.972027, 26.315535>,  <14.069405, 18.587042, 26.931400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.013357, 18.972027, 26.315535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.394086, 18.887959, 26.404856>,  <14.622523, 18.837519, 26.458448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.394086, 18.887959, 26.404856>,  <14.013357, 18.972027, 26.315535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.394086, 18.887959, 26.404856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150542, -0.314150, -0.937362,
		0.267155, 0.925818, -0.267375,
		0.951822, -0.210169, 0.223301,
		14.679632, 18.824907, 26.471846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.295841, 19.147671, 25.754457>,  <14.013357, 18.972027, 26.315535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.295841, 19.147671, 25.754457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.560323, 18.898661, 25.921919>,  <14.719012, 18.749254, 26.022396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.560323, 18.898661, 25.921919>,  <14.295841, 19.147671, 25.754457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.560323, 18.898661, 25.921919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313894, -0.277288, -0.908065,
		0.681381, 0.731830, 0.012062,
		0.661204, -0.622524, 0.418655,
		14.758684, 18.711903, 26.047516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.734432, 19.134380, 25.197031>,  <14.295841, 19.147671, 25.754457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.734432, 19.134380, 25.197031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.873802, 18.826824, 25.411472>,  <14.957424, 18.642290, 25.540136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.873802, 18.826824, 25.411472>,  <14.734432, 19.134380, 25.197031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.873802, 18.826824, 25.411472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224425, -0.486875, -0.844148,
		0.910073, 0.414437, 0.002920,
		0.348424, -0.768892, 0.536102,
		14.978330, 18.596157, 25.572304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.286933, 18.943670, 24.897503>,  <14.734432, 19.134380, 25.197031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.286933, 18.943670, 24.897503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.216148, 18.596210, 25.082600>,  <15.173677, 18.387733, 25.193657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.216148, 18.596210, 25.082600>,  <15.286933, 18.943670, 24.897503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.216148, 18.596210, 25.082600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144135, -0.487966, -0.860880,
		0.973607, -0.085645, 0.211554,
		-0.176961, -0.868651, 0.462742,
		15.163060, 18.335615, 25.221422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.812500, 18.518745, 24.771208>,  <15.286933, 18.943670, 24.897503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.812500, 18.518745, 24.771208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.527657, 18.263132, 24.887508>,  <15.356750, 18.109764, 24.957289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.527657, 18.263132, 24.887508>,  <15.812500, 18.518745, 24.771208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.527657, 18.263132, 24.887508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203361, -0.584127, -0.785773,
		0.671972, -0.500428, 0.545917,
		-0.712108, -0.639036, 0.290750,
		15.314024, 18.071421, 24.974733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.077015, 17.889708, 24.587770>,  <15.812500, 18.518745, 24.771208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.077015, 17.889708, 24.587770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.682341, 17.839701, 24.629389>,  <15.445537, 17.809696, 24.654360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.682341, 17.839701, 24.629389>,  <16.077015, 17.889708, 24.587770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.682341, 17.839701, 24.629389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040352, -0.431537, -0.901192,
		0.157566, -0.893390, 0.420746,
		-0.986684, -0.125019, 0.104046,
		15.386335, 17.802195, 24.660603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.916448, 17.253136, 24.442642>,  <16.077015, 17.889708, 24.587770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.916448, 17.253136, 24.442642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.580170, 17.454365, 24.362492>,  <15.378403, 17.575102, 24.314402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.580170, 17.454365, 24.362492>,  <15.916448, 17.253136, 24.442642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.580170, 17.454365, 24.362492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041772, -0.429176, -0.902254,
		-0.539896, -0.750150, 0.381821,
		-0.840695, 0.503073, -0.200375,
		15.327961, 17.605286, 24.302380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.464938, 16.739725, 24.053602>,  <15.916448, 17.253136, 24.442642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.464938, 16.739725, 24.053602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.346500, 17.108828, 23.954935>,  <15.275438, 17.330290, 23.895735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.346500, 17.108828, 23.954935>,  <15.464938, 16.739725, 24.053602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.346500, 17.108828, 23.954935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103891, -0.287831, -0.952029,
		-0.949492, -0.256263, 0.181092,
		-0.296093, 0.922758, -0.246670,
		15.257672, 17.385654, 23.880934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.080102, 16.625340, 23.497946>,  <15.464938, 16.739725, 24.053602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.080102, 16.625340, 23.497946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.084205, 17.024578, 23.473635>,  <15.086666, 17.264122, 23.459049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.084205, 17.024578, 23.473635>,  <15.080102, 16.625340, 23.497946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.084205, 17.024578, 23.473635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253425, -0.056200, -0.965721,
		-0.967301, 0.025308, 0.252367,
		0.010258, 0.998099, -0.060776,
		15.087282, 17.324007, 23.455402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.482871, 16.749565, 23.298996>,  <15.080102, 16.625340, 23.497946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.482871, 16.749565, 23.298996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.737336, 17.040436, 23.195835>,  <14.890015, 17.214958, 23.133940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.737336, 17.040436, 23.195835>,  <14.482871, 16.749565, 23.298996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.737336, 17.040436, 23.195835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177161, -0.187660, -0.966125,
		-0.750941, 0.660302, 0.009445,
		0.636162, 0.727176, -0.257901,
		14.928185, 17.258589, 23.118465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.138599, 16.839504, 22.661829>,  <14.482871, 16.749565, 23.298996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.138599, 16.839504, 22.661829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.490216, 17.028172, 22.634071>,  <14.701186, 17.141371, 22.617416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.490216, 17.028172, 22.634071>,  <14.138599, 16.839504, 22.661829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.490216, 17.028172, 22.634071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038976, -0.216167, -0.975578,
		-0.475148, 0.854870, -0.208404,
		0.879042, 0.471666, -0.069392,
		14.753929, 17.169672, 22.613255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.193456, 17.256399, 21.977280>,  <14.138599, 16.839504, 22.661829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.193456, 17.256399, 21.977280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.556146, 17.158445, 22.114614>,  <14.773760, 17.099672, 22.197016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.556146, 17.158445, 22.114614>,  <14.193456, 17.256399, 21.977280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.556146, 17.158445, 22.114614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264477, -0.303938, -0.915245,
		0.328482, 0.920681, -0.210823,
		0.906726, -0.244884, 0.343337,
		14.828163, 17.084980, 22.217615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.691125, 17.607851, 21.533916>,  <14.193456, 17.256399, 21.977280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.691125, 17.607851, 21.533916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.886564, 17.297651, 21.693851>,  <15.003828, 17.111530, 21.789812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.886564, 17.297651, 21.693851>,  <14.691125, 17.607851, 21.533916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.886564, 17.297651, 21.693851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265087, -0.304657, -0.914829,
		0.831265, 0.552975, 0.056721,
		0.488597, -0.775501, 0.399838,
		15.033143, 17.065001, 21.813803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.166011, 17.478106, 21.081034>,  <14.691125, 17.607851, 21.533916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.166011, 17.478106, 21.081034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.227352, 17.161148, 21.317202>,  <15.264156, 16.970974, 21.458902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.227352, 17.161148, 21.317202>,  <15.166011, 17.478106, 21.081034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.227352, 17.161148, 21.317202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220536, -0.554975, -0.802101,
		0.963248, 0.253213, 0.089644,
		0.153353, -0.792392, 0.590421,
		15.273358, 16.923429, 21.494328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.926219, 17.150572, 20.908249>,  <15.166011, 17.478106, 21.081034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.926219, 17.150572, 20.908249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.675488, 16.878113, 21.059578>,  <15.525050, 16.714638, 21.150375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.675488, 16.878113, 21.059578>,  <15.926219, 17.150572, 20.908249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.675488, 16.878113, 21.059578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152590, -0.583465, -0.797675,
		0.764071, -0.442277, 0.469668,
		-0.626827, -0.681147, 0.378321,
		15.487440, 16.673769, 21.173075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.181656, 16.460392, 20.740915>,  <15.926219, 17.150572, 20.908249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.181656, 16.460392, 20.740915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.788084, 16.421925, 20.801098>,  <15.551941, 16.398844, 20.837208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.788084, 16.421925, 20.801098>,  <16.181656, 16.460392, 20.740915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.788084, 16.421925, 20.801098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097235, -0.418158, -0.903155,
		0.149770, -0.903270, 0.402086,
		-0.983928, -0.096168, 0.150457,
		15.492906, 16.393074, 20.846235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.174292, 15.839357, 20.513563>,  <16.181656, 16.460392, 20.740915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.174292, 15.839357, 20.513563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.789464, 15.948480, 20.513685>,  <15.558567, 16.013952, 20.513758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.789464, 15.948480, 20.513685>,  <16.174292, 15.839357, 20.513563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.789464, 15.948480, 20.513685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172348, -0.606935, -0.775839,
		-0.211467, -0.746464, 0.630931,
		-0.962070, 0.272804, 0.000305,
		15.500843, 16.030321, 20.513777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.962118, 15.165610, 20.529833>,  <16.174292, 15.839357, 20.513563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.962118, 15.165610, 20.529833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.690019, 15.432699, 20.408897>,  <15.526759, 15.592953, 20.336336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.690019, 15.432699, 20.408897>,  <15.962118, 15.165610, 20.529833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.690019, 15.432699, 20.408897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114165, -0.503963, -0.856147,
		-0.724038, -0.547875, 0.419049,
		-0.680247, 0.667724, -0.302340,
		15.485945, 15.633016, 20.318195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.367740, 14.831569, 20.454494>,  <15.962118, 15.165610, 20.529833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.367740, 14.831569, 20.454494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.330483, 15.149548, 20.214701>,  <15.308129, 15.340335, 20.070824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.330483, 15.149548, 20.214701>,  <15.367740, 14.831569, 20.454494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.330483, 15.149548, 20.214701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089974, -0.606361, -0.790083,
		-0.991579, -0.019651, 0.128001,
		-0.093141, 0.794947, -0.599487,
		15.302541, 15.388032, 20.034855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.722783, 14.747416, 20.201334>,  <15.367740, 14.831569, 20.454494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.722783, 14.747416, 20.201334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.895472, 14.990618, 19.934816>,  <14.999084, 15.136539, 19.774906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.895472, 14.990618, 19.934816>,  <14.722783, 14.747416, 20.201334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.895472, 14.990618, 19.934816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320415, -0.587132, -0.743377,
		-0.843179, 0.534423, -0.058664,
		0.431721, 0.608003, -0.666295,
		15.024988, 15.173018, 19.734928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.206383, 14.841840, 19.635416>,  <14.722783, 14.747416, 20.201334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.206383, 14.841840, 19.635416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.557631, 14.954348, 19.480602>,  <14.768379, 15.021852, 19.387714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.557631, 14.954348, 19.480602>,  <14.206383, 14.841840, 19.635416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.557631, 14.954348, 19.480602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152377, -0.602410, -0.783507,
		-0.453530, 0.746987, -0.486128,
		0.878118, 0.281269, -0.387035,
		14.821066, 15.038729, 19.364492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.093245, 15.017034, 18.912298>,  <14.206383, 14.841840, 19.635416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.093245, 15.017034, 18.912298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.492969, 15.005243, 18.921343>,  <14.732803, 14.998169, 18.926769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.492969, 15.005243, 18.921343>,  <14.093245, 15.017034, 18.912298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.492969, 15.005243, 18.921343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007273, -0.441635, -0.897165,
		0.036431, 0.896710, -0.441116,
		0.999310, -0.029476, 0.022611,
		14.792762, 14.996401, 18.928125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.409865, 15.288668, 18.317053>,  <14.093245, 15.017034, 18.912298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.409865, 15.288668, 18.317053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.692097, 15.043108, 18.458635>,  <14.861436, 14.895772, 18.543585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.692097, 15.043108, 18.458635>,  <14.409865, 15.288668, 18.317053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.692097, 15.043108, 18.458635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029605, -0.524597, -0.850836,
		0.708012, 0.589853, -0.388319,
		0.705579, -0.613899, 0.353958,
		14.903770, 14.858938, 18.564823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.147843, 15.357430, 18.005287>,  <14.409865, 15.288668, 18.317053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.147843, 15.357430, 18.005287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.178372, 14.986954, 18.152987>,  <15.196690, 14.764668, 18.241606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.178372, 14.986954, 18.152987>,  <15.147843, 15.357430, 18.005287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.178372, 14.986954, 18.152987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129513, -0.357981, -0.924703,
		0.988636, 0.118397, 0.092632,
		0.076322, -0.926192, 0.369247,
		15.201269, 14.709096, 18.263762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.517643, 15.086124, 17.509832>,  <15.147843, 15.357430, 18.005287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.517643, 15.086124, 17.509832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.376952, 14.765874, 17.703857>,  <15.292538, 14.573724, 17.820272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.376952, 14.765874, 17.703857>,  <15.517643, 15.086124, 17.509832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.376952, 14.765874, 17.703857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104007, -0.481542, -0.870230,
		0.930307, -0.356533, 0.086100,
		-0.351726, -0.800626, 0.485064,
		15.271434, 14.525686, 17.849377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.876486, 14.386024, 17.294460>,  <15.517643, 15.086124, 17.509832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.876486, 14.386024, 17.294460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.558606, 14.215138, 17.466944>,  <15.367878, 14.112607, 17.570433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.558606, 14.215138, 17.466944>,  <15.876486, 14.386024, 17.294460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.558606, 14.215138, 17.466944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031256, -0.738247, -0.673806,
		0.606197, -0.521996, 0.600038,
		-0.794700, -0.427214, 0.431208,
		15.320196, 14.086974, 17.596306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.985750, 13.598777, 17.396858>,  <15.876486, 14.386024, 17.294460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.985750, 13.598777, 17.396858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.591222, 13.656170, 17.429319>,  <15.354505, 13.690605, 17.448795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.591222, 13.656170, 17.429319>,  <15.985750, 13.598777, 17.396858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.591222, 13.656170, 17.429319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164570, -0.828829, -0.534752,
		-0.009465, -0.540792, 0.841103,
		-0.986320, 0.143482, 0.081153,
		15.295326, 13.699214, 17.453665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.706568, 12.920619, 17.441793>,  <15.985750, 13.598777, 17.396858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.706568, 12.920619, 17.441793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.439429, 13.183736, 17.302486>,  <15.279146, 13.341606, 17.218903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.439429, 13.183736, 17.302486>,  <15.706568, 12.920619, 17.441793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.439429, 13.183736, 17.302486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302909, -0.667618, -0.680097,
		-0.679881, -0.348699, 0.645113,
		-0.667838, 0.657795, -0.348277,
		15.239076, 13.381073, 17.198006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.232979, 12.548595, 17.042231>,  <15.706568, 12.920619, 17.441793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.232979, 12.548595, 17.042231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.127893, 12.907272, 16.899725>,  <15.064842, 13.122478, 16.814222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.127893, 12.907272, 16.899725>,  <15.232979, 12.548595, 17.042231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.127893, 12.907272, 16.899725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093220, -0.391093, -0.915618,
		-0.960360, -0.207334, 0.186335,
		-0.262713, 0.896693, -0.356263,
		15.049080, 13.176280, 16.792847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.649133, 12.308570, 16.562824>,  <15.232979, 12.548595, 17.042231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.649133, 12.308570, 16.562824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.805141, 12.667796, 16.481472>,  <14.898746, 12.883331, 16.432661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.805141, 12.667796, 16.481472>,  <14.649133, 12.308570, 16.562824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.805141, 12.667796, 16.481472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061126, -0.245634, -0.967434,
		-0.918774, 0.364888, -0.150698,
		0.390022, 0.898065, -0.203378,
		14.922148, 12.937216, 16.420458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.228433, 12.577544, 15.972991>,  <14.649133, 12.308570, 16.562824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.228433, 12.577544, 15.972991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.579064, 12.769798, 15.982777>,  <14.789443, 12.885151, 15.988647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.579064, 12.769798, 15.982777>,  <14.228433, 12.577544, 15.972991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.579064, 12.769798, 15.982777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084049, -0.102842, -0.991140,
		-0.473861, 0.870869, -0.130546,
		0.876579, 0.480635, 0.024463,
		14.842038, 12.913989, 15.990115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.268390, 12.909212, 15.310349>,  <14.228433, 12.577544, 15.972991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.268390, 12.909212, 15.310349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.646020, 12.959978, 15.432078>,  <14.872598, 12.990438, 15.505116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.646020, 12.959978, 15.432078>,  <14.268390, 12.909212, 15.310349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.646020, 12.959978, 15.432078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296434, 0.077471, -0.951906,
		-0.144388, 0.988884, 0.035516,
		0.944076, 0.126916, 0.304325,
		14.929243, 12.998053, 15.523376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.610910, 13.457670, 14.894083>,  <14.268390, 12.909212, 15.310349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.610910, 13.457670, 14.894083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.926933, 13.270185, 15.052132>,  <15.116547, 13.157695, 15.146961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.926933, 13.270185, 15.052132>,  <14.610910, 13.457670, 14.894083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.926933, 13.270185, 15.052132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478501, 0.068596, -0.875404,
		0.383208, 0.880684, 0.278473,
		0.790056, -0.468711, 0.395121,
		15.163950, 13.129572, 15.170668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.100513, 13.883460, 14.737235>,  <14.610910, 13.457670, 14.894083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.100513, 13.883460, 14.737235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.280674, 13.534691, 14.814058>,  <15.388771, 13.325429, 14.860152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.280674, 13.534691, 14.814058>,  <15.100513, 13.883460, 14.737235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.280674, 13.534691, 14.814058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515055, 0.078038, -0.853597,
		0.729284, 0.483383, 0.484237,
		0.450403, -0.871924, 0.192057,
		15.415794, 13.273113, 14.871675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.813544, 14.037073, 14.594245>,  <15.100513, 13.883460, 14.737235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.813544, 14.037073, 14.594245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.790409, 13.638001, 14.579885>,  <15.776528, 13.398559, 14.571268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.790409, 13.638001, 14.579885>,  <15.813544, 14.037073, 14.594245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.790409, 13.638001, 14.579885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651735, -0.010493, -0.758374,
		0.756238, -0.067261, 0.650830,
		-0.057838, -0.997680, -0.035901,
		15.773058, 13.338697, 14.569114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.452730, 13.825851, 14.600678>,  <15.813544, 14.037073, 14.594245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.452730, 13.825851, 14.600678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.274477, 13.506002, 14.439672>,  <16.167526, 13.314094, 14.343069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.274477, 13.506002, 14.439672>,  <16.452730, 13.825851, 14.600678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.274477, 13.506002, 14.439672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715024, -0.047380, -0.697493,
		0.538660, -0.598632, 0.592863,
		-0.445631, -0.799622, -0.402514,
		16.140787, 13.266116, 14.318918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.948149, 13.401011, 14.388977>,  <16.452730, 13.825851, 14.600678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.948149, 13.401011, 14.388977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.657352, 13.249870, 14.159643>,  <16.482876, 13.159185, 14.022042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.657352, 13.249870, 14.159643>,  <16.948149, 13.401011, 14.388977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.657352, 13.249870, 14.159643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635713, -0.054785, -0.769979,
		0.259529, -0.924243, 0.280034,
		-0.726990, -0.377853, -0.573335,
		16.439255, 13.136515, 13.987642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.255407, 12.885909, 14.201890>,  <16.948149, 13.401011, 14.388977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.255407, 12.885909, 14.201890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.966389, 12.996428, 13.948406>,  <16.792978, 13.062740, 13.796316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.966389, 12.996428, 13.948406>,  <17.255407, 12.885909, 14.201890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.966389, 12.996428, 13.948406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681886, 0.133880, -0.719102,
		-0.113846, -0.951702, -0.285138,
		-0.722545, 0.276298, -0.633710,
		16.749626, 13.079318, 13.758293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.509953, 12.655962, 13.632023>,  <17.255407, 12.885909, 14.201890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.509953, 12.655962, 13.632023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.215227, 12.888822, 13.494498>,  <17.038391, 13.028538, 13.411983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.215227, 12.888822, 13.494498>,  <17.509953, 12.655962, 13.632023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.215227, 12.888822, 13.494498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515416, 0.154551, -0.842888,
		-0.437551, -0.798258, -0.413925,
		-0.736814, 0.582150, -0.343811,
		16.994183, 13.063467, 13.391356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.209023, 12.391198, 13.089522>,  <17.509953, 12.655962, 13.632023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.209023, 12.391198, 13.089522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.160557, 12.788087, 13.078096>,  <17.131477, 13.026220, 13.071240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.160557, 12.788087, 13.078096>,  <17.209023, 12.391198, 13.089522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.160557, 12.788087, 13.078096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544081, 0.042314, -0.837965,
		-0.830238, -0.117072, -0.544976,
		-0.121162, 0.992222, -0.028566,
		17.124208, 13.085753, 13.069527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.893900, 12.662012, 12.491269>,  <17.209023, 12.391198, 13.089522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.893900, 12.662012, 12.491269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.106569, 12.978698, 12.611609>,  <17.234171, 13.168710, 12.683812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.106569, 12.978698, 12.611609>,  <16.893900, 12.662012, 12.491269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.106569, 12.978698, 12.611609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348534, 0.119218, -0.929683,
		-0.771910, 0.599145, -0.212555,
		0.531675, 0.791715, 0.300848,
		17.266071, 13.216212, 12.701863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.639164, 13.299017, 12.124949>,  <16.893900, 12.662012, 12.491269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.639164, 13.299017, 12.124949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.023031, 13.282799, 12.236226>,  <17.253351, 13.273068, 12.302993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.023031, 13.282799, 12.236226>,  <16.639164, 13.299017, 12.124949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.023031, 13.282799, 12.236226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277797, 0.288740, -0.916219,
		-0.043178, 0.956549, 0.288358,
		0.959669, -0.040544, 0.278194,
		17.310932, 13.270636, 12.319684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.904886, 13.825281, 11.753087>,  <16.639164, 13.299017, 12.124949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.904886, 13.825281, 11.753087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.197163, 13.566200, 11.839408>,  <17.372528, 13.410751, 11.891200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.197163, 13.566200, 11.839408>,  <16.904886, 13.825281, 11.753087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.197163, 13.566200, 11.839408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373692, 0.114910, -0.920407,
		0.571352, 0.753178, 0.326006,
		0.730692, -0.647703, 0.215803,
		17.416370, 13.371889, 11.904149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.503733, 14.074739, 11.594337>,  <16.904886, 13.825281, 11.753087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.503733, 14.074739, 11.594337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.535151, 13.678450, 11.549986>,  <17.554001, 13.440676, 11.523375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.535151, 13.678450, 11.549986>,  <17.503733, 14.074739, 11.594337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.535151, 13.678450, 11.549986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608471, 0.135745, -0.781880,
		0.789680, -0.006055, 0.613489,
		0.078544, -0.990725, -0.110879,
		17.558714, 13.381232, 11.516722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.201191, 13.775389, 11.789093>,  <17.503733, 14.074739, 11.594337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.201191, 13.775389, 11.789093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.026012, 13.578274, 11.488330>,  <17.920906, 13.460005, 11.307872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.026012, 13.578274, 11.488330>,  <18.201191, 13.775389, 11.789093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.026012, 13.578274, 11.488330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.815373, 0.134540, -0.563086,
		0.378644, -0.859686, 0.342884,
		-0.437945, -0.492787, -0.751907,
		17.894629, 13.430438, 11.262757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.758871, 13.472051, 11.461716>,  <18.201191, 13.775389, 11.789093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.758871, 13.472051, 11.461716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.472408, 13.451053, 11.183331>,  <18.300531, 13.438454, 11.016299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.472408, 13.451053, 11.183331>,  <18.758871, 13.472051, 11.461716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.472408, 13.451053, 11.183331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642076, 0.341351, -0.686453,
		0.273601, -0.938469, -0.210756,
		-0.716156, -0.052493, -0.695963,
		18.257561, 13.435305, 10.974542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.188139, 13.276592, 10.960424>,  <18.758871, 13.472051, 11.461716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.188139, 13.276592, 10.960424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.838427, 13.411692, 10.820964>,  <18.628599, 13.492751, 10.737288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.838427, 13.411692, 10.820964>,  <19.188139, 13.276592, 10.960424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.838427, 13.411692, 10.820964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473362, 0.434119, -0.766465,
		-0.107516, -0.835145, -0.539420,
		-0.874282, 0.337748, -0.348651,
		18.576141, 13.513016, 10.716369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.815716, 13.468954, 10.423353>,  <19.188139, 13.276592, 10.960424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.815716, 13.468954, 10.423353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.169273, 13.289632, 10.370058>,  <20.381409, 13.182038, 10.338081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.169273, 13.289632, 10.370058>,  <19.815716, 13.468954, 10.423353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.169273, 13.289632, 10.370058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309823, 0.774687, -0.551243,
		0.350343, 0.445961, 0.823637,
		0.883894, -0.448306, -0.133237,
		20.434443, 13.155140, 10.330087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.336679, 14.044374, 10.560976>,  <19.815716, 13.468954, 10.423353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.336679, 14.044374, 10.560976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.482985, 13.742847, 10.342628>,  <20.570768, 13.561931, 10.211619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.482985, 13.742847, 10.342628>,  <20.336679, 14.044374, 10.560976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.482985, 13.742847, 10.342628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414845, 0.657072, -0.629413,
		0.833138, 0.003766, 0.553052,
		0.365765, -0.753819, -0.545869,
		20.592714, 13.516702, 10.178867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.127844, 14.224647, 10.422743>,  <20.336679, 14.044374, 10.560976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.127844, 14.224647, 10.422743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.985796, 13.975656, 10.143769>,  <20.900568, 13.826262, 9.976385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.985796, 13.975656, 10.143769>,  <21.127844, 14.224647, 10.422743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.985796, 13.975656, 10.143769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394112, 0.576826, -0.715505,
		0.847683, -0.528956, 0.040484,
		-0.355118, -0.622476, -0.697434,
		20.879261, 13.788913, 9.934539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.600172, 14.271564, 9.888330>,  <21.127844, 14.224647, 10.422743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.600172, 14.271564, 9.888330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.320223, 14.061172, 9.695031>,  <21.152254, 13.934937, 9.579052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.320223, 14.061172, 9.695031>,  <21.600172, 14.271564, 9.888330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.320223, 14.061172, 9.695031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118633, 0.581566, -0.804803,
		0.704348, -0.620588, -0.344623,
		-0.699872, -0.525978, -0.483246,
		21.110262, 13.903378, 9.550057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.967207, 14.088788, 9.235251>,  <21.600172, 14.271564, 9.888330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.967207, 14.088788, 9.235251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.568811, 14.117151, 9.213414>,  <21.329775, 14.134170, 9.200312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.568811, 14.117151, 9.213414>,  <21.967207, 14.088788, 9.235251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.568811, 14.117151, 9.213414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083159, 0.507996, -0.857336,
		-0.033059, -0.858436, -0.511854,
		-0.995988, 0.070908, -0.054593,
		21.270016, 14.138424, 9.197036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.942438, 13.872547, 8.575780>,  <21.967207, 14.088788, 9.235251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.942438, 13.872547, 8.575780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.608511, 14.067251, 8.678651>,  <21.408154, 14.184073, 8.740374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.608511, 14.067251, 8.678651>,  <21.942438, 13.872547, 8.575780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.608511, 14.067251, 8.678651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100614, 0.594183, -0.798012,
		-0.541251, -0.640321, -0.545011,
		-0.834820, 0.486761, 0.257177,
		21.358065, 14.213280, 8.755804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.623571, 14.109264, 7.952633>,  <21.942438, 13.872547, 8.575780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.623571, 14.109264, 7.952633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.416162, 14.347668, 8.197879>,  <21.291718, 14.490709, 8.345026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.416162, 14.347668, 8.197879>,  <21.623571, 14.109264, 7.952633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.416162, 14.347668, 8.197879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142318, 0.767194, -0.625427,
		-0.843137, -0.237041, -0.482630,
		-0.518522, 0.596008, 0.613115,
		21.260605, 14.526470, 8.381813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.008705, 14.349623, 7.574999>,  <21.623571, 14.109264, 7.952633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.008705, 14.349623, 7.574999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.088219, 14.616055, 7.862562>,  <21.135927, 14.775913, 8.035099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.088219, 14.616055, 7.862562>,  <21.008705, 14.349623, 7.574999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.088219, 14.616055, 7.862562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035546, 0.737962, -0.673906,
		-0.979399, 0.108406, 0.170369,
		0.198782, 0.666079, 0.718906,
		21.147854, 14.815878, 8.078234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.603107, 14.930255, 7.421508>,  <21.008705, 14.349623, 7.574999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.603107, 14.930255, 7.421508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.882389, 15.058269, 7.677660>,  <21.049957, 15.135077, 7.831351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.882389, 15.058269, 7.677660>,  <20.603107, 14.930255, 7.421508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.882389, 15.058269, 7.677660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136836, 0.818363, -0.558174,
		-0.702699, 0.477347, 0.527592,
		0.698205, 0.320035, 0.640381,
		21.091850, 15.154279, 7.869774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.403965, 15.566583, 7.595065>,  <20.603107, 14.930255, 7.421508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.403965, 15.566583, 7.595065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.793667, 15.569773, 7.685187>,  <21.027489, 15.571687, 7.739260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.793667, 15.569773, 7.685187>,  <20.403965, 15.566583, 7.595065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.793667, 15.569773, 7.685187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056454, 0.958904, -0.278056,
		-0.218264, 0.283617, 0.933768,
		0.974255, 0.007975, 0.225306,
		21.085943, 15.572165, 7.752779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.402657, 16.279736, 7.701808>,  <20.403965, 15.566583, 7.595065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.402657, 16.279736, 7.701808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.777674, 16.142836, 7.676895>,  <21.002684, 16.060696, 7.661948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.777674, 16.142836, 7.676895>,  <20.402657, 16.279736, 7.701808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.777674, 16.142836, 7.676895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262955, 0.814448, -0.517232,
		0.227749, 0.468550, 0.853576,
		0.937542, -0.342251, -0.062282,
		21.058937, 16.040161, 7.658211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.771036, 16.885336, 7.774820>,  <20.402657, 16.279736, 7.701808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.771036, 16.885336, 7.774820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.016184, 16.629425, 7.589314>,  <21.163273, 16.475878, 7.478011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.016184, 16.629425, 7.589314>,  <20.771036, 16.885336, 7.774820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.016184, 16.629425, 7.589314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377793, 0.752722, -0.539149,
		0.694021, 0.155221, 0.703023,
		0.612869, -0.639778, -0.463764,
		21.200045, 16.437492, 7.450185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.378164, 17.313290, 7.578169>,  <20.771036, 16.885336, 7.774820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.378164, 17.313290, 7.578169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.450354, 16.992723, 7.350077>,  <21.493668, 16.800385, 7.213222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.450354, 16.992723, 7.350077>,  <21.378164, 17.313290, 7.578169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.450354, 16.992723, 7.350077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517309, 0.570427, -0.637969,
		0.836553, -0.179849, 0.517526,
		0.180473, -0.801416, -0.570230,
		21.504496, 16.752298, 7.179008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.124763, 17.383896, 7.334381>,  <21.378164, 17.313290, 7.578169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.124763, 17.383896, 7.334381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.984734, 17.095657, 7.094985>,  <21.900715, 16.922714, 6.951347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.984734, 17.095657, 7.094985>,  <22.124763, 17.383896, 7.334381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.984734, 17.095657, 7.094985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649484, 0.273677, -0.709416,
		0.674995, -0.637057, 0.372208,
		-0.350074, -0.720596, -0.598490,
		21.879711, 16.879478, 6.915438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.719887, 16.963976, 7.053589>,  <22.124763, 17.383896, 7.334381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.719887, 16.963976, 7.053589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.405466, 16.950315, 6.806701>,  <22.216814, 16.942120, 6.658569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.405466, 16.950315, 6.806701>,  <22.719887, 16.963976, 7.053589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.405466, 16.950315, 6.806701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586833, 0.272612, -0.762437,
		0.194299, -0.961518, -0.194246,
		-0.786050, -0.034151, -0.617219,
		22.169651, 16.940071, 6.621536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.963129, 16.639841, 6.391383>,  <22.719887, 16.963976, 7.053589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.963129, 16.639841, 6.391383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.619486, 16.814516, 6.284620>,  <22.413300, 16.919321, 6.220563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.619486, 16.814516, 6.284620>,  <22.963129, 16.639841, 6.391383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.619486, 16.814516, 6.284620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435265, 0.349092, -0.829867,
		-0.269216, -0.829120, -0.489982,
		-0.859109, 0.436685, -0.266906,
		22.361753, 16.945522, 6.204549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.963921, 16.611441, 5.666475>,  <22.963129, 16.639841, 6.391383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.963921, 16.611441, 5.666475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.683016, 16.884090, 5.748665>,  <22.514473, 17.047680, 5.797980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.683016, 16.884090, 5.748665>,  <22.963921, 16.611441, 5.666475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.683016, 16.884090, 5.748665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302714, 0.547131, -0.780392,
		-0.644355, -0.485838, -0.590566,
		-0.702261, 0.681623, 0.205477,
		22.472338, 17.088577, 5.810308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.497267, 16.731976, 5.011384>,  <22.963921, 16.611441, 5.666475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.497267, 16.731976, 5.011384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.467325, 17.059845, 5.238552>,  <22.449360, 17.256567, 5.374852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.467325, 17.059845, 5.238552>,  <22.497267, 16.731976, 5.011384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.467325, 17.059845, 5.238552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238972, 0.567666, -0.787812,
		-0.968137, 0.076747, -0.238370,
		-0.074852, 0.819674, 0.567918,
		22.444870, 17.305748, 5.408927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.330072, 17.216259, 4.551409>,  <22.497267, 16.731976, 5.011384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.330072, 17.216259, 4.551409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.447119, 17.438187, 4.862935>,  <22.517347, 17.571342, 5.049850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.447119, 17.438187, 4.862935>,  <22.330072, 17.216259, 4.551409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.447119, 17.438187, 4.862935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268870, 0.733866, -0.623819,
		-0.917651, 0.391940, 0.065569,
		0.292618, 0.554819, 0.778814,
		22.534904, 17.604631, 5.096579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.083050, 17.843241, 4.400629>,  <22.330072, 17.216259, 4.551409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.083050, 17.843241, 4.400629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.371864, 17.902033, 4.671054>,  <22.545153, 17.937309, 4.833309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.371864, 17.902033, 4.671054>,  <22.083050, 17.843241, 4.400629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.371864, 17.902033, 4.671054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457307, 0.631879, -0.625779,
		-0.519168, 0.761003, 0.389023,
		0.722036, 0.146981, 0.676063,
		22.588474, 17.946127, 4.873873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.153362, 18.548418, 4.373853>,  <22.083050, 17.843241, 4.400629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.153362, 18.548418, 4.373853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.486027, 18.375540, 4.513308>,  <22.685625, 18.271812, 4.596981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.486027, 18.375540, 4.513308>,  <22.153362, 18.548418, 4.373853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.486027, 18.375540, 4.513308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534099, 0.450835, -0.715183,
		0.151920, 0.780997, 0.605776,
		0.831661, -0.432194, 0.348638,
		22.735525, 18.245882, 4.617899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.668789, 19.115675, 4.511686>,  <22.153362, 18.548418, 4.373853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.668789, 19.115675, 4.511686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.848619, 18.763702, 4.450232>,  <22.956518, 18.552519, 4.413359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.848619, 18.763702, 4.450232>,  <22.668789, 19.115675, 4.511686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.848619, 18.763702, 4.450232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611570, 0.428584, -0.665055,
		0.651048, 0.205034, 0.730820,
		0.449576, -0.879930, -0.153636,
		22.983492, 18.499723, 4.404140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.308764, 19.553301, 4.546602>,  <22.668789, 19.115675, 4.511686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.308764, 19.553301, 4.546602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.516096, 19.411785, 4.858028>,  <23.640495, 19.326876, 5.044884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.516096, 19.411785, 4.858028>,  <23.308764, 19.553301, 4.546602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.516096, 19.411785, 4.858028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508025, 0.859743, 0.052458,
		-0.687926, 0.368340, 0.625367,
		0.518332, -0.353789, 0.778566,
		23.671597, 19.305649, 5.091598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.125139, 19.941275, 5.103942>,  <23.308764, 19.553301, 4.546602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.125139, 19.941275, 5.103942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.503334, 19.811094, 5.108510>,  <23.730251, 19.732986, 5.111251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.503334, 19.811094, 5.108510>,  <23.125139, 19.941275, 5.103942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.503334, 19.811094, 5.108510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319137, 0.932980, 0.166432,
		-0.064820, -0.153715, 0.985987,
		0.945489, -0.325453, 0.011420,
		23.786982, 19.713459, 5.111936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.375622, 20.296478, 5.649912>,  <23.125139, 19.941275, 5.103942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.375622, 20.296478, 5.649912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.657854, 20.194975, 5.385258>,  <23.827194, 20.134071, 5.226465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.657854, 20.194975, 5.385258>,  <23.375622, 20.296478, 5.649912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.657854, 20.194975, 5.385258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268878, 0.959732, -0.081355,
		0.655637, -0.120496, 0.745399,
		0.705581, -0.253761, -0.661635,
		23.869528, 20.118847, 5.186767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.984436, 19.919313, 6.093184>,  <23.375622, 20.296478, 5.649912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.984436, 19.919313, 6.093184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.077175, 19.779543, 5.730053>,  <24.132818, 19.695681, 5.512175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.077175, 19.779543, 5.730053>,  <23.984436, 19.919313, 6.093184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.077175, 19.779543, 5.730053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566459, 0.807193, -0.166024,
		0.790804, -0.475755, 0.385079,
		0.231846, -0.349424, -0.907827,
		24.146729, 19.674715, 5.457705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.656870, 19.727161, 6.100525>,  <23.984436, 19.919313, 6.093184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.656870, 19.727161, 6.100525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.506842, 19.824224, 5.742655>,  <24.416824, 19.882462, 5.527934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.506842, 19.824224, 5.742655>,  <24.656870, 19.727161, 6.100525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.506842, 19.824224, 5.742655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618941, 0.784040, -0.046826,
		0.690098, -0.571313, -0.444259,
		-0.375069, 0.242656, -0.894674,
		24.394321, 19.897020, 5.474253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.178545, 19.993303, 6.585313>,  <24.656870, 19.727161, 6.100525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.178545, 19.993303, 6.585313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.439333, 19.950109, 6.285107>,  <25.595806, 19.924192, 6.104983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.439333, 19.950109, 6.285107>,  <25.178545, 19.993303, 6.585313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.439333, 19.950109, 6.285107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.755935, 0.015380, 0.654466,
		-0.059128, -0.994034, 0.091656,
		0.651971, -0.107984, -0.750515,
		25.634924, 19.917715, 6.059952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.521267, 19.579842, 6.962124>,  <25.178545, 19.993303, 6.585313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.521267, 19.579842, 6.962124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.739271, 19.732035, 6.663274>,  <25.870073, 19.823351, 6.483964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.739271, 19.732035, 6.663274>,  <25.521267, 19.579842, 6.962124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.739271, 19.732035, 6.663274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.796576, 0.043039, 0.603005,
		0.261588, -0.923786, -0.279625,
		0.545013, 0.380481, -0.747125,
		25.902775, 19.846178, 6.439137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.834679, 18.811426, 6.854856>,  <25.521267, 19.579842, 6.962124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.834679, 18.811426, 6.854856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.206825, 18.664886, 6.849069>,  <26.430113, 18.576963, 6.845597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.206825, 18.664886, 6.849069>,  <25.834679, 18.811426, 6.854856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.206825, 18.664886, 6.849069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284598, -0.746503, 0.601445,
		-0.231138, -0.555447, -0.798783,
		0.930365, -0.366349, -0.014466,
		26.485935, 18.554981, 6.844729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.696413, 18.113897, 6.752100>,  <25.834679, 18.811426, 6.854856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.696413, 18.113897, 6.752100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.054947, 18.171829, 6.919724>,  <26.270067, 18.206589, 7.020298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.054947, 18.171829, 6.919724>,  <25.696413, 18.113897, 6.752100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.054947, 18.171829, 6.919724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299804, -0.498351, 0.813489,
		0.326657, -0.854793, -0.403268,
		0.896333, 0.144831, 0.419060,
		26.323847, 18.215279, 7.045442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.890266, 17.502892, 7.091677>,  <25.696413, 18.113897, 6.752100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.890266, 17.502892, 7.091677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.132311, 17.760689, 7.278641>,  <26.277538, 17.915367, 7.390819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.132311, 17.760689, 7.278641>,  <25.890266, 17.502892, 7.091677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.132311, 17.760689, 7.278641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358370, -0.303753, 0.882782,
		0.710923, -0.701687, 0.047162,
		0.605112, 0.644491, 0.467409,
		26.313845, 17.954037, 7.418863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.239014, 17.124592, 7.530279>,  <25.890266, 17.502892, 7.091677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.239014, 17.124592, 7.530279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.261717, 17.496458, 7.675883>,  <26.275339, 17.719578, 7.763246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.261717, 17.496458, 7.675883>,  <26.239014, 17.124592, 7.530279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.261717, 17.496458, 7.675883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259558, -0.338323, 0.904526,
		0.964058, -0.145819, 0.222100,
		0.056756, 0.929663, 0.364012,
		26.278744, 17.775356, 7.785087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.581316, 17.149197, 8.153071>,  <26.239014, 17.124592, 7.530279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.581316, 17.149197, 8.153071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.377089, 17.493130, 8.154157>,  <26.254553, 17.699490, 8.154808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.377089, 17.493130, 8.154157>,  <26.581316, 17.149197, 8.153071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.377089, 17.493130, 8.154157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269276, -0.162891, 0.949188,
		0.816585, 0.483894, 0.314699,
		-0.510568, 0.859833, 0.002713,
		26.223919, 17.751080, 8.154971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.548836, 17.248663, 8.946509>,  <26.581316, 17.149197, 8.153071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.548836, 17.248663, 8.946509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.269611, 17.484825, 8.784457>,  <26.102077, 17.626522, 8.687225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.269611, 17.484825, 8.784457>,  <26.548836, 17.248663, 8.946509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.269611, 17.484825, 8.784457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545549, -0.072072, 0.834974,
		0.463776, 0.803881, 0.372406,
		-0.698060, 0.590407, -0.405131,
		26.060194, 17.661947, 8.662918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.313341, 17.609388, 9.476450>,  <26.548836, 17.248663, 8.946509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.313341, 17.609388, 9.476450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.019550, 17.637447, 9.206450>,  <25.843275, 17.654282, 9.044451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.019550, 17.637447, 9.206450>,  <26.313341, 17.609388, 9.476450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.019550, 17.637447, 9.206450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.646866, -0.373120, 0.665091,
		-0.205201, 0.925128, 0.319423,
		-0.734477, 0.070147, -0.674998,
		25.799208, 17.658491, 9.003951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.769709, 17.955587, 9.832113>,  <26.313341, 17.609388, 9.476450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.769709, 17.955587, 9.832113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.587170, 17.752567, 9.539774>,  <25.477646, 17.630754, 9.364370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.587170, 17.752567, 9.539774>,  <25.769709, 17.955587, 9.832113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.587170, 17.752567, 9.539774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661006, -0.356478, 0.660298,
		-0.595667, 0.784421, -0.172816,
		-0.456346, -0.507550, -0.730849,
		25.450266, 17.600302, 9.320519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.123318, 18.070454, 9.991144>,  <25.769709, 17.955587, 9.832113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.123318, 18.070454, 9.991144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.092766, 17.758230, 9.742984>,  <25.074434, 17.570896, 9.594088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.092766, 17.758230, 9.742984>,  <25.123318, 18.070454, 9.991144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.092766, 17.758230, 9.742984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.665887, -0.423189, 0.614414,
		-0.742132, 0.460045, -0.487441,
		-0.076379, -0.780557, -0.620400,
		25.069853, 17.524063, 9.556864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.430727, 18.004738, 9.923292>,  <25.123318, 18.070454, 9.991144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.430727, 18.004738, 9.923292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.600542, 17.662148, 9.805840>,  <24.702431, 17.456594, 9.735370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.600542, 17.662148, 9.805840>,  <24.430727, 18.004738, 9.923292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.600542, 17.662148, 9.805840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.664855, -0.515037, 0.541022,
		-0.614602, -0.034464, -0.788084,
		0.424538, -0.856475, -0.293629,
		24.727903, 17.405205, 9.717752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.894243, 17.611853, 9.832973>,  <24.430727, 18.004738, 9.923292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.894243, 17.611853, 9.832973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.202969, 17.361088, 9.875470>,  <24.388203, 17.210629, 9.900969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.202969, 17.361088, 9.875470>,  <23.894243, 17.611853, 9.832973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.202969, 17.361088, 9.875470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593108, -0.649581, 0.475676,
		-0.229193, -0.430147, -0.873181,
		0.771812, -0.626912, 0.106245,
		24.434513, 17.173014, 9.907344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.726028, 16.872515, 9.584790>,  <23.894243, 17.611853, 9.832973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.726028, 16.872515, 9.584790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.016083, 16.881250, 9.860095>,  <24.190115, 16.886492, 10.025278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.016083, 16.881250, 9.860095>,  <23.726028, 16.872515, 9.584790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.016083, 16.881250, 9.860095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431318, -0.764736, 0.478689,
		0.536792, -0.643974, -0.545117,
		0.725134, 0.021838, 0.688262,
		24.233624, 16.887802, 10.066573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.585661, 16.147232, 9.766510>,  <23.726028, 16.872515, 9.584790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.585661, 16.147232, 9.766510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.814636, 16.314676, 10.048526>,  <23.952021, 16.415144, 10.217735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.814636, 16.314676, 10.048526>,  <23.585661, 16.147232, 9.766510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.814636, 16.314676, 10.048526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439477, -0.569277, 0.694826,
		0.692225, -0.707593, -0.141905,
		0.572437, 0.418612, 0.705039,
		23.986368, 16.440260, 10.260037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.933884, 15.612774, 10.163788>,  <23.585661, 16.147232, 9.766510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.933884, 15.612774, 10.163788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.937473, 15.924847, 10.413983>,  <23.939627, 16.112091, 10.564101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.937473, 15.924847, 10.413983>,  <23.933884, 15.612774, 10.163788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.937473, 15.924847, 10.413983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547456, -0.519609, 0.655971,
		0.836786, -0.348316, 0.422451,
		0.008976, 0.780181, 0.625489,
		23.940166, 16.158901, 10.601630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.210569, 15.411742, 10.760475>,  <23.933884, 15.612774, 10.163788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.210569, 15.411742, 10.760475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.995224, 15.730147, 10.871133>,  <23.866016, 15.921190, 10.937528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.995224, 15.730147, 10.871133>,  <24.210569, 15.411742, 10.760475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.995224, 15.730147, 10.871133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377497, -0.521294, 0.765342,
		0.753434, 0.307599, 0.581137,
		-0.538361, 0.796012, 0.276643,
		23.833715, 15.968951, 10.954125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.249006, 15.336776, 11.440878>,  <24.210569, 15.411742, 10.760475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.249006, 15.336776, 11.440878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.971039, 15.620206, 11.391875>,  <23.804258, 15.790264, 11.362473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.971039, 15.620206, 11.391875>,  <24.249006, 15.336776, 11.440878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.971039, 15.620206, 11.391875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454903, -0.301245, 0.838042,
		0.556913, 0.638099, 0.531675,
		-0.694919, 0.708576, -0.122506,
		23.762564, 15.832779, 11.355124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.350346, 15.901677, 12.050550>,  <24.249006, 15.336776, 11.440878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.350346, 15.901677, 12.050550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.977640, 15.899782, 11.905336>,  <23.754017, 15.898645, 11.818208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.977640, 15.899782, 11.905336>,  <24.350346, 15.901677, 12.050550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.977640, 15.899782, 11.905336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361376, -0.084253, 0.928606,
		-0.034986, 0.996433, 0.076791,
		-0.931763, -0.004738, -0.363035,
		23.698111, 15.898361, 11.796426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.918232, 16.076797, 12.563253>,  <24.350346, 15.901677, 12.050550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.918232, 16.076797, 12.563253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.644712, 15.896907, 12.333414>,  <23.480600, 15.788973, 12.195510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.644712, 15.896907, 12.333414>,  <23.918232, 16.076797, 12.563253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.644712, 15.896907, 12.333414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508860, -0.270468, 0.817257,
		-0.522952, 0.851231, -0.043901,
		-0.683800, -0.449726, -0.574599,
		23.439573, 15.761990, 12.161035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.976877, 16.430367, 13.135272>,  <23.918232, 16.076797, 12.563253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.976877, 16.430367, 13.135272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.769783, 16.161518, 13.347008>,  <23.645527, 16.000210, 13.474050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.769783, 16.161518, 13.347008>,  <23.976877, 16.430367, 13.135272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.769783, 16.161518, 13.347008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.855431, -0.416564, 0.307754,
		0.013656, 0.612149, 0.790624,
		-0.517737, -0.672122, 0.529339,
		23.614462, 15.959882, 13.505810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.694502, 16.679232, 13.283009>,  <23.976877, 16.430367, 13.135272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.694502, 16.679232, 13.283009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.061014, 16.798264, 13.390246>,  <25.280922, 16.869682, 13.454589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.061014, 16.798264, 13.390246>,  <24.694502, 16.679232, 13.283009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.061014, 16.798264, 13.390246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218186, -0.932145, 0.288964,
		0.335893, -0.206278, -0.919035,
		0.916281, 0.297581, 0.268094,
		25.335899, 16.887537, 13.470675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.196331, 16.156044, 13.081170>,  <24.694502, 16.679232, 13.283009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.196331, 16.156044, 13.081170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.342211, 16.337399, 13.406485>,  <25.429739, 16.446211, 13.601673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.342211, 16.337399, 13.406485>,  <25.196331, 16.156044, 13.081170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.342211, 16.337399, 13.406485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314821, -0.882047, 0.350545,
		0.876289, 0.128196, -0.464417,
		0.364699, 0.453387, 0.813287,
		25.451620, 16.473415, 13.650471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.971029, 16.172995, 13.135016>,  <25.196331, 16.156044, 13.081170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.971029, 16.172995, 13.135016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.767923, 16.171694, 13.479612>,  <25.646059, 16.170914, 13.686370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.767923, 16.171694, 13.479612>,  <25.971029, 16.172995, 13.135016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.767923, 16.171694, 13.479612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224899, -0.965817, 0.128913,
		0.831621, 0.259206, 0.491140,
		-0.507766, -0.003251, 0.861489,
		25.615593, 16.170719, 13.738059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.348112, 15.926945, 13.661649>,  <25.971029, 16.172995, 13.135016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.348112, 15.926945, 13.661649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.960079, 15.846046, 13.715373>,  <25.727261, 15.797507, 13.747607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.960079, 15.846046, 13.715373>,  <26.348112, 15.926945, 13.661649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.960079, 15.846046, 13.715373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199361, -0.979311, -0.034727,
		0.138555, -0.006912, 0.990331,
		-0.970081, -0.202245, 0.134310,
		25.669054, 15.785373, 13.755666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.225590, 15.102494, 13.720695>,  <26.348112, 15.926945, 13.661649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.225590, 15.102494, 13.720695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.837549, 15.191322, 13.759868>,  <25.604725, 15.244619, 13.783372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.837549, 15.191322, 13.759868>,  <26.225590, 15.102494, 13.720695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.837549, 15.191322, 13.759868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227391, -0.972676, -0.046854,
		0.084852, -0.067722, 0.994089,
		-0.970100, 0.222071, 0.097933,
		25.546520, 15.257944, 13.789248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.073153, 14.724664, 14.260659>,  <26.225590, 15.102494, 13.720695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.073153, 14.724664, 14.260659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.788992, 14.809477, 13.992219>,  <25.618496, 14.860365, 13.831155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.788992, 14.809477, 13.992219>,  <26.073153, 14.724664, 14.260659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.788992, 14.809477, 13.992219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206308, -0.974388, -0.089467,
		-0.672881, 0.074896, 0.735949,
		-0.710399, 0.212033, -0.671100,
		25.575872, 14.873087, 13.790889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.362967, 14.854861, 14.976418>,  <26.073153, 14.724664, 14.260659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.362967, 14.854861, 14.976418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.740686, 14.879323, 15.105760>,  <26.967319, 14.894000, 15.183364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.740686, 14.879323, 15.105760>,  <26.362967, 14.854861, 14.976418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.740686, 14.879323, 15.105760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224356, 0.838468, 0.496624,
		-0.240750, -0.541508, 0.805486,
		0.944301, 0.061154, 0.323352,
		27.023977, 14.897669, 15.202765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<12.672522, 19.691442, 19.737621> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.297873, 19.569283, 19.806295>,  <12.073085, 19.495987, 19.847500>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.297873, 19.569283, 19.806295>,  <12.672522, 19.691442, 19.737621>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.297873, 19.569283, 19.806295> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025993, -0.428112, -0.903352,
		0.349383, -0.850559, 0.393039,
		-0.936619, -0.305400, 0.171684,
		12.016888, 19.477663, 19.857800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.625151, 19.020365, 19.522015>,  <12.672522, 19.691442, 19.737621>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.625151, 19.020365, 19.522015> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.229897, 19.074682, 19.550730>,  <11.992745, 19.107273, 19.567959>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.229897, 19.074682, 19.550730>,  <12.625151, 19.020365, 19.522015>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.229897, 19.074682, 19.550730> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134799, -0.542579, -0.829118,
		-0.073639, -0.828956, 0.554445,
		-0.988133, 0.135794, 0.071788,
		11.933457, 19.115421, 19.572266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.401310, 18.377304, 19.387611>,  <12.625151, 19.020365, 19.522015>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.401310, 18.377304, 19.387611> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.099003, 18.630936, 19.322182>,  <11.917619, 18.783115, 19.282925>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.099003, 18.630936, 19.322182>,  <12.401310, 18.377304, 19.387611>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.099003, 18.630936, 19.322182> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196775, -0.458151, -0.866820,
		-0.624576, -0.622927, 0.471027,
		-0.755767, 0.634081, -0.163574,
		11.872272, 18.821159, 19.273109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.845084, 17.905371, 19.172188>,  <12.401310, 18.377304, 19.387611>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.845084, 17.905371, 19.172188> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.750040, 18.264597, 19.024122>,  <11.693013, 18.480133, 18.935284>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.750040, 18.264597, 19.024122>,  <11.845084, 17.905371, 19.172188>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.750040, 18.264597, 19.024122> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138561, -0.408516, -0.902173,
		-0.961427, -0.163076, 0.221505,
		-0.237610, 0.898065, -0.370162,
		11.678757, 18.534016, 18.913074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.321834, 17.782585, 18.756493>,  <11.845084, 17.905371, 19.172188>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.321834, 17.782585, 18.756493> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.464942, 18.125713, 18.608904>,  <11.550807, 18.331591, 18.520350>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.464942, 18.125713, 18.608904>,  <11.321834, 17.782585, 18.756493>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.464942, 18.125713, 18.608904> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002639, -0.396055, -0.918223,
		-0.933805, 0.327540, -0.143961,
		0.357771, 0.857822, -0.368974,
		11.572273, 18.383060, 18.498211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.945788, 17.853210, 18.077040>,  <11.321834, 17.782585, 18.756493>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.945788, 17.853210, 18.077040> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.243459, 18.116800, 18.033300>,  <11.422061, 18.274954, 18.007057>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.243459, 18.116800, 18.033300>,  <10.945788, 17.853210, 18.077040>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.243459, 18.116800, 18.033300> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052228, -0.220599, -0.973965,
		-0.665940, 0.719090, -0.198582,
		0.744175, 0.658974, -0.109349,
		11.466711, 18.314493, 18.000496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.791290, 18.307272, 17.585226>,  <10.945788, 17.853210, 18.077040>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.791290, 18.307272, 17.585226> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.190924, 18.290504, 17.588648>,  <11.430704, 18.280443, 17.590700>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.190924, 18.290504, 17.588648>,  <10.791290, 18.307272, 17.585226>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.190924, 18.290504, 17.588648> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006368, -0.343377, -0.939176,
		0.042308, 0.938262, -0.343329,
		0.999084, -0.041921, 0.008553,
		11.490649, 18.277927, 17.591213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.025526, 18.464474, 16.928940>,  <10.791290, 18.307272, 17.585226>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.025526, 18.464474, 16.928940> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.350702, 18.295694, 17.089481>,  <11.545808, 18.194426, 17.185806>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.350702, 18.295694, 17.089481>,  <11.025526, 18.464474, 16.928940>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.350702, 18.295694, 17.089481> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227612, -0.404150, -0.885921,
		0.536021, 0.811554, -0.232509,
		0.812942, -0.421951, 0.401352,
		11.594584, 18.169109, 17.209887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.416557, 18.505606, 16.416847>,  <11.025526, 18.464474, 16.928940>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.416557, 18.505606, 16.416847> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.633857, 18.264387, 16.650501>,  <11.764236, 18.119656, 16.790693>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.633857, 18.264387, 16.650501>,  <11.416557, 18.505606, 16.416847>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.633857, 18.264387, 16.650501> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245869, -0.550980, -0.797477,
		0.802763, 0.576850, -0.151049,
		0.543249, -0.603047, 0.584136,
		11.796831, 18.083473, 16.825743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.022488, 18.342146, 16.048033>,  <11.416557, 18.505606, 16.416847>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.022488, 18.342146, 16.048033> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.981860, 18.057945, 16.326563>,  <11.957483, 17.887424, 16.493681>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.981860, 18.057945, 16.326563>,  <12.022488, 18.342146, 16.048033>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.981860, 18.057945, 16.326563> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411301, -0.667314, -0.620906,
		0.905823, 0.223335, 0.360008,
		-0.101568, -0.710502, 0.696326,
		11.951389, 17.844795, 16.535461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.606636, 18.051725, 16.079380>,  <12.022488, 18.342146, 16.048033>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.606636, 18.051725, 16.079380> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.353696, 17.778734, 16.225998>,  <12.201932, 17.614939, 16.313969>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.353696, 17.778734, 16.225998>,  <12.606636, 18.051725, 16.079380>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.353696, 17.778734, 16.225998> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464863, -0.712791, -0.525197,
		0.619707, -0.161714, 0.767992,
		-0.632350, -0.682479, 0.366546,
		12.163991, 17.573990, 16.335962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.008499, 17.530935, 16.434870>,  <12.606636, 18.051725, 16.079380>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.008499, 17.530935, 16.434870> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.656510, 17.374580, 16.326902>,  <12.445316, 17.280767, 16.262123>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.656510, 17.374580, 16.326902>,  <13.008499, 17.530935, 16.434870>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.656510, 17.374580, 16.326902> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474990, -0.730770, -0.490264,
		-0.005610, -0.559627, 0.828725,
		-0.879973, -0.390886, -0.269917,
		12.392518, 17.257315, 16.245928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.148892, 16.759306, 16.404701>,  <13.008499, 17.530935, 16.434870>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.148892, 16.759306, 16.404701> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.809973, 16.789162, 16.194363>,  <12.606621, 16.807076, 16.068159>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.809973, 16.789162, 16.194363>,  <13.148892, 16.759306, 16.404701>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.809973, 16.789162, 16.194363> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384956, -0.595811, -0.704853,
		-0.365916, -0.799648, 0.476096,
		-0.847298, 0.074641, -0.525847,
		12.555783, 16.811554, 16.036608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.038310, 16.179499, 16.208801>,  <13.148892, 16.759306, 16.404701>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.038310, 16.179499, 16.208801> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.796588, 16.375126, 15.957206>,  <12.651555, 16.492502, 15.806249>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.796588, 16.375126, 15.957206>,  <13.038310, 16.179499, 16.208801>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.796588, 16.375126, 15.957206> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305935, -0.586492, -0.749954,
		-0.735676, -0.645631, 0.204797,
		-0.604305, 0.489069, -0.628989,
		12.615296, 16.521847, 15.768509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.719692, 15.662601, 15.777923>,  <13.038310, 16.179499, 16.208801>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.719692, 15.662601, 15.777923> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.700915, 15.995835, 15.557463>,  <12.689649, 16.195776, 15.425187>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.700915, 15.995835, 15.557463>,  <12.719692, 15.662601, 15.777923>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.700915, 15.995835, 15.557463> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308942, -0.512597, -0.801124,
		-0.949922, -0.207880, -0.233312,
		-0.046943, 0.833085, -0.551150,
		12.686832, 16.245760, 15.392118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.342469, 15.539537, 15.084801>,  <12.719692, 15.662601, 15.777923>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.342469, 15.539537, 15.084801> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.540917, 15.878582, 15.009521>,  <12.659986, 16.082008, 14.964354>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.540917, 15.878582, 15.009521>,  <12.342469, 15.539537, 15.084801>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.540917, 15.878582, 15.009521> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320186, -0.380083, -0.867766,
		-0.807059, 0.370259, -0.459961,
		0.496122, 0.847611, -0.188198,
		12.689754, 16.132866, 14.953062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.153574, 15.698325, 14.452239>,  <12.342469, 15.539537, 15.084801>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.153574, 15.698325, 14.452239> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.495726, 15.897637, 14.508868>,  <12.701016, 16.017225, 14.542846>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.495726, 15.897637, 14.508868>,  <12.153574, 15.698325, 14.452239>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.495726, 15.897637, 14.508868> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317065, -0.287509, -0.903774,
		-0.409629, 0.817958, -0.403917,
		0.855379, 0.498280, 0.141574,
		12.752339, 16.047121, 14.551340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.285572, 16.171850, 13.877486>,  <12.153574, 15.698325, 14.452239>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.285572, 16.171850, 13.877486> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.638511, 16.091413, 14.047675>,  <12.850274, 16.043152, 14.149789>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.638511, 16.091413, 14.047675>,  <12.285572, 16.171850, 13.877486>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.638511, 16.091413, 14.047675> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391549, -0.187846, -0.900779,
		0.261061, 0.961393, -0.087009,
		0.882347, -0.201090, 0.425472,
		12.903214, 16.031086, 14.175317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.775129, 16.415310, 13.451226>,  <12.285572, 16.171850, 13.877486>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.775129, 16.415310, 13.451226> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.995948, 16.169748, 13.676923>,  <13.128439, 16.022411, 13.812341>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.995948, 16.169748, 13.676923>,  <12.775129, 16.415310, 13.451226>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.995948, 16.169748, 13.676923> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527202, -0.267279, -0.806610,
		0.645990, 0.742756, 0.176100,
		0.552046, -0.613902, 0.564242,
		13.161562, 15.985578, 13.846195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.479084, 16.625822, 13.358790>,  <12.775129, 16.415310, 13.451226>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.479084, 16.625822, 13.358790> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.504920, 16.254850, 13.506141>,  <13.520422, 16.032267, 13.594551>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.504920, 16.254850, 13.506141>,  <13.479084, 16.625822, 13.358790>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.504920, 16.254850, 13.506141> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397361, -0.314717, -0.862008,
		0.915387, 0.202055, 0.348197,
		0.064590, -0.927430, 0.368376,
		13.524297, 15.976622, 13.616653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.053532, 16.423422, 13.119084>,  <13.479084, 16.625822, 13.358790>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.053532, 16.423422, 13.119084> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.869569, 16.080725, 13.212446>,  <13.759191, 15.875107, 13.268463>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.869569, 16.080725, 13.212446>,  <14.053532, 16.423422, 13.119084>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.869569, 16.080725, 13.212446> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442925, -0.449157, -0.775935,
		0.769612, -0.253478, 0.586044,
		-0.459908, -0.856742, 0.233405,
		13.731596, 15.823702, 13.282468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.562791, 15.987540, 13.037398>,  <14.053532, 16.423422, 13.119084>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.562791, 15.987540, 13.037398> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.217098, 15.790432, 12.996843>,  <14.009683, 15.672167, 12.972510>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.217098, 15.790432, 12.996843>,  <14.562791, 15.987540, 13.037398>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.217098, 15.790432, 12.996843> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403780, -0.559181, -0.724070,
		0.300107, -0.666703, 0.682234,
		-0.864232, -0.492771, -0.101388,
		13.957829, 15.642601, 12.966427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.700723, 15.271151, 12.874935>,  <14.562791, 15.987540, 13.037398>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.700723, 15.271151, 12.874935> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.080947, 15.333394, 12.767438>,  <15.309081, 15.370740, 12.702940>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.080947, 15.333394, 12.767438>,  <14.700723, 15.271151, 12.874935>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.080947, 15.333394, 12.767438> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080272, 0.712865, 0.696692,
		0.299988, -0.683820, 0.665129,
		0.950559, 0.155608, -0.268743,
		15.366115, 15.380076, 12.686815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.111449, 15.232833, 13.501525>,  <14.700723, 15.271151, 12.874935>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.111449, 15.232833, 13.501525> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.283800, 15.457021, 13.218620>,  <15.387211, 15.591534, 13.048878>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.283800, 15.457021, 13.218620>,  <15.111449, 15.232833, 13.501525>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.283800, 15.457021, 13.218620> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291012, 0.655576, 0.696801,
		0.854200, -0.506056, 0.119368,
		0.430875, 0.560470, -0.707262,
		15.413063, 15.625162, 13.006442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.790909, 15.366486, 13.754198>,  <15.111449, 15.232833, 13.501525>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.790909, 15.366486, 13.754198> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.718605, 15.654488, 13.486192>,  <15.675222, 15.827289, 13.325388>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.718605, 15.654488, 13.486192>,  <15.790909, 15.366486, 13.754198>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.718605, 15.654488, 13.486192> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105778, 0.691517, 0.714573,
		0.977823, 0.058293, -0.201159,
		-0.180759, 0.720004, -0.670015,
		15.664377, 15.870489, 13.285187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.256756, 15.848330, 14.034009>,  <15.790909, 15.366486, 13.754198>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.256756, 15.848330, 14.034009> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.999538, 16.046812, 13.800676>,  <15.845208, 16.165901, 13.660677>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.999538, 16.046812, 13.800676>,  <16.256756, 15.848330, 14.034009>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.999538, 16.046812, 13.800676> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075776, 0.799187, 0.596286,
		0.762072, 0.339235, -0.551512,
		-0.643043, 0.496205, -0.583332,
		15.806625, 16.195673, 13.625677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.546450, 16.561640, 13.820485>,  <16.256756, 15.848330, 14.034009>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.546450, 16.561640, 13.820485> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.153095, 16.602539, 13.760483>,  <15.917083, 16.627079, 13.724482>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.153095, 16.602539, 13.760483>,  <16.546450, 16.561640, 13.820485>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.153095, 16.602539, 13.760483> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016847, 0.771330, 0.636213,
		0.180755, 0.628168, -0.756791,
		-0.983384, 0.102249, -0.150005,
		15.858080, 16.633213, 13.715482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.527485, 17.213625, 13.922647>,  <16.546450, 16.561640, 13.820485>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.527485, 17.213625, 13.922647> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.145439, 17.099312, 13.953856>,  <15.916212, 17.030724, 13.972581>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.145439, 17.099312, 13.953856>,  <16.527485, 17.213625, 13.922647>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.145439, 17.099312, 13.953856> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154930, 0.706356, 0.690694,
		-0.252501, 0.647602, -0.718926,
		-0.955113, -0.285784, 0.078022,
		15.858906, 17.013577, 13.977262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.211731, 17.801483, 14.018461>,  <16.527485, 17.213625, 13.922647>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.211731, 17.801483, 14.018461> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.966048, 17.517906, 14.157112>,  <15.818639, 17.347759, 14.240303>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.966048, 17.517906, 14.157112>,  <16.211731, 17.801483, 14.018461>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.966048, 17.517906, 14.157112> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247036, 0.589898, 0.768761,
		-0.749483, 0.386548, -0.537453,
		-0.614206, -0.708944, 0.346627,
		15.781787, 17.305223, 14.261101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.678023, 18.133060, 14.272159>,  <16.211731, 17.801483, 14.018461>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.678023, 18.133060, 14.272159> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.614279, 17.777040, 14.442998>,  <15.576032, 17.563429, 14.545502>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.614279, 17.777040, 14.442998>,  <15.678023, 18.133060, 14.272159>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.614279, 17.777040, 14.442998> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124602, 0.447301, 0.885662,
		-0.979325, 0.087923, -0.182185,
		-0.159362, -0.890051, 0.427097,
		15.566470, 17.510025, 14.571127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.125532, 18.245874, 14.704926>,  <15.678023, 18.133060, 14.272159>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.125532, 18.245874, 14.704926> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.256195, 17.895391, 14.846663>,  <15.334593, 17.685102, 14.931706>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.256195, 17.895391, 14.846663>,  <15.125532, 18.245874, 14.704926>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.256195, 17.895391, 14.846663> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206582, 0.299656, 0.931413,
		-0.922291, -0.377453, -0.083124,
		0.326656, -0.876205, 0.354345,
		15.354192, 17.632530, 14.952967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.531926, 18.032310, 15.061484>,  <15.125532, 18.245874, 14.704926>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.531926, 18.032310, 15.061484> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.878574, 17.866091, 15.171968>,  <15.086563, 17.766359, 15.238257>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.878574, 17.866091, 15.171968>,  <14.531926, 18.032310, 15.061484>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.878574, 17.866091, 15.171968> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145008, 0.319918, 0.936283,
		-0.477433, -0.851453, 0.216989,
		0.866620, -0.415547, 0.276207,
		15.138560, 17.741426, 15.254829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.474195, 17.582296, 15.591707>,  <14.531926, 18.032310, 15.061484>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.474195, 17.582296, 15.591707> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.856289, 17.662361, 15.678851>,  <15.085545, 17.710400, 15.731137>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.856289, 17.662361, 15.678851>,  <14.474195, 17.582296, 15.591707>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.856289, 17.662361, 15.678851> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251976, 0.164543, 0.953642,
		0.155026, -0.965849, 0.207611,
		0.955236, 0.200152, 0.217862,
		15.142859, 17.722410, 15.744209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.565585, 17.277670, 16.134954>,  <14.474195, 17.582296, 15.591707>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.565585, 17.277670, 16.134954> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.861917, 17.546276, 16.128765>,  <15.039715, 17.707439, 16.125051>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.861917, 17.546276, 16.128765>,  <14.565585, 17.277670, 16.134954>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.861917, 17.546276, 16.128765> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117980, 0.152764, 0.981195,
		0.661253, -0.725071, 0.192397,
		0.740827, 0.671518, -0.015471,
		15.084165, 17.747732, 16.124125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.969742, 17.071787, 16.764633>,  <14.565585, 17.277670, 16.134954>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.969742, 17.071787, 16.764633> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.063174, 17.446178, 16.659273>,  <15.119234, 17.670815, 16.596056>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.063174, 17.446178, 16.659273>,  <14.969742, 17.071787, 16.764633>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.063174, 17.446178, 16.659273> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158081, 0.303847, 0.939515,
		0.959401, -0.177815, 0.218934,
		0.233582, 0.935980, -0.263402,
		15.133249, 17.726973, 16.580254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.419927, 17.263161, 17.368219>,  <14.969742, 17.071787, 16.764633>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.419927, 17.263161, 17.368219> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.287363, 17.601274, 17.200571>,  <15.207825, 17.804144, 17.099983>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.287363, 17.601274, 17.200571>,  <15.419927, 17.263161, 17.368219>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.287363, 17.601274, 17.200571> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151231, 0.390887, 0.907930,
		0.931288, 0.364281, -0.001710,
		-0.331410, 0.845285, -0.419118,
		15.187940, 17.854860, 17.074835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.554068, 17.789625, 17.887798>,  <15.419927, 17.263161, 17.368219>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.554068, 17.789625, 17.887798> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.316595, 17.974779, 17.624502>,  <15.174111, 18.085871, 17.466524>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.316595, 17.974779, 17.624502>,  <15.554068, 17.789625, 17.887798>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.316595, 17.974779, 17.624502> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302175, 0.629893, 0.715490,
		0.745810, 0.623677, -0.234084,
		-0.593682, 0.462885, -0.658239,
		15.138491, 18.113646, 17.427031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.786045, 18.514051, 17.858147>,  <15.554068, 17.789625, 17.887798>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.786045, 18.514051, 17.858147> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.404910, 18.444094, 17.758940>,  <15.176229, 18.402119, 17.699415>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.404910, 18.444094, 17.758940>,  <15.786045, 18.514051, 17.858147>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.404910, 18.444094, 17.758940> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299890, 0.417283, 0.857870,
		-0.046544, 0.891789, -0.450052,
		-0.952837, -0.174895, -0.248017,
		15.119059, 18.391624, 17.684534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.521651, 19.074694, 18.057354>,  <15.786045, 18.514051, 17.858147>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.521651, 19.074694, 18.057354> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.195877, 18.846382, 18.015581>,  <15.000412, 18.709394, 17.990519>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.195877, 18.846382, 18.015581>,  <15.521651, 19.074694, 18.057354>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.195877, 18.846382, 18.015581> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408392, 0.436005, 0.801945,
		-0.412201, 0.695781, -0.588200,
		-0.814436, -0.570779, -0.104430,
		14.951547, 18.675148, 17.984253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.922236, 19.521439, 18.049377>,  <15.521651, 19.074694, 18.057354>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.922236, 19.521439, 18.049377> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.818374, 19.152702, 18.164471>,  <14.756056, 18.931461, 18.233526>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.818374, 19.152702, 18.164471>,  <14.922236, 19.521439, 18.049377>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.818374, 19.152702, 18.164471> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458939, 0.379950, 0.803128,
		-0.849679, 0.076485, -0.521724,
		-0.259656, -0.921840, 0.287733,
		14.740477, 18.876150, 18.250790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<14.356947, 19.662149, 18.526007> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.448022, 19.283278, 18.616348>,  <14.502666, 19.055954, 18.670553>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.448022, 19.283278, 18.616348>,  <14.356947, 19.662149, 18.526007>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.448022, 19.283278, 18.616348> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211607, 0.178274, 0.960958,
		-0.950464, -0.266590, -0.159839,
		0.227687, -0.947179, 0.225855,
		14.516328, 18.999125, 18.684105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.767344, 19.483492, 18.898418>,  <14.356947, 19.662149, 18.526007>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.767344, 19.483492, 18.898418> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.050293, 19.230196, 19.024042>,  <14.220062, 19.078218, 19.099417>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.050293, 19.230196, 19.024042>,  <13.767344, 19.483492, 18.898418>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.050293, 19.230196, 19.024042> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288900, 0.146493, 0.946085,
		-0.645105, -0.759966, -0.079318,
		0.707373, -0.633239, 0.314057,
		14.262505, 19.040224, 19.118259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.469488, 18.980165, 19.396156>,  <13.767344, 19.483492, 18.898418>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.469488, 18.980165, 19.396156> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.865295, 18.981926, 19.453894>,  <14.102779, 18.982983, 19.488537>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.865295, 18.981926, 19.453894>,  <13.469488, 18.980165, 19.396156>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.865295, 18.981926, 19.453894> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144409, 0.031913, 0.989003,
		-0.000265, -0.999481, 0.032213,
		0.989518, 0.004390, 0.144343,
		14.162150, 18.983246, 19.497196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.454458, 18.496872, 19.860739>,  <13.469488, 18.980165, 19.396156>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.454458, 18.496872, 19.860739> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.802816, 18.690651, 19.893848>,  <14.011831, 18.806919, 19.913713>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.802816, 18.690651, 19.893848>,  <13.454458, 18.496872, 19.860739>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.802816, 18.690651, 19.893848> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062649, -0.057616, 0.996371,
		0.487461, -0.872920, -0.019827,
		0.870894, 0.484449, 0.082773,
		14.064085, 18.835985, 19.918680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.759042, 18.221540, 20.450417>,  <13.454458, 18.496872, 19.860739>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.759042, 18.221540, 20.450417> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.974596, 18.553993, 20.395533>,  <14.103929, 18.753464, 20.362602>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.974596, 18.553993, 20.395533>,  <13.759042, 18.221540, 20.450417>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.974596, 18.553993, 20.395533> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052610, 0.129357, 0.990201,
		0.840735, -0.540823, 0.025983,
		0.538885, 0.831130, -0.137208,
		14.136262, 18.803331, 20.354370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.265517, 18.206486, 20.965700>,  <13.759042, 18.221540, 20.450417>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.265517, 18.206486, 20.965700> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.248706, 18.595909, 20.875885>,  <14.238619, 18.829563, 20.821997>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.248706, 18.595909, 20.875885>,  <14.265517, 18.206486, 20.965700>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.248706, 18.595909, 20.875885> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014736, 0.224107, 0.974453,
		0.999008, 0.044263, 0.004928,
		-0.042028, 0.973559, -0.224537,
		14.236097, 18.887978, 20.808523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.760891, 18.544834, 21.418377>,  <14.265517, 18.206486, 20.965700>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.760891, 18.544834, 21.418377> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.569286, 18.872643, 21.292562>,  <14.454324, 19.069328, 21.217073>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.569286, 18.872643, 21.292562>,  <14.760891, 18.544834, 21.418377>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.569286, 18.872643, 21.292562> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256192, 0.473240, 0.842858,
		0.839592, 0.323156, -0.436642,
		-0.479011, 0.819521, -0.314538,
		14.425583, 19.118498, 21.198200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.228766, 19.161268, 21.513138>,  <14.760891, 18.544834, 21.418377>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.228766, 19.161268, 21.513138> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.878780, 19.352036, 21.479712>,  <14.668789, 19.466496, 21.459656>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.878780, 19.352036, 21.479712>,  <15.228766, 19.161268, 21.513138>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.878780, 19.352036, 21.479712> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119323, 0.379655, 0.917401,
		0.469252, 0.792723, -0.389092,
		-0.874965, 0.476920, -0.083563,
		14.616291, 19.495111, 21.454643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.301781, 19.841740, 21.725443>,  <15.228766, 19.161268, 21.513138>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.301781, 19.841740, 21.725443> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.906016, 19.801746, 21.767529>,  <14.668558, 19.777750, 21.792780>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.906016, 19.801746, 21.767529>,  <15.301781, 19.841740, 21.725443>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.906016, 19.801746, 21.767529> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037760, 0.522614, 0.851733,
		-0.140146, 0.846686, -0.513305,
		-0.989411, -0.099984, 0.105213,
		14.609193, 19.771751, 21.799093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.926686, 20.566082, 21.705364>,  <15.301781, 19.841740, 21.725443>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.926686, 20.566082, 21.705364> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.709695, 20.292297, 21.900190>,  <14.579500, 20.128027, 22.017086>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.709695, 20.292297, 21.900190>,  <14.926686, 20.566082, 21.705364>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.709695, 20.292297, 21.900190> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124512, 0.638896, 0.759150,
		-0.830791, 0.351177, -0.431811,
		-0.542479, -0.684460, 0.487063,
		14.546951, 20.086960, 22.046309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.536795, 20.974585, 22.134680>,  <14.926686, 20.566082, 21.705364>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.536795, 20.974585, 22.134680> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.469503, 20.611206, 22.287741>,  <14.429129, 20.393179, 22.379578>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.469503, 20.611206, 22.287741>,  <14.536795, 20.974585, 22.134680>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.469503, 20.611206, 22.287741> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297126, 0.416861, 0.859036,
		-0.939902, 0.030818, -0.340051,
		-0.168228, -0.908448, 0.382651,
		14.419035, 20.338673, 22.402536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.895671, 20.966324, 22.506523>,  <14.536795, 20.974585, 22.134680>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.895671, 20.966324, 22.506523> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.067139, 20.646002, 22.673832>,  <14.170019, 20.453808, 22.774218>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.067139, 20.646002, 22.673832>,  <13.895671, 20.966324, 22.506523>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.067139, 20.646002, 22.673832> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277977, 0.323601, 0.904440,
		-0.859634, -0.503976, -0.083888,
		0.428669, -0.800806, 0.418273,
		14.195740, 20.405760, 22.799314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.447584, 20.733686, 23.083076>,  <13.895671, 20.966324, 22.506523>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.447584, 20.733686, 23.083076> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.801028, 20.568148, 23.170679>,  <14.013095, 20.468824, 23.223240>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.801028, 20.568148, 23.170679>,  <13.447584, 20.733686, 23.083076>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.801028, 20.568148, 23.170679> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124384, 0.243460, 0.961902,
		-0.451402, -0.877186, 0.163648,
		0.883609, -0.413849, 0.219006,
		14.066111, 20.443993, 23.236382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.357972, 20.353632, 23.615622>,  <13.447584, 20.733686, 23.083076>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.357972, 20.353632, 23.615622> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.753539, 20.404425, 23.646387>,  <13.990879, 20.434900, 23.664846>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.753539, 20.404425, 23.646387>,  <13.357972, 20.353632, 23.615622>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.753539, 20.404425, 23.646387> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114569, 0.323256, 0.939351,
		0.094418, -0.937753, 0.334222,
		0.988918, 0.126983, 0.076916,
		14.050215, 20.442520, 23.669462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.525561, 19.978886, 24.202785>,  <13.357972, 20.353632, 23.615622>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.525561, 19.978886, 24.202785> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.829178, 20.235413, 24.157936>,  <14.011348, 20.389328, 24.131025>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.829178, 20.235413, 24.157936>,  <13.525561, 19.978886, 24.202785>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.829178, 20.235413, 24.157936> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167925, 0.359251, 0.918009,
		0.629014, -0.677977, 0.380379,
		0.759041, 0.641315, -0.112125,
		14.056890, 20.427807, 24.124298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.861675, 19.823830, 24.794062>,  <13.525561, 19.978886, 24.202785>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.861675, 19.823830, 24.794062> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.944836, 20.186979, 24.648438>,  <13.994732, 20.404869, 24.561064>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.944836, 20.186979, 24.648438>,  <13.861675, 19.823830, 24.794062>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.944836, 20.186979, 24.648438> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061050, 0.383510, 0.921517,
		0.976243, -0.169358, 0.135158,
		0.207900, 0.907876, -0.364060,
		14.007206, 20.459341, 24.539219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.518007, 20.019499, 25.245945>,  <13.861675, 19.823830, 24.794062>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.518007, 20.019499, 25.245945> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.343690, 20.348345, 25.099409>,  <14.239100, 20.545652, 25.011488>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.343690, 20.348345, 25.099409>,  <14.518007, 20.019499, 25.245945>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.343690, 20.348345, 25.099409> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098906, 0.448304, 0.888393,
		0.894595, 0.350923, -0.276681,
		-0.435795, 0.822117, -0.366342,
		14.212952, 20.594980, 24.989506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.937141, 20.586054, 25.388718>,  <14.518007, 20.019499, 25.245945>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.937141, 20.586054, 25.388718> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.586520, 20.766724, 25.322208>,  <14.376147, 20.875126, 25.282303>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.586520, 20.766724, 25.322208>,  <14.937141, 20.586054, 25.388718>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.586520, 20.766724, 25.322208> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124665, 0.546733, 0.827975,
		0.464880, 0.705036, -0.535548,
		-0.876553, 0.451673, -0.166272,
		14.323554, 20.902225, 25.272327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.987097, 21.256468, 25.666079>,  <14.937141, 20.586054, 25.388718>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.987097, 21.256468, 25.666079> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.588801, 21.231039, 25.639349>,  <14.349824, 21.215782, 25.623312>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.588801, 21.231039, 25.639349>,  <14.987097, 21.256468, 25.666079>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.588801, 21.231039, 25.639349> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087331, 0.416802, 0.904792,
		-0.029667, 0.906771, -0.420577,
		-0.995737, -0.063572, -0.066824,
		14.290080, 21.211967, 25.619303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.673767, 21.911423, 25.788414>,  <14.987097, 21.256468, 25.666079>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.673767, 21.911423, 25.788414> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.399142, 21.637630, 25.886492>,  <14.234367, 21.473356, 25.945339>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.399142, 21.637630, 25.886492>,  <14.673767, 21.911423, 25.788414>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.399142, 21.637630, 25.886492> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060043, 0.389462, 0.919083,
		-0.724588, 0.616285, -0.308488,
		-0.686562, -0.684479, 0.245196,
		14.193173, 21.432287, 25.960051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.292315, 22.246725, 26.226715>,  <14.673767, 21.911423, 25.788414>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.292315, 22.246725, 26.226715> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.135260, 21.888548, 26.310640>,  <14.041027, 21.673641, 26.360994>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.135260, 21.888548, 26.310640>,  <14.292315, 22.246725, 26.226715>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.135260, 21.888548, 26.310640> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290714, 0.337274, 0.895395,
		-0.872537, 0.290571, -0.392744,
		-0.392638, -0.895441, 0.209811,
		14.017468, 21.619915, 26.373583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.643431, 22.380722, 26.473585>,  <14.292315, 22.246725, 26.226715>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.643431, 22.380722, 26.473585> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.797395, 22.040407, 26.616695>,  <13.889773, 21.836218, 26.702562>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.797395, 22.040407, 26.616695>,  <13.643431, 22.380722, 26.473585>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.797395, 22.040407, 26.616695> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180912, 0.310574, 0.933174,
		-0.905049, -0.423916, -0.034375,
		0.384911, -0.850787, 0.357776,
		13.912868, 21.785172, 26.724028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.329788, 22.110497, 27.181395>,  <13.643431, 22.380722, 26.473585>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.329788, 22.110497, 27.181395> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.708519, 21.987789, 27.142588>,  <13.935758, 21.914165, 27.119303>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.708519, 21.987789, 27.142588>,  <13.329788, 22.110497, 27.181395>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.708519, 21.987789, 27.142588> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186732, 0.278384, 0.942143,
		-0.262011, -0.910163, 0.320864,
		0.946827, -0.306768, -0.097017,
		13.992567, 21.895760, 27.113483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.738825, 21.728642, 27.381685>,  <13.329788, 22.110497, 27.181395>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.738825, 21.728642, 27.381685> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.939779, 22.048983, 27.512066>,  <13.060352, 22.241186, 27.590294>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.939779, 22.048983, 27.512066>,  <12.738825, 21.728642, 27.381685>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.939779, 22.048983, 27.512066> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265865, 0.501796, -0.823114,
		-0.822754, 0.326861, 0.465013,
		0.502386, 0.800851, 0.325953,
		13.090495, 22.289238, 27.609852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.446694, 21.076429, 27.661673>,  <12.738825, 21.728642, 27.381685>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.446694, 21.076429, 27.661673> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.056865, 20.992531, 27.693205>,  <11.822968, 20.942192, 27.712124>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.056865, 20.992531, 27.693205>,  <12.446694, 21.076429, 27.661673>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.056865, 20.992531, 27.693205> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033337, -0.483630, -0.874637,
		0.221576, -0.849770, 0.478325,
		-0.974573, -0.209745, 0.078832,
		11.764493, 20.929607, 27.716854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.265162, 20.338118, 27.645399>,  <12.446694, 21.076429, 27.661673>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.265162, 20.338118, 27.645399> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.973118, 20.561409, 27.487759>,  <11.797891, 20.695385, 27.393175>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.973118, 20.561409, 27.487759>,  <12.265162, 20.338118, 27.645399>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.973118, 20.561409, 27.487759> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033032, -0.547232, -0.836329,
		-0.682529, -0.623631, 0.381101,
		-0.730112, 0.558230, -0.394102,
		11.754084, 20.728878, 27.369528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.848688, 19.906261, 27.361204>,  <12.265162, 20.338118, 27.645399>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.848688, 19.906261, 27.361204> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.720476, 20.243643, 27.188765>,  <11.643549, 20.446072, 27.085300>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.720476, 20.243643, 27.188765>,  <11.848688, 19.906261, 27.361204>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.720476, 20.243643, 27.188765> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001315, -0.455505, -0.890232,
		-0.947238, -0.284778, 0.147112,
		-0.320529, 0.843455, -0.431097,
		11.624317, 20.496679, 27.059435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.302870, 19.719967, 26.986633>,  <11.848688, 19.906261, 27.361204>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.302870, 19.719967, 26.986633> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.414209, 20.063768, 26.815157>,  <11.481013, 20.270048, 26.712271>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.414209, 20.063768, 26.815157>,  <11.302870, 19.719967, 26.986633>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.414209, 20.063768, 26.815157> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148659, -0.402401, -0.903312,
		-0.948906, 0.315166, 0.015764,
		0.278350, 0.859502, -0.428693,
		11.497714, 20.321619, 26.686548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.824721, 19.884230, 26.489569>,  <11.302870, 19.719967, 26.986633>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.824721, 19.884230, 26.489569> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.115728, 20.126703, 26.361032>,  <11.290333, 20.272186, 26.283911>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.115728, 20.126703, 26.361032>,  <10.824721, 19.884230, 26.489569>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.115728, 20.126703, 26.361032> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040301, -0.429801, -0.902024,
		-0.684904, 0.669189, -0.288258,
		0.727518, 0.606183, -0.321341,
		11.333983, 20.308558, 26.264629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.554263, 20.070751, 25.897224>,  <10.824721, 19.884230, 26.489569>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.554263, 20.070751, 25.897224> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.951162, 20.118902, 25.884874>,  <11.189301, 20.147793, 25.877464>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.951162, 20.118902, 25.884874>,  <10.554263, 20.070751, 25.897224>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.951162, 20.118902, 25.884874> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004076, -0.279826, -0.960042,
		-0.124205, 0.952474, -0.278148,
		0.992248, 0.120376, -0.030873,
		11.248837, 20.155014, 25.875612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.722605, 20.620495, 25.375269>,  <10.554263, 20.070751, 25.897224>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.722605, 20.620495, 25.375269> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.006389, 20.340939, 25.411530>,  <11.176659, 20.173204, 25.433287>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.006389, 20.340939, 25.411530>,  <10.722605, 20.620495, 25.375269>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.006389, 20.340939, 25.411530> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055178, -0.073151, -0.995793,
		0.702583, 0.711477, -0.013335,
		0.709460, -0.698891, 0.090653,
		11.219227, 20.131271, 25.438725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.034975, 20.692598, 24.797224>,  <10.722605, 20.620495, 25.375269>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.034975, 20.692598, 24.797224> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.223066, 20.359074, 24.912907>,  <11.335921, 20.158958, 24.982317>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.223066, 20.359074, 24.912907>,  <11.034975, 20.692598, 24.797224>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.223066, 20.359074, 24.912907> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198413, -0.219429, -0.955240,
		0.859952, 0.506563, 0.062258,
		0.470228, -0.833813, 0.289208,
		11.364135, 20.108929, 24.999668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.617297, 20.734970, 24.408407>,  <11.034975, 20.692598, 24.797224>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.617297, 20.734970, 24.408407> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.599166, 20.352213, 24.523159>,  <11.588287, 20.122559, 24.592010>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.599166, 20.352213, 24.523159>,  <11.617297, 20.734970, 24.408407>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.599166, 20.352213, 24.523159> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424733, -0.278387, -0.861453,
		0.904183, 0.082799, 0.419044,
		-0.045329, -0.956893, 0.286880,
		11.585567, 20.065145, 24.609222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.262972, 20.481987, 24.290792>,  <11.617297, 20.734970, 24.408407>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.262972, 20.481987, 24.290792> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.994800, 20.185526, 24.304745>,  <11.833897, 20.007648, 24.313116>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.994800, 20.185526, 24.304745>,  <12.262972, 20.481987, 24.290792>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.994800, 20.185526, 24.304745> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408948, -0.408334, -0.816104,
		0.619100, -0.532876, 0.576852,
		-0.670430, -0.741152, 0.034881,
		11.793671, 19.963181, 24.315208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.622541, 19.845728, 23.991064>,  <12.262972, 20.481987, 24.290792>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.622541, 19.845728, 23.991064> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.241558, 19.726425, 23.966200>,  <12.012968, 19.654844, 23.951283>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.241558, 19.726425, 23.966200>,  <12.622541, 19.845728, 23.991064>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.241558, 19.726425, 23.966200> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131827, -0.219520, -0.966660,
		0.274669, -0.928899, 0.248403,
		-0.952459, -0.298258, -0.062158,
		11.955820, 19.636948, 23.947552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.674214, 19.327040, 23.569527>,  <12.622541, 19.845728, 23.991064>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.674214, 19.327040, 23.569527> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.283277, 19.409575, 23.550667>,  <12.048714, 19.459095, 23.539351>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.283277, 19.409575, 23.550667>,  <12.674214, 19.327040, 23.569527>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.283277, 19.409575, 23.550667> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021451, -0.125064, -0.991917,
		-0.210569, -0.970455, 0.117804,
		-0.977343, 0.206339, -0.047152,
		11.990073, 19.471476, 23.536522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.313167, 18.745445, 23.224257>,  <12.674214, 19.327040, 23.569527>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.313167, 18.745445, 23.224257> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.103336, 19.081032, 23.166351>,  <11.977438, 19.282383, 23.131609>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.103336, 19.081032, 23.166351>,  <12.313167, 18.745445, 23.224257>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.103336, 19.081032, 23.166351> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080160, -0.120608, -0.989459,
		-0.847582, -0.530650, -0.003984,
		-0.524575, 0.838966, -0.144762,
		11.945964, 19.332722, 23.122923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.965208, 18.572062, 22.623497>,  <12.313167, 18.745445, 23.224257>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.965208, 18.572062, 22.623497> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.925854, 18.967810, 22.666323>,  <11.902242, 19.205259, 22.692019>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.925854, 18.967810, 22.666323>,  <11.965208, 18.572062, 22.623497>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.925854, 18.967810, 22.666323> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085985, 0.098730, -0.991392,
		-0.991427, -0.106744, 0.075357,
		-0.098385, 0.989372, 0.107062,
		11.896338, 19.264622, 22.698441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.447535, 18.741903, 22.179020>,  <11.965208, 18.572062, 22.623497>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.447535, 18.741903, 22.179020> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.639656, 19.086224, 22.246347>,  <11.754929, 19.292816, 22.286745>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.639656, 19.086224, 22.246347>,  <11.447535, 18.741903, 22.179020>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.639656, 19.086224, 22.246347> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150632, 0.270006, -0.951003,
		-0.864071, 0.431415, 0.259349,
		0.480303, 0.860801, 0.168320,
		11.783747, 19.344463, 22.296843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.071264, 19.212145, 21.896931>,  <11.447535, 18.741903, 22.179020>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.071264, 19.212145, 21.896931> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.406429, 19.428978, 21.922373>,  <11.607529, 19.559078, 21.937637>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.406429, 19.428978, 21.922373>,  <11.071264, 19.212145, 21.896931>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.406429, 19.428978, 21.922373> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163061, 0.359839, -0.918655,
		-0.520876, 0.759382, 0.389907,
		0.837914, 0.542084, 0.063605,
		11.657804, 19.591602, 21.941454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.915893, 19.923386, 21.769958>,  <11.071264, 19.212145, 21.896931>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.915893, 19.923386, 21.769958> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.277227, 19.797726, 21.653139>,  <11.494028, 19.722330, 21.583048>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.277227, 19.797726, 21.653139>,  <10.915893, 19.923386, 21.769958>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.277227, 19.797726, 21.653139> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168918, 0.365304, -0.915434,
		0.394271, 0.876277, 0.276926,
		0.903337, -0.314151, -0.292048,
		11.548228, 19.703480, 21.565525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.155231, 20.336994, 21.187000>,  <10.915893, 19.923386, 21.769958>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.155231, 20.336994, 21.187000> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.400631, 20.021542, 21.170609>,  <11.547871, 19.832270, 21.160774>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.400631, 20.021542, 21.170609>,  <11.155231, 20.336994, 21.187000>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.400631, 20.021542, 21.170609> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017900, 0.037991, -0.999118,
		0.789492, 0.613692, 0.009190,
		0.613500, -0.788631, -0.040978,
		11.584681, 19.784952, 21.158316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.786028, 20.453405, 20.666197>,  <11.155231, 20.336994, 21.187000>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.786028, 20.453405, 20.666197> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.784142, 20.056814, 20.718279>,  <11.783011, 19.818859, 20.749529>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.784142, 20.056814, 20.718279>,  <11.786028, 20.453405, 20.666197>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.784142, 20.056814, 20.718279> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173151, -0.129050, -0.976404,
		0.984884, 0.017944, 0.172283,
		-0.004712, -0.991476, 0.130206,
		11.782729, 19.759371, 20.757341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.379714, 20.214890, 20.253309>,  <11.786028, 20.453405, 20.666197>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.379714, 20.214890, 20.253309> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.127712, 19.905386, 20.279814>,  <11.976511, 19.719685, 20.295717>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.127712, 19.905386, 20.279814>,  <12.379714, 20.214890, 20.253309>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.127712, 19.905386, 20.279814> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073338, -0.025664, -0.996977,
		0.773121, -0.632960, -0.040577,
		-0.630005, -0.773759, 0.066261,
		11.938711, 19.673258, 20.299692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<20.291954, 19.234394, 1.617300> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.979198, 19.152533, 1.381753>,  <19.791544, 19.103416, 1.240425>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.979198, 19.152533, 1.381753>,  <20.291954, 19.234394, 1.617300>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.979198, 19.152533, 1.381753> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581381, 0.101605, -0.807263,
		0.225040, -0.973547, 0.039538,
		-0.781891, -0.204653, -0.588867,
		19.744631, 19.091137, 1.205093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.709309, 19.096754, 2.140101>,  <20.291954, 19.234394, 1.617300>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.709309, 19.096754, 2.140101> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.623844, 19.014071, 2.522017>,  <20.572565, 18.964460, 2.751166>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.623844, 19.014071, 2.522017>,  <20.709309, 19.096754, 2.140101>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.623844, 19.014071, 2.522017> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472992, -0.877050, -0.084035,
		0.854768, 0.433652, 0.285163,
		-0.213660, -0.206710, 0.954788,
		20.559746, 18.952057, 2.808453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.300997, 19.026148, 2.534411>,  <20.709309, 19.096754, 2.140101>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.300997, 19.026148, 2.534411> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.038960, 18.747437, 2.651273>,  <20.881737, 18.580210, 2.721391>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.038960, 18.747437, 2.651273>,  <21.300997, 19.026148, 2.534411>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.038960, 18.747437, 2.651273> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657420, -0.716241, -0.234090,
		0.372364, 0.038719, 0.927279,
		-0.655091, -0.696778, 0.292157,
		20.842432, 18.538403, 2.738920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.540806, 18.391745, 2.929377>,  <21.300997, 19.026148, 2.534411>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.540806, 18.391745, 2.929377> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.218395, 18.177603, 2.828404>,  <21.024950, 18.049118, 2.767821>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.218395, 18.177603, 2.828404>,  <21.540806, 18.391745, 2.929377>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.218395, 18.177603, 2.828404> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591224, -0.748329, -0.300760,
		-0.027888, -0.391663, 0.919686,
		-0.806025, -0.535353, -0.252431,
		20.976587, 18.016996, 2.752675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.144848, 18.863945, 2.829949>,  <21.540806, 18.391745, 2.929377>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.144848, 18.863945, 2.829949> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.395132, 18.858046, 2.517983>,  <22.545301, 18.854506, 2.330803>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.395132, 18.858046, 2.517983>,  <22.144848, 18.863945, 2.829949>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.395132, 18.858046, 2.517983> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.758639, -0.244185, -0.604021,
		-0.181534, 0.969617, -0.163979,
		0.625710, -0.014751, -0.779917,
		22.582846, 18.853621, 2.284008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.618187, 19.297436, 3.306023>,  <22.144848, 18.863945, 2.829949>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.618187, 19.297436, 3.306023> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.936478, 19.527353, 3.229676>,  <23.127453, 19.665304, 3.183869>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.936478, 19.527353, 3.229676>,  <22.618187, 19.297436, 3.306023>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.936478, 19.527353, 3.229676> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061560, 0.390267, 0.918641,
		0.602517, -0.719239, 0.345931,
		0.795728, 0.574793, -0.190866,
		23.175196, 19.699791, 3.172417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.057667, 18.808601, 3.741929>,  <22.618187, 19.297436, 3.306023>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.057667, 18.808601, 3.741929> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.432878, 18.794380, 3.879821>,  <23.658005, 18.785847, 3.962557>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.432878, 18.794380, 3.879821>,  <23.057667, 18.808601, 3.741929>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.432878, 18.794380, 3.879821> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337837, -0.315585, 0.886720,
		0.077265, -0.948231, -0.308039,
		0.938028, -0.035555, 0.344732,
		23.714287, 18.783714, 3.983241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.328012, 18.000408, 3.889941>,  <23.057667, 18.808601, 3.741929>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.328012, 18.000408, 3.889941> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.484423, 18.289534, 4.117849>,  <23.578270, 18.463009, 4.254594>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.484423, 18.289534, 4.117849>,  <23.328012, 18.000408, 3.889941>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.484423, 18.289534, 4.117849> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397693, -0.425592, 0.812842,
		0.830023, -0.544437, 0.121040,
		0.391027, 0.722814, 0.569770,
		23.601730, 18.506378, 4.288780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.775162, 17.682348, 4.363630>,  <23.328012, 18.000408, 3.889941>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.775162, 17.682348, 4.363630> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.583696, 18.017225, 4.469455>,  <23.468817, 18.218151, 4.532950>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.583696, 18.017225, 4.469455>,  <23.775162, 17.682348, 4.363630>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.583696, 18.017225, 4.469455> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433037, -0.487234, 0.758341,
		0.763781, 0.248424, 0.595755,
		-0.478662, 0.837191, 0.264563,
		23.440098, 18.268383, 4.548824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.890198, 17.817383, 5.001137>,  <23.775162, 17.682348, 4.363630>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.890198, 17.817383, 5.001137> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.543228, 18.009708, 4.949915>,  <23.335047, 18.125103, 4.919182>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.543228, 18.009708, 4.949915>,  <23.890198, 17.817383, 5.001137>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.543228, 18.009708, 4.949915> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398149, -0.516364, 0.758186,
		0.298422, 0.708652, 0.639340,
		-0.867422, 0.480812, -0.128055,
		23.283001, 18.153952, 4.911499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.629019, 18.252459, 5.651597>,  <23.890198, 17.817383, 5.001137>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.629019, 18.252459, 5.651597> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.321859, 18.146492, 5.418309>,  <23.137564, 18.082912, 5.278336>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.321859, 18.146492, 5.418309>,  <23.629019, 18.252459, 5.651597>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.321859, 18.146492, 5.418309> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414831, -0.488103, 0.767900,
		-0.488103, 0.831609, 0.264918,
		-0.767900, -0.264918, -0.583221,
		23.091490, 18.067017, 5.243342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.014267, 18.355228, 6.081831>,  <23.629019, 18.252459, 5.651597>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.014267, 18.355228, 6.081831> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.868956, 18.126108, 5.787911>,  <22.781769, 17.988636, 5.611559>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.868956, 18.126108, 5.787911>,  <23.014267, 18.355228, 6.081831>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.868956, 18.126108, 5.787911> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501052, -0.544805, 0.672410,
		-0.785478, 0.612444, -0.089087,
		-0.363279, -0.572800, -0.734798,
		22.759972, 17.954268, 5.567472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.290424, 18.313564, 6.194860>,  <23.014267, 18.355228, 6.081831>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.290424, 18.313564, 6.194860> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.340075, 18.005951, 5.944043>,  <22.369865, 17.821383, 5.793552>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.340075, 18.005951, 5.944043>,  <22.290424, 18.313564, 6.194860>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.340075, 18.005951, 5.944043> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575232, -0.570678, 0.586034,
		-0.808518, 0.287954, -0.513206,
		0.124125, -0.769031, -0.627044,
		22.377312, 17.775242, 5.755929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.615973, 18.029278, 5.954127>,  <22.290424, 18.313564, 6.194860>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.615973, 18.029278, 5.954127> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.883402, 17.732780, 5.930243>,  <22.043859, 17.554882, 5.915914>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.883402, 17.732780, 5.930243>,  <21.615973, 18.029278, 5.954127>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.883402, 17.732780, 5.930243> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596761, -0.582692, 0.551676,
		-0.443718, -0.333204, -0.831919,
		0.668574, -0.741245, -0.059708,
		22.083975, 17.510406, 5.912331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.190788, 17.372507, 5.911923>,  <21.615973, 18.029278, 5.954127>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.190788, 17.372507, 5.911923> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.562416, 17.245983, 5.988635>,  <21.785393, 17.170069, 6.034662>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.562416, 17.245983, 5.988635>,  <21.190788, 17.372507, 5.911923>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.562416, 17.245983, 5.988635> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369192, -0.760673, 0.533923,
		-0.023004, -0.566854, -0.823497,
		0.929068, -0.316311, 0.191780,
		21.841137, 17.151091, 6.046168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.150368, 16.661730, 5.827090>,  <21.190788, 17.372507, 5.911923>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.150368, 16.661730, 5.827090> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.464239, 16.738205, 6.062963>,  <21.652563, 16.784090, 6.204486>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.464239, 16.738205, 6.062963>,  <21.150368, 16.661730, 5.827090>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.464239, 16.738205, 6.062963> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265550, -0.755880, 0.598438,
		0.560143, -0.626173, -0.542354,
		0.784680, 0.191189, 0.589681,
		21.699644, 16.795561, 6.239867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.143198, 16.075253, 6.183721>,  <21.150368, 16.661730, 5.827090>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.143198, 16.075253, 6.183721> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.387560, 16.312363, 6.393641>,  <21.534176, 16.454628, 6.519594>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.387560, 16.312363, 6.393641>,  <21.143198, 16.075253, 6.183721>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.387560, 16.312363, 6.393641> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232308, -0.499482, 0.834596,
		0.756856, -0.631772, -0.167429,
		0.610902, 0.592775, 0.524802,
		21.570831, 16.490194, 6.551082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.638012, 15.637947, 6.414067>,  <21.143198, 16.075253, 6.183721>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.638012, 15.637947, 6.414067> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.579037, 15.957143, 6.647811>,  <21.543652, 16.148661, 6.788057>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.579037, 15.957143, 6.647811>,  <21.638012, 15.637947, 6.414067>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.579037, 15.957143, 6.647811> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148672, -0.601983, 0.784546,
		0.977834, 0.028793, 0.207393,
		-0.147436, 0.797990, 0.584359,
		21.534805, 16.196539, 6.823119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.127811, 15.665564, 6.946835>,  <21.638012, 15.637947, 6.414067>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.127811, 15.665564, 6.946835> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.812996, 15.869244, 7.086141>,  <21.624107, 15.991452, 7.169724>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.812996, 15.869244, 7.086141>,  <22.127811, 15.665564, 6.946835>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.812996, 15.869244, 7.086141> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004234, -0.568979, 0.822341,
		0.616892, 0.645738, 0.449964,
		-0.787037, 0.509201, 0.348264,
		21.576885, 16.022003, 7.190620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.273127, 15.592647, 7.544503>,  <22.127811, 15.665564, 6.946835>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.273127, 15.592647, 7.544503> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.898643, 15.729166, 7.578046>,  <21.673954, 15.811077, 7.598172>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.898643, 15.729166, 7.578046>,  <22.273127, 15.592647, 7.544503>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.898643, 15.729166, 7.578046> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149475, -0.602627, 0.783899,
		0.318078, 0.721357, 0.615199,
		-0.936207, 0.341298, 0.083858,
		21.617781, 15.831555, 7.603204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.286705, 15.654284, 8.154009>,  <22.273127, 15.592647, 7.544503>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.286705, 15.654284, 8.154009> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.899382, 15.630667, 8.056936>,  <21.666988, 15.616496, 7.998693>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.899382, 15.630667, 8.056936>,  <22.286705, 15.654284, 8.154009>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.899382, 15.630667, 8.056936> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112567, -0.764200, 0.635081,
		-0.222954, 0.642272, 0.733334,
		-0.968308, -0.059045, -0.242680,
		21.608889, 15.612953, 7.984132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.889528, 15.738399, 8.719032>,  <22.286705, 15.654284, 8.154009>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.889528, 15.738399, 8.719032> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.656996, 15.531448, 8.467834>,  <21.517477, 15.407278, 8.317115>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.656996, 15.531448, 8.467834>,  <21.889528, 15.738399, 8.719032>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.656996, 15.531448, 8.467834> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095086, -0.723324, 0.683931,
		-0.808093, 0.457302, 0.371295,
		-0.581330, -0.517375, -0.627996,
		21.482597, 15.376236, 8.279435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.337406, 15.609902, 9.067770>,  <21.889528, 15.738399, 8.719032>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.337406, 15.609902, 9.067770> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.291697, 15.348724, 8.768275>,  <21.264271, 15.192018, 8.588578>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.291697, 15.348724, 8.768275>,  <21.337406, 15.609902, 9.067770>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.291697, 15.348724, 8.768275> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381884, -0.666894, 0.639857,
		-0.917118, 0.359049, -0.173141,
		-0.114273, -0.652944, -0.748736,
		21.257414, 15.152842, 8.543654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.770100, 15.384414, 9.237467>,  <21.337406, 15.609902, 9.067770>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.770100, 15.384414, 9.237467> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.908344, 15.118279, 8.972777>,  <20.991291, 14.958597, 8.813964>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.908344, 15.118279, 8.972777>,  <20.770100, 15.384414, 9.237467>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.908344, 15.118279, 8.972777> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381032, -0.743930, 0.548983,
		-0.857535, 0.062401, -0.510627,
		0.345613, -0.665337, -0.661723,
		21.012028, 14.918677, 8.774261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.242678, 14.811748, 9.118253>,  <20.770100, 15.384414, 9.237467>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.242678, 14.811748, 9.118253> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.587870, 14.640638, 9.010715>,  <20.794985, 14.537972, 8.946193>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.587870, 14.640638, 9.010715>,  <20.242678, 14.811748, 9.118253>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.587870, 14.640638, 9.010715> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241810, -0.816908, 0.523631,
		-0.443616, -0.386874, -0.808414,
		0.862979, -0.427774, -0.268843,
		20.846764, 14.512306, 8.930062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.015930, 14.100854, 8.965416>,  <20.242678, 14.811748, 9.118253>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.015930, 14.100854, 8.965416> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.407419, 14.098306, 9.047456>,  <20.642313, 14.096777, 9.096680>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.407419, 14.098306, 9.047456>,  <20.015930, 14.100854, 8.965416>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.407419, 14.098306, 9.047456> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116396, -0.840394, 0.529330,
		0.168991, -0.541938, -0.823253,
		0.978721, -0.006371, 0.205099,
		20.701035, 14.096395, 9.108985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.170141, 13.426264, 8.796837>,  <20.015930, 14.100854, 8.965416>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.170141, 13.426264, 8.796837> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.432907, 13.584510, 9.053572>,  <20.590567, 13.679458, 9.207612>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.432907, 13.584510, 9.053572>,  <20.170141, 13.426264, 8.796837>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.432907, 13.584510, 9.053572> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168969, -0.752380, 0.636690,
		0.734789, -0.526700, -0.427401,
		0.656913, 0.395615, 0.641836,
		20.629980, 13.703195, 9.246122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.420105, 12.847759, 9.089784>,  <20.170141, 13.426264, 8.796837>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.420105, 12.847759, 9.089784> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.527588, 13.153373, 9.324408>,  <20.592077, 13.336740, 9.465181>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.527588, 13.153373, 9.324408>,  <20.420105, 12.847759, 9.089784>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.527588, 13.153373, 9.324408> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224272, -0.542592, 0.809503,
		0.936750, -0.349067, 0.025554,
		0.268705, 0.764033, 0.586559,
		20.608200, 13.382583, 9.500376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.072432, 12.597059, 9.403821>,  <20.420105, 12.847759, 9.089784>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.072432, 12.597059, 9.403821> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.919153, 12.887566, 9.632100>,  <20.827187, 13.061870, 9.769068>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.919153, 12.887566, 9.632100>,  <21.072432, 12.597059, 9.403821>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.919153, 12.887566, 9.632100> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089873, -0.644247, 0.759519,
		0.919284, 0.239755, 0.312145,
		-0.383197, 0.726267, 0.570698,
		20.804193, 13.105446, 9.803309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.476639, 12.485238, 10.052446>,  <21.072432, 12.597059, 9.403821>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.476639, 12.485238, 10.052446> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.135624, 12.684139, 10.116845>,  <20.931015, 12.803480, 10.155484>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.135624, 12.684139, 10.116845>,  <21.476639, 12.485238, 10.052446>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.135624, 12.684139, 10.116845> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189082, -0.580587, 0.791939,
		0.487268, 0.644715, 0.588993,
		-0.852536, 0.497254, 0.160998,
		20.879864, 12.833316, 10.165144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.076073, 12.633412, 10.462355>,  <21.476639, 12.485238, 10.052446>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.076073, 12.633412, 10.462355> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.159853, 12.302451, 10.253920>,  <22.210121, 12.103874, 10.128859>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.159853, 12.302451, 10.253920>,  <22.076073, 12.633412, 10.462355>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.159853, 12.302451, 10.253920> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.838221, 0.122478, -0.531399,
		0.503503, 0.548090, -0.667893,
		0.209453, -0.827403, -0.521089,
		22.222689, 12.054230, 10.097593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.211008, 13.019908, 11.151071>,  <22.076073, 12.633412, 10.462355>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.211008, 13.019908, 11.151071> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.955376, 13.202249, 10.903274>,  <21.801996, 13.311653, 10.754595>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.955376, 13.202249, 10.903274>,  <22.211008, 13.019908, 11.151071>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.955376, 13.202249, 10.903274> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241988, 0.645367, 0.724530,
		0.730079, 0.612944, -0.302133,
		-0.639083, 0.455852, -0.619494,
		21.763651, 13.339005, 10.717425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.417297, 13.745873, 11.230732>,  <22.211008, 13.019908, 11.151071>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.417297, 13.745873, 11.230732> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.032928, 13.721925, 11.122623>,  <21.802307, 13.707556, 11.057758>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.032928, 13.721925, 11.122623>,  <22.417297, 13.745873, 11.230732>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.032928, 13.721925, 11.122623> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239871, 0.667419, 0.704992,
		0.138175, 0.742272, -0.655698,
		-0.960921, -0.059871, -0.270270,
		21.744652, 13.703963, 11.041542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.189173, 14.455215, 11.224218>,  <22.417297, 13.745873, 11.230732>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.189173, 14.455215, 11.224218> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.879610, 14.204719, 11.261931>,  <21.693872, 14.054421, 11.284559>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.879610, 14.204719, 11.261931>,  <22.189173, 14.455215, 11.224218>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.879610, 14.204719, 11.261931> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440509, 0.639276, 0.630300,
		-0.454991, 0.446263, -0.770605,
		-0.773909, -0.626240, 0.094282,
		21.647438, 14.016847, 11.290216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.772623, 15.093593, 11.321616>,  <22.189173, 14.455215, 11.224218>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.772623, 15.093593, 11.321616> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.763386, 14.725923, 11.478884>,  <21.757843, 14.505321, 11.573244>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.763386, 14.725923, 11.478884>,  <21.772623, 15.093593, 11.321616>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.763386, 14.725923, 11.478884> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.804846, -0.250381, -0.538083,
		0.593035, 0.304014, 0.745577,
		-0.023093, -0.919176, 0.393169,
		21.756458, 14.450170, 11.596834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.475922, 15.202596, 11.512081>,  <21.772623, 15.093593, 11.321616>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.475922, 15.202596, 11.512081> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.751186, 15.430667, 11.691561>,  <22.916346, 15.567510, 11.799249>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.751186, 15.430667, 11.691561>,  <22.475922, 15.202596, 11.512081>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.751186, 15.430667, 11.691561> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356889, 0.272429, -0.893539,
		-0.631715, 0.775035, -0.016015,
		0.688162, 0.570178, 0.448699,
		22.957634, 15.601720, 11.826171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.477173, 15.859996, 11.178736>,  <22.475922, 15.202596, 11.512081>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.477173, 15.859996, 11.178736> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.834787, 15.857429, 11.357915>,  <23.049356, 15.855888, 11.465423>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.834787, 15.857429, 11.357915>,  <22.477173, 15.859996, 11.178736>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.834787, 15.857429, 11.357915> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392447, 0.493460, -0.776197,
		-0.216063, 0.869745, 0.443690,
		0.894037, -0.006417, 0.447948,
		23.102999, 15.855503, 11.492299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.710981, 16.609446, 11.069433>,  <22.477173, 15.859996, 11.178736>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.710981, 16.609446, 11.069433> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.041889, 16.414707, 11.181579>,  <23.240435, 16.297865, 11.248866>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.041889, 16.414707, 11.181579>,  <22.710981, 16.609446, 11.069433>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.041889, 16.414707, 11.181579> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497246, 0.402253, -0.768726,
		0.261473, 0.775355, 0.574854,
		0.827272, -0.486845, 0.280363,
		23.290071, 16.268654, 11.265688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.239870, 17.086187, 11.318561>,  <22.710981, 16.609446, 11.069433>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.239870, 17.086187, 11.318561> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.427650, 16.749502, 11.211877>,  <23.540319, 16.547491, 11.147866>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.427650, 16.749502, 11.211877>,  <23.239870, 17.086187, 11.318561>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.427650, 16.749502, 11.211877> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514821, 0.506339, -0.691795,
		0.717338, 0.187457, 0.671033,
		0.469452, -0.841713, -0.266710,
		23.568485, 16.496988, 11.131864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.031891, 17.201635, 11.375139>,  <23.239870, 17.086187, 11.318561>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.031891, 17.201635, 11.375139> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.007772, 16.875181, 11.145258>,  <23.993301, 16.679308, 11.007329>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.007772, 16.875181, 11.145258>,  <24.031891, 17.201635, 11.375139>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.007772, 16.875181, 11.145258> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727616, 0.358209, -0.585031,
		0.683330, -0.453438, 0.572236,
		-0.060295, -0.816137, -0.574704,
		23.989683, 16.630341, 10.972847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.758608, 16.975204, 11.243386>,  <24.031891, 17.201635, 11.375139>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.758608, 16.975204, 11.243386> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.531084, 16.844355, 10.941540>,  <24.394569, 16.765844, 10.760432>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.531084, 16.844355, 10.941540>,  <24.758608, 16.975204, 11.243386>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.531084, 16.844355, 10.941540> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620585, 0.431411, -0.654796,
		0.539750, -0.840758, -0.042382,
		-0.568809, -0.327124, -0.754616,
		24.360441, 16.746218, 10.715155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.223080, 16.733528, 10.770334>,  <24.758608, 16.975204, 11.243386>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.223080, 16.733528, 10.770334> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.891243, 16.756744, 10.548197>,  <24.692141, 16.770674, 10.414914>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.891243, 16.756744, 10.548197>,  <25.223080, 16.733528, 10.770334>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.891243, 16.756744, 10.548197> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542580, 0.318637, -0.777224,
		0.131841, -0.946098, -0.295832,
		-0.829593, 0.058043, -0.555343,
		24.642365, 16.774157, 10.381594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.436291, 16.370136, 10.078776>,  <25.223080, 16.733528, 10.770334>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.436291, 16.370136, 10.078776> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.116631, 16.606552, 10.034902>,  <24.924833, 16.748402, 10.008576>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.116631, 16.606552, 10.034902>,  <25.436291, 16.370136, 10.078776>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.116631, 16.606552, 10.034902> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484542, 0.525350, -0.699447,
		-0.355775, -0.612112, -0.706217,
		-0.799151, 0.591038, -0.109688,
		24.876884, 16.783863, 10.001995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.247158, 16.216722, 9.434261>,  <25.436291, 16.370136, 10.078776>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.247158, 16.216722, 9.434261> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.084084, 16.575485, 9.502791>,  <24.986238, 16.790743, 9.543909>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.084084, 16.575485, 9.502791>,  <25.247158, 16.216722, 9.434261>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.084084, 16.575485, 9.502791> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521013, 0.382575, -0.763008,
		-0.749891, -0.221806, -0.623270,
		-0.407687, 0.896905, 0.171325,
		24.961777, 16.844557, 9.554189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.997883, 16.455013, 8.796165>,  <25.247158, 16.216722, 9.434261>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.997883, 16.455013, 8.796165> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.036123, 16.780043, 9.026151>,  <25.059067, 16.975060, 9.164143>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.036123, 16.780043, 9.026151>,  <24.997883, 16.455013, 8.796165>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.036123, 16.780043, 9.026151> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548662, 0.438934, -0.711553,
		-0.830561, 0.383486, -0.403865,
		0.095600, 0.812573, 0.574966,
		25.064804, 17.023815, 9.198641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.879692, 17.033453, 8.292880>,  <24.997883, 16.455013, 8.796165>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.879692, 17.033453, 8.292880> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.055195, 17.211750, 8.604984>,  <25.160498, 17.318727, 8.792247>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.055195, 17.211750, 8.604984>,  <24.879692, 17.033453, 8.292880>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.055195, 17.211750, 8.604984> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532552, 0.570403, -0.625323,
		-0.723795, 0.689894, 0.012888,
		0.438758, 0.445742, 0.780260,
		25.186823, 17.345472, 8.839062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.865332, 17.784348, 8.048447>,  <24.879692, 17.033453, 8.292880>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.865332, 17.784348, 8.048447> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.135389, 17.721125, 8.336668>,  <25.297424, 17.683191, 8.509601>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.135389, 17.721125, 8.336668>,  <24.865332, 17.784348, 8.048447>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.135389, 17.721125, 8.336668> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658078, 0.570419, -0.491484,
		-0.333336, 0.806003, 0.489128,
		0.675145, -0.158055, 0.720554,
		25.337933, 17.673708, 8.552835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.161459, 18.426580, 8.126473>,  <24.865332, 17.784348, 8.048447>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.161459, 18.426580, 8.126473> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.438963, 18.190203, 8.291146>,  <25.605465, 18.048376, 8.389950>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.438963, 18.190203, 8.291146>,  <25.161459, 18.426580, 8.126473>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.438963, 18.190203, 8.291146> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703357, 0.433010, -0.563730,
		0.154870, 0.680653, 0.716050,
		0.693761, -0.590943, 0.411682,
		25.647091, 18.012920, 8.414651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.680843, 18.906010, 8.213241>,  <25.161459, 18.426580, 8.126473>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.680843, 18.906010, 8.213241> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.848732, 18.544151, 8.242773>,  <25.949465, 18.327036, 8.260492>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.848732, 18.544151, 8.242773>,  <25.680843, 18.906010, 8.213241>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.848732, 18.544151, 8.242773> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687734, 0.263889, -0.676302,
		0.592330, 0.334635, 0.732915,
		0.419723, -0.904645, 0.073830,
		25.974649, 18.272758, 8.264922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.366400, 19.042179, 8.267629>,  <25.680843, 18.906010, 8.213241>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.366400, 19.042179, 8.267629> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.351959, 18.671705, 8.117496>,  <26.343294, 18.449421, 8.027415>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.351959, 18.671705, 8.117496>,  <26.366400, 19.042179, 8.267629>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.351959, 18.671705, 8.117496> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690368, 0.248439, -0.679463,
		0.722557, -0.283649, 0.630441,
		-0.036103, -0.926187, -0.375333,
		26.341127, 18.393848, 8.004895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.989071, 18.829144, 8.069834>,  <26.366400, 19.042179, 8.267629>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.989071, 18.829144, 8.069834> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.795677, 18.555593, 7.851272>,  <26.679640, 18.391464, 7.720135>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.795677, 18.555593, 7.851272>,  <26.989071, 18.829144, 8.069834>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.795677, 18.555593, 7.851272> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567704, 0.230164, -0.790403,
		0.666299, -0.692344, 0.276957,
		-0.483486, -0.683874, -0.546405,
		26.650631, 18.350431, 7.687350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.432810, 18.411846, 7.714581>,  <26.989071, 18.829144, 8.069834>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.432810, 18.411846, 7.714581> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.100418, 18.383957, 7.493814>,  <26.900984, 18.367224, 7.361354>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.100418, 18.383957, 7.493814>,  <27.432810, 18.411846, 7.714581>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.100418, 18.383957, 7.493814> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492119, 0.370498, -0.787750,
		0.259407, -0.926213, -0.273565,
		-0.830979, -0.069722, -0.551917,
		26.851124, 18.363039, 7.328239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<16.073092, 18.602041, 16.098913> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.783011, 18.327263, 16.117643>,  <15.608964, 18.162395, 16.128881>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.783011, 18.327263, 16.117643>,  <16.073092, 18.602041, 16.098913>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.783011, 18.327263, 16.117643> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291213, -0.367632, -0.883200,
		0.623924, -0.626860, 0.466654,
		-0.725199, -0.686945, 0.046824,
		15.565452, 18.121180, 16.131691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.412506, 17.895262, 16.016455>,  <16.073092, 18.602041, 16.098913>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.412506, 17.895262, 16.016455> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.027742, 17.840982, 15.921527>,  <15.796885, 17.808414, 15.864571>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.027742, 17.840982, 15.921527>,  <16.412506, 17.895262, 16.016455>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.027742, 17.840982, 15.921527> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273322, -0.460306, -0.844638,
		0.005379, -0.877327, 0.479862,
		-0.961908, -0.135701, -0.237317,
		15.739170, 17.800272, 15.850331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.297224, 17.189413, 15.734985>,  <16.412506, 17.895262, 16.016455>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.297224, 17.189413, 15.734985> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.955136, 17.344349, 15.597250>,  <15.749884, 17.437309, 15.514609>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.955136, 17.344349, 15.597250>,  <16.297224, 17.189413, 15.734985>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.955136, 17.344349, 15.597250> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081650, -0.555409, -0.827559,
		-0.511793, -0.735860, 0.443371,
		-0.855220, 0.387338, -0.344337,
		15.698570, 17.460550, 15.493949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.113764, 16.574501, 15.428637>,  <16.297224, 17.189413, 15.734985>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.113764, 16.574501, 15.428637> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.921374, 16.890915, 15.277412>,  <15.805941, 17.080763, 15.186678>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.921374, 16.890915, 15.277412>,  <16.113764, 16.574501, 15.428637>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.921374, 16.890915, 15.277412> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005685, -0.434018, -0.900886,
		-0.876718, -0.431151, 0.213248,
		-0.480972, 0.791035, -0.378060,
		15.777082, 17.128225, 15.163995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.603383, 16.303328, 15.004769>,  <16.113764, 16.574501, 15.428637>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.603383, 16.303328, 15.004769> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.598652, 16.683464, 14.880378>,  <15.595814, 16.911547, 14.805742>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.598652, 16.683464, 14.880378>,  <15.603383, 16.303328, 15.004769>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.598652, 16.683464, 14.880378> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026553, -0.310593, -0.950172,
		-0.999577, -0.019495, -0.021561,
		-0.011827, 0.950343, -0.310980,
		15.595104, 16.968567, 14.787084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.967833, 16.317148, 14.656890>,  <15.603383, 16.303328, 15.004769>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.967833, 16.317148, 14.656890> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.226084, 16.596989, 14.534433>,  <15.381035, 16.764893, 14.460959>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.226084, 16.596989, 14.534433>,  <14.967833, 16.317148, 14.656890>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.226084, 16.596989, 14.534433> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177726, -0.252227, -0.951207,
		-0.742683, 0.668535, -0.038507,
		0.645628, 0.699602, -0.306140,
		15.419772, 16.806870, 14.442592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.612055, 16.678453, 14.197133>,  <14.967833, 16.317148, 14.656890>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.612055, 16.678453, 14.197133> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.994371, 16.764114, 14.116531>,  <15.223762, 16.815510, 14.068171>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.994371, 16.764114, 14.116531>,  <14.612055, 16.678453, 14.197133>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.994371, 16.764114, 14.116531> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102761, -0.398807, -0.911259,
		-0.275509, 0.891680, -0.359169,
		0.955790, 0.214151, -0.201505,
		15.281109, 16.828360, 14.056080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.595462, 16.814074, 13.532429>,  <14.612055, 16.678453, 14.197133>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.595462, 16.814074, 13.532429> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.986238, 16.754837, 13.593948>,  <15.220704, 16.719296, 13.630860>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.986238, 16.754837, 13.593948>,  <14.595462, 16.814074, 13.532429>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.986238, 16.754837, 13.593948> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071878, -0.450173, -0.890043,
		0.201043, 0.880575, -0.429149,
		0.976942, -0.148090, 0.153798,
		15.279321, 16.710409, 13.640088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.869296, 16.742987, 12.874929>,  <14.595462, 16.814074, 13.532429>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.869296, 16.742987, 12.874929> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.170567, 16.590296, 13.089222>,  <15.351329, 16.498680, 13.217797>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.170567, 16.590296, 13.089222>,  <14.869296, 16.742987, 12.874929>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.170567, 16.590296, 13.089222> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247932, -0.589618, -0.768687,
		0.609307, 0.711782, -0.349444,
		0.753176, -0.381728, 0.535732,
		15.396520, 16.475777, 13.249942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.485227, 16.786751, 12.441771>,  <14.869296, 16.742987, 12.874929>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.485227, 16.786751, 12.441771> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.554421, 16.495584, 12.707165>,  <15.595938, 16.320885, 12.866402>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.554421, 16.495584, 12.707165>,  <15.485227, 16.786751, 12.441771>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.554421, 16.495584, 12.707165> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310963, -0.598822, -0.738047,
		0.934547, 0.333992, 0.122767,
		0.172986, -0.727916, 0.663486,
		15.606318, 16.277210, 12.906211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.960787, 16.375111, 12.138250>,  <15.485227, 16.786751, 12.441771>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.960787, 16.375111, 12.138250> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.779932, 16.135315, 12.402427>,  <15.671419, 15.991437, 12.560933>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.779932, 16.135315, 12.402427>,  <15.960787, 16.375111, 12.138250>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.779932, 16.135315, 12.402427> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133019, -0.777488, -0.614670,
		0.881974, -0.190064, 0.431274,
		-0.452137, -0.599490, 0.660442,
		15.644291, 15.955468, 12.600559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.453888, 15.874749, 12.192587>,  <15.960787, 16.375111, 12.138250>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.453888, 15.874749, 12.192587> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.115475, 15.712963, 12.331515>,  <15.912426, 15.615891, 12.414872>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.115475, 15.712963, 12.331515>,  <16.453888, 15.874749, 12.192587>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.115475, 15.712963, 12.331515> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112676, -0.772420, -0.625038,
		0.521085, -0.489669, 0.699067,
		-0.846035, -0.404466, 0.347322,
		15.861664, 15.591623, 12.435712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.515724, 15.117568, 12.504549>,  <16.453888, 15.874749, 12.192587>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.515724, 15.117568, 12.504549> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.170444, 15.159601, 12.307028>,  <15.963276, 15.184821, 12.188516>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.170444, 15.159601, 12.307028>,  <16.515724, 15.117568, 12.504549>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.170444, 15.159601, 12.307028> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249559, -0.761431, -0.598284,
		-0.438866, -0.639672, 0.631043,
		-0.863201, 0.105084, -0.493802,
		15.911484, 15.191127, 12.158887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.184362, 14.442081, 12.511337>,  <16.515724, 15.117568, 12.504549>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.184362, 14.442081, 12.511337> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.105801, 14.671544, 12.193257>,  <16.058664, 14.809222, 12.002409>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.105801, 14.671544, 12.193257>,  <16.184362, 14.442081, 12.511337>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.105801, 14.671544, 12.193257> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216334, -0.765658, -0.605778,
		-0.956360, -0.291006, 0.026277,
		-0.196404, 0.573657, -0.795200,
		16.046879, 14.843641, 11.954698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.169718, 13.992213, 12.993771>,  <16.184362, 14.442081, 12.511337>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.169718, 13.992213, 12.993771> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.418432, 13.694155, 13.090219>,  <16.567661, 13.515320, 13.148088>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.418432, 13.694155, 13.090219>,  <16.169718, 13.992213, 12.993771>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.418432, 13.694155, 13.090219> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.665839, -0.340848, 0.663688,
		-0.412362, -0.573216, -0.708083,
		0.621785, -0.745148, 0.241117,
		16.604967, 13.470611, 13.162554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.749164, 13.496302, 12.960917>,  <16.169718, 13.992213, 12.993771>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.749164, 13.496302, 12.960917> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.041998, 13.342715, 13.185992>,  <16.217699, 13.250564, 13.321037>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.041998, 13.342715, 13.185992>,  <15.749164, 13.496302, 12.960917>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.041998, 13.342715, 13.185992> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.677747, -0.327347, 0.658409,
		-0.068612, -0.863373, -0.499879,
		0.732087, -0.383966, 0.562689,
		16.261623, 13.227526, 13.354799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.466342, 12.853608, 13.223299>,  <15.749164, 13.496302, 12.960917>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.466342, 12.853608, 13.223299> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.777440, 12.930703, 13.462619>,  <15.964099, 12.976960, 13.606211>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.777440, 12.930703, 13.462619>,  <15.466342, 12.853608, 13.223299>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.777440, 12.930703, 13.462619> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505930, -0.372909, 0.777801,
		0.373023, -0.907630, -0.192516,
		0.777746, 0.192737, 0.598301,
		16.010763, 12.988524, 13.642109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.539521, 12.292183, 13.804512>,  <15.466342, 12.853608, 13.223299>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.539521, 12.292183, 13.804512> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.740303, 12.599358, 13.963667>,  <15.860772, 12.783663, 14.059160>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.740303, 12.599358, 13.963667>,  <15.539521, 12.292183, 13.804512>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.740303, 12.599358, 13.963667> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487081, -0.129158, 0.863754,
		0.714699, -0.627369, 0.309217,
		0.501954, 0.767937, 0.397888,
		15.890889, 12.829739, 14.083034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.626937, 12.029542, 14.434383>,  <15.539521, 12.292183, 13.804512>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.626937, 12.029542, 14.434383> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.672774, 12.423944, 14.482814>,  <15.700276, 12.660586, 14.511872>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.672774, 12.423944, 14.482814>,  <15.626937, 12.029542, 14.434383>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.672774, 12.423944, 14.482814> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149080, -0.103429, 0.983401,
		0.982163, -0.130741, 0.135141,
		0.114593, 0.986007, 0.121075,
		15.707152, 12.719747, 14.519136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.067249, 12.121727, 15.038340>,  <15.626937, 12.029542, 14.434383>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.067249, 12.121727, 15.038340> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.860374, 12.459052, 14.979911>,  <15.736249, 12.661448, 14.944854>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.860374, 12.459052, 14.979911>,  <16.067249, 12.121727, 15.038340>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.860374, 12.459052, 14.979911> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457775, -0.128362, 0.879753,
		0.723158, 0.521867, 0.452436,
		-0.517189, 0.843314, -0.146071,
		15.705217, 12.712047, 14.936090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.096394, 12.385007, 15.715586>,  <16.067249, 12.121727, 15.038340>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.096394, 12.385007, 15.715586> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.822469, 12.616107, 15.537942>,  <15.658113, 12.754767, 15.431355>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.822469, 12.616107, 15.537942>,  <16.096394, 12.385007, 15.715586>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.822469, 12.616107, 15.537942> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352201, 0.271120, 0.895795,
		0.637953, 0.769869, 0.017817,
		-0.684815, 0.577750, -0.444110,
		15.617024, 12.789432, 15.404709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.134966, 13.118927, 15.920188>,  <16.096394, 12.385007, 15.715586>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.134966, 13.118927, 15.920188> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.759388, 13.092508, 15.785121>,  <15.534041, 13.076657, 15.704081>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.759388, 13.092508, 15.785121>,  <16.134966, 13.118927, 15.920188>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.759388, 13.092508, 15.785121> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332050, 0.431037, 0.839017,
		0.090133, 0.899914, -0.426652,
		-0.938946, -0.066047, -0.337667,
		15.477704, 13.072694, 15.683821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.862962, 13.770205, 15.988005>,  <16.134966, 13.118927, 15.920188>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.862962, 13.770205, 15.988005> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.557508, 13.512071, 15.979943>,  <15.374235, 13.357190, 15.975106>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.557508, 13.512071, 15.979943>,  <15.862962, 13.770205, 15.988005>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.557508, 13.512071, 15.979943> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353334, 0.391574, 0.849603,
		-0.540386, 0.655907, -0.527038,
		-0.763635, -0.645334, -0.020153,
		15.328417, 13.318471, 15.973897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.335121, 14.151049, 16.057480>,  <15.862962, 13.770205, 15.988005>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.335121, 14.151049, 16.057480> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.206977, 13.789417, 16.170624>,  <15.130091, 13.572438, 16.238510>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.206977, 13.789417, 16.170624>,  <15.335121, 14.151049, 16.057480>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.206977, 13.789417, 16.170624> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387553, 0.397549, 0.831719,
		-0.864391, 0.156827, -0.477738,
		-0.320361, -0.904079, 0.282859,
		15.110868, 13.518193, 16.255482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.730103, 14.295838, 16.288824>,  <15.335121, 14.151049, 16.057480>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.730103, 14.295838, 16.288824> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.835616, 13.941200, 16.440807>,  <14.898924, 13.728417, 16.531998>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.835616, 13.941200, 16.440807>,  <14.730103, 14.295838, 16.288824>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.835616, 13.941200, 16.440807> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426964, 0.245899, 0.870193,
		-0.864940, -0.391769, -0.313681,
		0.263780, -0.886595, 0.379959,
		14.914750, 13.675221, 16.554794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.211290, 14.183233, 16.832386>,  <14.730103, 14.295838, 16.288824>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.211290, 14.183233, 16.832386> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.534945, 13.966625, 16.923645>,  <14.729138, 13.836660, 16.978401>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.534945, 13.966625, 16.923645>,  <14.211290, 14.183233, 16.832386>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.534945, 13.966625, 16.923645> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098282, 0.258075, 0.961113,
		-0.579342, -0.800095, 0.155597,
		0.809137, -0.541520, 0.228149,
		14.777687, 13.804169, 16.992090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.028994, 13.890251, 17.454777>,  <14.211290, 14.183233, 16.832386>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.028994, 13.890251, 17.454777> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.426149, 13.849640, 17.429918>,  <14.664443, 13.825274, 17.415003>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.426149, 13.849640, 17.429918>,  <14.028994, 13.890251, 17.454777>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.426149, 13.849640, 17.429918> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089469, 0.292105, 0.952192,
		-0.078521, -0.950982, 0.299112,
		0.992889, -0.101529, -0.062147,
		14.724016, 13.819181, 17.411274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.277646, 13.452537, 17.970036>,  <14.028994, 13.890251, 17.454777>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.277646, 13.452537, 17.970036> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.593053, 13.674994, 17.865005>,  <14.782297, 13.808468, 17.801987>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.593053, 13.674994, 17.865005>,  <14.277646, 13.452537, 17.970036>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.593053, 13.674994, 17.865005> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071852, 0.340717, 0.937416,
		0.610801, -0.758035, 0.228702,
		0.788517, 0.556143, -0.262577,
		14.829608, 13.841836, 17.786232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.051693, 12.753998, 18.159973>,  <14.277646, 13.452537, 17.970036>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.051693, 12.753998, 18.159973> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.708057, 12.804691, 18.358330>,  <13.501876, 12.835108, 18.477343>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.708057, 12.804691, 18.358330>,  <14.051693, 12.753998, 18.159973>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.708057, 12.804691, 18.358330> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501477, -0.402280, -0.765958,
		0.102414, -0.906703, 0.409148,
		-0.859088, 0.126733, 0.495890,
		13.450331, 12.842711, 18.507097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.740031, 12.130249, 18.081741>,  <14.051693, 12.753998, 18.159973>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.740031, 12.130249, 18.081741> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.435401, 12.375360, 18.166124>,  <13.252623, 12.522428, 18.216753>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.435401, 12.375360, 18.166124>,  <13.740031, 12.130249, 18.081741>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.435401, 12.375360, 18.166124> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560478, -0.459341, -0.689108,
		-0.325370, -0.643045, 0.693273,
		-0.761577, 0.612779, 0.210956,
		13.206928, 12.559195, 18.229412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.166791, 11.733416, 18.249508>,  <13.740031, 12.130249, 18.081741>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.166791, 11.733416, 18.249508> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.985161, 12.077840, 18.157949>,  <12.876183, 12.284494, 18.103014>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.985161, 12.077840, 18.157949>,  <13.166791, 11.733416, 18.249508>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.985161, 12.077840, 18.157949> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491662, -0.456411, -0.741591,
		-0.743024, -0.224198, 0.630595,
		-0.454074, 0.861060, -0.228895,
		12.848939, 12.336158, 18.089281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.421542, 11.572324, 18.130039>,  <13.166791, 11.733416, 18.249508>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.421542, 11.572324, 18.130039> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.458868, 11.936078, 17.967897>,  <12.481264, 12.154330, 17.870613>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.458868, 11.936078, 17.967897>,  <12.421542, 11.572324, 18.130039>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.458868, 11.936078, 17.967897> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583978, -0.279752, -0.762042,
		-0.806388, 0.307828, 0.504956,
		0.093315, 0.909385, -0.405353,
		12.486862, 12.208894, 17.846291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.734032, 11.874374, 17.997284>,  <12.421542, 11.572324, 18.130039>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.734032, 11.874374, 17.997284> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.994047, 12.024682, 17.733088>,  <12.150056, 12.114866, 17.574570>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.994047, 12.024682, 17.733088>,  <11.734032, 11.874374, 17.997284>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.994047, 12.024682, 17.733088> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502828, -0.438984, -0.744619,
		-0.569750, 0.816144, -0.096409,
		0.650038, 0.375769, -0.660491,
		12.189058, 12.137413, 17.534941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.287339, 12.003842, 17.417740>,  <11.734032, 11.874374, 17.997284>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.287339, 12.003842, 17.417740> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.652064, 12.057254, 17.262424>,  <11.870899, 12.089300, 17.169235>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.652064, 12.057254, 17.262424>,  <11.287339, 12.003842, 17.417740>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.652064, 12.057254, 17.262424> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305056, -0.412680, -0.858275,
		-0.274843, 0.901035, -0.335553,
		0.911812, 0.133528, -0.388289,
		11.925608, 12.097312, 17.145937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.192204, 12.376932, 16.799055>,  <11.287339, 12.003842, 17.417740>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.192204, 12.376932, 16.799055> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.548871, 12.200576, 16.757971>,  <11.762871, 12.094762, 16.733320>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.548871, 12.200576, 16.757971>,  <11.192204, 12.376932, 16.799055>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.548871, 12.200576, 16.757971> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260532, -0.314238, -0.912895,
		0.370211, 0.840756, -0.395061,
		0.891665, -0.440890, -0.102710,
		11.816371, 12.068309, 16.727158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.536149, 12.665941, 16.158480>,  <11.192204, 12.376932, 16.799055>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.536149, 12.665941, 16.158480> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.741826, 12.332349, 16.238562>,  <11.865232, 12.132194, 16.286612>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.741826, 12.332349, 16.238562>,  <11.536149, 12.665941, 16.158480>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.741826, 12.332349, 16.238562> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095889, -0.176067, -0.979697,
		0.852297, 0.522951, -0.010563,
		0.514193, -0.833980, 0.200206,
		11.896084, 12.082155, 16.298624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.153194, 12.664493, 15.761261>,  <11.536149, 12.665941, 16.158480>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.153194, 12.664493, 15.761261> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.112271, 12.282629, 15.873091>,  <12.087717, 12.053511, 15.940188>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.112271, 12.282629, 15.873091>,  <12.153194, 12.664493, 15.761261>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.112271, 12.282629, 15.873091> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141960, -0.292183, -0.945768,
		0.984571, -0.057071, 0.165416,
		-0.102308, -0.954658, 0.279574,
		12.081579, 11.996232, 15.956963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.691947, 12.408379, 15.584872>,  <12.153194, 12.664493, 15.761261>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.691947, 12.408379, 15.584872> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.449018, 12.091616, 15.610309>,  <12.303261, 11.901558, 15.625570>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.449018, 12.091616, 15.610309>,  <12.691947, 12.408379, 15.584872>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.449018, 12.091616, 15.610309> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052952, -0.120214, -0.991335,
		0.792689, -0.598692, 0.114942,
		-0.607322, -0.791907, 0.063591,
		12.266822, 11.854044, 15.629386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.920454, 11.951089, 15.064442>,  <12.691947, 12.408379, 15.584872>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.920454, 11.951089, 15.064442> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.542427, 11.831370, 15.117005>,  <12.315611, 11.759540, 15.148543>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.542427, 11.831370, 15.117005>,  <12.920454, 11.951089, 15.064442>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.542427, 11.831370, 15.117005> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152487, 0.048087, -0.987135,
		0.289128, -0.952947, -0.091084,
		-0.945068, -0.299297, 0.131408,
		12.258906, 11.741581, 15.156428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.758642, 11.414828, 14.629429>,  <12.920454, 11.951089, 15.064442>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.758642, 11.414828, 14.629429> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.366523, 11.432942, 14.706335>,  <12.131251, 11.443811, 14.752479>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.366523, 11.432942, 14.706335>,  <12.758642, 11.414828, 14.629429>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.366523, 11.432942, 14.706335> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195489, -0.361910, -0.911485,
		0.028305, -0.931112, 0.363632,
		-0.980297, 0.045286, 0.192266,
		12.072433, 11.446528, 14.764015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<12.827212, 14.699268, 23.743679> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.101764, 14.435629, 23.866627>,  <13.266495, 14.277445, 23.940395>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.101764, 14.435629, 23.866627>,  <12.827212, 14.699268, 23.743679>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.101764, 14.435629, 23.866627> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080260, -0.351414, -0.932773,
		0.722803, 0.664904, -0.188304,
		0.686377, -0.659098, 0.307368,
		13.307677, 14.237900, 23.958838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.358884, 14.851438, 23.316404>,  <12.827212, 14.699268, 23.743679>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.358884, 14.851438, 23.316404> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.446572, 14.489704, 23.462894>,  <13.499186, 14.272664, 23.550789>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.446572, 14.489704, 23.462894>,  <13.358884, 14.851438, 23.316404>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.446572, 14.489704, 23.462894> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212870, -0.321982, -0.922504,
		0.952170, 0.280192, 0.121920,
		0.219222, -0.904334, 0.366226,
		13.512339, 14.218404, 23.572762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.096468, 14.647264, 23.070656>,  <13.358884, 14.851438, 23.316404>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.096468, 14.647264, 23.070656> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.889752, 14.317348, 23.162441>,  <13.765723, 14.119399, 23.217512>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.889752, 14.317348, 23.162441>,  <14.096468, 14.647264, 23.070656>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.889752, 14.317348, 23.162441> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169702, -0.361405, -0.916836,
		0.839125, -0.434869, 0.326738,
		-0.516788, -0.824788, 0.229466,
		13.734715, 14.069912, 23.231281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.461823, 14.165826, 22.822683>,  <14.096468, 14.647264, 23.070656>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.461823, 14.165826, 22.822683> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.113968, 13.969146, 22.840410>,  <13.905255, 13.851138, 22.851046>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.113968, 13.969146, 22.840410>,  <14.461823, 14.165826, 22.822683>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.113968, 13.969146, 22.840410> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199303, -0.431778, -0.879685,
		0.451676, -0.756174, 0.473487,
		-0.869636, -0.491700, 0.044316,
		13.853077, 13.821636, 22.853704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.501266, 13.547540, 22.497238>,  <14.461823, 14.165826, 22.822683>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.501266, 13.547540, 22.497238> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.101417, 13.558171, 22.499975>,  <13.861507, 13.564550, 22.501617>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.101417, 13.558171, 22.499975>,  <14.501266, 13.547540, 22.497238>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.101417, 13.558171, 22.499975> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017582, -0.428688, -0.903281,
		-0.021075, -0.903062, 0.428994,
		-0.999623, 0.026579, 0.006843,
		13.801530, 13.566145, 22.502028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.286003, 12.856408, 22.236309>,  <14.501266, 13.547540, 22.497238>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.286003, 12.856408, 22.236309> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.991426, 13.122003, 22.184504>,  <13.814679, 13.281359, 22.153419>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.991426, 13.122003, 22.184504>,  <14.286003, 12.856408, 22.236309>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.991426, 13.122003, 22.184504> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073741, -0.269098, -0.960286,
		-0.672468, -0.697645, 0.247138,
		-0.736443, 0.663986, -0.129515,
		13.770493, 13.321198, 22.145649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.896107, 12.459145, 21.865568>,  <14.286003, 12.856408, 22.236309>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.896107, 12.459145, 21.865568> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.774254, 12.837006, 21.816854>,  <13.701142, 13.063723, 21.787626>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.774254, 12.837006, 21.816854>,  <13.896107, 12.459145, 21.865568>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.774254, 12.837006, 21.816854> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259123, -0.205232, -0.943787,
		-0.916545, -0.255951, 0.307302,
		-0.304631, 0.944653, -0.121782,
		13.682864, 13.120401, 21.780319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.242796, 12.425084, 21.628786>,  <13.896107, 12.459145, 21.865568>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.242796, 12.425084, 21.628786> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.373417, 12.794144, 21.546728>,  <13.451790, 13.015579, 21.497494>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.373417, 12.794144, 21.546728>,  <13.242796, 12.425084, 21.628786>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.373417, 12.794144, 21.546728> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200405, -0.144518, -0.968995,
		-0.923689, 0.357540, 0.137711,
		0.326553, 0.922648, -0.205143,
		13.471383, 13.070938, 21.485186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.819088, 12.806335, 21.198326>,  <13.242796, 12.425084, 21.628786>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.819088, 12.806335, 21.198326> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.137546, 13.030254, 21.106430>,  <13.328620, 13.164606, 21.051292>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.137546, 13.030254, 21.106430>,  <12.819088, 12.806335, 21.198326>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.137546, 13.030254, 21.106430> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256796, -0.031212, -0.965962,
		-0.547914, 0.828041, 0.118905,
		0.796144, 0.559798, -0.229739,
		13.376389, 13.198194, 21.037508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.621862, 13.277042, 20.705715>,  <12.819088, 12.806335, 21.198326>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.621862, 13.277042, 20.705715> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.013773, 13.314257, 20.634853>,  <13.248919, 13.336585, 20.592337>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.013773, 13.314257, 20.634853>,  <12.621862, 13.277042, 20.705715>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.013773, 13.314257, 20.634853> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180637, 0.030360, -0.983081,
		-0.086082, 0.995200, 0.046552,
		0.979776, 0.093035, -0.177156,
		13.307706, 13.342167, 20.581707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.703516, 13.808350, 20.181118>,  <12.621862, 13.277042, 20.705715>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.703516, 13.808350, 20.181118> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.041205, 13.596697, 20.146927>,  <13.243819, 13.469706, 20.126411>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.041205, 13.596697, 20.146927>,  <12.703516, 13.808350, 20.181118>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.041205, 13.596697, 20.146927> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107050, -0.010187, -0.994201,
		0.525192, 0.848479, -0.065243,
		0.844224, -0.529131, -0.085479,
		13.294473, 13.437958, 20.121283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.986190, 14.029233, 19.557463>,  <12.703516, 13.808350, 20.181118>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.986190, 14.029233, 19.557463> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.204937, 13.698809, 19.611956>,  <13.336185, 13.500554, 19.644651>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.204937, 13.698809, 19.611956>,  <12.986190, 14.029233, 19.557463>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.204937, 13.698809, 19.611956> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071164, -0.116265, -0.990665,
		0.834189, 0.551457, -0.004796,
		0.546867, -0.826061, 0.136231,
		13.368997, 13.450991, 19.652824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.466546, 14.094687, 19.103642>,  <12.986190, 14.029233, 19.557463>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.466546, 14.094687, 19.103642> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.433346, 13.704146, 19.183493>,  <13.413425, 13.469822, 19.231403>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.433346, 13.704146, 19.183493>,  <13.466546, 14.094687, 19.103642>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.433346, 13.704146, 19.183493> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005076, -0.199902, -0.979803,
		0.996536, -0.082338, 0.011636,
		-0.083001, -0.976350, 0.199628,
		13.408445, 13.411242, 19.243382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.925976, 13.679119, 18.672379>,  <13.466546, 14.094687, 19.103642>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.925976, 13.679119, 18.672379> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.619834, 13.452159, 18.793894>,  <13.436149, 13.315983, 18.866804>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.619834, 13.452159, 18.793894>,  <13.925976, 13.679119, 18.672379>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.619834, 13.452159, 18.793894> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212743, -0.222447, -0.951450,
		0.607431, -0.792826, 0.049541,
		-0.765355, -0.567401, 0.303790,
		13.390227, 13.281939, 18.885031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.667759, 13.568819, 18.576740>,  <13.925976, 13.679119, 18.672379>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.667759, 13.568819, 18.576740> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.850021, 13.851078, 18.359690>,  <14.959378, 14.020433, 18.229460>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.850021, 13.851078, 18.359690>,  <14.667759, 13.568819, 18.576740>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.850021, 13.851078, 18.359690> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138666, 0.545874, 0.826313,
		0.879290, -0.451756, 0.150881,
		0.455654, 0.705647, -0.542624,
		14.986718, 14.062772, 18.196903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.236590, 13.756935, 19.012743>,  <14.667759, 13.568819, 18.576740>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.236590, 13.756935, 19.012743> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.170218, 14.063310, 18.764290>,  <15.130394, 14.247134, 18.615217>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.170218, 14.063310, 18.764290>,  <15.236590, 13.756935, 19.012743>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.170218, 14.063310, 18.764290> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112197, 0.640440, 0.759769,
		0.979734, 0.056381, -0.192206,
		-0.165933, 0.765936, -0.621135,
		15.120438, 14.293091, 18.577950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.812818, 14.161187, 19.101171>,  <15.236590, 13.756935, 19.012743>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.812818, 14.161187, 19.101171> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.534167, 14.381047, 18.916737>,  <15.366978, 14.512963, 18.806076>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.534167, 14.381047, 18.916737>,  <15.812818, 14.161187, 19.101171>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.534167, 14.381047, 18.916737> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200419, 0.766192, 0.610559,
		0.688873, 0.332920, -0.643908,
		-0.696625, 0.549649, -0.461085,
		15.325180, 14.545942, 18.778412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.150610, 14.813953, 18.959396>,  <15.812818, 14.161187, 19.101171>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.150610, 14.813953, 18.959396> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.756974, 14.883207, 18.943430>,  <15.520793, 14.924760, 18.933851>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.756974, 14.883207, 18.943430>,  <16.150610, 14.813953, 18.959396>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.756974, 14.883207, 18.943430> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113421, 0.785065, 0.608940,
		0.136765, 0.594724, -0.792211,
		-0.984089, 0.173135, -0.039915,
		15.461747, 14.935148, 18.931456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.948559, 15.487592, 18.832293>,  <16.150610, 14.813953, 18.959396>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.948559, 15.487592, 18.832293> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.620311, 15.343818, 19.010008>,  <15.423362, 15.257553, 19.116636>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.620311, 15.343818, 19.010008>,  <15.948559, 15.487592, 18.832293>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.620311, 15.343818, 19.010008> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033220, 0.746119, 0.664983,
		-0.570509, 0.560457, -0.600340,
		-0.820619, -0.359435, 0.444286,
		15.374125, 15.235987, 19.143293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.619250, 16.039297, 18.955334>,  <15.948559, 15.487592, 18.832293>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.619250, 16.039297, 18.955334> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.431816, 15.771899, 19.186348>,  <15.319356, 15.611461, 19.324957>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.431816, 15.771899, 19.186348>,  <15.619250, 16.039297, 18.955334>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.431816, 15.771899, 19.186348> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158732, 0.706820, 0.689354,
		-0.869041, 0.231348, -0.437317,
		-0.468585, -0.668493, 0.577533,
		15.291241, 15.571351, 19.359608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.985149, 16.328289, 19.266775>,  <15.619250, 16.039297, 18.955334>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.985149, 16.328289, 19.266775> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.081970, 16.034418, 19.520283>,  <15.140062, 15.858096, 19.672386>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.081970, 16.034418, 19.520283>,  <14.985149, 16.328289, 19.266775>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.081970, 16.034418, 19.520283> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075513, 0.636947, 0.767201,
		-0.967320, -0.233560, 0.098697,
		0.242052, -0.734676, 0.633768,
		15.154586, 15.814015, 19.710413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.604537, 16.525124, 19.896404>,  <14.985149, 16.328289, 19.266775>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.604537, 16.525124, 19.896404> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.857085, 16.241129, 20.021170>,  <15.008615, 16.070732, 20.096029>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.857085, 16.241129, 20.021170>,  <14.604537, 16.525124, 19.896404>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.857085, 16.241129, 20.021170> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063034, 0.447874, 0.891872,
		-0.772915, -0.543441, 0.327528,
		0.631371, -0.709986, 0.311913,
		15.046496, 16.028133, 20.114744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.201657, 16.219259, 20.435774>,  <14.604537, 16.525124, 19.896404>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.201657, 16.219259, 20.435774> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.594566, 16.149410, 20.463045>,  <14.830312, 16.107502, 20.479408>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.594566, 16.149410, 20.463045>,  <14.201657, 16.219259, 20.435774>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.594566, 16.149410, 20.463045> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037574, 0.539726, 0.841002,
		-0.183655, -0.823531, 0.536719,
		0.982272, -0.174621, 0.068180,
		14.889248, 16.097025, 20.483500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.301920, 16.004368, 21.096981>,  <14.201657, 16.219259, 20.435774>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.301920, 16.004368, 21.096981> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.677358, 16.121098, 21.023355>,  <14.902620, 16.191135, 20.979179>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.677358, 16.121098, 21.023355>,  <14.301920, 16.004368, 21.096981>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.677358, 16.121098, 21.023355> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058092, 0.392204, 0.918042,
		0.340096, -0.872362, 0.351168,
		0.938595, 0.291822, -0.184064,
		14.958936, 16.208645, 20.968136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.730479, 15.729298, 21.675358>,  <14.301920, 16.004368, 21.096981>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.730479, 15.729298, 21.675358> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.938150, 16.036478, 21.525314>,  <15.062753, 16.220787, 21.435287>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.938150, 16.036478, 21.525314>,  <14.730479, 15.729298, 21.675358>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.938150, 16.036478, 21.525314> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045874, 0.413224, 0.909473,
		0.853435, -0.489385, 0.179307,
		0.519177, 0.767950, -0.375110,
		15.093904, 16.266863, 21.412781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.326392, 15.745624, 22.123709>,  <14.730479, 15.729298, 21.675358>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.326392, 15.745624, 22.123709> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.307007, 16.095041, 21.929977>,  <15.295376, 16.304691, 21.813738>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.307007, 16.095041, 21.929977>,  <15.326392, 15.745624, 22.123709>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.307007, 16.095041, 21.929977> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309163, 0.474204, 0.824348,
		0.949774, -0.109785, -0.293049,
		-0.048464, 0.873543, -0.484328,
		15.292468, 16.357103, 21.784679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.752165, 16.140406, 22.380747>,  <15.326392, 15.745624, 22.123709>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.752165, 16.140406, 22.380747> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.520847, 16.413660, 22.202354>,  <15.382057, 16.577614, 22.095318>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.520847, 16.413660, 22.202354>,  <15.752165, 16.140406, 22.380747>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.520847, 16.413660, 22.202354> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104814, 0.604344, 0.789799,
		0.809067, 0.409991, -0.421091,
		-0.578294, 0.683137, -0.445982,
		15.347359, 16.618601, 22.068560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.071720, 16.861298, 22.560133>,  <15.752165, 16.140406, 22.380747>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.071720, 16.861298, 22.560133> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.695746, 16.930445, 22.442390>,  <15.470162, 16.971933, 22.371746>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.695746, 16.930445, 22.442390>,  <16.071720, 16.861298, 22.560133>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.695746, 16.930445, 22.442390> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128797, 0.618972, 0.774781,
		0.316132, 0.766153, -0.559527,
		-0.939932, 0.172868, -0.294355,
		15.413767, 16.982306, 22.354084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<9.015596, 19.361128, 21.634512> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.143600, 18.984762, 21.678835>,  <9.220403, 18.758944, 21.705429>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.143600, 18.984762, 21.678835>,  <9.015596, 19.361128, 21.634512>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.143600, 18.984762, 21.678835> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005208, -0.118704, -0.992916,
		0.947400, 0.317165, -0.042886,
		0.320009, -0.940912, 0.110809,
		9.239603, 18.702488, 21.712078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.640294, 19.305040, 21.276861>,  <9.015596, 19.361128, 21.634512>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.640294, 19.305040, 21.276861> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.479104, 18.940193, 21.306938>,  <9.382390, 18.721285, 21.324984>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.479104, 18.940193, 21.306938>,  <9.640294, 19.305040, 21.276861>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.479104, 18.940193, 21.306938> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005445, -0.079766, -0.996799,
		0.915195, -0.402094, 0.027178,
		-0.402975, -0.912117, 0.075191,
		9.358212, 18.666557, 21.329496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.635680, 19.042097, 20.584646>,  <9.640294, 19.305040, 21.276861>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.635680, 19.042097, 20.584646> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.447017, 18.739750, 20.766283>,  <9.333818, 18.558342, 20.875265>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.447017, 18.739750, 20.766283>,  <9.635680, 19.042097, 20.584646>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.447017, 18.739750, 20.766283> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048294, -0.492054, -0.869224,
		0.880458, -0.431907, 0.195577,
		-0.471658, -0.755870, 0.454092,
		9.305519, 18.512989, 20.902510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.974602, 18.447485, 20.430315>,  <9.635680, 19.042097, 20.584646>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.974602, 18.447485, 20.430315> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.609349, 18.313519, 20.523285>,  <9.390198, 18.233139, 20.579067>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.609349, 18.313519, 20.523285>,  <9.974602, 18.447485, 20.430315>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.609349, 18.313519, 20.523285> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062497, -0.448394, -0.891648,
		0.402848, -0.828717, 0.388511,
		-0.913131, -0.334918, 0.232427,
		9.335410, 18.213043, 20.593014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.956199, 17.702980, 20.325346>,  <9.974602, 18.447485, 20.430315>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.956199, 17.702980, 20.325346> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.565289, 17.787434, 20.317814>,  <9.330743, 17.838106, 20.313293>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.565289, 17.787434, 20.317814>,  <9.956199, 17.702980, 20.325346>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.565289, 17.787434, 20.317814> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086813, -0.479703, -0.873126,
		-0.193382, -0.851649, 0.487131,
		-0.977276, 0.211136, -0.018832,
		9.272106, 17.850775, 20.312164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.554317, 17.191494, 20.094120>,  <9.956199, 17.702980, 20.325346>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.554317, 17.191494, 20.094120> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.265703, 17.462706, 20.038021>,  <9.092535, 17.625433, 20.004362>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.265703, 17.462706, 20.038021>,  <9.554317, 17.191494, 20.094120>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.265703, 17.462706, 20.038021> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235702, -0.430996, -0.871026,
		-0.651027, -0.595416, 0.470790,
		-0.721532, 0.678028, -0.140250,
		9.049243, 17.666113, 19.995947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.939618, 16.840214, 19.984533>,  <9.554317, 17.191494, 20.094120>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.939618, 16.840214, 19.984533> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<8.925263, 17.194120, 19.798674>,  <8.916651, 17.406464, 19.687157>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<8.925263, 17.194120, 19.798674>,  <8.939618, 16.840214, 19.984533>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.925263, 17.194120, 19.798674> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187416, -0.462659, -0.866500,
		-0.981625, 0.055987, 0.182423,
		-0.035887, 0.884767, -0.464651,
		8.914497, 17.459551, 19.659279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.347396, 16.818026, 19.475576>,  <8.939618, 16.840214, 19.984533>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.347396, 16.818026, 19.475576> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<8.570083, 17.121918, 19.341188>,  <8.703695, 17.304253, 19.260555>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<8.570083, 17.121918, 19.341188>,  <8.347396, 16.818026, 19.475576>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.570083, 17.121918, 19.341188> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073938, -0.448155, -0.890893,
		-0.827405, 0.471135, -0.305669,
		0.556718, 0.759730, -0.335971,
		8.737098, 17.349836, 19.240396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.172587, 17.056852, 18.780563>,  <8.347396, 16.818026, 19.475576>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.172587, 17.056852, 18.780563> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<8.546789, 17.197235, 18.796858>,  <8.771311, 17.281466, 18.806635>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<8.546789, 17.197235, 18.796858>,  <8.172587, 17.056852, 18.780563>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.546789, 17.197235, 18.796858> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205802, -0.447573, -0.870244,
		-0.287187, 0.822501, -0.490934,
		0.935505, 0.350958, 0.040735,
		8.827440, 17.302523, 18.809078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.397916, 17.113750, 18.019943>,  <8.172587, 17.056852, 18.780563>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.397916, 17.113750, 18.019943> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<8.732317, 17.106516, 18.239313>,  <8.932958, 17.102175, 18.370935>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<8.732317, 17.106516, 18.239313>,  <8.397916, 17.113750, 18.019943>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.732317, 17.106516, 18.239313> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524841, -0.265304, -0.808799,
		0.160127, 0.963995, -0.212303,
		0.836003, -0.018085, 0.548427,
		8.983118, 17.101089, 18.403841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.840705, 17.469997, 17.596178>,  <8.397916, 17.113750, 18.019943>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.840705, 17.469997, 17.596178> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.085856, 17.283524, 17.851381>,  <9.232947, 17.171640, 18.004503>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.085856, 17.283524, 17.851381>,  <8.840705, 17.469997, 17.596178>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.085856, 17.283524, 17.851381> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611540, -0.231480, -0.756595,
		0.500398, 0.853868, 0.143220,
		0.612879, -0.466184, 0.638006,
		9.269720, 17.143669, 18.042784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.540559, 17.766254, 17.534048>,  <8.840705, 17.469997, 17.596178>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.540559, 17.766254, 17.534048> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.581993, 17.394384, 17.675457>,  <9.606853, 17.171263, 17.760302>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.581993, 17.394384, 17.675457>,  <9.540559, 17.766254, 17.534048>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.581993, 17.394384, 17.675457> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552185, -0.241875, -0.797865,
		0.827262, 0.277858, 0.488296,
		0.103586, -0.929673, 0.353523,
		9.613069, 17.115482, 17.781513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.357238, 17.613482, 17.395414>,  <9.540559, 17.766254, 17.534048>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.357238, 17.613482, 17.395414> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.179256, 17.266342, 17.483826>,  <10.072468, 17.058058, 17.536873>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.179256, 17.266342, 17.483826>,  <10.357238, 17.613482, 17.395414>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.179256, 17.266342, 17.483826> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410582, -0.417027, -0.810870,
		0.795889, -0.270048, 0.541881,
		-0.444953, -0.867849, 0.221030,
		10.045771, 17.005987, 17.550135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.895611, 17.013311, 17.229620>,  <10.357238, 17.613482, 17.395414>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.895611, 17.013311, 17.229620> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.534139, 16.842031, 17.228857>,  <10.317255, 16.739264, 17.228399>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.534139, 16.842031, 17.228857>,  <10.895611, 17.013311, 17.229620>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.534139, 16.842031, 17.228857> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258253, -0.541454, -0.800083,
		0.341563, -0.723513, 0.599887,
		-0.903681, -0.428201, -0.001909,
		10.263034, 16.713572, 17.228285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.662381, 16.874229, 17.374313>,  <10.895611, 17.013311, 17.229620>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.662381, 16.874229, 17.374313> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.735648, 17.171021, 17.116346>,  <11.779609, 17.349096, 16.961567>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.735648, 17.171021, 17.116346>,  <11.662381, 16.874229, 17.374313>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.735648, 17.171021, 17.116346> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151462, 0.626882, 0.764250,
		0.971344, -0.237666, 0.002443,
		0.183168, 0.741980, -0.644915,
		11.790599, 17.393614, 16.922873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.405330, 17.151760, 17.481207>,  <11.662381, 16.874229, 17.374313>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.405330, 17.151760, 17.481207> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.200321, 17.443087, 17.299271>,  <12.077316, 17.617882, 17.190109>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.200321, 17.443087, 17.299271>,  <12.405330, 17.151760, 17.481207>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.200321, 17.443087, 17.299271> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155797, 0.599782, 0.784850,
		0.844422, 0.331390, -0.420871,
		-0.512522, 0.728315, -0.454839,
		12.046565, 17.661581, 17.162819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.780915, 17.726824, 17.670383>,  <12.405330, 17.151760, 17.481207>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.780915, 17.726824, 17.670383> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.426664, 17.860146, 17.541033>,  <12.214114, 17.940140, 17.463423>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.426664, 17.860146, 17.541033>,  <12.780915, 17.726824, 17.670383>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.426664, 17.860146, 17.541033> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014246, 0.715506, 0.698462,
		0.464179, 0.613970, -0.638419,
		-0.885627, 0.333306, -0.323376,
		12.160976, 17.960136, 17.444019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.749100, 18.437456, 17.607676>,  <12.780915, 17.726824, 17.670383>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.749100, 18.437456, 17.607676> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.351726, 18.392578, 17.616602>,  <12.113301, 18.365652, 17.621958>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.351726, 18.392578, 17.616602>,  <12.749100, 18.437456, 17.607676>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.351726, 18.392578, 17.616602> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056514, 0.650969, 0.756998,
		-0.099458, 0.750768, -0.653036,
		-0.993436, -0.112195, 0.022315,
		12.053695, 18.358919, 17.623297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.527013, 19.095402, 17.820423>,  <12.749100, 18.437456, 17.607676>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.527013, 19.095402, 17.820423> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.218124, 18.849054, 17.882885>,  <12.032791, 18.701246, 17.920362>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.218124, 18.849054, 17.882885>,  <12.527013, 19.095402, 17.820423>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.218124, 18.849054, 17.882885> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255946, 0.526488, 0.810741,
		-0.581521, 0.586104, -0.564194,
		-0.772221, -0.615867, 0.156153,
		11.986458, 18.664295, 17.929731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.057734, 19.547703, 18.070311>,  <12.527013, 19.095402, 17.820423>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.057734, 19.547703, 18.070311> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.936537, 19.188869, 18.198957>,  <11.863819, 18.973570, 18.276146>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.936537, 19.188869, 18.198957>,  <12.057734, 19.547703, 18.070311>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.936537, 19.188869, 18.198957> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174629, 0.384031, 0.906656,
		-0.936857, 0.218545, -0.273015,
		-0.302991, -0.897083, 0.321618,
		11.845639, 18.919744, 18.295443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.360763, 19.654100, 18.355524>,  <12.057734, 19.547703, 18.070311>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.360763, 19.654100, 18.355524> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.472285, 19.313580, 18.533312>,  <11.539199, 19.109268, 18.639984>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.472285, 19.313580, 18.533312>,  <11.360763, 19.654100, 18.355524>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.472285, 19.313580, 18.533312> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041062, 0.451832, 0.891158,
		-0.959469, -0.266712, 0.091018,
		0.278807, -0.851300, 0.444471,
		11.555927, 19.058189, 18.666653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.911229, 19.680887, 19.020916>,  <11.360763, 19.654100, 18.355524>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.911229, 19.680887, 19.020916> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.204256, 19.419395, 19.096794>,  <11.380072, 19.262501, 19.142321>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.204256, 19.419395, 19.096794>,  <10.911229, 19.680887, 19.020916>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.204256, 19.419395, 19.096794> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040225, 0.236618, 0.970770,
		-0.679506, -0.718784, 0.147042,
		0.732567, -0.653729, 0.189697,
		11.424026, 19.223276, 19.153704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.673227, 19.472378, 19.653753>,  <10.911229, 19.680887, 19.020916>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.673227, 19.472378, 19.653753> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.050831, 19.342804, 19.628738>,  <11.277393, 19.265059, 19.613729>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.050831, 19.342804, 19.628738>,  <10.673227, 19.472378, 19.653753>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.050831, 19.342804, 19.628738> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170031, 0.315261, 0.933649,
		-0.282728, -0.892006, 0.352689,
		0.944010, -0.323937, -0.062535,
		11.334034, 19.245623, 19.609978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.860003, 18.984980, 20.182911>,  <10.673227, 19.472378, 19.653753>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.860003, 18.984980, 20.182911> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.203565, 19.158840, 20.074566>,  <11.409701, 19.263157, 20.009560>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.203565, 19.158840, 20.074566>,  <10.860003, 18.984980, 20.182911>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.203565, 19.158840, 20.074566> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215789, 0.172500, 0.961082,
		0.464459, -0.883924, 0.054368,
		0.858902, 0.434652, -0.270861,
		11.461235, 19.289236, 19.993307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.327935, 18.577129, 20.588957>,  <10.860003, 18.984980, 20.182911>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.327935, 18.577129, 20.588957> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.509395, 18.921946, 20.498545>,  <11.618270, 19.128836, 20.444298>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.509395, 18.921946, 20.498545>,  <11.327935, 18.577129, 20.588957>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.509395, 18.921946, 20.498545> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254538, 0.117729, 0.959870,
		0.854058, -0.492976, -0.166015,
		0.453648, 0.862041, -0.226028,
		11.645489, 19.180557, 20.430737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.816015, 18.560614, 21.111351>,  <11.327935, 18.577129, 20.588957>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.816015, 18.560614, 21.111351> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.811269, 18.938520, 20.980341>,  <11.808421, 19.165264, 20.901735>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.811269, 18.938520, 20.980341>,  <11.816015, 18.560614, 21.111351>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.811269, 18.938520, 20.980341> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130706, 0.326202, 0.936220,
		0.991350, -0.031700, -0.127358,
		-0.011866, 0.944768, -0.327524,
		11.807709, 19.221951, 20.882084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.363738, 18.729048, 21.449966>,  <11.816015, 18.560614, 21.111351>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.363738, 18.729048, 21.449966> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.190328, 19.074554, 21.347235>,  <12.086281, 19.281858, 21.285595>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.190328, 19.074554, 21.347235>,  <12.363738, 18.729048, 21.449966>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.190328, 19.074554, 21.347235> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315962, 0.412613, 0.854353,
		0.843933, 0.289237, -0.451796,
		-0.433527, 0.863767, -0.256830,
		12.060269, 19.333685, 21.270185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.813655, 19.444046, 21.396019>,  <12.363738, 18.729048, 21.449966>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.813655, 19.444046, 21.396019> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.426606, 19.522785, 21.459213>,  <12.194377, 19.570028, 21.497129>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.426606, 19.522785, 21.459213>,  <12.813655, 19.444046, 21.396019>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.426606, 19.522785, 21.459213> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205004, 0.247764, 0.946882,
		0.147251, 0.948611, -0.280096,
		-0.967621, 0.196850, 0.157986,
		12.136320, 19.581841, 21.506609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.344466, 19.862949, 21.390287>,  <12.813655, 19.444046, 21.396019>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.344466, 19.862949, 21.390287> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.730717, 19.766392, 21.428850>,  <13.962467, 19.708458, 21.451988>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.730717, 19.766392, 21.428850>,  <13.344466, 19.862949, 21.390287>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.730717, 19.766392, 21.428850> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027405, -0.274281, -0.961259,
		0.258485, 0.930859, -0.258238,
		0.965627, -0.241394, 0.096408,
		14.020405, 19.693974, 21.457773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.797462, 20.182594, 20.870558>,  <13.344466, 19.862949, 21.390287>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.797462, 20.182594, 20.870558> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.990420, 19.848082, 20.974810>,  <14.106195, 19.647375, 21.037361>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.990420, 19.848082, 20.974810>,  <13.797462, 20.182594, 20.870558>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.990420, 19.848082, 20.974810> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020945, -0.308468, -0.951004,
		0.875702, 0.453303, -0.166320,
		0.482398, -0.836280, 0.260632,
		14.135139, 19.597198, 21.052999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.275157, 20.106434, 20.428280>,  <13.797462, 20.182594, 20.870558>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.275157, 20.106434, 20.428280> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.265030, 19.724506, 20.546722>,  <14.258954, 19.495350, 20.617788>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.265030, 19.724506, 20.546722>,  <14.275157, 20.106434, 20.428280>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.265030, 19.724506, 20.546722> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121095, -0.296949, -0.947184,
		0.992318, 0.011876, 0.123142,
		-0.025318, -0.954819, 0.296106,
		14.257435, 19.438061, 20.635555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.892378, 19.849850, 20.364742>,  <14.275157, 20.106434, 20.428280>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.892378, 19.849850, 20.364742> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.638001, 19.543636, 20.325672>,  <14.485375, 19.359909, 20.302229>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.638001, 19.543636, 20.325672>,  <14.892378, 19.849850, 20.364742>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.638001, 19.543636, 20.325672> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490249, -0.302987, -0.817224,
		0.596016, -0.567592, 0.567982,
		-0.635941, -0.765531, -0.097676,
		14.447219, 19.313976, 20.296370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.214731, 19.496807, 19.928076>,  <14.892378, 19.849850, 20.364742>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.214731, 19.496807, 19.928076> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.864859, 19.303003, 19.933462>,  <14.654935, 19.186722, 19.936695>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.864859, 19.303003, 19.933462>,  <15.214731, 19.496807, 19.928076>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.864859, 19.303003, 19.933462> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205723, -0.396261, -0.894794,
		0.438873, -0.779889, 0.446277,
		-0.874682, -0.484510, 0.013467,
		14.602454, 19.157650, 19.937502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.395107, 18.885817, 19.782499>,  <15.214731, 19.496807, 19.928076>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.395107, 18.885817, 19.782499> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.014083, 18.916073, 19.664579>,  <14.785468, 18.934227, 19.593826>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.014083, 18.916073, 19.664579>,  <15.395107, 18.885817, 19.782499>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.014083, 18.916073, 19.664579> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251784, -0.348309, -0.902932,
		-0.170979, -0.934323, 0.312740,
		-0.952560, 0.075640, -0.294801,
		14.728314, 18.938765, 19.576139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.188608, 18.180202, 19.443598>,  <15.395107, 18.885817, 19.782499>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.188608, 18.180202, 19.443598> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.933551, 18.463036, 19.321323>,  <14.780517, 18.632736, 19.247959>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.933551, 18.463036, 19.321323>,  <15.188608, 18.180202, 19.443598>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.933551, 18.463036, 19.321323> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074120, -0.338668, -0.937982,
		-0.766757, -0.620756, 0.163541,
		-0.637644, 0.707083, -0.305687,
		14.742258, 18.675159, 19.229618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.761945, 17.801956, 19.065006>,  <15.188608, 18.180202, 19.443598>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.761945, 17.801956, 19.065006> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.717983, 18.172693, 18.921406>,  <14.691607, 18.395136, 18.835245>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.717983, 18.172693, 18.921406>,  <14.761945, 17.801956, 19.065006>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.717983, 18.172693, 18.921406> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026098, -0.363757, -0.931128,
		-0.993600, -0.092965, 0.064167,
		-0.109903, 0.926843, -0.359002,
		14.685012, 18.450747, 18.813705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.123926, 17.772646, 18.622643>,  <14.761945, 17.801956, 19.065006>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.123926, 17.772646, 18.622643> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.338515, 18.087006, 18.499643>,  <14.467269, 18.275621, 18.425844>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.338515, 18.087006, 18.499643>,  <14.123926, 17.772646, 18.622643>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.338515, 18.087006, 18.499643> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114406, -0.293279, -0.949157,
		-0.836127, 0.544377, -0.067424,
		0.536474, 0.785901, -0.307499,
		14.499457, 18.322777, 18.407394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.885210, 17.945963, 17.924055>,  <14.123926, 17.772646, 18.622643>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.885210, 17.945963, 17.924055> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.212120, 18.176451, 17.926416>,  <14.408266, 18.314743, 17.927834>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.212120, 18.176451, 17.926416>,  <13.885210, 17.945963, 17.924055>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.212120, 18.176451, 17.926416> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088727, -0.115710, -0.989312,
		-0.569376, 0.809064, -0.145692,
		0.817275, 0.576218, 0.005903,
		14.457302, 18.349316, 17.928186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.887479, 18.335720, 17.320509>,  <13.885210, 17.945963, 17.924055>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.887479, 18.335720, 17.320509> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.270225, 18.326689, 17.436373>,  <14.499872, 18.321270, 17.505892>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.270225, 18.326689, 17.436373>,  <13.887479, 18.335720, 17.320509>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.270225, 18.326689, 17.436373> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280461, -0.188515, -0.941171,
		0.075853, 0.981811, -0.174051,
		0.956864, -0.022576, 0.289659,
		14.557283, 18.319916, 17.523270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.129501, 18.506613, 16.759466>,  <13.887479, 18.335720, 17.320509>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.129501, 18.506613, 16.759466> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.449594, 18.379374, 16.962814>,  <14.641650, 18.303030, 17.084824>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.449594, 18.379374, 16.962814>,  <14.129501, 18.506613, 16.759466>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.449594, 18.379374, 16.962814> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458710, -0.221362, -0.860572,
		0.386280, 0.921853, -0.031227,
		0.800233, -0.318098, 0.508371,
		14.689665, 18.283945, 17.115326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.721427, 18.907921, 16.479692>,  <14.129501, 18.506613, 16.759466>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.721427, 18.907921, 16.479692> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.855972, 18.575342, 16.656580>,  <14.936699, 18.375795, 16.762712>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.855972, 18.575342, 16.656580>,  <14.721427, 18.907921, 16.479692>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.855972, 18.575342, 16.656580> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612882, -0.163259, -0.773125,
		0.715008, 0.531079, 0.454664,
		0.336362, -0.831446, 0.442220,
		14.956881, 18.325909, 16.789246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.487232, 18.950533, 16.409664>,  <14.721427, 18.907921, 16.479692>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.487232, 18.950533, 16.409664> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.369539, 18.569921, 16.445482>,  <15.298923, 18.341555, 16.466974>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.369539, 18.569921, 16.445482>,  <15.487232, 18.950533, 16.409664>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.369539, 18.569921, 16.445482> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582288, -0.252772, -0.772688,
		0.757870, -0.175208, 0.628439,
		-0.294233, -0.951529, 0.089547,
		15.281269, 18.284462, 16.472347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<7.028771, 25.318195, 8.183990> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.819507, 25.030094, 8.366216>,  <6.693948, 24.857233, 8.475552>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.819507, 25.030094, 8.366216>,  <7.028771, 25.318195, 8.183990>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.819507, 25.030094, 8.366216> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523692, -0.150030, -0.838593,
		0.672346, -0.677296, -0.298700,
		-0.523161, -0.720251, 0.455566,
		6.662559, 24.814018, 8.502886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.068444, 24.738195, 7.730860>,  <7.028771, 25.318195, 8.183990>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.068444, 24.738195, 7.730860> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.731698, 24.734131, 7.946697>,  <6.529650, 24.731691, 8.076199>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.731698, 24.734131, 7.946697>,  <7.068444, 24.738195, 7.730860>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.731698, 24.734131, 7.946697> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527259, -0.197852, -0.826349,
		0.115155, -0.980179, 0.161207,
		-0.841865, -0.010160, 0.539592,
		6.479138, 24.731083, 8.108575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.796056, 24.060345, 7.665164>,  <7.068444, 24.738195, 7.730860>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.796056, 24.060345, 7.665164> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.501797, 24.318558, 7.747248>,  <6.325241, 24.473486, 7.796498>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.501797, 24.318558, 7.747248>,  <6.796056, 24.060345, 7.665164>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.501797, 24.318558, 7.747248> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546020, -0.385852, -0.743627,
		-0.400865, -0.659086, 0.636327,
		-0.735642, 0.645541, 0.205200,
		6.281103, 24.512217, 7.808811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.104204, 23.699059, 7.913808>,  <6.796056, 24.060345, 7.665164>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.104204, 23.699059, 7.913808> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.071388, 24.045618, 7.716782>,  <6.051698, 24.253553, 7.598566>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.071388, 24.045618, 7.716782>,  <6.104204, 23.699059, 7.913808>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.071388, 24.045618, 7.716782> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641597, -0.424110, -0.639127,
		-0.762642, 0.263594, 0.590674,
		-0.082040, 0.866400, -0.492565,
		6.046776, 24.305538, 7.569012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.751349, 22.971233, 7.712774>,  <6.104204, 23.699059, 7.913808>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.751349, 22.971233, 7.712774> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.419111, 23.105391, 7.534956>,  <5.219768, 23.185884, 7.428266>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.419111, 23.105391, 7.534956>,  <5.751349, 22.971233, 7.712774>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.419111, 23.105391, 7.534956> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415424, -0.904805, 0.093543,
		-0.370853, 0.262371, 0.890859,
		-0.830597, 0.335393, -0.444544,
		5.169932, 23.206009, 7.401593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.299806, 22.270449, 7.772231>,  <5.751349, 22.971233, 7.712774>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.299806, 22.270449, 7.772231> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.260030, 22.094479, 7.415226>,  <5.236165, 21.988895, 7.201024>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.260030, 22.094479, 7.415226>,  <5.299806, 22.270449, 7.772231>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.260030, 22.094479, 7.415226> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269832, 0.851425, -0.449739,
		0.957759, -0.285550, 0.034041,
		-0.099440, -0.439927, -0.892511,
		5.230198, 21.962500, 7.147473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.855281, 21.912987, 7.455951>,  <5.299806, 22.270449, 7.772231>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.855281, 21.912987, 7.455951> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.155715, 22.062897, 7.673358>,  <6.335976, 22.152843, 7.803802>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.155715, 22.062897, 7.673358>,  <5.855281, 21.912987, 7.455951>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.155715, 22.062897, 7.673358> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019642, -0.835579, 0.549019,
		0.659912, -0.401685, -0.634953,
		0.751086, 0.374776, 0.543519,
		6.381042, 22.175329, 7.836413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.429679, 21.408316, 7.647007>,  <5.855281, 21.912987, 7.455951>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.429679, 21.408316, 7.647007> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.395874, 21.694204, 7.924721>,  <6.375590, 21.865738, 8.091350>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.395874, 21.694204, 7.924721>,  <6.429679, 21.408316, 7.647007>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.395874, 21.694204, 7.924721> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005894, -0.696407, 0.717623,
		0.996405, 0.064741, 0.054644,
		-0.084514, 0.714721, 0.694284,
		6.370519, 21.908621, 8.133007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.562047, 21.126421, 8.251036>,  <6.429679, 21.408316, 7.647007>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.562047, 21.126421, 8.251036> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.446715, 21.478453, 8.401941>,  <6.377516, 21.689671, 8.492485>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.446715, 21.478453, 8.401941>,  <6.562047, 21.126421, 8.251036>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.446715, 21.478453, 8.401941> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053367, -0.408154, 0.911352,
		0.956043, 0.242637, 0.164651,
		-0.288330, 0.880078, 0.377264,
		6.360216, 21.742476, 8.515121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.976580, 20.793806, 8.666871>,  <6.562047, 21.126421, 8.251036>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.976580, 20.793806, 8.666871> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.608953, 20.881231, 8.798048>,  <5.388377, 20.933687, 8.876754>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.608953, 20.881231, 8.798048>,  <5.976580, 20.793806, 8.666871>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.608953, 20.881231, 8.798048> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012159, -0.816003, 0.577919,
		0.393914, 0.535134, 0.747304,
		-0.919067, 0.218564, 0.327942,
		5.333233, 20.946800, 8.896431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.814477, 20.929090, 9.470933>,  <5.976580, 20.793806, 8.666871>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.814477, 20.929090, 9.470933> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.504717, 20.761068, 9.281678>,  <5.318861, 20.660255, 9.168125>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.504717, 20.761068, 9.281678>,  <5.814477, 20.929090, 9.470933>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.504717, 20.761068, 9.281678> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097692, -0.818229, 0.566532,
		-0.625108, 0.392501, 0.674672,
		-0.774400, -0.420054, -0.473137,
		5.272397, 20.635052, 9.139737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.430260, 20.702530, 9.979440>,  <5.814477, 20.929090, 9.470933>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.430260, 20.702530, 9.979440> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.316288, 20.476427, 9.669782>,  <5.247905, 20.340765, 9.483987>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.316288, 20.476427, 9.669782>,  <5.430260, 20.702530, 9.979440>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.316288, 20.476427, 9.669782> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051163, -0.797503, 0.601141,
		-0.957182, 0.210891, 0.198312,
		-0.284930, -0.565255, -0.774146,
		5.230809, 20.306850, 9.437538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.837741, 20.349043, 10.238274>,  <5.430260, 20.702530, 9.979440>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.837741, 20.349043, 10.238274> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.922558, 20.146091, 9.904182>,  <4.973448, 20.024321, 9.703728>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.922558, 20.146091, 9.904182>,  <4.837741, 20.349043, 10.238274>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.922558, 20.146091, 9.904182> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125583, -0.861723, 0.491592,
		-0.969158, 0.000652, -0.246440,
		0.212042, -0.507379, -0.835227,
		4.986171, 19.993877, 9.653614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.338799, 19.921833, 10.278315>,  <4.837741, 20.349043, 10.238274>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.338799, 19.921833, 10.278315> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.609826, 19.758198, 10.033838>,  <4.772441, 19.660017, 9.887153>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.609826, 19.758198, 10.033838>,  <4.338799, 19.921833, 10.278315>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.609826, 19.758198, 10.033838> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133464, -0.885622, 0.444815,
		-0.723251, -0.219820, -0.654666,
		0.677566, -0.409087, -0.611189,
		4.813095, 19.635471, 9.850481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.059234, 19.260479, 10.031546>,  <4.338799, 19.921833, 10.278315>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.059234, 19.260479, 10.031546> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.450109, 19.207415, 9.965208>,  <4.684634, 19.175577, 9.925406>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.450109, 19.207415, 9.965208>,  <4.059234, 19.260479, 10.031546>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.450109, 19.207415, 9.965208> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085259, -0.960263, 0.265756,
		-0.194509, -0.245554, -0.949668,
		0.977189, -0.132659, -0.165845,
		4.743266, 19.167618, 9.915455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.070192, 18.524277, 9.776897>,  <4.059234, 19.260479, 10.031546>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.070192, 18.524277, 9.776897> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.425889, 18.631592, 9.925098>,  <4.639307, 18.695980, 10.014019>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.425889, 18.631592, 9.925098>,  <4.070192, 18.524277, 9.776897>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.425889, 18.631592, 9.925098> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105842, -0.908643, 0.403937,
		0.445026, -0.319983, -0.836399,
		0.889241, 0.268288, 0.370502,
		4.692661, 18.712078, 10.036249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.459949, 17.984049, 9.617304>,  <4.070192, 18.524277, 9.776897>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.459949, 17.984049, 9.617304> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.642528, 18.184973, 9.911063>,  <4.752076, 18.305527, 10.087319>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.642528, 18.184973, 9.911063>,  <4.459949, 17.984049, 9.617304>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.642528, 18.184973, 9.911063> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009762, -0.828177, 0.560382,
		0.889696, -0.248617, -0.382923,
		0.456448, 0.502308, 0.734399,
		4.779463, 18.335665, 10.131383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.915835, 17.441822, 9.951781>,  <4.459949, 17.984049, 9.617304>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.915835, 17.441822, 9.951781> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.899887, 17.732546, 10.226054>,  <4.890318, 17.906981, 10.390618>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.899887, 17.732546, 10.226054>,  <4.915835, 17.441822, 9.951781>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.899887, 17.732546, 10.226054> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038460, -0.684603, 0.727901,
		0.998464, 0.055392, -0.000658,
		-0.039870, 0.726808, 0.685682,
		4.887926, 17.950588, 10.431759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.373544, 17.236168, 10.453289>,  <4.915835, 17.441822, 9.951781>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.373544, 17.236168, 10.453289> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.157408, 17.507364, 10.652633>,  <5.027726, 17.670082, 10.772239>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.157408, 17.507364, 10.652633>,  <5.373544, 17.236168, 10.453289>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.157408, 17.507364, 10.652633> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055389, -0.619639, 0.782930,
		0.839622, 0.395445, 0.372370,
		-0.540340, 0.677990, 0.498359,
		4.995306, 17.710762, 10.802140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.650402, 17.202154, 11.087523>,  <5.373544, 17.236168, 10.453289>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.650402, 17.202154, 11.087523> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.290087, 17.370312, 11.131066>,  <5.073897, 17.471207, 11.157192>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.290087, 17.370312, 11.131066>,  <5.650402, 17.202154, 11.087523>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.290087, 17.370312, 11.131066> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161217, -0.556500, 0.815056,
		0.403223, 0.716644, 0.569064,
		-0.900789, 0.420392, 0.108858,
		5.019850, 17.496429, 11.163724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.664602, 17.553982, 11.751893>,  <5.650402, 17.202154, 11.087523>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.664602, 17.553982, 11.751893> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.279362, 17.494078, 11.662441>,  <5.048218, 17.458136, 11.608770>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.279362, 17.494078, 11.662441>,  <5.664602, 17.553982, 11.751893>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.279362, 17.494078, 11.662441> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159084, -0.353452, 0.921826,
		-0.217093, 0.923387, 0.316586,
		-0.963100, -0.149758, -0.223629,
		4.990431, 17.449150, 11.595353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.331754, 17.797596, 12.313817>,  <5.664602, 17.553982, 11.751893>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.331754, 17.797596, 12.313817> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.084254, 17.548613, 12.122111>,  <4.935754, 17.399221, 12.007088>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.084254, 17.548613, 12.122111>,  <5.331754, 17.797596, 12.313817>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.084254, 17.548613, 12.122111> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226893, -0.442472, 0.867605,
		-0.752109, 0.645572, 0.132548,
		-0.618750, -0.622459, -0.479263,
		4.898629, 17.361876, 11.978333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.028362, 17.432373, 12.857050>,  <5.331754, 17.797596, 12.313817>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.028362, 17.432373, 12.857050> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.905526, 17.220083, 12.541068>,  <4.831824, 17.092709, 12.351480>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.905526, 17.220083, 12.541068>,  <5.028362, 17.432373, 12.857050>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.905526, 17.220083, 12.541068> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161064, -0.789105, 0.592767,
		-0.937952, 0.309266, 0.156846,
		-0.307091, -0.530724, -0.789954,
		4.813398, 17.060865, 12.304082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.475260, 17.124594, 13.156858>,  <5.028362, 17.432373, 12.857050>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.475260, 17.124594, 13.156858> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.602615, 16.893749, 12.856040>,  <4.679028, 16.755243, 12.675549>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.602615, 16.893749, 12.856040>,  <4.475260, 17.124594, 13.156858>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.602615, 16.893749, 12.856040> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076976, -0.774971, 0.627291,
		-0.944830, -0.257611, -0.202319,
		0.318388, -0.577110, -0.752046,
		4.698132, 16.720615, 12.630426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.084590, 16.488977, 13.176744>,  <4.475260, 17.124594, 13.156858>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.084590, 16.488977, 13.176744> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.411590, 16.404510, 12.962416>,  <4.607789, 16.353830, 12.833818>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.411590, 16.404510, 12.962416>,  <4.084590, 16.488977, 13.176744>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.411590, 16.404510, 12.962416> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244746, -0.714798, 0.655105,
		-0.521340, -0.666688, -0.532665,
		0.817499, -0.211165, -0.535822,
		4.656839, 16.341162, 12.801669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.278812, 15.729520, 13.263020>,  <4.084590, 16.488977, 13.176744>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.278812, 15.729520, 13.263020> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.610413, 15.917122, 13.141173>,  <4.809373, 16.029682, 13.068066>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.610413, 15.917122, 13.141173>,  <4.278812, 15.729520, 13.263020>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.610413, 15.917122, 13.141173> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555441, -0.627066, 0.546144,
		0.065130, -0.621950, -0.780343,
		0.829001, 0.469005, -0.304616,
		4.859113, 16.057823, 13.049788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.709125, 15.185128, 13.074628>,  <4.278812, 15.729520, 13.263020>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.709125, 15.185128, 13.074628> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.967008, 15.486122, 13.128474>,  <5.121737, 15.666718, 13.160782>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.967008, 15.486122, 13.128474>,  <4.709125, 15.185128, 13.074628>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.967008, 15.486122, 13.128474> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572378, -0.591914, 0.567468,
		0.506692, -0.288800, -0.812317,
		0.644707, 0.752484, 0.134615,
		5.160419, 15.711867, 13.168859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.360332, 14.832819, 13.039603>,  <4.709125, 15.185128, 13.074628>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.360332, 14.832819, 13.039603> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.453076, 15.183754, 13.207661>,  <5.508723, 15.394315, 13.308496>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.453076, 15.183754, 13.207661>,  <5.360332, 14.832819, 13.039603>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.453076, 15.183754, 13.207661> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562420, -0.473310, 0.677982,
		0.793677, 0.079100, -0.603174,
		0.231860, 0.877337, 0.420143,
		5.522635, 15.446955, 13.333704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.035281, 14.708148, 13.175920>,  <5.360332, 14.832819, 13.039603>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.035281, 14.708148, 13.175920> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.945816, 15.020871, 13.408729>,  <5.892137, 15.208506, 13.548414>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.945816, 15.020871, 13.408729>,  <6.035281, 14.708148, 13.175920>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.945816, 15.020871, 13.408729> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389385, -0.475753, 0.788694,
		0.893507, 0.403032, -0.198016,
		-0.223662, 0.781808, 0.582023,
		5.878717, 15.255414, 13.583336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.731540, 14.902795, 13.550903>,  <6.035281, 14.708148, 13.175920>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.731540, 14.902795, 13.550903> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.403849, 15.001787, 13.757831>,  <6.207234, 15.061183, 13.881987>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.403849, 15.001787, 13.757831>,  <6.731540, 14.902795, 13.550903>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.403849, 15.001787, 13.757831> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256434, -0.648784, 0.716464,
		0.512940, 0.719605, 0.468040,
		-0.819228, 0.247482, 0.517318,
		6.158081, 15.076032, 13.913026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.014501, 15.024786, 14.261912>,  <6.731540, 14.902795, 13.550903>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.014501, 15.024786, 14.261912> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.622035, 14.950833, 14.284305>,  <6.386555, 14.906462, 14.297740>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.622035, 14.950833, 14.284305>,  <7.014501, 15.024786, 14.261912>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.622035, 14.950833, 14.284305> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177947, -0.752285, 0.634352,
		-0.075166, 0.632366, 0.771014,
		-0.981165, -0.184881, 0.055981,
		6.327685, 14.895369, 14.301099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.355662, 14.497408, 13.733117>,  <7.014501, 15.024786, 14.261912>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.355662, 14.497408, 13.733117> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.321663, 14.562427, 13.339904>,  <7.301263, 14.601438, 13.103976>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.321663, 14.562427, 13.339904>,  <7.355662, 14.497408, 13.733117>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.321663, 14.562427, 13.339904> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474292, 0.874257, 0.103550,
		0.876255, -0.457443, -0.151404,
		-0.084998, 0.162546, -0.983033,
		7.296164, 14.611190, 13.044993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.013229, 14.816927, 13.495528>,  <7.355662, 14.497408, 13.733117>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.013229, 14.816927, 13.495528> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.757104, 14.900575, 13.199888>,  <7.603429, 14.950763, 13.022505>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.757104, 14.900575, 13.199888>,  <8.013229, 14.816927, 13.495528>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.757104, 14.900575, 13.199888> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377153, 0.923842, -0.065355,
		0.669144, -0.320602, -0.670418,
		-0.640314, 0.209118, -0.739099,
		7.565010, 14.963310, 12.978158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.449039, 15.129911, 13.089736>,  <8.013229, 14.816927, 13.495528>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.449039, 15.129911, 13.089736> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.085888, 15.240794, 12.963932>,  <7.867998, 15.307323, 12.888450>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.085888, 15.240794, 12.963932>,  <8.449039, 15.129911, 13.089736>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.085888, 15.240794, 12.963932> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347021, 0.917836, -0.192752,
		0.235237, -0.284137, -0.929478,
		-0.907876, 0.277206, -0.314511,
		7.813525, 15.323956, 12.869578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.550170, 15.607530, 12.351481>,  <8.449039, 15.129911, 13.089736>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.550170, 15.607530, 12.351481> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.197945, 15.688653, 12.522818>,  <7.986609, 15.737327, 12.625619>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.197945, 15.688653, 12.522818>,  <8.550170, 15.607530, 12.351481>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.197945, 15.688653, 12.522818> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265590, 0.959727, 0.091582,
		-0.392516, 0.194407, -0.898964,
		-0.880564, 0.202808, 0.428341,
		7.933775, 15.749496, 12.651320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.339089, 16.289152, 12.140238>,  <8.550170, 15.607530, 12.351481>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.339089, 16.289152, 12.140238> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.137805, 16.229776, 12.480765>,  <8.017035, 16.194151, 12.685081>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.137805, 16.229776, 12.480765>,  <8.339089, 16.289152, 12.140238>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.137805, 16.229776, 12.480765> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017541, 0.983179, 0.181800,
		-0.863985, 0.106417, -0.492143,
		-0.503211, -0.148439, 0.851319,
		7.986842, 16.185246, 12.736161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.777021, 16.645313, 11.975869>,  <8.339089, 16.289152, 12.140238>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.777021, 16.645313, 11.975869> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.803134, 16.612518, 12.373667>,  <7.818802, 16.592840, 12.612345>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.803134, 16.612518, 12.373667>,  <7.777021, 16.645313, 11.975869>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.803134, 16.612518, 12.373667> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142411, 0.985652, 0.090609,
		-0.987652, -0.147542, 0.052670,
		0.065283, -0.081989, 0.994493,
		7.822720, 16.587921, 12.672014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.176805, 16.953955, 12.208863>,  <7.777021, 16.645313, 11.975869>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.176805, 16.953955, 12.208863> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.423897, 16.915211, 12.521025>,  <7.572152, 16.891964, 12.708322>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.423897, 16.915211, 12.521025>,  <7.176805, 16.953955, 12.208863>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.423897, 16.915211, 12.521025> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031393, 0.988557, 0.147543,
		-0.785765, -0.115641, 0.607619,
		0.617728, -0.096859, 0.780404,
		7.609215, 16.886152, 12.755146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.883063, 17.402721, 12.637084>,  <7.176805, 16.953955, 12.208863>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.883063, 17.402721, 12.637084> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.254815, 17.357824, 12.777742>,  <7.477866, 17.330885, 12.862138>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.254815, 17.357824, 12.777742>,  <6.883063, 17.402721, 12.637084>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.254815, 17.357824, 12.777742> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097430, 0.993456, 0.059606,
		-0.356036, -0.021136, 0.934233,
		0.929379, -0.112244, 0.351646,
		7.533628, 17.324152, 12.883236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.934026, 17.977161, 13.097191>,  <6.883063, 17.402721, 12.637084>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.934026, 17.977161, 13.097191> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.319880, 17.881758, 13.052308>,  <7.551393, 17.824516, 13.025378>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.319880, 17.881758, 13.052308>,  <6.934026, 17.977161, 13.097191>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.319880, 17.881758, 13.052308> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227922, 0.968590, -0.099424,
		0.132397, 0.070334, 0.988698,
		0.964636, -0.238509, -0.112208,
		7.609272, 17.810205, 13.018645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.327553, 18.577847, 13.319873>,  <6.934026, 17.977161, 13.097191>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.327553, 18.577847, 13.319873> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.592731, 18.370647, 13.103659>,  <7.751839, 18.246328, 12.973930>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.592731, 18.370647, 13.103659>,  <7.327553, 18.577847, 13.319873>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.592731, 18.370647, 13.103659> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437887, 0.853905, -0.281250,
		0.607252, -0.050240, 0.792919,
		0.662947, -0.517998, -0.540535,
		7.791615, 18.215248, 12.941498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.904076, 18.782154, 13.572839>,  <7.327553, 18.577847, 13.319873>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.904076, 18.782154, 13.572839> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.979383, 18.635502, 13.208391>,  <8.024568, 18.547510, 12.989722>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.979383, 18.635502, 13.208391>,  <7.904076, 18.782154, 13.572839>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.979383, 18.635502, 13.208391> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365400, 0.887258, -0.281524,
		0.911613, -0.279921, 0.301009,
		0.188268, -0.366630, -0.911119,
		8.035864, 18.525513, 12.935056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.271828, 19.343464, 13.316102>,  <7.904076, 18.782154, 13.572839>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.271828, 19.343464, 13.316102> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.226575, 19.117994, 12.988816>,  <8.199423, 18.982712, 12.792445>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.226575, 19.117994, 12.988816>,  <8.271828, 19.343464, 13.316102>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.226575, 19.117994, 12.988816> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299464, 0.765862, -0.569014,
		0.947377, -0.309400, 0.082156,
		-0.113132, -0.563673, -0.818214,
		8.192636, 18.948893, 12.743352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.895375, 19.457260, 12.948997>,  <8.271828, 19.343464, 13.316102>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.895375, 19.457260, 12.948997> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.615379, 19.318146, 12.699498>,  <8.447382, 19.234676, 12.549799>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.615379, 19.318146, 12.699498>,  <8.895375, 19.457260, 12.948997>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.615379, 19.318146, 12.699498> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208810, 0.735566, -0.644469,
		0.682943, -0.581367, -0.442269,
		-0.699991, -0.347785, -0.623745,
		8.405382, 19.213810, 12.512374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.179461, 19.451044, 12.299742>,  <8.895375, 19.457260, 12.948997>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.179461, 19.451044, 12.299742> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.786174, 19.432657, 12.229121>,  <8.550201, 19.421625, 12.186749>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.786174, 19.432657, 12.229121>,  <9.179461, 19.451044, 12.299742>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.786174, 19.432657, 12.229121> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084616, 0.742448, -0.664539,
		0.161627, -0.668325, -0.726098,
		-0.983217, -0.045968, -0.176551,
		8.491209, 19.418867, 12.176156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.099217, 19.359297, 11.514870>,  <9.179461, 19.451044, 12.299742>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.099217, 19.359297, 11.514870> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.770578, 19.510227, 11.685798>,  <8.573395, 19.600786, 11.788355>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.770578, 19.510227, 11.685798>,  <9.099217, 19.359297, 11.514870>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.770578, 19.510227, 11.685798> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041266, 0.786993, -0.615580,
		-0.568574, -0.488124, -0.662162,
		-0.821597, 0.377328, 0.427321,
		8.524099, 19.623426, 11.813994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.760165, 19.540442, 10.971943>,  <9.099217, 19.359297, 11.514870>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.760165, 19.540442, 10.971943> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.585436, 19.747807, 11.265999>,  <8.480598, 19.872225, 11.442432>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.585436, 19.747807, 11.265999>,  <8.760165, 19.540442, 10.971943>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.585436, 19.747807, 11.265999> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258984, 0.710154, -0.654682,
		-0.861459, -0.476371, -0.175952,
		-0.436824, 0.518413, 0.735141,
		8.454389, 19.903330, 11.486541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.105637, 19.889450, 10.704707>,  <8.760165, 19.540442, 10.971943>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.105637, 19.889450, 10.704707> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.209463, 20.089491, 11.035167>,  <8.271759, 20.209517, 11.233442>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.209463, 20.089491, 11.035167>,  <8.105637, 19.889450, 10.704707>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.209463, 20.089491, 11.035167> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281922, 0.857446, -0.430473,
		-0.923658, -0.121172, 0.363555,
		0.259567, 0.500104, 0.826148,
		8.287333, 20.239523, 11.283011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.502090, 20.299391, 10.742951>,  <8.105637, 19.889450, 10.704707>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.502090, 20.299391, 10.742951> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.782369, 20.491835, 10.953687>,  <7.950536, 20.607300, 11.080128>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.782369, 20.491835, 10.953687>,  <7.502090, 20.299391, 10.742951>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.782369, 20.491835, 10.953687> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363720, 0.876146, -0.316348,
		-0.613784, 0.030043, 0.788902,
		0.700698, 0.481108, 0.526837,
		7.992578, 20.636168, 11.111738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.171150, 20.875185, 11.112451>,  <7.502090, 20.299391, 10.742951>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.171150, 20.875185, 11.112451> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.560577, 20.966047, 11.121964>,  <7.794234, 21.020565, 11.127672>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.560577, 20.966047, 11.121964>,  <7.171150, 20.875185, 11.112451>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.560577, 20.966047, 11.121964> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207153, 0.922072, -0.326911,
		-0.096190, 0.313344, 0.944756,
		0.973568, 0.227155, 0.023784,
		7.852648, 21.034193, 11.129100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.396223, 21.570198, 11.562290>,  <7.171150, 20.875185, 11.112451>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.396223, 21.570198, 11.562290> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.632724, 21.516176, 11.244250>,  <7.774624, 21.483763, 11.053427>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.632724, 21.516176, 11.244250>,  <7.396223, 21.570198, 11.562290>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.632724, 21.516176, 11.244250> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249970, 0.906640, -0.339882,
		0.766770, 0.399706, 0.502293,
		0.591252, -0.135053, -0.795099,
		7.810100, 21.475660, 11.005721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.823406, 22.150627, 11.639602>,  <7.396223, 21.570198, 11.562290>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.823406, 22.150627, 11.639602> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.729568, 22.011095, 11.276662>,  <7.673265, 21.927376, 11.058898>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.729568, 22.011095, 11.276662>,  <7.823406, 22.150627, 11.639602>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.729568, 22.011095, 11.276662> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555328, 0.814188, -0.169436,
		0.797856, 0.464128, -0.384721,
		-0.234595, -0.348832, -0.907348,
		7.659190, 21.906445, 11.004457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<15.937362, 17.664751, 22.647436> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.566695, 17.514877, 22.635412>,  <15.344296, 17.424953, 22.628197>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.566695, 17.514877, 22.635412>,  <15.937362, 17.664751, 22.647436>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.566695, 17.514877, 22.635412> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204956, 0.436614, 0.875991,
		-0.315093, 0.817913, -0.481389,
		-0.926666, -0.374682, -0.030062,
		15.288695, 17.402473, 22.626394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.549029, 18.287954, 22.706524>,  <15.937362, 17.664751, 22.647436>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.549029, 18.287954, 22.706524> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.376394, 17.954308, 22.843916>,  <15.272813, 17.754120, 22.926352>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.376394, 17.954308, 22.843916>,  <15.549029, 18.287954, 22.706524>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.376394, 17.954308, 22.843916> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024548, 0.391488, 0.919856,
		-0.901737, 0.388567, -0.189438,
		-0.431588, -0.834118, 0.343480,
		15.246918, 17.704073, 22.946960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.130833, 18.576025, 23.224567>,  <15.549029, 18.287954, 22.706524>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.130833, 18.576025, 23.224567> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.113126, 18.184603, 23.305035>,  <15.102502, 17.949749, 23.353315>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.113126, 18.184603, 23.305035>,  <15.130833, 18.576025, 23.224567>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.113126, 18.184603, 23.305035> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205962, 0.205980, 0.956636,
		-0.977558, 0.000914, -0.210663,
		-0.044267, -0.978556, 0.201169,
		15.099846, 17.891037, 23.365385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.596590, 18.451748, 23.635128>,  <15.130833, 18.576025, 23.224567>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.596590, 18.451748, 23.635128> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.825927, 18.133194, 23.712122>,  <14.963529, 17.942062, 23.758318>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.825927, 18.133194, 23.712122>,  <14.596590, 18.451748, 23.635128>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.825927, 18.133194, 23.712122> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136484, 0.138814, 0.980868,
		-0.807868, -0.588644, -0.029105,
		0.573342, -0.796384, 0.192484,
		14.997930, 17.894279, 23.769867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.225953, 18.165737, 24.037479>,  <14.596590, 18.451748, 23.635128>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.225953, 18.165737, 24.037479> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.578905, 17.996847, 24.120554>,  <14.790676, 17.895514, 24.170399>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.578905, 17.996847, 24.120554>,  <14.225953, 18.165737, 24.037479>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.578905, 17.996847, 24.120554> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111865, 0.240492, 0.964183,
		-0.457048, -0.874009, 0.164973,
		0.882379, -0.422223, 0.207688,
		14.843619, 17.870180, 24.182859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.117331, 17.666811, 24.705151>,  <14.225953, 18.165737, 24.037479>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.117331, 17.666811, 24.705151> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.510193, 17.740322, 24.689173>,  <14.745911, 17.784428, 24.679586>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.510193, 17.740322, 24.689173>,  <14.117331, 17.666811, 24.705151>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.510193, 17.740322, 24.689173> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015303, 0.289796, 0.956966,
		0.187442, -0.939279, 0.287437,
		0.982157, 0.183775, -0.039946,
		14.804840, 17.795454, 24.677189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.338726, 17.300177, 25.313185>,  <14.117331, 17.666811, 24.705151>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.338726, 17.300177, 25.313185> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.613408, 17.566118, 25.195608>,  <14.778217, 17.725683, 25.125061>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.613408, 17.566118, 25.195608>,  <14.338726, 17.300177, 25.313185>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.613408, 17.566118, 25.195608> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046738, 0.443903, 0.894855,
		0.725431, -0.600764, 0.335905,
		0.686706, 0.664855, -0.293943,
		14.819420, 17.765575, 25.107426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.891047, 17.274454, 25.939035>,  <14.338726, 17.300177, 25.313185>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.891047, 17.274454, 25.939035> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.929433, 17.603739, 25.715208>,  <14.952464, 17.801310, 25.580912>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.929433, 17.603739, 25.715208>,  <14.891047, 17.274454, 25.939035>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.929433, 17.603739, 25.715208> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165521, 0.541138, 0.824483,
		0.981526, -0.171740, -0.084329,
		0.095963, 0.823210, -0.559567,
		14.958222, 17.850702, 25.547338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.518132, 17.563379, 26.060774>,  <14.891047, 17.274454, 25.939035>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.518132, 17.563379, 26.060774> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.317268, 17.882975, 25.928442>,  <15.196750, 18.074732, 25.849043>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.317268, 17.882975, 25.928442>,  <15.518132, 17.563379, 26.060774>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.317268, 17.882975, 25.928442> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221475, 0.488628, 0.843914,
		0.835933, 0.350509, -0.422326,
		-0.502160, 0.798991, -0.330832,
		15.166620, 18.122671, 25.829193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.821671, 18.125479, 26.542681>,  <15.518132, 17.563379, 26.060774>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.821671, 18.125479, 26.542681> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.486053, 18.284866, 26.394505>,  <15.284681, 18.380499, 26.305599>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.486053, 18.284866, 26.394505>,  <15.821671, 18.125479, 26.542681>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.486053, 18.284866, 26.394505> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000967, 0.679786, 0.733410,
		0.544061, 0.615722, -0.569985,
		-0.839045, 0.398469, -0.370441,
		15.234339, 18.404408, 26.283373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.865329, 18.735428, 26.833670>,  <15.821671, 18.125479, 26.542681>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.865329, 18.735428, 26.833670> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.491564, 18.773676, 26.696421>,  <15.267305, 18.796625, 26.614071>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.491564, 18.773676, 26.696421>,  <15.865329, 18.735428, 26.833670>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.491564, 18.773676, 26.696421> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213634, 0.620357, 0.754664,
		0.285019, 0.778469, -0.559241,
		-0.934411, 0.095620, -0.343121,
		15.211241, 18.802362, 26.593485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.810216, 19.433498, 26.725395>,  <15.865329, 18.735428, 26.833670>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.810216, 19.433498, 26.725395> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.457538, 19.255884, 26.789198>,  <15.245931, 19.149315, 26.827480>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.457538, 19.255884, 26.789198>,  <15.810216, 19.433498, 26.725395>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.457538, 19.255884, 26.789198> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148723, 0.582395, 0.799185,
		-0.447765, 0.680916, -0.579534,
		-0.881696, -0.444038, 0.159508,
		15.193028, 19.122673, 26.837049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.231779, 19.894764, 26.965157>,  <15.810216, 19.433498, 26.725395>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.231779, 19.894764, 26.965157> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.107672, 19.533022, 27.082376>,  <15.033208, 19.315977, 27.152708>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.107672, 19.533022, 27.082376>,  <15.231779, 19.894764, 26.965157>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.107672, 19.533022, 27.082376> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228656, 0.370208, 0.900368,
		-0.922741, 0.212348, -0.321649,
		-0.310268, -0.904353, 0.293051,
		15.014591, 19.261717, 27.170292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.483646, 19.828787, 27.181486>,  <15.231779, 19.894764, 26.965157>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.483646, 19.828787, 27.181486> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.672590, 19.535500, 27.377146>,  <14.785956, 19.359528, 27.494541>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.672590, 19.535500, 27.377146>,  <14.483646, 19.828787, 27.181486>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.672590, 19.535500, 27.377146> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268541, 0.408861, 0.872192,
		-0.839501, -0.543344, -0.003770,
		0.472359, -0.733219, 0.489150,
		14.814298, 19.315535, 27.523891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.217449, 20.594732, 27.236469>,  <14.483646, 19.828787, 27.181486>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.217449, 20.594732, 27.236469> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.109168, 20.944408, 27.075218>,  <14.044200, 21.154215, 26.978468>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.109168, 20.944408, 27.075218>,  <14.217449, 20.594732, 27.236469>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.109168, 20.944408, 27.075218> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075463, -0.398204, -0.914188,
		-0.959701, -0.277894, 0.041825,
		-0.270702, 0.874190, -0.403127,
		14.027957, 21.206665, 26.954281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.869194, 20.394974, 26.644844>,  <14.217449, 20.594732, 27.236469>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.869194, 20.394974, 26.644844> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.894046, 20.784788, 26.558662>,  <13.908957, 21.018677, 26.506954>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.894046, 20.784788, 26.558662>,  <13.869194, 20.394974, 26.644844>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.894046, 20.784788, 26.558662> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110243, -0.207847, -0.971929,
		-0.991961, 0.084137, 0.094522,
		0.062129, 0.974536, -0.215452,
		13.912684, 21.077148, 26.494026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.257236, 20.617746, 26.175188>,  <13.869194, 20.394974, 26.644844>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.257236, 20.617746, 26.175188> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.567201, 20.862743, 26.112755>,  <13.753180, 21.009741, 26.075294>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.567201, 20.862743, 26.112755>,  <13.257236, 20.617746, 26.175188>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.567201, 20.862743, 26.112755> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054278, -0.181546, -0.981883,
		-0.629733, 0.769346, -0.107438,
		0.774913, 0.612493, -0.156084,
		13.799675, 21.046492, 26.065929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.036505, 21.037992, 25.678959>,  <13.257236, 20.617746, 26.175188>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.036505, 21.037992, 25.678959> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.431643, 21.092129, 25.648386>,  <13.668727, 21.124611, 25.630043>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.431643, 21.092129, 25.648386>,  <13.036505, 21.037992, 25.678959>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.431643, 21.092129, 25.648386> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074427, -0.019825, -0.997029,
		-0.136456, 0.990600, -0.009511,
		0.987846, 0.135342, -0.076432,
		13.727998, 21.132732, 25.625456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.151679, 21.517733, 25.037996>,  <13.036505, 21.037992, 25.678959>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.151679, 21.517733, 25.037996> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.491721, 21.320665, 25.112400>,  <13.695746, 21.202425, 25.157042>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.491721, 21.320665, 25.112400>,  <13.151679, 21.517733, 25.037996>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.491721, 21.320665, 25.112400> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163079, -0.089567, -0.982539,
		0.500727, 0.865595, 0.004202,
		0.850105, -0.492669, 0.186009,
		13.746753, 21.172865, 25.168203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.733634, 21.697712, 24.492428>,  <13.151679, 21.517733, 25.037996>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.733634, 21.697712, 24.492428> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.865445, 21.353123, 24.646975>,  <13.944532, 21.146370, 24.739702>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.865445, 21.353123, 24.646975>,  <13.733634, 21.697712, 24.492428>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.865445, 21.353123, 24.646975> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328620, -0.278981, -0.902318,
		0.885110, 0.424307, 0.191165,
		0.329528, -0.861472, 0.386365,
		13.964304, 21.094681, 24.762884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.343782, 21.593803, 23.972919>,  <13.733634, 21.697712, 24.492428>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.343782, 21.593803, 23.972919> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.275550, 21.257212, 24.177980>,  <14.234611, 21.055256, 24.301018>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.275550, 21.257212, 24.177980>,  <14.343782, 21.593803, 23.972919>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.275550, 21.257212, 24.177980> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342700, -0.538464, -0.769814,
		0.923828, 0.044371, 0.380227,
		-0.170581, -0.841479, 0.512655,
		14.224376, 21.004768, 24.331778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.989246, 21.310423, 24.000395>,  <14.343782, 21.593803, 23.972919>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.989246, 21.310423, 24.000395> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.696101, 21.040241, 24.033068>,  <14.520214, 20.878132, 24.052671>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.696101, 21.040241, 24.033068>,  <14.989246, 21.310423, 24.000395>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.696101, 21.040241, 24.033068> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356390, -0.483373, -0.799585,
		0.579568, -0.556875, 0.594971,
		-0.732862, -0.675456, 0.081683,
		14.476242, 20.837605, 24.057573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.290411, 20.705843, 23.842663>,  <14.989246, 21.310423, 24.000395>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.290411, 20.705843, 23.842663> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.906894, 20.605225, 23.789839>,  <14.676784, 20.544853, 23.758144>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.906894, 20.605225, 23.789839>,  <15.290411, 20.705843, 23.842663>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.906894, 20.605225, 23.789839> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273448, -0.690975, -0.669163,
		0.077074, -0.677701, 0.731287,
		-0.958794, -0.251544, -0.132060,
		14.619255, 20.529762, 23.750221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.182707, 19.899464, 23.650063>,  <15.290411, 20.705843, 23.842663>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.182707, 19.899464, 23.650063> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.849072, 20.072620, 23.513296>,  <14.648891, 20.176514, 23.431236>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.849072, 20.072620, 23.513296>,  <15.182707, 19.899464, 23.650063>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.849072, 20.072620, 23.513296> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065552, -0.537647, -0.840618,
		-0.547740, -0.723554, 0.420061,
		-0.834077, 0.432904, -0.341921,
		14.598846, 20.202488, 23.410723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.935785, 19.448298, 23.236845>,  <15.182707, 19.899464, 23.650063>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.935785, 19.448298, 23.236845> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.706173, 19.750620, 23.110832>,  <14.568405, 19.932013, 23.035225>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.706173, 19.750620, 23.110832>,  <14.935785, 19.448298, 23.236845>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.706173, 19.750620, 23.110832> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004673, -0.381704, -0.924273,
		-0.818820, -0.532034, 0.215578,
		-0.574031, 0.755805, -0.315033,
		14.533963, 19.977362, 23.016323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.400524, 19.116659, 22.910580>,  <14.935785, 19.448298, 23.236845>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.400524, 19.116659, 22.910580> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.371934, 19.485525, 22.758524>,  <14.354780, 19.706844, 22.667290>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.371934, 19.485525, 22.758524>,  <14.400524, 19.116659, 22.910580>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.371934, 19.485525, 22.758524> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099068, -0.385794, -0.917251,
		-0.992510, -0.027900, 0.118931,
		-0.071475, 0.922163, -0.380140,
		14.350492, 19.762175, 22.644482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.814089, 19.130726, 22.513187>,  <14.400524, 19.116659, 22.910580>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.814089, 19.130726, 22.513187> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.028072, 19.440466, 22.378014>,  <14.156463, 19.626310, 22.296909>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.028072, 19.440466, 22.378014>,  <13.814089, 19.130726, 22.513187>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.028072, 19.440466, 22.378014> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112531, -0.331112, -0.936857,
		-0.837350, 0.539209, -0.089993,
		0.534959, 0.774351, -0.337935,
		14.188560, 19.672771, 22.276632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.385962, 19.565523, 22.130392>,  <13.814089, 19.130726, 22.513187>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.385962, 19.565523, 22.130392> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.759423, 19.651197, 22.015558>,  <13.983500, 19.702602, 21.946657>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.759423, 19.651197, 22.015558>,  <13.385962, 19.565523, 22.130392>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.759423, 19.651197, 22.015558> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210737, -0.319621, -0.923814,
		-0.289626, 0.923020, -0.253278,
		0.933652, 0.214186, -0.287085,
		14.039519, 19.715454, 21.929432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.826545, 20.047518, 22.045929>,  <13.385962, 19.565523, 22.130392>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.826545, 20.047518, 22.045929> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.442588, 19.940226, 22.013290>,  <12.212214, 19.875851, 21.993708>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.442588, 19.940226, 22.013290>,  <12.826545, 20.047518, 22.045929>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.442588, 19.940226, 22.013290> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106231, 0.078633, 0.991228,
		-0.259463, 0.960140, -0.103973,
		-0.959893, -0.268232, -0.081594,
		12.154620, 19.859756, 21.988811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.458615, 20.485497, 22.436213>,  <12.826545, 20.047518, 22.045929>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.458615, 20.485497, 22.436213> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.232844, 20.157957, 22.394434>,  <12.097382, 19.961433, 22.369366>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.232844, 20.157957, 22.394434>,  <12.458615, 20.485497, 22.436213>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.232844, 20.157957, 22.394434> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048526, -0.093397, 0.994446,
		-0.824055, 0.566361, 0.012981,
		-0.564427, -0.818848, -0.104447,
		12.063516, 19.912302, 22.363100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.788824, 20.581144, 22.755497>,  <12.458615, 20.485497, 22.436213>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.788824, 20.581144, 22.755497> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.832913, 20.183653, 22.748009>,  <11.859367, 19.945158, 22.743515>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.832913, 20.183653, 22.748009>,  <11.788824, 20.581144, 22.755497>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.832913, 20.183653, 22.748009> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283368, -0.049476, 0.957734,
		-0.952656, -0.100260, -0.287045,
		0.110224, -0.993730, -0.018723,
		11.865980, 19.885534, 22.742392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.145402, 20.330797, 22.950369>,  <11.788824, 20.581144, 22.755497>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.145402, 20.330797, 22.950369> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.413961, 20.041983, 23.017164>,  <11.575097, 19.868694, 23.057241>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.413961, 20.041983, 23.017164>,  <11.145402, 20.330797, 22.950369>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.413961, 20.041983, 23.017164> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248516, -0.007074, 0.968602,
		-0.698187, -0.691816, -0.184188,
		0.671398, -0.722039, 0.166988,
		11.615381, 19.825371, 23.067261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.793498, 19.915169, 23.499168>,  <11.145402, 20.330797, 22.950369>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.793498, 19.915169, 23.499168> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.167869, 19.774532, 23.507421>,  <11.392491, 19.690151, 23.512373>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.167869, 19.774532, 23.507421>,  <10.793498, 19.915169, 23.499168>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.167869, 19.774532, 23.507421> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076628, -0.146100, 0.986297,
		-0.343759, -0.924683, -0.163681,
		0.935927, -0.351591, 0.020634,
		11.448647, 19.669056, 23.513611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.728511, 19.332914, 23.808165>,  <10.793498, 19.915169, 23.499168>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.728511, 19.332914, 23.808165> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.113679, 19.434074, 23.845743>,  <11.344780, 19.494770, 23.868290>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.113679, 19.434074, 23.845743>,  <10.728511, 19.332914, 23.808165>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.113679, 19.434074, 23.845743> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075500, -0.081704, 0.993793,
		0.259006, -0.964036, -0.059580,
		0.962920, 0.252900, 0.093946,
		11.402555, 19.509945, 23.873926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.977672, 18.934772, 24.291315>,  <10.728511, 19.332914, 23.808165>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.977672, 18.934772, 24.291315> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.221805, 19.251623, 24.289202>,  <11.368284, 19.441734, 24.287933>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.221805, 19.251623, 24.289202>,  <10.977672, 18.934772, 24.291315>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.221805, 19.251623, 24.289202> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013170, -0.003480, 0.999907,
		0.792037, -0.610344, -0.012556,
		0.610332, 0.792129, -0.005282,
		11.404904, 19.489262, 24.287617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.773538, 18.136005, 24.417170>,  <10.977672, 18.934772, 24.291315>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.773538, 18.136005, 24.417170> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.384963, 18.182272, 24.500050>,  <10.151818, 18.210032, 24.549778>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.384963, 18.182272, 24.500050>,  <10.773538, 18.136005, 24.417170>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<10.384963, 18.182272, 24.500050> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211122, -0.022635, -0.977198,
		-0.108338, -0.993030, 0.046408,
		-0.971438, 0.115665, 0.207198,
		10.093532, 18.216972, 24.562208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.332517, 17.691008, 24.020105>,  <10.773538, 18.136005, 24.417170>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.332517, 17.691008, 24.020105> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.093081, 17.996691, 24.116171>,  <9.949420, 18.180099, 24.173811>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.093081, 17.996691, 24.116171>,  <10.332517, 17.691008, 24.020105>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<10.093081, 17.996691, 24.116171> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315522, 0.050647, -0.947566,
		-0.736300, -0.642980, 0.210807,
		-0.598589, 0.764207, 0.240165,
		9.913505, 18.225952, 24.188221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.703490, 17.493969, 23.689125>,  <10.332517, 17.691008, 24.020105>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.703490, 17.493969, 23.689125> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.693671, 17.889315, 23.749166>,  <9.687779, 18.126522, 23.785191>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.693671, 17.889315, 23.749166>,  <9.703490, 17.493969, 23.689125>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<9.693671, 17.889315, 23.749166> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455242, 0.122623, -0.881883,
		-0.890029, -0.089981, 0.446935,
		-0.024548, 0.988366, 0.150102,
		9.686307, 18.185825, 23.794197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.200318, 17.641987, 23.291523>,  <9.703490, 17.493969, 23.689125>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.200318, 17.641987, 23.291523> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.367597, 18.003729, 23.325588>,  <9.467963, 18.220774, 23.346027>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.367597, 18.003729, 23.325588>,  <9.200318, 17.641987, 23.291523>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<9.367597, 18.003729, 23.325588> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294229, 0.223564, -0.929219,
		-0.859385, 0.363537, 0.359581,
		0.418195, 0.904356, 0.085164,
		9.493055, 18.275036, 23.351137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.668272, 17.976618, 22.999559>,  <9.200318, 17.641987, 23.291523>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.668272, 17.976618, 22.999559> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<8.998334, 18.202410, 23.008335>,  <9.196371, 18.337885, 23.013601>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<8.998334, 18.202410, 23.008335>,  <8.668272, 17.976618, 22.999559>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<8.998334, 18.202410, 23.008335> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198691, 0.326364, -0.924126,
		-0.528809, 0.758189, 0.381458,
		0.825156, 0.564479, 0.021939,
		9.245881, 18.371754, 23.014917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.497917, 18.652500, 22.668362>,  <8.668272, 17.976618, 22.999559>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.497917, 18.652500, 22.668362> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<8.893786, 18.605707, 22.635227>,  <9.131309, 18.577631, 22.615347>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<8.893786, 18.605707, 22.635227>,  <8.497917, 18.652500, 22.668362>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<8.893786, 18.605707, 22.635227> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066936, 0.133846, -0.988739,
		0.126751, 0.984074, 0.124634,
		0.989674, -0.116981, -0.082835,
		9.190688, 18.570612, 22.610376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.706686, 19.218874, 22.323460>,  <8.497917, 18.652500, 22.668362>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.706686, 19.218874, 22.323460> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<8.977989, 18.931868, 22.260042>,  <9.140771, 18.759665, 22.221992>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<8.977989, 18.931868, 22.260042>,  <8.706686, 19.218874, 22.323460>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<8.977989, 18.931868, 22.260042> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010705, 0.206086, -0.978475,
		0.734745, 0.665357, 0.132099,
		0.678259, -0.717516, -0.158544,
		9.181467, 18.716614, 22.212479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<13.363158, 13.420124, 26.481852> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.703230, 13.589584, 26.356815>,  <13.907273, 13.691260, 26.281794>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.703230, 13.589584, 26.356815>,  <13.363158, 13.420124, 26.481852>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.703230, 13.589584, 26.356815> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526250, -0.665777, 0.528962,
		0.015979, -0.614215, -0.788977,
		0.850180, 0.423651, -0.312592,
		13.958283, 13.716680, 26.263037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.689960, 13.731058, 26.591877>,  <13.363158, 13.420124, 26.481852>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.689960, 13.731058, 26.591877> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.622108, 13.896666, 26.949606>,  <12.581396, 13.996030, 27.164244>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.622108, 13.896666, 26.949606>,  <12.689960, 13.731058, 26.591877>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.622108, 13.896666, 26.949606> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.899518, -0.305685, 0.312129,
		0.402608, 0.857406, -0.320563,
		-0.169630, 0.414018, 0.894324,
		12.571218, 14.020871, 27.217903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.301087, 14.340052, 26.519773>,  <12.689960, 13.731058, 26.591877>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.301087, 14.340052, 26.519773> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.286451, 14.695020, 26.335970>,  <12.277670, 14.908001, 26.225689>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.286451, 14.695020, 26.335970>,  <12.301087, 14.340052, 26.519773>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.286451, 14.695020, 26.335970> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503350, 0.413593, 0.758669,
		0.863308, -0.203534, -0.461816,
		-0.036589, 0.887420, -0.459507,
		12.275475, 14.961246, 26.198118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.756786, 14.545362, 26.921036>,  <12.301087, 14.340052, 26.519773>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.756786, 14.545362, 26.921036> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.640781, 14.876077, 26.728241>,  <12.571178, 15.074506, 26.612564>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.640781, 14.876077, 26.728241>,  <12.756786, 14.545362, 26.921036>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.640781, 14.876077, 26.728241> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472947, 0.561654, 0.678871,
		0.831994, -0.031073, -0.553914,
		-0.290013, 0.826788, -0.481989,
		12.553778, 15.124113, 26.583645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.997878, 14.993611, 27.333733>,  <12.756786, 14.545362, 26.921036>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.997878, 14.993611, 27.333733> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.872875, 15.260473, 27.063253>,  <12.797873, 15.420590, 26.900967>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.872875, 15.260473, 27.063253>,  <12.997878, 14.993611, 27.333733>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.872875, 15.260473, 27.063253> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472410, 0.726732, 0.498687,
		0.824117, -0.163600, -0.542279,
		-0.312507, 0.667154, -0.676199,
		12.779123, 15.460620, 26.860394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.599484, 15.337026, 27.095167>,  <12.997878, 14.993611, 27.333733>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.599484, 15.337026, 27.095167> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.277769, 15.573586, 27.071966>,  <13.084740, 15.715523, 27.058046>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.277769, 15.573586, 27.071966>,  <13.599484, 15.337026, 27.095167>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.277769, 15.573586, 27.071966> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496762, 0.722710, 0.480538,
		0.326110, 0.357678, -0.875054,
		-0.804288, 0.591402, -0.058002,
		13.036483, 15.751007, 27.054565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.037613, 15.377627, 26.473858>,  <13.599484, 15.337026, 27.095167>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.037613, 15.377627, 26.473858> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.759887, 15.471121, 26.201595>,  <13.593251, 15.527217, 26.038239>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.759887, 15.471121, 26.201595>,  <14.037613, 15.377627, 26.473858>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.759887, 15.471121, 26.201595> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062962, -0.922435, -0.380984,
		-0.716911, -0.307379, 0.625745,
		-0.694316, 0.233734, -0.680657,
		13.551592, 15.541241, 25.997398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.915948, 14.823359, 26.311762>,  <14.037613, 15.377627, 26.473858>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.915948, 14.823359, 26.311762> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.712742, 15.016190, 26.026237>,  <13.590818, 15.131887, 25.854923>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.712742, 15.016190, 26.026237>,  <13.915948, 14.823359, 26.311762>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.712742, 15.016190, 26.026237> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098227, -0.855729, -0.508015,
		-0.855729, -0.187963, 0.482076,
		0.508015, -0.482076, 0.713810,
		13.560337, 15.160812, 25.812094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.373292, 14.358611, 26.060575>,  <13.915948, 14.823359, 26.311762>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.373292, 14.358611, 26.060575> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.385505, 14.637324, 25.773922>,  <13.392833, 14.804552, 25.601931>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.385505, 14.637324, 25.773922>,  <13.373292, 14.358611, 26.060575>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.385505, 14.637324, 25.773922> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110711, -0.710198, -0.695242,
		-0.993384, 0.100566, 0.055457,
		0.030532, 0.696782, -0.716633,
		13.394665, 14.846359, 25.558931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.976933, 14.043668, 25.587227>,  <13.373292, 14.358611, 26.060575>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.976933, 14.043668, 25.587227> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.154417, 14.341675, 25.388000>,  <13.260907, 14.520479, 25.268465>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.154417, 14.341675, 25.388000>,  <12.976933, 14.043668, 25.587227>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.154417, 14.341675, 25.388000> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023266, -0.546010, -0.837456,
		-0.895869, 0.383175, -0.224936,
		0.443710, 0.745017, -0.498068,
		13.287530, 14.565180, 25.238581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.566844, 14.141250, 24.956940>,  <12.976933, 14.043668, 25.587227>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.566844, 14.141250, 24.956940> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.923414, 14.285371, 24.847000>,  <13.137356, 14.371843, 24.781036>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.923414, 14.285371, 24.847000>,  <12.566844, 14.141250, 24.956940>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.923414, 14.285371, 24.847000> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075207, -0.480476, -0.873777,
		-0.446884, 0.799578, -0.401211,
		0.891425, 0.360303, -0.274851,
		13.190842, 14.393462, 24.764545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.437202, 14.282576, 24.327009>,  <12.566844, 14.141250, 24.956940>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.437202, 14.282576, 24.327009> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.835668, 14.261499, 24.354961>,  <13.074747, 14.248854, 24.371733>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.835668, 14.261499, 24.354961>,  <12.437202, 14.282576, 24.327009>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.835668, 14.261499, 24.354961> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043441, -0.395447, -0.917461,
		0.075975, 0.916976, -0.391641,
		0.996163, -0.052690, 0.069879,
		13.134517, 14.245692, 24.375925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.908340, 14.515399, 23.837275>,  <12.437202, 14.282576, 24.327009>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.908340, 14.515399, 23.837275> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.672217, 14.238864, 24.003933>,  <11.530544, 14.072943, 24.103928>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.672217, 14.238864, 24.003933>,  <11.908340, 14.515399, 23.837275>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.672217, 14.238864, 24.003933> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112839, 0.581783, 0.805479,
		-0.799254, 0.428465, -0.421439,
		-0.590305, -0.691337, 0.416645,
		11.495126, 14.031463, 24.128927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.286906, 14.983918, 24.141624>,  <11.908340, 14.515399, 23.837275>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.286906, 14.983918, 24.141624> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.251037, 14.615086, 24.292208>,  <11.229515, 14.393785, 24.382559>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.251037, 14.615086, 24.292208>,  <11.286906, 14.983918, 24.141624>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.251037, 14.615086, 24.292208> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306129, 0.385203, 0.870576,
		-0.947757, -0.037177, -0.316819,
		-0.089674, -0.922082, 0.376460,
		11.224134, 14.338461, 24.405146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.657382, 14.931010, 24.400093>,  <11.286906, 14.983918, 24.141624>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.657382, 14.931010, 24.400093> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.876612, 14.654967, 24.589140>,  <11.008149, 14.489342, 24.702568>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.876612, 14.654967, 24.589140>,  <10.657382, 14.931010, 24.400093>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<10.876612, 14.654967, 24.589140> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299988, 0.365267, 0.881242,
		-0.780783, -0.624764, -0.006831,
		0.548073, -0.690108, 0.472616,
		11.041034, 14.447935, 24.730925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.206820, 14.643496, 24.924545>,  <10.657382, 14.931010, 24.400093>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.206820, 14.643496, 24.924545> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.581884, 14.574019, 25.044962>,  <10.806923, 14.532333, 25.117212>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.581884, 14.574019, 25.044962>,  <10.206820, 14.643496, 24.924545>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<10.581884, 14.574019, 25.044962> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240856, 0.299716, 0.923124,
		-0.250566, -0.938084, 0.239197,
		0.937659, -0.173691, 0.301042,
		10.863182, 14.521913, 25.135275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.216537, 14.156279, 25.438850>,  <10.206820, 14.643496, 24.924545>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.216537, 14.156279, 25.438850> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.553145, 14.367828, 25.482916>,  <10.755110, 14.494759, 25.509356>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.553145, 14.367828, 25.482916>,  <10.216537, 14.156279, 25.438850>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<10.553145, 14.367828, 25.482916> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299932, 0.287783, 0.909517,
		0.449318, -0.798418, 0.400801,
		0.841519, 0.528876, 0.110165,
		10.805601, 14.526491, 25.515966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.291332, 14.097279, 26.124325>,  <10.216537, 14.156279, 25.438850>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.291332, 14.097279, 26.124325> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.555897, 14.373285, 26.006741>,  <10.714635, 14.538889, 25.936190>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.555897, 14.373285, 26.006741>,  <10.291332, 14.097279, 26.124325>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<10.555897, 14.373285, 26.006741> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101475, 0.470661, 0.876459,
		0.743128, -0.549869, 0.381319,
		0.661410, 0.690017, -0.293963,
		10.754320, 14.580290, 25.918552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.767400, 14.177969, 26.704218>,  <10.291332, 14.097279, 26.124325>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.767400, 14.177969, 26.704218> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.848916, 14.505675, 26.489826>,  <10.897826, 14.702299, 26.361191>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.848916, 14.505675, 26.489826>,  <10.767400, 14.177969, 26.704218>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<10.848916, 14.505675, 26.489826> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274928, 0.477548, 0.834484,
		0.939619, -0.317415, -0.127919,
		0.203790, 0.819265, -0.535980,
		10.910053, 14.751455, 26.329033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.248863, 14.614119, 27.127089>,  <10.767400, 14.177969, 26.704218>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.248863, 14.614119, 27.127089> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.077674, 14.870486, 26.872196>,  <10.974960, 15.024307, 26.719261>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.077674, 14.870486, 26.872196>,  <11.248863, 14.614119, 27.127089>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.077674, 14.870486, 26.872196> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140735, 0.743721, 0.653508,
		0.892767, 0.190003, -0.408492,
		-0.427973, 0.640919, -0.637230,
		10.949282, 15.062762, 26.681026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.664617, 15.240911, 27.267155>,  <11.248863, 14.614119, 27.127089>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.664617, 15.240911, 27.267155> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.319634, 15.347240, 27.094872>,  <11.112645, 15.411038, 26.991501>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.319634, 15.347240, 27.094872>,  <11.664617, 15.240911, 27.267155>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.319634, 15.347240, 27.094872> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054987, 0.796728, 0.601832,
		0.503138, 0.542736, -0.672525,
		-0.862455, 0.265824, -0.430707,
		11.060898, 15.426988, 26.965660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.728963, 15.956986, 27.247293>,  <11.664617, 15.240911, 27.267155>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.728963, 15.956986, 27.247293> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.337990, 15.889671, 27.196217>,  <11.103406, 15.849282, 27.165571>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.337990, 15.889671, 27.196217>,  <11.728963, 15.956986, 27.247293>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.337990, 15.889671, 27.196217> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209967, 0.840394, 0.499651,
		0.023226, 0.515186, -0.856764,
		-0.977433, -0.168287, -0.127691,
		11.044760, 15.839185, 27.157909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.370520, 16.655825, 27.070002>,  <11.728963, 15.956986, 27.247293>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.370520, 16.655825, 27.070002> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.069266, 16.423433, 27.193455>,  <10.888515, 16.283998, 27.267527>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.069266, 16.423433, 27.193455>,  <11.370520, 16.655825, 27.070002>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.069266, 16.423433, 27.193455> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308865, 0.726485, 0.613858,
		-0.580855, 0.366991, -0.726584,
		-0.753133, -0.580979, 0.308632,
		10.843327, 16.249140, 27.286045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.842261, 17.055523, 26.996069>,  <11.370520, 16.655825, 27.070002>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.842261, 17.055523, 26.996069> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.720038, 16.774218, 27.252836>,  <10.646705, 16.605434, 27.406897>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.720038, 16.774218, 27.252836>,  <10.842261, 17.055523, 26.996069>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<10.720038, 16.774218, 27.252836> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238097, 0.709175, 0.663612,
		-0.921925, 0.049933, -0.384137,
		-0.305557, -0.703262, 0.641917,
		10.628371, 16.563238, 27.445412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.085040, 17.153028, 27.151943>,  <10.842261, 17.055523, 26.996069>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.085040, 17.153028, 27.151943> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.268912, 16.957281, 27.448380>,  <10.379236, 16.839832, 27.626240>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.268912, 16.957281, 27.448380>,  <10.085040, 17.153028, 27.151943>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<10.268912, 16.957281, 27.448380> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311023, 0.692920, 0.650482,
		-0.831840, -0.529510, 0.166318,
		0.459681, -0.489368, 0.741088,
		10.406816, 16.810471, 27.670706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.578458, 17.142443, 27.589582>,  <10.085040, 17.153028, 27.151943>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.578458, 17.142443, 27.589582> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.901109, 17.044109, 27.804588>,  <10.094699, 16.985109, 27.933592>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.901109, 17.044109, 27.804588>,  <9.578458, 17.142443, 27.589582>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<9.901109, 17.044109, 27.804588> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296001, 0.619135, 0.727362,
		-0.511602, -0.745814, 0.426643,
		0.806627, -0.245833, 0.537513,
		10.143097, 16.970360, 27.965841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.982409, 17.647518, 27.462576>,  <9.578458, 17.142443, 27.589582>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.982409, 17.647518, 27.462576> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.198701, 17.982113, 27.427017>,  <9.328476, 18.182869, 27.405682>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.198701, 17.982113, 27.427017>,  <8.982409, 17.647518, 27.462576>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<9.198701, 17.982113, 27.427017> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152189, -0.006656, -0.988329,
		-0.827315, 0.547949, 0.123705,
		0.540730, 0.836486, -0.088898,
		9.360920, 18.233059, 27.400349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.630280, 18.043566, 27.034752>,  <8.982409, 17.647518, 27.462576>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.630280, 18.043566, 27.034752> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.001561, 18.191782, 27.021265>,  <9.224330, 18.280712, 27.013172>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.001561, 18.191782, 27.021265>,  <8.630280, 18.043566, 27.034752>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<9.001561, 18.191782, 27.021265> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010931, -0.063428, -0.997927,
		-0.371910, 0.926649, -0.054824,
		0.928205, 0.370539, -0.033719,
		9.280023, 18.302944, 27.011148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.647482, 18.550287, 26.627954>,  <8.630280, 18.043566, 27.034752>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.647482, 18.550287, 26.627954> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.042032, 18.486940, 26.610138>,  <9.278762, 18.448933, 26.599447>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.042032, 18.486940, 26.610138>,  <8.647482, 18.550287, 26.627954>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<9.042032, 18.486940, 26.610138> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033626, 0.070966, -0.996912,
		0.161038, 0.984827, 0.064674,
		0.986375, -0.158366, -0.044544,
		9.337945, 18.439430, 26.596775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.904737, 18.982573, 26.005434>,  <8.647482, 18.550287, 26.627954>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.904737, 18.982573, 26.005434> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.199705, 18.723820, 26.083160>,  <9.376686, 18.568569, 26.129795>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.199705, 18.723820, 26.083160>,  <8.904737, 18.982573, 26.005434>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<9.199705, 18.723820, 26.083160> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304510, 0.061608, -0.950515,
		0.602898, 0.760099, 0.242412,
		0.737420, -0.646880, 0.194314,
		9.420931, 18.529757, 26.141455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.451342, 19.247856, 25.688604>,  <8.904737, 18.982573, 26.005434>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.451342, 19.247856, 25.688604> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.576497, 18.871717, 25.742050>,  <9.651590, 18.646034, 25.774118>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.576497, 18.871717, 25.742050>,  <9.451342, 19.247856, 25.688604>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<9.576497, 18.871717, 25.742050> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406637, 0.005494, -0.913573,
		0.858340, 0.340179, 0.384098,
		0.312889, -0.940345, 0.133614,
		9.670363, 18.589615, 25.782135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.179097, 19.288944, 25.413519>,  <9.451342, 19.247856, 25.688604>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.179097, 19.288944, 25.413519> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.045745, 18.912128, 25.428595>,  <9.965734, 18.686039, 25.437641>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.045745, 18.912128, 25.428595>,  <10.179097, 19.288944, 25.413519>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<10.045745, 18.912128, 25.428595> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175010, -0.101119, -0.979360,
		0.926406, -0.319904, 0.198577,
		-0.333381, -0.942039, 0.037691,
		9.945730, 18.629517, 25.439901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.601227, 18.934801, 24.894373>,  <10.179097, 19.288944, 25.413519>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.601227, 18.934801, 24.894373> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.281629, 18.699030, 24.941999>,  <10.089869, 18.557568, 24.970575>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.281629, 18.699030, 24.941999>,  <10.601227, 18.934801, 24.894373>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<10.281629, 18.699030, 24.941999> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027626, -0.233776, -0.971898,
		0.600701, -0.773253, 0.203069,
		-0.798996, -0.589430, 0.119068,
		10.041930, 18.522202, 24.977720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.380108, 18.814835, 24.899345>,  <10.601227, 18.934801, 24.894373>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.380108, 18.814835, 24.899345> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.465793, 19.199827, 24.832718>,  <11.517203, 19.430822, 24.792742>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.465793, 19.199827, 24.832718>,  <11.380108, 18.814835, 24.899345>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.465793, 19.199827, 24.832718> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125683, 0.141949, 0.981863,
		0.968668, -0.231261, -0.090560,
		0.214211, 0.962481, -0.166567,
		11.530056, 19.488571, 24.782747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.921896, 18.995695, 25.370176>,  <11.380108, 18.814835, 24.899345>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.921896, 18.995695, 25.370176> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.754788, 19.343489, 25.264748>,  <11.654524, 19.552164, 25.201490>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.754788, 19.343489, 25.264748>,  <11.921896, 18.995695, 25.370176>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.754788, 19.343489, 25.264748> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151896, 0.352858, 0.923265,
		0.895766, 0.345675, -0.279484,
		-0.417768, 0.869483, -0.263572,
		11.629458, 19.604334, 25.185677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.289398, 19.478006, 25.755764>,  <11.921896, 18.995695, 25.370176>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.289398, 19.478006, 25.755764> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.969636, 19.692698, 25.647785>,  <11.777779, 19.821512, 25.582998>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.969636, 19.692698, 25.647785>,  <12.289398, 19.478006, 25.755764>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.969636, 19.692698, 25.647785> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091238, 0.335654, 0.937556,
		0.593824, 0.774117, -0.219353,
		-0.799406, 0.536730, -0.269948,
		11.729815, 19.853716, 25.566801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.509853, 20.289278, 25.896091>,  <12.289398, 19.478006, 25.755764>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.509853, 20.289278, 25.896091> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.113021, 20.249174, 25.865831>,  <11.874922, 20.225111, 25.847675>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.113021, 20.249174, 25.865831>,  <12.509853, 20.289278, 25.896091>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.113021, 20.249174, 25.865831> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124858, 0.721934, 0.680604,
		-0.013625, 0.684660, -0.728735,
		-0.992081, -0.100262, -0.075649,
		11.815396, 20.219095, 25.843136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.372651, 20.980215, 25.944712>,  <12.509853, 20.289278, 25.896091>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.372651, 20.980215, 25.944712> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.035482, 20.784143, 26.033440>,  <11.833181, 20.666500, 26.086678>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.035482, 20.784143, 26.033440>,  <12.372651, 20.980215, 25.944712>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.035482, 20.784143, 26.033440> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170219, 0.634061, 0.754316,
		-0.510399, 0.598072, -0.617902,
		-0.842923, -0.490181, 0.221821,
		11.782606, 20.637089, 26.099985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.863078, 21.492800, 26.136559>,  <12.372651, 20.980215, 25.944712>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.863078, 21.492800, 26.136559> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.739471, 21.152725, 26.307060>,  <11.665307, 20.948681, 26.409361>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.739471, 21.152725, 26.307060>,  <11.863078, 21.492800, 26.136559>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.739471, 21.152725, 26.307060> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335697, 0.516850, 0.787511,
		-0.889840, 0.100262, -0.445120,
		-0.309018, -0.850184, 0.426256,
		11.646766, 20.897671, 26.434937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.146880, 21.531284, 26.447098>,  <11.863078, 21.492800, 26.136559>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.146880, 21.531284, 26.447098> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.308619, 21.226612, 26.649622>,  <11.405662, 21.043810, 26.771135>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.308619, 21.226612, 26.649622>,  <11.146880, 21.531284, 26.447098>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.308619, 21.226612, 26.649622> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319082, 0.401321, 0.858561,
		-0.857141, -0.508711, -0.080766,
		0.404346, -0.761679, 0.506309,
		11.429922, 20.998108, 26.801516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.772820, 21.488546, 27.057444>,  <11.146880, 21.531284, 26.447098>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.772820, 21.488546, 27.057444> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.071188, 21.237036, 27.145302>,  <11.250208, 21.086128, 27.198017>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.071188, 21.237036, 27.145302>,  <10.772820, 21.488546, 27.057444>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.071188, 21.237036, 27.145302> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208640, 0.092592, 0.973600,
		-0.632516, -0.772052, -0.062122,
		0.745918, -0.628779, 0.219647,
		11.294963, 21.048403, 27.211195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.437524, 21.038410, 27.511576>,  <10.772820, 21.488546, 27.057444>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.437524, 21.038410, 27.511576> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.832136, 21.010969, 27.570972>,  <11.068904, 20.994505, 27.606611>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.832136, 21.010969, 27.570972>,  <10.437524, 21.038410, 27.511576>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<10.832136, 21.010969, 27.570972> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134336, 0.178172, 0.974787,
		-0.093331, -0.981605, 0.166556,
		0.986531, -0.068603, 0.148493,
		11.128096, 20.990389, 27.615520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<12.995484, 14.816532, 12.928414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.315585, 15.052939, 12.968996>,  <13.507646, 15.194784, 12.993345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.315585, 15.052939, 12.968996>,  <12.995484, 14.816532, 12.928414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.315585, 15.052939, 12.968996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298138, 0.245335, 0.922456,
		0.520299, -0.768444, 0.372535,
		0.800252, 0.591019, 0.101455,
		13.555661, 15.230245, 12.999433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.265750, 14.633895, 13.585671>,  <12.995484, 14.816532, 12.928414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.265750, 14.633895, 13.585671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.420525, 14.992026, 13.497429>,  <13.513390, 15.206905, 13.444483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.420525, 14.992026, 13.497429>,  <13.265750, 14.633895, 13.585671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.420525, 14.992026, 13.497429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219822, 0.321909, 0.920898,
		0.895521, -0.307836, 0.321371,
		0.386937, 0.895328, -0.220607,
		13.536606, 15.260625, 13.431247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.658155, 14.803250, 14.101572>,  <13.265750, 14.633895, 13.585671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.658155, 14.803250, 14.101572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.585347, 15.162743, 13.941997>,  <13.541662, 15.378438, 13.846251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.585347, 15.162743, 13.941997>,  <13.658155, 14.803250, 14.101572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.585347, 15.162743, 13.941997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143745, 0.377037, 0.914976,
		0.972731, 0.223889, 0.060560,
		-0.182020, 0.898731, -0.398938,
		13.530741, 15.432362, 13.822315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.086069, 15.308692, 14.485525>,  <13.658155, 14.803250, 14.101572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.086069, 15.308692, 14.485525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.789330, 15.498330, 14.295833>,  <13.611286, 15.612113, 14.182017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.789330, 15.498330, 14.295833>,  <14.086069, 15.308692, 14.485525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.789330, 15.498330, 14.295833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135027, 0.587108, 0.798168,
		0.656833, 0.656153, -0.371529,
		-0.741848, 0.474096, -0.474230,
		13.566775, 15.640559, 14.153563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.060537, 15.896856, 14.721366>,  <14.086069, 15.308692, 14.485525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.060537, 15.896856, 14.721366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.691112, 15.903037, 14.568112>,  <13.469457, 15.906746, 14.476160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.691112, 15.903037, 14.568112>,  <14.060537, 15.896856, 14.721366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.691112, 15.903037, 14.568112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277003, 0.664021, 0.694511,
		0.265141, 0.747554, -0.608985,
		-0.923563, 0.015453, -0.383134,
		13.414042, 15.907673, 14.453172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.871851, 16.666874, 14.787254>,  <14.060537, 15.896856, 14.721366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.871851, 16.666874, 14.787254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.521042, 16.495014, 14.701249>,  <13.310556, 16.391897, 14.649646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.521042, 16.495014, 14.701249>,  <13.871851, 16.666874, 14.787254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.521042, 16.495014, 14.701249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457920, 0.612087, 0.644716,
		-0.145395, 0.663890, -0.733560,
		-0.877023, -0.429650, -0.215014,
		13.257935, 16.366119, 14.636745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.365628, 17.233665, 14.796432>,  <13.871851, 16.666874, 14.787254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.365628, 17.233665, 14.796432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.154557, 16.896095, 14.835105>,  <13.027915, 16.693554, 14.858309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.154557, 16.896095, 14.835105>,  <13.365628, 17.233665, 14.796432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.154557, 16.896095, 14.835105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533164, 0.417656, 0.735730,
		-0.661282, 0.336680, -0.670338,
		-0.527677, -0.843925, 0.096683,
		12.996254, 16.642918, 14.864110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.701438, 17.350086, 14.730737>,  <13.365628, 17.233665, 14.796432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.701438, 17.350086, 14.730737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.700366, 17.006992, 14.936372>,  <12.699722, 16.801136, 15.059752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.700366, 17.006992, 14.936372>,  <12.701438, 17.350086, 14.730737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.700366, 17.006992, 14.936372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.730810, 0.352586, 0.584465,
		-0.682575, -0.374133, -0.627786,
		-0.002681, -0.857734, 0.514087,
		12.699562, 16.749672, 15.090598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.032440, 17.187840, 14.860895>,  <12.701438, 17.350086, 14.730737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.032440, 17.187840, 14.860895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.215279, 16.984596, 15.152891>,  <12.324982, 16.862650, 15.328089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.215279, 16.984596, 15.152891>,  <12.032440, 17.187840, 14.860895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.215279, 16.984596, 15.152891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.681741, 0.326961, 0.654466,
		-0.571219, -0.796819, -0.196947,
		0.457097, -0.508110, 0.729991,
		12.352407, 16.832163, 15.371888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.468008, 17.097166, 15.399905>,  <12.032440, 17.187840, 14.860895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.468008, 17.097166, 15.399905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.800950, 16.998777, 15.598575>,  <12.000715, 16.939745, 15.717776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.800950, 16.998777, 15.598575>,  <11.468008, 17.097166, 15.399905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.800950, 16.998777, 15.598575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315449, 0.526586, 0.789430,
		-0.455718, -0.813760, 0.360715,
		0.832354, -0.245970, 0.496675,
		12.050656, 16.924986, 15.747577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.190867, 16.867336, 16.123627>,  <11.468008, 17.097166, 15.399905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.190867, 16.867336, 16.123627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.578708, 16.957779, 16.161047>,  <11.811412, 17.012045, 16.183500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.578708, 16.957779, 16.161047>,  <11.190867, 16.867336, 16.123627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.578708, 16.957779, 16.161047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193369, 0.473722, 0.859183,
		0.149949, -0.851154, 0.503043,
		0.969600, 0.226107, 0.093552,
		11.869588, 17.025612, 16.189112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.363497, 16.621107, 16.757236>,  <11.190867, 16.867336, 16.123627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.363497, 16.621107, 16.757236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.601851, 16.921368, 16.643082>,  <11.744864, 17.101524, 16.574589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.601851, 16.921368, 16.643082>,  <11.363497, 16.621107, 16.757236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.601851, 16.921368, 16.643082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305724, 0.540654, 0.783726,
		0.742599, -0.379761, 0.551659,
		0.595885, 0.750649, -0.285387,
		11.780617, 17.146563, 16.557467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.043371, 16.179613, 17.302971>,  <11.363497, 16.621107, 16.757236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.043371, 16.179613, 17.302971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.682604, 16.245724, 17.143358>,  <10.466144, 16.285391, 17.047590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.682604, 16.245724, 17.143358>,  <11.043371, 16.179613, 17.302971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.682604, 16.245724, 17.143358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097187, -0.822529, -0.560358,
		-0.420828, -0.544178, 0.725792,
		-0.901919, 0.165277, -0.399030,
		10.412028, 16.295307, 17.023649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.753427, 15.430052, 17.205101>,  <11.043371, 16.179613, 17.302971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.753427, 15.430052, 17.205101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.538974, 15.670876, 16.968428>,  <10.410302, 15.815370, 16.826424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.538974, 15.670876, 16.968428>,  <10.753427, 15.430052, 17.205101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.538974, 15.670876, 16.968428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110531, -0.744968, -0.657880,
		-0.836868, -0.287310, 0.465945,
		-0.536130, 0.602060, -0.591683,
		10.378134, 15.851493, 16.790924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.179538, 14.931260, 16.947062>,  <10.753427, 15.430052, 17.205101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.179538, 14.931260, 16.947062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.186522, 15.252593, 16.708950>,  <10.190713, 15.445393, 16.566084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.186522, 15.252593, 16.708950>,  <10.179538, 14.931260, 16.947062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.186522, 15.252593, 16.708950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125205, -0.588924, -0.798431,
		-0.991977, 0.088474, 0.090298,
		0.017461, 0.803331, -0.595276,
		10.191761, 15.493592, 16.530367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.761574, 14.803662, 16.392790>,  <10.179538, 14.931260, 16.947062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.761574, 14.803662, 16.392790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.001556, 15.094051, 16.258318>,  <10.145546, 15.268285, 16.177635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.001556, 15.094051, 16.258318>,  <9.761574, 14.803662, 16.392790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.001556, 15.094051, 16.258318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015935, -0.409282, -0.912269,
		-0.799875, 0.552678, -0.233982,
		0.599955, 0.725972, -0.336181,
		10.181543, 15.311843, 16.157463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.450451, 15.154077, 15.800541>,  <9.761574, 14.803662, 16.392790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.450451, 15.154077, 15.800541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.847909, 15.186945, 15.769772>,  <10.086384, 15.206666, 15.751310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.847909, 15.186945, 15.769772>,  <9.450451, 15.154077, 15.800541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.847909, 15.186945, 15.769772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046110, -0.326272, -0.944151,
		-0.102679, 0.941698, -0.320409,
		0.993645, 0.082171, -0.076923,
		10.146003, 15.211596, 15.746695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.567588, 15.335270, 15.205315>,  <9.450451, 15.154077, 15.800541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.567588, 15.335270, 15.205315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.936260, 15.215358, 15.303810>,  <10.157464, 15.143411, 15.362907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.936260, 15.215358, 15.303810>,  <9.567588, 15.335270, 15.205315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.936260, 15.215358, 15.303810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139267, -0.336740, -0.931242,
		0.362087, 0.892602, -0.268617,
		0.921682, -0.299781, 0.246239,
		10.212765, 15.125423, 15.377682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.086168, 15.527946, 14.649840>,  <9.567588, 15.335270, 15.205315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.086168, 15.527946, 14.649840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.309738, 15.259929, 14.845245>,  <10.443880, 15.099118, 14.962488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.309738, 15.259929, 14.845245>,  <10.086168, 15.527946, 14.649840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.309738, 15.259929, 14.845245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202441, -0.461039, -0.863979,
		0.804128, 0.581794, -0.122042,
		0.558924, -0.670044, 0.488513,
		10.477415, 15.058915, 14.991799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.693033, 15.506564, 14.262053>,  <10.086168, 15.527946, 14.649840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.693033, 15.506564, 14.262053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.645869, 15.163220, 14.461780>,  <10.617571, 14.957214, 14.581615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.645869, 15.163220, 14.461780>,  <10.693033, 15.506564, 14.262053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.645869, 15.163220, 14.461780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161855, -0.512710, -0.843167,
		0.979745, -0.018602, 0.199384,
		-0.117911, -0.858360, 0.499315,
		10.610497, 14.905712, 14.611574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.100550, 15.019062, 13.926223>,  <10.693033, 15.506564, 14.262053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.100550, 15.019062, 13.926223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.867496, 14.769641, 14.134730>,  <10.727665, 14.619988, 14.259835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.867496, 14.769641, 14.134730>,  <11.100550, 15.019062, 13.926223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.867496, 14.769641, 14.134730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079228, -0.594746, -0.800000,
		0.808865, -0.507405, 0.297116,
		-0.582632, -0.623552, 0.521270,
		10.692707, 14.582576, 14.291111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.315825, 14.333810, 13.695035>,  <11.100550, 15.019062, 13.926223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.315825, 14.333810, 13.695035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.952660, 14.327697, 13.862585>,  <10.734760, 14.324029, 13.963116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.952660, 14.327697, 13.862585>,  <11.315825, 14.333810, 13.695035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.952660, 14.327697, 13.862585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312937, -0.640127, -0.701646,
		0.278857, -0.768117, 0.576399,
		-0.907915, -0.015282, 0.418876,
		10.680285, 14.323112, 13.988248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.184065, 13.588477, 13.777566>,  <11.315825, 14.333810, 13.695035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.184065, 13.588477, 13.777566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.829021, 13.771760, 13.796309>,  <10.615995, 13.881729, 13.807555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.829021, 13.771760, 13.796309>,  <11.184065, 13.588477, 13.777566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.829021, 13.771760, 13.796309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380220, -0.671496, -0.636023,
		-0.259964, -0.582357, 0.770246,
		-0.887610, 0.458206, 0.046859,
		10.562738, 13.909222, 13.810367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.681384, 13.062860, 13.653273>,  <11.184065, 13.588477, 13.777566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.681384, 13.062860, 13.653273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.467336, 13.397416, 13.605776>,  <10.338907, 13.598149, 13.577278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.467336, 13.397416, 13.605776>,  <10.681384, 13.062860, 13.653273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.467336, 13.397416, 13.605776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630615, -0.489023, -0.602645,
		-0.562114, -0.247606, 0.789126,
		-0.535119, 0.836390, -0.118743,
		10.306800, 13.648333, 13.570153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.938124, 12.887455, 13.798353>,  <10.681384, 13.062860, 13.653273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.938124, 12.887455, 13.798353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.977990, 13.210100, 13.565306>,  <10.001910, 13.403687, 13.425477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.977990, 13.210100, 13.565306>,  <9.938124, 12.887455, 13.798353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.977990, 13.210100, 13.565306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625638, -0.404506, -0.667048,
		-0.773721, 0.430990, 0.464332,
		0.099666, 0.806612, -0.582618,
		10.007890, 13.452084, 13.390520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.249931, 13.172645, 13.613729>,  <9.938124, 12.887455, 13.798353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.249931, 13.172645, 13.613729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.531837, 13.266108, 13.345785>,  <9.700979, 13.322186, 13.185019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.531837, 13.266108, 13.345785>,  <9.249931, 13.172645, 13.613729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.531837, 13.266108, 13.345785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562255, -0.391852, -0.728232,
		-0.432643, 0.889863, -0.144787,
		0.704762, 0.233657, -0.669862,
		9.743265, 13.336205, 13.144827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.236262, 12.916904, 14.326413>,  <9.249931, 13.172645, 13.613729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.236262, 12.916904, 14.326413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.309010, 12.577466, 14.127694>,  <9.352658, 12.373803, 14.008463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.309010, 12.577466, 14.127694>,  <9.236262, 12.916904, 14.326413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.309010, 12.577466, 14.127694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080266, -0.516349, 0.852608,
		-0.980041, -0.115187, -0.162021,
		0.181869, -0.848596, -0.496798,
		9.363570, 12.322887, 13.978655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.741346, 12.444181, 14.536719>,  <9.236262, 12.916904, 14.326413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.741346, 12.444181, 14.536719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.072115, 12.242468, 14.437201>,  <9.270576, 12.121440, 14.377491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.072115, 12.242468, 14.437201>,  <8.741346, 12.444181, 14.536719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.072115, 12.242468, 14.437201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033795, -0.486212, 0.873187,
		-0.561303, -0.713648, -0.419101,
		0.826920, -0.504286, -0.248795,
		9.320191, 12.091183, 14.362563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.617251, 11.682085, 14.529764>,  <8.741346, 12.444181, 14.536719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.617251, 11.682085, 14.529764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.992605, 11.774826, 14.632276>,  <9.217817, 11.830471, 14.693783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.992605, 11.774826, 14.632276>,  <8.617251, 11.682085, 14.529764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.992605, 11.774826, 14.632276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152743, -0.386959, 0.909358,
		0.310007, -0.892472, -0.327702,
		0.938384, 0.231854, 0.256279,
		9.274120, 11.844382, 14.709159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.869422, 11.093492, 14.961203>,  <8.617251, 11.682085, 14.529764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.869422, 11.093492, 14.961203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.060625, 11.434475, 15.045890>,  <9.175347, 11.639065, 15.096703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.060625, 11.434475, 15.045890>,  <8.869422, 11.093492, 14.961203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.060625, 11.434475, 15.045890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188197, -0.136044, 0.972663,
		0.857957, -0.504785, 0.095400,
		0.478007, 0.852458, 0.211719,
		9.204027, 11.690212, 15.109406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.504931, 10.940989, 15.365268>,  <8.869422, 11.093492, 14.961203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.504931, 10.940989, 15.365268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.400389, 11.317174, 15.452194>,  <9.337663, 11.542885, 15.504350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.400389, 11.317174, 15.452194>,  <9.504931, 10.940989, 15.365268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.400389, 11.317174, 15.452194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091438, -0.200006, 0.975519,
		0.960901, 0.274831, -0.033721,
		-0.261358, 0.940461, 0.217316,
		9.321981, 11.599312, 15.517389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.968077, 11.246672, 15.900486>,  <9.504931, 10.940989, 15.365268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.968077, 11.246672, 15.900486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.651767, 11.491064, 15.915333>,  <9.461981, 11.637700, 15.924241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.651767, 11.491064, 15.915333>,  <9.968077, 11.246672, 15.900486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.651767, 11.491064, 15.915333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021360, -0.033058, 0.999225,
		0.611735, 0.790954, 0.013091,
		-0.790774, 0.610982, 0.037117,
		9.414535, 11.674358, 15.926468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.164947, 11.751952, 16.375397>,  <9.968077, 11.246672, 15.900486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.164947, 11.751952, 16.375397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.767545, 11.779501, 16.339163>,  <9.529103, 11.796030, 16.317423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.767545, 11.779501, 16.339163>,  <10.164947, 11.751952, 16.375397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.767545, 11.779501, 16.339163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082621, 0.110777, 0.990405,
		0.078246, 0.991456, -0.104367,
		-0.993505, 0.068872, -0.090583,
		9.469494, 11.800162, 16.311987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.993896, 12.346462, 16.737612>,  <10.164947, 11.751952, 16.375397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.993896, 12.346462, 16.737612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.665073, 12.119112, 16.723921>,  <9.467780, 11.982701, 16.715706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.665073, 12.119112, 16.723921>,  <9.993896, 12.346462, 16.737612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.665073, 12.119112, 16.723921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120762, 0.115290, 0.985964,
		-0.556453, 0.814651, -0.163413,
		-0.822056, -0.568376, -0.034225,
		9.418456, 11.948599, 16.713654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.605551, 12.665128, 17.114511>,  <9.993896, 12.346462, 16.737612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.605551, 12.665128, 17.114511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.420628, 12.310832, 17.097837>,  <9.309673, 12.098254, 17.087833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.420628, 12.310832, 17.097837>,  <9.605551, 12.665128, 17.114511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.420628, 12.310832, 17.097837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220485, 0.069293, 0.972926,
		-0.858870, 0.458982, -0.227327,
		-0.462308, -0.885739, -0.041685,
		9.281935, 12.045111, 17.085331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.877380, 12.748605, 17.378895>,  <9.605551, 12.665128, 17.114511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.877380, 12.748605, 17.378895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.990636, 12.365911, 17.405706>,  <9.058589, 12.136295, 17.421793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.990636, 12.365911, 17.405706>,  <8.877380, 12.748605, 17.378895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.990636, 12.365911, 17.405706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208374, 0.006853, 0.978025,
		-0.936170, -0.290883, -0.197418,
		0.283138, -0.956734, 0.067028,
		9.075577, 12.078891, 17.425816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.354405, 12.491391, 17.938084>,  <8.877380, 12.748605, 17.378895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.354405, 12.491391, 17.938084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.665486, 12.243100, 17.898333>,  <8.852135, 12.094126, 17.874481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.665486, 12.243100, 17.898333>,  <8.354405, 12.491391, 17.938084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.665486, 12.243100, 17.898333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021515, -0.131710, 0.991055,
		-0.628265, -0.772883, -0.089076,
		0.777702, -0.620729, -0.099377,
		8.898797, 12.056882, 17.868519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.264143, 12.045286, 18.419205>,  <8.354405, 12.491391, 17.938084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.264143, 12.045286, 18.419205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.651161, 11.985758, 18.337517>,  <8.883372, 11.950041, 18.288504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.651161, 11.985758, 18.337517>,  <8.264143, 12.045286, 18.419205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.651161, 11.985758, 18.337517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159434, -0.267491, 0.950279,
		-0.196046, -0.951999, -0.235084,
		0.967547, -0.148818, -0.204221,
		8.941425, 11.941112, 18.276251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.411653, 11.542597, 18.971851>,  <8.264143, 12.045286, 18.419205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.411653, 11.542597, 18.971851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.756936, 11.696866, 18.841541>,  <8.964106, 11.789428, 18.763355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.756936, 11.696866, 18.841541>,  <8.411653, 11.542597, 18.971851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.756936, 11.696866, 18.841541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406611, -0.148647, 0.901428,
		0.299231, -0.910582, -0.285132,
		0.863208, 0.385673, -0.325773,
		9.015899, 11.812568, 18.743809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.891091, 11.189919, 19.293877>,  <8.411653, 11.542597, 18.971851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.891091, 11.189919, 19.293877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.119215, 11.489899, 19.159815>,  <9.256089, 11.669886, 19.079378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.119215, 11.489899, 19.159815>,  <8.891091, 11.189919, 19.293877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.119215, 11.489899, 19.159815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577144, -0.075501, 0.813145,
		0.584511, -0.657175, -0.475886,
		0.570309, 0.749947, -0.335153,
		9.290308, 11.714883, 19.059269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.527547, 10.955045, 19.330074>,  <8.891091, 11.189919, 19.293877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.527547, 10.955045, 19.330074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.509377, 11.354354, 19.344965>,  <9.498476, 11.593940, 19.353899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.509377, 11.354354, 19.344965>,  <9.527547, 10.955045, 19.330074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.509377, 11.354354, 19.344965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445395, -0.013118, 0.895238,
		0.894181, 0.057246, -0.444031,
		-0.045424, 0.998274, 0.037227,
		9.495750, 11.653836, 19.356133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.259674, 11.301275, 19.441530>,  <9.527547, 10.955045, 19.330074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.259674, 11.301275, 19.441530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.966539, 11.544125, 19.564396>,  <9.790658, 11.689834, 19.638115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.966539, 11.544125, 19.564396>,  <10.259674, 11.301275, 19.441530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.966539, 11.544125, 19.564396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439172, 0.077259, 0.895075,
		0.519689, 0.790843, -0.323249,
		-0.732838, 0.607123, 0.307166,
		9.746688, 11.726261, 19.656546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.558776, 11.556781, 20.060841>,  <10.259674, 11.301275, 19.441530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.558776, 11.556781, 20.060841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.214520, 11.757891, 20.093142>,  <10.007967, 11.878556, 20.112522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.214520, 11.757891, 20.093142>,  <10.558776, 11.556781, 20.060841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.214520, 11.757891, 20.093142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258250, 0.294274, 0.920168,
		0.438873, 0.812786, -0.383105,
		-0.860638, 0.502774, 0.080753,
		9.956329, 11.908723, 20.117367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.759048, 12.310107, 20.182991>,  <10.558776, 11.556781, 20.060841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.759048, 12.310107, 20.182991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.396572, 12.214965, 20.322847>,  <10.179087, 12.157880, 20.406761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.396572, 12.214965, 20.322847>,  <10.759048, 12.310107, 20.182991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.396572, 12.214965, 20.322847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203191, 0.480198, 0.853301,
		-0.370859, 0.844295, -0.386820,
		-0.906188, -0.237856, 0.349639,
		10.124716, 12.143608, 20.427738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.390508, 12.918945, 20.328777>,  <10.759048, 12.310107, 20.182991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.390508, 12.918945, 20.328777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.215165, 12.641027, 20.556849>,  <10.109960, 12.474277, 20.693691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.215165, 12.641027, 20.556849>,  <10.390508, 12.918945, 20.328777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.215165, 12.641027, 20.556849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143664, 0.572058, 0.807534,
		-0.887245, 0.435902, -0.150948,
		-0.438357, -0.694795, 0.570179,
		10.083658, 12.432590, 20.727901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.889170, 13.271369, 20.731619>,  <10.390508, 12.918945, 20.328777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.889170, 13.271369, 20.731619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.957885, 12.941704, 20.947487>,  <9.999114, 12.743905, 21.077007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.957885, 12.941704, 20.947487>,  <9.889170, 13.271369, 20.731619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.957885, 12.941704, 20.947487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113805, 0.560749, 0.820127,
		-0.978538, -0.079471, 0.190124,
		0.171789, -0.824163, 0.539670,
		10.009421, 12.694455, 21.109388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.597513, 13.417946, 21.361277>,  <9.889170, 13.271369, 20.731619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.597513, 13.417946, 21.361277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.835424, 13.106869, 21.442698>,  <9.978171, 12.920222, 21.491550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.835424, 13.106869, 21.442698>,  <9.597513, 13.417946, 21.361277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.835424, 13.106869, 21.442698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188509, 0.381075, 0.905122,
		-0.781476, -0.499975, 0.373257,
		0.594777, -0.777693, 0.203551,
		10.013858, 12.873561, 21.503763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.498591, 13.303967, 22.052719>,  <9.597513, 13.417946, 21.361277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.498591, 13.303967, 22.052719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.833088, 13.093535, 21.990824>,  <10.033786, 12.967277, 21.953686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.833088, 13.093535, 21.990824>,  <9.498591, 13.303967, 22.052719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.833088, 13.093535, 21.990824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346817, 0.288813, 0.892359,
		-0.424759, -0.799894, 0.423969,
		0.836240, -0.526077, -0.154741,
		10.083961, 12.935712, 21.944401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.578385, 12.917880, 22.575401>,  <9.498591, 13.303967, 22.052719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.578385, 12.917880, 22.575401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.944002, 12.959719, 22.418640>,  <10.163372, 12.984822, 22.324583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.944002, 12.959719, 22.418640>,  <9.578385, 12.917880, 22.575401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.944002, 12.959719, 22.418640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357890, 0.246747, 0.900573,
		0.190895, -0.963419, 0.188104,
		0.914043, 0.104594, -0.391901,
		10.218215, 12.991097, 22.301069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.020740, 12.599160, 23.037968>,  <9.578385, 12.917880, 22.575401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.020740, 12.599160, 23.037968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.272461, 12.832729, 22.832829>,  <10.423493, 12.972871, 22.709745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.272461, 12.832729, 22.832829>,  <10.020740, 12.599160, 23.037968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.272461, 12.832729, 22.832829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562626, 0.112927, 0.818962,
		0.536125, -0.803917, -0.257465,
		0.629303, 0.583923, -0.512848,
		10.461252, 13.007906, 22.678974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.664495, 12.415422, 23.301136>,  <10.020740, 12.599160, 23.037968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.664495, 12.415422, 23.301136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.727357, 12.773900, 23.135180>,  <10.765075, 12.988987, 23.035604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.727357, 12.773900, 23.135180>,  <10.664495, 12.415422, 23.301136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.727357, 12.773900, 23.135180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555044, 0.267330, 0.787694,
		0.816840, -0.354075, -0.455415,
		0.157157, 0.896195, -0.414893,
		10.774504, 13.042759, 23.010712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.473222, 12.544211, 23.282042>,  <10.664495, 12.415422, 23.301136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.473222, 12.544211, 23.282042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.277346, 12.891883, 23.254522>,  <11.159821, 13.100486, 23.238010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.277346, 12.891883, 23.254522>,  <11.473222, 12.544211, 23.282042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.277346, 12.891883, 23.254522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482354, 0.335797, 0.809058,
		0.726318, 0.363001, -0.583688,
		-0.489690, 0.869178, -0.068800,
		11.130439, 13.152637, 23.233883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.001624, 13.072798, 23.535881>,  <11.473222, 12.544211, 23.282042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.001624, 13.072798, 23.535881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.669672, 13.295971, 23.534573>,  <11.470501, 13.429875, 23.533789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.669672, 13.295971, 23.534573>,  <12.001624, 13.072798, 23.535881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.669672, 13.295971, 23.534573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322599, 0.484604, 0.813074,
		0.455226, 0.673699, -0.582151,
		-0.829879, 0.557933, -0.003270,
		11.420709, 13.463351, 23.533592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.225067, 13.774153, 23.709978>,  <12.001624, 13.072798, 23.535881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.225067, 13.774153, 23.709978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.832183, 13.764685, 23.784491>,  <11.596452, 13.759004, 23.829199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.832183, 13.764685, 23.784491>,  <12.225067, 13.774153, 23.709978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.832183, 13.764685, 23.784491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158064, 0.431336, 0.888237,
		-0.101375, 0.901881, -0.419922,
		-0.982211, -0.023671, 0.186282,
		11.537519, 13.757584, 23.840376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
