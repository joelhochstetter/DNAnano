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
	<-0.578184, 3.454418, 1.031416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.304821, 3.510742, 0.744884>,  <-0.140803, 3.544537, 0.572966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.304821, 3.510742, 0.744884>,  <-0.578184, 3.454418, 1.031416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.304821, 3.510742, 0.744884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296276, -0.950279, 0.095863,
		-0.667214, -0.277744, -0.691147,
		0.683408, 0.140810, -0.716328,
		-0.099799, 3.552985, 0.529986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.607900, 3.055462, 0.313881>,  <-0.578184, 3.454418, 1.031416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.607900, 3.055462, 0.313881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.227539, 3.148621, 0.395409>,  <0.000678, 3.204516, 0.444325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.227539, 3.148621, 0.395409>,  <-0.607900, 3.055462, 0.313881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.227539, 3.148621, 0.395409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243099, -0.969648, -0.026182,
		0.191536, 0.074445, -0.978658,
		0.950903, 0.232896, 0.203820,
		0.057732, 3.218489, 0.456555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.296970, 2.411445, 0.096428>,  <-0.607900, 3.055462, 0.313881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.296970, 2.411445, 0.096428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.049736, 2.627869, 0.324543>,  <0.098604, 2.757723, 0.461412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.049736, 2.627869, 0.324543>,  <-0.296970, 2.411445, 0.096428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.049736, 2.627869, 0.324543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521475, -0.825057, 0.217589,
		0.588249, 0.162902, -0.792103,
		0.618084, 0.541058, 0.570288,
		0.135689, 2.790186, 0.495629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.241764, 2.196545, -0.241023>,  <-0.296970, 2.411445, 0.096428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.241764, 2.196545, -0.241023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.332027, 2.311798, 0.131226>,  <0.386186, 2.380950, 0.354575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.332027, 2.311798, 0.131226>,  <0.241764, 2.196545, -0.241023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.332027, 2.311798, 0.131226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525903, -0.840145, 0.132597,
		0.820063, 0.459495, -0.341116,
		0.225660, 0.288132, 0.930622,
		0.399725, 2.398238, 0.410412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.003744, 2.177321, -0.082056>,  <0.241764, 2.196545, -0.241023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.003744, 2.177321, -0.082056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.818237, 2.120804, 0.267792>,  <0.706934, 2.086894, 0.477700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.818237, 2.120804, 0.267792>,  <1.003744, 2.177321, -0.082056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.818237, 2.120804, 0.267792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611192, -0.765695, 0.200388,
		0.641378, 0.627494, 0.441459,
		-0.463766, -0.141292, 0.874619,
		0.679108, 2.078416, 0.530177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.514299, 2.132871, 0.369591>,  <1.003744, 2.177321, -0.082056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.514299, 2.132871, 0.369591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.217987, 1.937134, 0.553673>,  <1.040200, 1.819691, 0.664122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.217987, 1.937134, 0.553673>,  <1.514299, 2.132871, 0.369591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.217987, 1.937134, 0.553673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666009, -0.624374, 0.408152,
		0.087613, 0.608851, 0.788432,
		-0.740780, -0.489344, 0.460204,
		0.995753, 1.790331, 0.691734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.635193, 2.099242, 1.178644>,  <1.514299, 2.132871, 0.369591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.635193, 2.099242, 1.178644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.415928, 1.785522, 1.062443>,  <1.284369, 1.597290, 0.992722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.415928, 1.785522, 1.062443>,  <1.635193, 2.099242, 1.178644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.415928, 1.785522, 1.062443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711683, -0.619856, 0.330584,
		-0.439347, -0.025532, 0.897955,
		-0.548162, -0.784300, -0.290503,
		1.251479, 1.550232, 0.975292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.824156, 1.589280, 1.620282>,  <1.635193, 2.099242, 1.178644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.824156, 1.589280, 1.620282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.637894, 1.398697, 1.321980>,  <1.526136, 1.284347, 1.142998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.637894, 1.398697, 1.321980>,  <1.824156, 1.589280, 1.620282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.637894, 1.398697, 1.321980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562717, -0.809807, 0.166015,
		-0.683018, -0.342344, 0.645203,
		-0.465656, -0.476458, -0.745756,
		1.498197, 1.255759, 1.098253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<3.023105, 0.256353, 0.954363> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.812931, 0.184204, 0.621765>,  <2.686826, 0.140915, 0.422206>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.812931, 0.184204, 0.621765>,  <3.023105, 0.256353, 0.954363>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.812931, 0.184204, 0.621765> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.784662, 0.480584, 0.391591,
		0.328971, 0.858198, -0.394048,
		-0.525436, -0.180372, -0.831494,
		2.655300, 0.130093, 0.372317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.833794, 0.929616, 0.639599>,  <3.023105, 0.256353, 0.954363>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.833794, 0.929616, 0.639599> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.572355, 0.633102, 0.578529>,  <2.415492, 0.455194, 0.541887>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.572355, 0.633102, 0.578529>,  <2.833794, 0.929616, 0.639599>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.572355, 0.633102, 0.578529> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.753895, 0.619877, 0.217702,
		-0.066740, 0.257389, -0.964000,
		-0.653596, -0.741284, -0.152674,
		2.376276, 0.410717, 0.532727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.265413, 1.145807, 0.149761>,  <2.833794, 0.929616, 0.639599>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.265413, 1.145807, 0.149761> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.145866, 0.841156, 0.379753>,  <2.074138, 0.658365, 0.517748>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.145866, 0.841156, 0.379753>,  <2.265413, 1.145807, 0.149761>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.145866, 0.841156, 0.379753> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.809859, 0.521133, 0.269348,
		-0.504784, -0.385153, -0.772561,
		-0.298867, -0.761628, 0.574979,
		2.056206, 0.612668, 0.552247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.617078, 0.906560, -0.124915>,  <2.265413, 1.145807, 0.149761>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.617078, 0.906560, -0.124915> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.630623, 0.857513, 0.271835>,  <1.638750, 0.828085, 0.509886>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.630623, 0.857513, 0.271835>,  <1.617078, 0.906560, -0.124915>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.630623, 0.857513, 0.271835> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.905428, 0.416427, 0.082390,
		-0.423147, -0.900863, -0.096921,
		0.033862, -0.122618, 0.991876,
		1.640781, 0.820728, 0.569398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.044116, 0.644563, 0.098384>,  <1.617078, 0.906560, -0.124915>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.044116, 0.644563, 0.098384> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.192575, 0.779129, 0.444580>,  <1.281651, 0.859869, 0.652298>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.192575, 0.779129, 0.444580>,  <1.044116, 0.644563, 0.098384>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.192575, 0.779129, 0.444580> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.882568, 0.417546, 0.216172,
		-0.288659, -0.844086, 0.451880,
		0.371148, 0.336415, 0.865491,
		1.303920, 0.880054, 0.704227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.502256, 0.467557, 0.737537>,  <1.044116, 0.644563, 0.098384>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.502256, 0.467557, 0.737537> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.731140, 0.788803, 0.803967>,  <0.868471, 0.981551, 0.843824>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.731140, 0.788803, 0.803967>,  <0.502256, 0.467557, 0.737537>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.731140, 0.788803, 0.803967> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.819325, 0.568662, 0.073005,
		-0.035809, -0.177843, 0.983407,
		0.572210, 0.803116, 0.166075,
		0.902803, 1.029738, 0.853789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.049211, 0.880988, 1.158978>,  <0.502256, 0.467557, 0.737537>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.049211, 0.880988, 1.158978> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.311281, 1.161987, 1.047810>,  <0.468524, 1.330587, 0.981108>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.311281, 1.161987, 1.047810>,  <0.049211, 0.880988, 1.158978>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.311281, 1.161987, 1.047810> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.737263, 0.674835, -0.032266,
		0.164885, 0.226041, 0.960062,
		0.655176, 0.702498, -0.277922,
		0.507834, 1.372737, 0.964433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.086046, 1.482021, 1.589845>,  <0.049211, 0.880988, 1.158978>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.086046, 1.482021, 1.589845> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.080675, 1.573456, 1.237930>,  <0.180708, 1.628317, 1.026782>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.080675, 1.573456, 1.237930>,  <-0.086046, 1.482021, 1.589845>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.080675, 1.573456, 1.237930> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.731130, 0.659398, -0.175052,
		0.540114, 0.716200, 0.441965,
		0.416803, 0.228586, -0.879786,
		0.205716, 1.642032, 0.973994>
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
