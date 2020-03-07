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
	<-0.122936, 5.959607, 5.006840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.223078, 5.644733, 5.232287>,  <-0.283163, 5.455810, 5.367556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.223078, 5.644733, 5.232287>,  <-0.122936, 5.959607, 5.006840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.223078, 5.644733, 5.232287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565808, -0.591356, -0.574596,
		0.785611, 0.175048, 0.593442,
		-0.250353, -0.787183, 0.563619,
		-0.298184, 5.408578, 5.401373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.485749, 5.617321, 5.327736>,  <-0.122936, 5.959607, 5.006840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.485749, 5.617321, 5.327736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.186562, 5.358034, 5.270661>,  <0.007049, 5.202462, 5.236416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.186562, 5.358034, 5.270661>,  <0.485749, 5.617321, 5.327736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.186562, 5.358034, 5.270661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469464, -0.364705, -0.804111,
		0.469198, -0.668436, 0.577101,
		-0.747968, -0.648216, -0.142687,
		-0.037829, 5.163569, 5.227855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.540479, 4.859904, 5.426883>,  <0.485749, 5.617321, 5.327736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.540479, 4.859904, 5.426883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.347523, 5.034128, 5.122887>,  <0.231749, 5.138662, 4.940489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.347523, 5.034128, 5.122887>,  <0.540479, 4.859904, 5.426883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.347523, 5.034128, 5.122887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604850, -0.461945, -0.648663,
		-0.633605, -0.772590, -0.040610,
		-0.482391, 0.435559, -0.759991,
		0.202806, 5.164796, 4.894889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.558341, 4.234125, 5.021746>,  <0.540479, 4.859904, 5.426883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.558341, 4.234125, 5.021746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.474274, 4.543255, 4.782223>,  <0.423833, 4.728733, 4.638509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.474274, 4.543255, 4.782223>,  <0.558341, 4.234125, 5.021746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.474274, 4.543255, 4.782223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577198, -0.396271, -0.714012,
		-0.789096, -0.495693, -0.362789,
		-0.210168, 0.772825, -0.598808,
		0.411223, 4.775102, 4.602580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.415527, 3.980871, 4.333055>,  <0.558341, 4.234125, 5.021746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.415527, 3.980871, 4.333055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.550430, 4.352739, 4.273767>,  <0.631372, 4.575861, 4.238194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.550430, 4.352739, 4.273767>,  <0.415527, 3.980871, 4.333055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.550430, 4.352739, 4.273767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428051, -0.291663, -0.855397,
		-0.838468, 0.225045, -0.496312,
		0.337259, 0.929671, -0.148219,
		0.651608, 4.631640, 4.229300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.311458, 4.163472, 3.607131>,  <0.415527, 3.980871, 4.333055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.311458, 4.163472, 3.607131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.584759, 4.436405, 3.711122>,  <0.748739, 4.600165, 3.773516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.584759, 4.436405, 3.711122>,  <0.311458, 4.163472, 3.607131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.584759, 4.436405, 3.711122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497090, -0.173860, -0.850103,
		-0.534853, 0.710067, -0.457971,
		0.683253, 0.682332, 0.259977,
		0.789735, 4.641105, 3.789115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.378732, 4.702102, 3.001174>,  <0.311458, 4.163472, 3.607131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.378732, 4.702102, 3.001174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.709095, 4.701345, 3.226695>,  <0.907313, 4.700891, 3.362008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.709095, 4.701345, 3.226695>,  <0.378732, 4.702102, 3.001174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.709095, 4.701345, 3.226695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559150, -0.125486, -0.819515,
		0.072299, 0.992094, -0.102582,
		0.825908, -0.001891, 0.563802,
		0.956867, 4.700778, 3.395836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.835508, 5.025425, 2.489329>,  <0.378732, 4.702102, 3.001174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.835508, 5.025425, 2.489329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.063751, 4.878546, 2.783152>,  <1.200697, 4.790418, 2.959445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.063751, 4.878546, 2.783152>,  <0.835508, 5.025425, 2.489329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.063751, 4.878546, 2.783152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666680, -0.315167, -0.675431,
		0.479526, 0.875120, 0.064968,
		0.570607, -0.367199, 0.734556,
		1.234933, 4.768386, 3.003518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<1.482580, 4.082026, 2.083635> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.838112, 4.131512, 2.260124>,  <2.051431, 4.161204, 2.366018>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.838112, 4.131512, 2.260124>,  <1.482580, 4.082026, 2.083635>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.838112, 4.131512, 2.260124> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457253, 0.176325, 0.871682,
		0.030041, -0.976527, 0.213291,
		0.888829, 0.123714, 0.441223,
		2.104761, 4.168627, 2.392491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.440076, 3.787495, 2.765568>,  <1.482580, 4.082026, 2.083635>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.440076, 3.787495, 2.765568> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.740177, 4.051865, 2.772455>,  <1.920238, 4.210487, 2.776588>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.740177, 4.051865, 2.772455>,  <1.440076, 3.787495, 2.765568>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.740177, 4.051865, 2.772455> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400734, 0.433871, 0.806950,
		0.525865, -0.612316, 0.590369,
		0.750252, 0.660927, 0.017218,
		1.965253, 4.250143, 2.777621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.932172, 3.782608, 3.399800>,  <1.440076, 3.787495, 2.765568>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.932172, 3.782608, 3.399800> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.862850, 4.143905, 3.242767>,  <1.821257, 4.360683, 3.148548>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.862850, 4.143905, 3.242767>,  <1.932172, 3.782608, 3.399800>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.862850, 4.143905, 3.242767> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445855, 0.283474, 0.849032,
		0.878168, 0.322175, 0.353588,
		-0.173304, 0.903242, -0.392581,
		1.810859, 4.414878, 3.124993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.092442, 4.282578, 3.893515>,  <1.932172, 3.782608, 3.399800>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.092442, 4.282578, 3.893515> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.830967, 4.444348, 3.637661>,  <1.674082, 4.541409, 3.484148>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.830967, 4.444348, 3.637661>,  <2.092442, 4.282578, 3.893515>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.830967, 4.444348, 3.637661> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537482, 0.346894, 0.768621,
		0.532735, 0.846230, -0.009390,
		-0.653687, 0.404424, -0.639636,
		1.634861, 4.565675, 3.445770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.013650, 5.033613, 4.063879>,  <2.092442, 4.282578, 3.893515>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.013650, 5.033613, 4.063879> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.688210, 4.935890, 3.852837>,  <1.492945, 4.877257, 3.726211>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.688210, 4.935890, 3.852837>,  <2.013650, 5.033613, 4.063879>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.688210, 4.935890, 3.852837> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581104, 0.371762, 0.723955,
		0.019277, 0.895604, -0.444433,
		-0.813601, -0.244306, -0.527606,
		1.444129, 4.862598, 3.694555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.523471, 5.563975, 4.252038>,  <2.013650, 5.033613, 4.063879>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.523471, 5.563975, 4.252038> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.308556, 5.259480, 4.106802>,  <1.179606, 5.076782, 4.019660>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.308556, 5.259480, 4.106802>,  <1.523471, 5.563975, 4.252038>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.308556, 5.259480, 4.106802> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.771168, 0.269100, 0.576963,
		-0.341498, 0.590000, -0.731628,
		-0.537290, -0.761239, -0.363092,
		1.147369, 5.031108, 3.997874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.951470, 5.861498, 4.240664>,  <1.523471, 5.563975, 4.252038>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.951470, 5.861498, 4.240664> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.841393, 5.478382, 4.207420>,  <0.775346, 5.248512, 4.187474>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.841393, 5.478382, 4.207420>,  <0.951470, 5.861498, 4.240664>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.841393, 5.478382, 4.207420> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.847049, 0.200668, 0.492180,
		-0.454728, 0.205841, -0.866517,
		-0.275193, -0.957790, -0.083108,
		0.758835, 5.191045, 4.182488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.356545, 5.826566, 3.815875>,  <0.951470, 5.861498, 4.240664>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.356545, 5.826566, 3.815875> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.371910, 5.511920, 4.062374>,  <0.381129, 5.323133, 4.210274>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.371910, 5.511920, 4.062374>,  <0.356545, 5.826566, 3.815875>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.371910, 5.511920, 4.062374> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.901405, 0.238885, 0.361113,
		-0.431269, -0.569361, -0.699882,
		0.038412, -0.786614, 0.616249,
		0.383434, 5.275936, 4.247249>
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
