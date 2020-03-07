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
	<5.929416, 2.279632, 1.391223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.594208, 2.433823, 1.545692>,  <5.393083, 2.526337, 1.638374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.594208, 2.433823, 1.545692>,  <5.929416, 2.279632, 1.391223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.594208, 2.433823, 1.545692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510356, -0.303377, -0.804673,
		-0.193027, -0.871418, 0.450967,
		-0.838020, 0.385477, 0.386173,
		5.342802, 2.549466, 1.661544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.434750, 1.788080, 1.206610>,  <5.929416, 2.279632, 1.391223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.434750, 1.788080, 1.206610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.258286, 2.136200, 1.294205>,  <5.152407, 2.345072, 1.346762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.258286, 2.136200, 1.294205>,  <5.434750, 1.788080, 1.206610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.258286, 2.136200, 1.294205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520159, -0.049125, -0.852656,
		-0.731308, -0.490066, 0.474366,
		-0.441161, 0.870300, 0.218987,
		5.125937, 2.397290, 1.359901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.734255, 1.724128, 1.214446>,  <5.434750, 1.788080, 1.206610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.734255, 1.724128, 1.214446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.842323, 2.091782, 1.099762>,  <4.907164, 2.312374, 1.030952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.842323, 2.091782, 1.099762>,  <4.734255, 1.724128, 1.214446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.842323, 2.091782, 1.099762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590760, -0.076890, -0.803175,
		-0.760270, 0.386370, 0.522214,
		0.270169, 0.919133, -0.286709,
		4.923374, 2.367522, 1.013749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.158715, 2.127386, 1.047884>,  <4.734255, 1.724128, 1.214446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.158715, 2.127386, 1.047884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.450207, 2.356972, 0.898476>,  <4.625102, 2.494723, 0.808831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.450207, 2.356972, 0.898476>,  <4.158715, 2.127386, 1.047884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.450207, 2.356972, 0.898476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521053, 0.110801, -0.846302,
		-0.444361, 0.811349, 0.379810,
		0.728730, 0.573965, -0.373520,
		4.668826, 2.529161, 0.786420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.805356, 2.731010, 0.742228>,  <4.158715, 2.127386, 1.047884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.805356, 2.731010, 0.742228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.153294, 2.592270, 0.601906>,  <4.362056, 2.509026, 0.517712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.153294, 2.592270, 0.601906>,  <3.805356, 2.731010, 0.742228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.153294, 2.592270, 0.601906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369078, 0.014296, -0.929288,
		0.327340, 0.937811, -0.115580,
		0.869845, -0.346851, -0.350805,
		4.414247, 2.488214, 0.496664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.907974, 3.053541, 0.195184>,  <3.805356, 2.731010, 0.742228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.907974, 3.053541, 0.195184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.184612, 2.771439, 0.132820>,  <4.350595, 2.602177, 0.095402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.184612, 2.771439, 0.132820>,  <3.907974, 3.053541, 0.195184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.184612, 2.771439, 0.132820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271564, -0.053877, -0.960911,
		0.669289, 0.706902, -0.228784,
		0.691596, -0.705257, -0.155910,
		4.392091, 2.559861, 0.086047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.279895, 3.185390, -0.423756>,  <3.907974, 3.053541, 0.195184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.279895, 3.185390, -0.423756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.312904, 2.788879, -0.382652>,  <4.332710, 2.550973, -0.357990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.312904, 2.788879, -0.382652>,  <4.279895, 3.185390, -0.423756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.312904, 2.788879, -0.382652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309910, -0.123523, -0.942708,
		0.947178, 0.045950, -0.317400,
		0.082524, -0.991278, 0.102758,
		4.337661, 2.491496, -0.351825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.574326, 2.962520, -1.020179>,  <4.279895, 3.185390, -0.423756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.574326, 2.962520, -1.020179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.411079, 2.621323, -0.890045>,  <4.313131, 2.416604, -0.811965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.411079, 2.621323, -0.890045>,  <4.574326, 2.962520, -1.020179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.411079, 2.621323, -0.890045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408813, -0.147878, -0.900558,
		0.816280, -0.500534, -0.288363,
		-0.408117, -0.852993, 0.325334,
		4.288644, 2.365425, -0.792445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<2.585953, 2.423005, 3.441395> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.416023, 2.128838, 3.652557>,  <2.314066, 1.952337, 3.779255>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.416023, 2.128838, 3.652557>,  <2.585953, 2.423005, 3.441395>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.416023, 2.128838, 3.652557> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.869890, -0.170177, 0.462958,
		-0.250631, 0.655895, 0.712029,
		-0.424823, -0.735419, 0.527905,
		2.288576, 1.908212, 3.810929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.239447, 2.837384, 3.649062>,  <2.585953, 2.423005, 3.441395>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.239447, 2.837384, 3.649062> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.325356, 2.453033, 3.579102>,  <3.376900, 2.222423, 3.537125>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.325356, 2.453033, 3.579102>,  <3.239447, 2.837384, 3.649062>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.325356, 2.453033, 3.579102> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.811005, 0.075675, 0.580125,
		-0.544193, -0.266440, 0.795528,
		0.214770, -0.960876, -0.174902,
		3.389786, 2.164771, 3.526631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.369939, 2.496804, 4.312802>,  <3.239447, 2.837384, 3.649062>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.369939, 2.496804, 4.312802> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.568827, 2.271492, 4.048836>,  <3.688159, 2.136305, 3.890456>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.568827, 2.271492, 4.048836>,  <3.369939, 2.496804, 4.312802>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.568827, 2.271492, 4.048836> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689018, -0.205889, 0.694885,
		-0.527283, -0.800204, 0.285738,
		0.497219, -0.563279, -0.659916,
		3.717993, 2.102508, 3.850861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.472856, 1.755620, 4.534404>,  <3.369939, 2.496804, 4.312802>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.472856, 1.755620, 4.534404> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.764368, 1.887146, 4.294151>,  <3.939276, 1.966062, 4.150000>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.764368, 1.887146, 4.294151>,  <3.472856, 1.755620, 4.534404>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.764368, 1.887146, 4.294151> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675039, -0.197826, 0.710765,
		0.114890, -0.923442, -0.366136,
		0.728781, 0.328816, -0.600631,
		3.983002, 1.985791, 4.113962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.917534, 1.242549, 4.592132>,  <3.472856, 1.755620, 4.534404>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.917534, 1.242549, 4.592132> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.081987, 1.591797, 4.487343>,  <4.180660, 1.801346, 4.424469>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.081987, 1.591797, 4.487343>,  <3.917534, 1.242549, 4.592132>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.081987, 1.591797, 4.487343> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525384, 0.007892, 0.850829,
		0.744943, -0.487441, -0.455479,
		0.411134, 0.873120, -0.261972,
		4.205328, 1.853733, 4.408751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.537446, 1.247433, 4.932888>,  <3.917534, 1.242549, 4.592132>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.537446, 1.247433, 4.932888> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.490202, 1.632935, 4.837196>,  <4.461856, 1.864235, 4.779782>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.490202, 1.632935, 4.837196>,  <4.537446, 1.247433, 4.932888>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.490202, 1.632935, 4.837196> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571992, 0.262961, 0.776967,
		0.811711, -0.045069, -0.582317,
		-0.118109, 0.963753, -0.239228,
		4.454769, 1.922060, 4.765428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.131102, 1.492450, 5.105639>,  <4.537446, 1.247433, 4.932888>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.131102, 1.492450, 5.105639> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.899702, 1.818703, 5.101997>,  <4.760862, 2.014454, 5.099813>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.899702, 1.818703, 5.101997>,  <5.131102, 1.492450, 5.105639>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.899702, 1.818703, 5.101997> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418965, 0.306695, 0.854638,
		0.699862, 0.490594, -0.519144,
		-0.578500, 0.815632, -0.009103,
		4.726152, 2.063392, 5.099267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.584428, 2.079120, 5.192369>,  <5.131102, 1.492450, 5.105639>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.584428, 2.079120, 5.192369> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.218430, 2.173531, 5.323257>,  <4.998831, 2.230177, 5.401791>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.218430, 2.173531, 5.323257>,  <5.584428, 2.079120, 5.192369>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.218430, 2.173531, 5.323257> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387483, 0.288075, 0.875711,
		0.112427, 0.928064, -0.355044,
		-0.914996, 0.236027, 0.327222,
		4.943931, 2.244339, 5.421424>
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
