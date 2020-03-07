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
	<2.023629, 1.247818, 4.909702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.253519, 1.460968, 4.661272>,  <2.391453, 1.588858, 4.512214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.253519, 1.460968, 4.661272>,  <2.023629, 1.247818, 4.909702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.253519, 1.460968, 4.661272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717782, -0.692757, 0.069839,
		-0.393038, -0.485934, -0.780634,
		0.574726, 0.532875, -0.621075,
		2.425937, 1.620831, 4.474950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.344272, 0.727620, 4.412781>,  <2.023629, 1.247818, 4.909702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.344272, 0.727620, 4.412781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.539656, 1.076641, 4.409777>,  <2.656886, 1.286054, 4.407974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.539656, 1.076641, 4.409777>,  <2.344272, 0.727620, 4.412781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.539656, 1.076641, 4.409777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.867822, -0.486673, -0.100177,
		-0.091064, 0.042415, -0.994941,
		0.488460, 0.872554, -0.007510,
		2.686194, 1.338407, 4.407524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.670154, 0.822428, 3.759802>,  <2.344272, 0.727620, 4.412781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.670154, 0.822428, 3.759802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.858597, 0.976665, 4.077134>,  <2.971663, 1.069208, 4.267534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.858597, 0.976665, 4.077134>,  <2.670154, 0.822428, 3.759802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.858597, 0.976665, 4.077134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.781332, -0.599819, -0.172445,
		0.409362, 0.701096, -0.583856,
		0.471108, 0.385593, 0.793332,
		2.999929, 1.092344, 4.315134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.393371, 1.134095, 3.586134>,  <2.670154, 0.822428, 3.759802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.393371, 1.134095, 3.586134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.387053, 0.988110, 3.958489>,  <3.383261, 0.900518, 4.181902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.387053, 0.988110, 3.958489>,  <3.393371, 1.134095, 3.586134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.387053, 0.988110, 3.958489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.863142, -0.474927, -0.171553,
		0.504714, 0.800779, 0.322517,
		-0.015796, -0.364963, 0.930888,
		3.382313, 0.878621, 4.237756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.153515, 1.142240, 3.691664>,  <3.393371, 1.134095, 3.586134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.153515, 1.142240, 3.691664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.990433, 0.944122, 3.998509>,  <3.892584, 0.825252, 4.182616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.990433, 0.944122, 3.998509>,  <4.153515, 1.142240, 3.691664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.990433, 0.944122, 3.998509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.845690, -0.521647, 0.112661,
		0.344361, 0.694672, 0.631542,
		-0.407705, -0.495293, 0.767113,
		3.868121, 0.795534, 4.228643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.714714, 1.057515, 4.292398>,  <4.153515, 1.142240, 3.691664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.714714, 1.057515, 4.292398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.424635, 0.784294, 4.327104>,  <4.250587, 0.620361, 4.347927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.424635, 0.784294, 4.327104>,  <4.714714, 1.057515, 4.292398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.424635, 0.784294, 4.327104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658525, -0.651253, 0.377113,
		-0.201083, 0.330618, 0.922094,
		-0.725197, -0.683053, 0.086765,
		4.207076, 0.579378, 4.353133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.669529, 0.791488, 4.931195>,  <4.714714, 1.057515, 4.292398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.669529, 0.791488, 4.931195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.508141, 0.504185, 4.704456>,  <4.411307, 0.331803, 4.568413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.508141, 0.504185, 4.704456>,  <4.669529, 0.791488, 4.931195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.508141, 0.504185, 4.704456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.698415, -0.641984, 0.316344,
		-0.591123, -0.268258, 0.760665,
		-0.403473, -0.718258, -0.566846,
		4.387099, 0.288707, 4.534402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.454882, 0.272976, 5.306376>,  <4.669529, 0.791488, 4.931195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.454882, 0.272976, 5.306376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.556957, 0.135265, 4.944967>,  <4.618203, 0.052639, 4.728122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.556957, 0.135265, 4.944967>,  <4.454882, 0.272976, 5.306376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.556957, 0.135265, 4.944967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668234, -0.612580, 0.422149,
		-0.698815, -0.711492, 0.073733,
		0.255188, -0.344276, -0.903523,
		4.633514, 0.031983, 4.673911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<2.191941, 3.760536, 2.928563> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.891846, 3.937763, 2.732264>,  <1.711789, 4.044100, 2.614485>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.891846, 3.937763, 2.732264>,  <2.191941, 3.760536, 2.928563>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.891846, 3.937763, 2.732264> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656319, -0.588801, 0.471761,
		-0.079931, 0.676020, 0.732535,
		-0.750238, 0.443068, -0.490748,
		1.666774, 4.070683, 2.585040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.593278, 4.203813, 3.336618>,  <2.191941, 3.760536, 2.928563>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.593278, 4.203813, 3.336618> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.505938, 4.015442, 2.994730>,  <1.453533, 3.902419, 2.789596>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.505938, 4.015442, 2.994730>,  <1.593278, 4.203813, 3.336618>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.505938, 4.015442, 2.994730> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427441, -0.741216, 0.517584,
		-0.877278, 0.478359, -0.039448,
		-0.218351, -0.470927, -0.854722,
		1.440432, 3.874164, 2.738313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.013477, 3.944012, 3.527249>,  <1.593278, 4.203813, 3.336618>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.013477, 3.944012, 3.527249> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.119682, 3.727234, 3.208302>,  <1.183406, 3.597167, 3.016933>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.119682, 3.727234, 3.208302>,  <1.013477, 3.944012, 3.527249>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.119682, 3.727234, 3.208302> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379272, -0.819084, 0.430412,
		-0.886372, 0.188139, -0.423023,
		0.265514, -0.541946, -0.797369,
		1.199337, 3.564650, 2.969091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.418525, 3.604776, 3.201602>,  <1.013477, 3.944012, 3.527249>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.418525, 3.604776, 3.201602> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.759790, 3.399433, 3.164560>,  <0.964550, 3.276227, 3.142336>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.759790, 3.399433, 3.164560>,  <0.418525, 3.604776, 3.201602>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.759790, 3.399433, 3.164560> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334337, -0.674400, 0.658334,
		-0.400412, -0.530707, -0.747008,
		0.853164, -0.513357, -0.092603,
		1.015740, 3.245426, 3.136779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.269780, 2.856124, 3.078254>,  <0.418525, 3.604776, 3.201602>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.269780, 2.856124, 3.078254> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.611643, 2.906807, 3.279651>,  <0.816761, 2.937217, 3.400489>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.611643, 2.906807, 3.279651>,  <0.269780, 2.856124, 3.078254>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.611643, 2.906807, 3.279651> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276015, -0.710485, 0.647323,
		0.439744, -0.692211, -0.572249,
		0.854658, 0.126707, 0.503493,
		0.868040, 2.944819, 3.430698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.657747, 2.151576, 3.198804>,  <0.269780, 2.856124, 3.078254>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.657747, 2.151576, 3.198804> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.721174, 2.419323, 3.489129>,  <0.759231, 2.579971, 3.663324>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.721174, 2.419323, 3.489129>,  <0.657747, 2.151576, 3.198804>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.721174, 2.419323, 3.489129> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418138, -0.620412, 0.663513,
		0.894436, -0.408702, 0.181510,
		0.158568, 0.669367, 0.725813,
		0.768745, 2.620133, 3.706873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.115832, 1.550608, 3.404006>,  <0.657747, 2.151576, 3.198804>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.115832, 1.550608, 3.404006> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.376163, 1.430500, 3.125077>,  <1.532363, 1.358435, 2.957720>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.376163, 1.430500, 3.125077>,  <1.115832, 1.550608, 3.404006>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.376163, 1.430500, 3.125077> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263501, -0.950711, 0.163447,
		-0.712030, 0.077370, -0.697872,
		0.650829, -0.300270, -0.697323,
		1.571412, 1.340419, 2.915880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.688942, 1.125096, 3.031187>,  <1.115832, 1.550608, 3.404006>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.688942, 1.125096, 3.031187> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.072653, 1.025307, 2.978193>,  <1.302879, 0.965433, 2.946397>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.072653, 1.025307, 2.978193>,  <0.688942, 1.125096, 3.031187>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.072653, 1.025307, 2.978193> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226748, -0.959787, 0.165513,
		-0.168448, -0.128732, -0.977268,
		0.959276, -0.249473, -0.132484,
		1.360436, 0.950465, 2.938447>
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
