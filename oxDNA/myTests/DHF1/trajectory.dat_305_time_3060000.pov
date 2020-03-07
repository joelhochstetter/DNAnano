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
	<2.102879, 2.817324, 2.124652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.370491, 2.530296, 2.202103>,  <2.531058, 2.358079, 2.248573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.370491, 2.530296, 2.202103>,  <2.102879, 2.817324, 2.124652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.370491, 2.530296, 2.202103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153648, 0.388423, 0.908581,
		-0.727180, -0.578118, 0.370121,
		0.669031, -0.717570, 0.193627,
		2.571200, 2.315025, 2.260191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.953905, 2.439349, 2.722037>,  <2.102879, 2.817324, 2.124652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.953905, 2.439349, 2.722037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.352299, 2.443565, 2.686478>,  <2.591335, 2.446095, 2.665142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.352299, 2.443565, 2.686478>,  <1.953905, 2.439349, 2.722037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.352299, 2.443565, 2.686478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078062, 0.383842, 0.920093,
		0.043821, -0.923339, 0.381478,
		0.995985, 0.010541, -0.088898,
		2.651094, 2.446728, 2.659808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.189377, 2.081841, 3.221426>,  <1.953905, 2.439349, 2.722037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.189377, 2.081841, 3.221426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.466812, 2.356316, 3.133713>,  <2.633273, 2.521000, 3.081085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.466812, 2.356316, 3.133713>,  <2.189377, 2.081841, 3.221426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.466812, 2.356316, 3.133713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068436, 0.365791, 0.928178,
		0.717114, -0.628766, 0.300668,
		0.693588, 0.686186, -0.219284,
		2.674889, 2.562171, 3.067928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.768590, 2.252160, 3.756130>,  <2.189377, 2.081841, 3.221426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.768590, 2.252160, 3.756130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.706276, 2.585663, 3.544250>,  <2.668887, 2.785765, 3.417123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.706276, 2.585663, 3.544250>,  <2.768590, 2.252160, 3.756130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.706276, 2.585663, 3.544250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186614, 0.501747, 0.844645,
		0.970003, 0.230433, 0.077426,
		-0.155786, 0.833757, -0.529698,
		2.659540, 2.835790, 3.385341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.109562, 2.739837, 4.114683>,  <2.768590, 2.252160, 3.756130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.109562, 2.739837, 4.114683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.829697, 2.934982, 3.905891>,  <2.661777, 3.052069, 3.780617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.829697, 2.934982, 3.905891>,  <3.109562, 2.739837, 4.114683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.829697, 2.934982, 3.905891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285867, 0.478399, 0.830310,
		0.654790, 0.730154, -0.195255,
		-0.699664, 0.487862, -0.521978,
		2.619797, 3.081341, 3.749298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.270185, 3.534612, 4.111804>,  <3.109562, 2.739837, 4.114683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.270185, 3.534612, 4.111804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.883701, 3.455650, 4.045509>,  <2.651811, 3.408273, 4.005732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.883701, 3.455650, 4.045509>,  <3.270185, 3.534612, 4.111804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.883701, 3.455650, 4.045509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249229, 0.551495, 0.796076,
		-0.065745, 0.810484, -0.582060,
		-0.966210, -0.197404, -0.165738,
		2.593838, 3.396429, 3.995788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.921699, 4.144611, 4.198138>,  <3.270185, 3.534612, 4.111804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.921699, 4.144611, 4.198138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.636795, 3.867043, 4.240395>,  <2.465853, 3.700502, 4.265749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.636795, 3.867043, 4.240395>,  <2.921699, 4.144611, 4.198138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.636795, 3.867043, 4.240395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424068, 0.545348, 0.723023,
		-0.559332, 0.470180, -0.682699,
		-0.712260, -0.693921, 0.105642,
		2.423117, 3.658866, 4.272087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.351372, 4.555955, 4.256426>,  <2.921699, 4.144611, 4.198138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.351372, 4.555955, 4.256426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.270256, 4.189568, 4.394920>,  <2.221586, 3.969735, 4.478017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.270256, 4.189568, 4.394920>,  <2.351372, 4.555955, 4.256426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.270256, 4.189568, 4.394920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454796, 0.401234, 0.795093,
		-0.867200, 0.003771, -0.497945,
		-0.202790, -0.915968, 0.346235,
		2.209419, 3.914777, 4.498791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<1.942019, 4.314753, 5.973968> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.929125, 3.948837, 6.135025>,  <1.921388, 3.729288, 6.231659>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.929125, 3.948837, 6.135025>,  <1.942019, 4.314753, 5.973968>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.929125, 3.948837, 6.135025> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074635, -0.399524, -0.913679,
		0.996690, -0.059505, -0.055396,
		-0.032236, -0.914789, 0.402642,
		1.919454, 3.674400, 6.255818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.530224, 3.860663, 5.837139>,  <1.942019, 4.314753, 5.973968>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.530224, 3.860663, 5.837139> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.201421, 3.640244, 5.894615>,  <2.004139, 3.507992, 5.929101>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.201421, 3.640244, 5.894615>,  <2.530224, 3.860663, 5.837139>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.201421, 3.640244, 5.894615> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089402, -0.374064, -0.923083,
		0.562414, -0.745936, 0.356749,
		-0.822008, -0.551049, 0.143690,
		1.954818, 3.474929, 5.937722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.650183, 3.171635, 5.744873>,  <2.530224, 3.860663, 5.837139>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.650183, 3.171635, 5.744873> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.282796, 3.257019, 5.611694>,  <2.062364, 3.308250, 5.531787>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.282796, 3.257019, 5.611694>,  <2.650183, 3.171635, 5.744873>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.282796, 3.257019, 5.611694> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239003, -0.371165, -0.897282,
		-0.315109, -0.903700, 0.289886,
		-0.918468, 0.213457, -0.332944,
		2.007256, 3.321057, 5.511811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.442812, 2.624216, 5.324418>,  <2.650183, 3.171635, 5.744873>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.442812, 2.624216, 5.324418> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.233557, 2.950821, 5.226738>,  <2.108004, 3.146784, 5.168130>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.233557, 2.950821, 5.226738>,  <2.442812, 2.624216, 5.324418>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.233557, 2.950821, 5.226738> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171769, -0.179639, -0.968620,
		-0.834759, -0.548668, -0.046276,
		-0.523138, 0.816513, -0.244200,
		2.076615, 3.195775, 5.153478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.936110, 2.562643, 4.798942>,  <2.442812, 2.624216, 5.324418>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.936110, 2.562643, 4.798942> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.005134, 2.952240, 4.740204>,  <2.046548, 3.185998, 4.704961>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.005134, 2.952240, 4.740204>,  <1.936110, 2.562643, 4.798942>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.005134, 2.952240, 4.740204> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021715, -0.152807, -0.988017,
		-0.984760, 0.167303, -0.047518,
		0.172559, 0.973992, -0.146845,
		2.056901, 3.244437, 4.696150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.595433, 2.727897, 4.227188>,  <1.936110, 2.562643, 4.798942>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.595433, 2.727897, 4.227188> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.855585, 3.029373, 4.265038>,  <2.011677, 3.210259, 4.287747>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.855585, 3.029373, 4.265038>,  <1.595433, 2.727897, 4.227188>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.855585, 3.029373, 4.265038> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156910, -0.011417, -0.987547,
		-0.743225, 0.657129, -0.125687,
		0.650381, 0.753691, 0.094625,
		2.050699, 3.255481, 4.293425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.347127, 3.282639, 3.738999>,  <1.595433, 2.727897, 4.227188>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.347127, 3.282639, 3.738999> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.738486, 3.302658, 3.819229>,  <1.973302, 3.314670, 3.867367>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.738486, 3.302658, 3.819229>,  <1.347127, 3.282639, 3.738999>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.738486, 3.302658, 3.819229> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205675, -0.137998, -0.968842,
		-0.020809, 0.989167, -0.145311,
		0.978399, 0.050048, 0.200575,
		2.032006, 3.317672, 3.879402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.673305, 3.675252, 3.207505>,  <1.347127, 3.282639, 3.738999>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.673305, 3.675252, 3.207505> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.994132, 3.480164, 3.345383>,  <2.186629, 3.363111, 3.428110>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.994132, 3.480164, 3.345383>,  <1.673305, 3.675252, 3.207505>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.994132, 3.480164, 3.345383> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329889, -0.119322, -0.936448,
		0.497855, 0.864807, 0.065189,
		0.802069, -0.487720, 0.344695,
		2.234753, 3.333848, 3.448791>
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
