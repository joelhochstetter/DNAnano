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
	<-0.998980, 1.900644, 4.924190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.615250, 1.838204, 5.018276>,  <-0.385011, 1.800741, 5.074728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.615250, 1.838204, 5.018276>,  <-0.998980, 1.900644, 4.924190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.615250, 1.838204, 5.018276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245843, 0.052396, -0.967893,
		0.138763, 0.986351, 0.088640,
		0.959326, -0.156099, 0.235217,
		-0.327452, 1.791375, 5.088841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.548633, 2.205698, 4.402366>,  <-0.998980, 1.900644, 4.924190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.548633, 2.205698, 4.402366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.238163, 2.033633, 4.586761>,  <-0.051881, 1.930394, 4.697399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.238163, 2.033633, 4.586761>,  <-0.548633, 2.205698, 4.402366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.238163, 2.033633, 4.586761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507153, -0.008478, -0.861814,
		0.374628, 0.902712, 0.211577,
		0.776176, -0.430161, 0.460990,
		-0.005310, 1.904585, 4.725059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.027956, 2.658122, 4.271894>,  <-0.548633, 2.205698, 4.402366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.027956, 2.658122, 4.271894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.142506, 2.277566, 4.317228>,  <0.211236, 2.049232, 4.344429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.142506, 2.277566, 4.317228>,  <0.027956, 2.658122, 4.271894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.142506, 2.277566, 4.317228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575122, 0.076083, -0.814522,
		0.766306, 0.298442, 0.568953,
		0.286375, -0.951391, 0.113337,
		0.228418, 1.992149, 4.351230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.744443, 2.490769, 4.473678>,  <0.027956, 2.658122, 4.271894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.744443, 2.490769, 4.473678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.561834, 2.272119, 4.192883>,  <0.452269, 2.140929, 4.024405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.561834, 2.272119, 4.192883>,  <0.744443, 2.490769, 4.473678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.561834, 2.272119, 4.192883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574868, 0.420967, -0.701650,
		0.679055, -0.723869, 0.122058,
		-0.456521, -0.546626, -0.701989,
		0.424878, 2.108131, 3.982286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.208519, 2.292235, 4.098164>,  <0.744443, 2.490769, 4.473678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.208519, 2.292235, 4.098164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.896169, 2.250120, 3.851864>,  <0.708758, 2.224851, 3.704084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.896169, 2.250120, 3.851864>,  <1.208519, 2.292235, 4.098164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.896169, 2.250120, 3.851864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538571, 0.385941, -0.748993,
		0.316502, -0.916496, -0.244668,
		-0.780876, -0.105286, -0.615749,
		0.661906, 2.218534, 3.667139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.465228, 1.865744, 3.544193>,  <1.208519, 2.292235, 4.098164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.465228, 1.865744, 3.544193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.133046, 2.044653, 3.411352>,  <0.933737, 2.151999, 3.331648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.133046, 2.044653, 3.411352>,  <1.465228, 1.865744, 3.544193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.133046, 2.044653, 3.411352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439357, 0.159332, -0.884069,
		-0.342506, -0.880091, -0.328830,
		-0.830455, 0.447273, -0.332101,
		0.883910, 2.178835, 3.311722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.469747, 1.616661, 2.781169>,  <1.465228, 1.865744, 3.544193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.469747, 1.616661, 2.781169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.220032, 1.924074, 2.837204>,  <1.070203, 2.108522, 2.870825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.220032, 1.924074, 2.837204>,  <1.469747, 1.616661, 2.781169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.220032, 1.924074, 2.837204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382453, 0.457043, -0.803020,
		-0.681172, -0.447739, -0.579253,
		-0.624287, 0.768532, 0.140086,
		1.032746, 2.154634, 2.879230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.151668, 1.801942, 2.071161>,  <1.469747, 1.616661, 2.781169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.151668, 1.801942, 2.071161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.165784, 2.115206, 2.319489>,  <1.174253, 2.303164, 2.468485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.165784, 2.115206, 2.319489>,  <1.151668, 1.801942, 2.071161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.165784, 2.115206, 2.319489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425468, 0.550323, -0.718416,
		-0.904285, 0.289491, -0.313788,
		0.035290, 0.783160, 0.620818,
		1.176371, 2.350154, 2.505734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<2.493160, 3.298303, 2.186537> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.135742, 3.471407, 2.138708>,  <1.921291, 3.575269, 2.110011>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.135742, 3.471407, 2.138708>,  <2.493160, 3.298303, 2.186537>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.135742, 3.471407, 2.138708> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415217, -0.695201, 0.586763,
		0.170801, 0.573947, 0.800882,
		-0.893545, 0.432760, -0.119571,
		1.867679, 3.601235, 2.102837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.211450, 3.225977, 2.834107>,  <2.493160, 3.298303, 2.186537>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.211450, 3.225977, 2.834107> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.909641, 3.294859, 2.580796>,  <1.728556, 3.336189, 2.428809>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.909641, 3.294859, 2.580796>,  <2.211450, 3.225977, 2.834107>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.909641, 3.294859, 2.580796> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583981, -0.616455, 0.528156,
		-0.299436, 0.768328, 0.565695,
		-0.754522, 0.172206, -0.633278,
		1.683285, 3.346521, 2.390813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.619471, 3.349152, 3.144145>,  <2.211450, 3.225977, 2.834107>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.619471, 3.349152, 3.144145> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.482922, 3.179537, 2.808608>,  <1.400992, 3.077768, 2.607286>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.482922, 3.179537, 2.808608>,  <1.619471, 3.349152, 3.144145>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.482922, 3.179537, 2.808608> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.660567, -0.526661, 0.535052,
		-0.668668, 0.736763, -0.100318,
		-0.341373, -0.424038, -0.838842,
		1.380510, 3.052325, 2.556955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.919605, 3.497515, 3.065807>,  <1.619471, 3.349152, 3.144145>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.919605, 3.497515, 3.065807> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.998241, 3.153831, 2.876870>,  <1.045423, 2.947620, 2.763508>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.998241, 3.153831, 2.876870>,  <0.919605, 3.497515, 3.065807>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.998241, 3.153831, 2.876870> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.645477, -0.476037, 0.597284,
		-0.738046, 0.187466, -0.648186,
		0.196590, -0.859212, -0.472342,
		1.057219, 2.896067, 2.735168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.228624, 3.245774, 2.928830>,  <0.919605, 3.497515, 3.065807>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.228624, 3.245774, 2.928830> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.453522, 2.915349, 2.913329>,  <0.588460, 2.717094, 2.904029>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.453522, 2.915349, 2.913329>,  <0.228624, 3.245774, 2.928830>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.453522, 2.915349, 2.913329> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.677564, -0.487025, 0.551103,
		-0.474108, -0.283613, -0.833538,
		0.562254, -0.826057, -0.038737,
		0.622195, 2.667530, 2.901703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.248302, 2.690752, 2.960983>,  <0.228624, 3.245774, 2.928830>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.248302, 2.690752, 2.960983> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.109020, 2.534620, 3.050109>,  <0.323414, 2.440940, 3.103584>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.109020, 2.534620, 3.050109>,  <-0.248302, 2.690752, 2.960983>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.109020, 2.534620, 3.050109> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439549, -0.655236, 0.614380,
		-0.093815, -0.646767, -0.756895,
		0.893306, -0.390330, 0.222815,
		0.377012, 2.417521, 3.116953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.334618, 2.014753, 2.868093>,  <-0.248302, 2.690752, 2.960983>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.334618, 2.014753, 2.868093> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.022560, 2.064554, 3.113328>,  <0.164674, 2.094435, 3.260469>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.022560, 2.064554, 3.113328>,  <-0.334618, 2.014753, 2.868093>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.022560, 2.064554, 3.113328> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439832, -0.587756, 0.679037,
		0.444887, -0.799401, -0.403774,
		0.780143, 0.124502, 0.613087,
		0.211483, 2.101905, 3.297254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.217426, 1.343393, 3.222613>,  <-0.334618, 2.014753, 2.868093>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.217426, 1.343393, 3.222613> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.029915, 1.623054, 3.438552>,  <0.082592, 1.790850, 3.568115>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.029915, 1.623054, 3.438552>,  <-0.217426, 1.343393, 3.222613>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.029915, 1.623054, 3.438552> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329622, -0.428553, 0.841244,
		0.819510, -0.572302, 0.029559,
		0.468778, 0.699151, 0.539847,
		0.110719, 1.832799, 3.600506>
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
