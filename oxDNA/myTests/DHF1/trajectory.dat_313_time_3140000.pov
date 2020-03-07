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
	<1.898079, 1.683239, 1.638227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.930481, 1.400116, 1.357529>,  <1.949922, 1.230242, 1.189110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.930481, 1.400116, 1.357529>,  <1.898079, 1.683239, 1.638227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.930481, 1.400116, 1.357529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.888460, -0.370384, 0.271026,
		-0.451750, 0.601519, -0.658860,
		0.081004, -0.707806, -0.701747,
		1.954782, 1.187774, 1.147005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.650874, 2.248760, 1.285485>,  <1.898079, 1.683239, 1.638227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.650874, 2.248760, 1.285485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.658638, 2.303093, 1.681702>,  <1.663296, 2.335693, 1.919432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.658638, 2.303093, 1.681702>,  <1.650874, 2.248760, 1.285485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.658638, 2.303093, 1.681702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577836, 0.806985, -0.121984,
		-0.815922, 0.574738, -0.062825,
		0.019410, 0.135832, 0.990542,
		1.664461, 2.343843, 1.978864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.295694, 2.936546, 1.521462>,  <1.650874, 2.248760, 1.285485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.295694, 2.936546, 1.521462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.600025, 2.815193, 1.750931>,  <1.782624, 2.742382, 1.888612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.600025, 2.815193, 1.750931>,  <1.295694, 2.936546, 1.521462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.600025, 2.815193, 1.750931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513071, 0.822493, -0.245487,
		-0.397366, 0.481108, 0.781432,
		0.760828, -0.303382, 0.573673,
		1.828274, 2.724179, 1.923033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.520800, 3.480658, 2.001975>,  <1.295694, 2.936546, 1.521462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.520800, 3.480658, 2.001975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.837894, 3.260078, 1.898071>,  <2.028151, 3.127731, 1.835729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.837894, 3.260078, 1.898071>,  <1.520800, 3.480658, 2.001975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.837894, 3.260078, 1.898071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481432, 0.827785, -0.288088,
		0.373891, 0.103321, 0.921700,
		0.792735, -0.551449, -0.259760,
		2.075715, 3.094644, 1.820143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.187877, 3.685382, 2.231467>,  <1.520800, 3.480658, 2.001975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.187877, 3.685382, 2.231467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.315975, 3.492325, 1.905399>,  <2.392834, 3.376491, 1.709759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.315975, 3.492325, 1.905399>,  <2.187877, 3.685382, 2.231467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.315975, 3.492325, 1.905399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569517, 0.785713, -0.241464,
		0.757029, -0.386924, 0.526495,
		0.320246, -0.482643, -0.815168,
		2.412049, 3.347532, 1.660849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.903194, 3.753480, 2.217277>,  <2.187877, 3.685382, 2.231467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.903194, 3.753480, 2.217277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.790070, 3.667633, 1.843334>,  <2.722195, 3.616125, 1.618968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.790070, 3.667633, 1.843334>,  <2.903194, 3.753480, 2.217277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.790070, 3.667633, 1.843334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436312, 0.839188, -0.324646,
		0.854196, -0.499702, -0.143689,
		-0.282808, -0.214619, -0.934857,
		2.705227, 3.603248, 1.562877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.456428, 3.811231, 1.821822>,  <2.903194, 3.753480, 2.217277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.456428, 3.811231, 1.821822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.139915, 3.871315, 1.584736>,  <2.950008, 3.907366, 1.442484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.139915, 3.871315, 1.584736>,  <3.456428, 3.811231, 1.821822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.139915, 3.871315, 1.584736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446318, 0.804465, -0.391965,
		0.417941, -0.574694, -0.703600,
		-0.791281, 0.150211, -0.592715,
		2.902531, 3.916378, 1.406921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.771729, 3.953538, 1.200906>,  <3.456428, 3.811231, 1.821822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.771729, 3.953538, 1.200906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.396736, 4.092743, 1.202473>,  <3.171741, 4.176266, 1.203413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.396736, 4.092743, 1.202473>,  <3.771729, 3.953538, 1.200906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.396736, 4.092743, 1.202473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323415, 0.875269, -0.359592,
		-0.128571, -0.335844, -0.933102,
		-0.937482, 0.348013, 0.003917,
		3.115492, 4.197147, 1.203648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<4.138060, 5.473930, 1.359217> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.788472, 5.634445, 1.249565>,  <3.578720, 5.730754, 1.183774>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.788472, 5.634445, 1.249565>,  <4.138060, 5.473930, 1.359217>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.788472, 5.634445, 1.249565> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397723, -0.914750, -0.071058,
		-0.279276, 0.046926, 0.959063,
		-0.873969, 0.401287, -0.274131,
		3.526282, 5.754831, 1.167326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.671532, 5.063610, 1.752467>,  <4.138060, 5.473930, 1.359217>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.671532, 5.063610, 1.752467> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.439038, 5.258057, 1.491436>,  <3.299542, 5.374725, 1.334817>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.439038, 5.258057, 1.491436>,  <3.671532, 5.063610, 1.752467>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.439038, 5.258057, 1.491436> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457258, -0.858478, -0.232230,
		-0.673114, 0.163416, 0.721258,
		-0.581234, 0.486118, -0.652577,
		3.264668, 5.403892, 1.295663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.915204, 4.958187, 1.798667>,  <3.671532, 5.063610, 1.752467>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.915204, 4.958187, 1.798667> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.991504, 5.047440, 1.416290>,  <3.037283, 5.100991, 1.186864>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.991504, 5.047440, 1.416290>,  <2.915204, 4.958187, 1.798667>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.991504, 5.047440, 1.416290> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382550, -0.879935, -0.281725,
		-0.904030, 0.419435, -0.082487,
		0.190749, 0.223133, -0.955943,
		3.048728, 5.114379, 1.129507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.253947, 5.038276, 1.343253>,  <2.915204, 4.958187, 1.798667>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.253947, 5.038276, 1.343253> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.589875, 4.883331, 1.191120>,  <2.791432, 4.790364, 1.099840>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.589875, 4.883331, 1.191120>,  <2.253947, 5.038276, 1.343253>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.589875, 4.883331, 1.191120> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462038, -0.877840, -0.126171,
		-0.284998, 0.281689, -0.916203,
		0.839820, -0.387362, -0.380333,
		2.841821, 4.767123, 1.077020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.959307, 4.584571, 0.814688>,  <2.253947, 5.038276, 1.343253>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.959307, 4.584571, 0.814688> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.313322, 4.451157, 0.944588>,  <2.525731, 4.371108, 1.022527>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.313322, 4.451157, 0.944588>,  <1.959307, 4.584571, 0.814688>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.313322, 4.451157, 0.944588> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308132, -0.942640, -0.128393,
		0.348945, 0.013567, -0.937045,
		0.885038, -0.333536, 0.324749,
		2.578833, 4.351096, 1.042012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.179532, 4.057201, 0.303458>,  <1.959307, 4.584571, 0.814688>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.179532, 4.057201, 0.303458> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.394115, 3.993820, 0.635025>,  <2.522866, 3.955792, 0.833965>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.394115, 3.993820, 0.635025>,  <2.179532, 4.057201, 0.303458>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.394115, 3.993820, 0.635025> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109788, -0.986972, -0.117611,
		0.836755, -0.027912, -0.546866,
		0.536459, -0.158451, 0.828918,
		2.555053, 3.946285, 0.883700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.313897, 3.370640, 0.321760>,  <2.179532, 4.057201, 0.303458>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.313897, 3.370640, 0.321760> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.457747, 3.431274, 0.690041>,  <2.544056, 3.467655, 0.911009>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.457747, 3.431274, 0.690041>,  <2.313897, 3.370640, 0.321760>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.457747, 3.431274, 0.690041> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185547, -0.955394, 0.229772,
		0.914464, -0.253465, -0.315455,
		0.359623, 0.151587, 0.920702,
		2.565634, 3.476750, 0.966251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.704893, 2.787863, 0.557166>,  <2.313897, 3.370640, 0.321760>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.704893, 2.787863, 0.557166> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.569023, 2.959473, 0.891964>,  <2.487501, 3.062438, 1.092843>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.569023, 2.959473, 0.891964>,  <2.704893, 2.787863, 0.557166>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.569023, 2.959473, 0.891964> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242004, -0.899810, 0.363009,
		0.908876, -0.079251, 0.409468,
		-0.339674, 0.429023, 0.836995,
		2.467121, 3.088180, 1.143062>
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
