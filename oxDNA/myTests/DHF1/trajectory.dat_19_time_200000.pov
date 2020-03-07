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
	<0.658993, 4.810497, 1.918093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.444099, 4.690186, 2.233285>,  <0.315163, 4.617999, 2.422400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.444099, 4.690186, 2.233285>,  <0.658993, 4.810497, 1.918093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.444099, 4.690186, 2.233285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126110, -0.895105, -0.427650,
		0.833952, -0.329120, 0.442950,
		-0.537234, -0.300779, 0.787979,
		0.282929, 4.599952, 2.469679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.999532, 4.297867, 2.136807>,  <0.658993, 4.810497, 1.918093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.999532, 4.297867, 2.136807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.615772, 4.277946, 2.247853>,  <0.385516, 4.265994, 2.314481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.615772, 4.277946, 2.247853>,  <0.999532, 4.297867, 2.136807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.615772, 4.277946, 2.247853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115736, -0.828090, -0.548519,
		0.257208, -0.558379, 0.788706,
		-0.959401, -0.049802, 0.277616,
		0.327952, 4.263006, 2.331138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.810274, 3.598238, 2.294297>,  <0.999532, 4.297867, 2.136807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.810274, 3.598238, 2.294297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.470812, 3.759453, 2.157273>,  <0.267135, 3.856182, 2.075058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.470812, 3.759453, 2.157273>,  <0.810274, 3.598238, 2.294297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.470812, 3.759453, 2.157273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111649, -0.769525, -0.628781,
		-0.517030, -0.495372, 0.698060,
		-0.848655, 0.403036, -0.342560,
		0.216215, 3.880364, 2.054505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.250618, 3.163472, 2.218510>,  <0.810274, 3.598238, 2.294297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.250618, 3.163472, 2.218510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.172054, 3.404758, 1.909303>,  <0.124916, 3.549530, 1.723780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.172054, 3.404758, 1.909303>,  <0.250618, 3.163472, 2.218510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.172054, 3.404758, 1.909303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140719, -0.797552, -0.586608,
		-0.970371, -0.006437, 0.241532,
		-0.196411, 0.603216, -0.773016,
		0.113131, 3.585723, 1.677399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.330050, 3.007567, 1.966405>,  <0.250618, 3.163472, 2.218510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.330050, 3.007567, 1.966405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.073898, 3.138283, 1.688376>,  <0.079793, 3.216712, 1.521559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.073898, 3.138283, 1.688376>,  <-0.330050, 3.007567, 1.966405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.073898, 3.138283, 1.688376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102595, -0.860466, -0.499071,
		-0.761176, 0.390905, -0.517498,
		0.640379, 0.326788, -0.695071,
		0.118216, 3.236319, 1.479855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.311899, 2.552280, 1.449534>,  <-0.330050, 3.007567, 1.966405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.311899, 2.552280, 1.449534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.115215, 2.845066, 1.260876>,  <0.002795, 3.020738, 1.147681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.115215, 2.845066, 1.260876>,  <-0.311899, 2.552280, 1.449534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.115215, 2.845066, 1.260876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170981, -0.612265, -0.771944,
		-0.853807, 0.298930, -0.426209,
		0.491710, 0.731965, -0.471645,
		0.032298, 3.064656, 1.119382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.411312, 2.537147, 0.633816>,  <-0.311899, 2.552280, 1.449534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.411312, 2.537147, 0.633816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.050816, 2.680668, 0.730998>,  <0.165482, 2.766780, 0.789307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.050816, 2.680668, 0.730998>,  <-0.411312, 2.537147, 0.633816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.050816, 2.680668, 0.730998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429639, -0.666985, -0.608721,
		-0.056363, 0.652987, -0.755269,
		0.901240, 0.358802, 0.242955,
		0.219556, 2.788309, 0.803884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-1.056909, 2.796036, 0.445237>,  <-0.411312, 2.537147, 0.633816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-1.056909, 2.796036, 0.445237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-1.275467, 2.468616, 0.516151>,  <-1.406602, 2.272165, 0.558700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-1.275467, 2.468616, 0.516151>,  <-1.056909, 2.796036, 0.445237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-1.275467, 2.468616, 0.516151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.827617, -0.495225, 0.264201,
		-0.128465, 0.291083, 0.948033,
		-0.546394, -0.818549, 0.177286,
		-1.439385, 2.223052, 0.569337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<1.248217, 3.458831, 2.937805> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.607565, 3.334793, 3.062238>,  <1.823174, 3.260370, 3.136898>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.607565, 3.334793, 3.062238>,  <1.248217, 3.458831, 2.937805>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.607565, 3.334793, 3.062238> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183456, 0.908396, 0.375714,
		-0.399095, -0.280459, 0.872964,
		0.898370, -0.310095, 0.311084,
		1.877076, 3.241765, 3.155563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.337809, 3.818184, 3.547968>,  <1.248217, 3.458831, 2.937805>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.337809, 3.818184, 3.547968> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.698467, 3.701126, 3.420598>,  <1.914862, 3.630891, 3.344176>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.698467, 3.701126, 3.420598>,  <1.337809, 3.818184, 3.547968>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.698467, 3.701126, 3.420598> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412610, 0.802688, 0.430634,
		0.129572, -0.519664, 0.844488,
		0.901646, -0.292646, -0.318424,
		1.968961, 3.613333, 3.325071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.761605, 3.670972, 4.208158>,  <1.337809, 3.818184, 3.547968>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.761605, 3.670972, 4.208158> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.959614, 3.763428, 3.873129>,  <2.078419, 3.818901, 3.672112>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.959614, 3.763428, 3.873129>,  <1.761605, 3.670972, 4.208158>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.959614, 3.763428, 3.873129> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353963, 0.826706, 0.437340,
		0.793513, -0.512963, 0.327424,
		0.495023, 0.231139, -0.837572,
		2.108120, 3.832770, 3.621857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.515649, 3.812749, 4.330888>,  <1.761605, 3.670972, 4.208158>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.515649, 3.812749, 4.330888> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.366735, 4.003685, 4.012505>,  <2.277387, 4.118247, 3.821475>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.366735, 4.003685, 4.012505>,  <2.515649, 3.812749, 4.330888>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.366735, 4.003685, 4.012505> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234346, 0.878162, 0.417030,
		0.898046, -0.031276, -0.438789,
		-0.372284, 0.477341, -0.795959,
		2.255050, 4.146887, 3.773717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.008921, 4.248288, 4.102713>,  <2.515649, 3.812749, 4.330888>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.008921, 4.248288, 4.102713> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.667767, 4.429722, 3.999295>,  <2.463074, 4.538582, 3.937245>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.667767, 4.429722, 3.999295>,  <3.008921, 4.248288, 4.102713>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.667767, 4.429722, 3.999295> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349968, 0.864160, 0.361594,
		0.387437, 0.217916, -0.895771,
		-0.852886, 0.453586, -0.258544,
		2.411901, 4.565797, 3.921732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.136949, 5.019579, 3.880131>,  <3.008921, 4.248288, 4.102713>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.136949, 5.019579, 3.880131> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.750828, 4.968739, 3.971377>,  <2.519155, 4.938234, 4.026124>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.750828, 4.968739, 3.971377>,  <3.136949, 5.019579, 3.880131>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.750828, 4.968739, 3.971377> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009163, 0.889500, 0.456842,
		-0.260973, 0.438901, -0.859802,
		-0.965303, -0.127102, 0.228114,
		2.461237, 4.930608, 4.039811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.535921, 5.505860, 3.562217>,  <3.136949, 5.019579, 3.880131>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.535921, 5.505860, 3.562217> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.502935, 5.377472, 3.939614>,  <2.483144, 5.300439, 4.166052>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.502935, 5.377472, 3.939614>,  <2.535921, 5.505860, 3.562217>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.502935, 5.377472, 3.939614> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164981, 0.929257, 0.330548,
		-0.982843, 0.182916, -0.023676,
		-0.082463, -0.320970, 0.943492,
		2.478196, 5.281181, 4.222662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.910580, 5.760756, 3.910650>,  <2.535921, 5.505860, 3.562217>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.910580, 5.760756, 3.910650> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.227901, 5.691463, 4.144114>,  <2.418294, 5.649888, 4.284193>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.227901, 5.691463, 4.144114>,  <1.910580, 5.760756, 3.910650>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.227901, 5.691463, 4.144114> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022190, 0.966255, 0.256628,
		-0.608422, -0.190633, 0.770377,
		0.793303, -0.173233, 0.583661,
		2.465892, 5.639493, 4.319213>
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
