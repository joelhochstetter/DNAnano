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
	<1.138673, -0.290011, 2.688646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.933350, -0.505165, 2.421156>,  <0.810155, -0.634258, 2.260662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.933350, -0.505165, 2.421156>,  <1.138673, -0.290011, 2.688646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.933350, -0.505165, 2.421156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237217, 0.837783, -0.491781,
		0.824769, -0.093801, -0.557635,
		-0.513307, -0.537886, -0.668727,
		0.779357, -0.666531, 2.220539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.742425, -0.088788, 3.165642>,  <1.138673, -0.290011, 2.688646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.742425, -0.088788, 3.165642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.690620, 0.288559, 3.043472>,  <1.659538, 0.514967, 2.970171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.690620, 0.288559, 3.043472>,  <1.742425, -0.088788, 3.165642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.690620, 0.288559, 3.043472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595536, 0.172275, 0.784639,
		0.792820, 0.283511, 0.539498,
		-0.129512, 0.943368, -0.305423,
		1.651767, 0.571569, 2.951845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.729864, 0.222001, 3.760025>,  <1.742425, -0.088788, 3.165642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.729864, 0.222001, 3.760025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.540771, 0.438988, 3.482246>,  <1.427316, 0.569180, 3.315579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.540771, 0.438988, 3.482246>,  <1.729864, 0.222001, 3.760025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.540771, 0.438988, 3.482246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.700083, 0.247410, 0.669830,
		0.535173, 0.802820, 0.262813,
		-0.472730, 0.542466, -0.694447,
		1.398952, 0.601727, 3.273912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.730304, 0.972298, 3.920928>,  <1.729864, 0.222001, 3.760025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.730304, 0.972298, 3.920928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.420776, 0.897110, 3.678978>,  <1.235060, 0.851997, 3.533808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.420776, 0.897110, 3.678978>,  <1.730304, 0.972298, 3.920928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.420776, 0.897110, 3.678978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632839, 0.269891, 0.725723,
		0.026837, 0.944366, -0.327801,
		-0.773818, -0.187969, -0.604875,
		1.188631, 0.840719, 3.497516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.268849, 1.532467, 3.977234>,  <1.730304, 0.972298, 3.920928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.268849, 1.532467, 3.977234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.042702, 1.238251, 3.827921>,  <0.907013, 1.061721, 3.738333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.042702, 1.238251, 3.827921>,  <1.268849, 1.532467, 3.977234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.042702, 1.238251, 3.827921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.719734, 0.218857, 0.658851,
		-0.402915, 0.641158, -0.653128,
		-0.565369, -0.735539, -0.373282,
		0.873091, 1.017589, 3.715936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.692949, 1.843867, 3.774428>,  <1.268849, 1.532467, 3.977234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.692949, 1.843867, 3.774428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.621849, 1.455505, 3.838617>,  <0.579189, 1.222489, 3.877131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.621849, 1.455505, 3.838617>,  <0.692949, 1.843867, 3.774428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.621849, 1.455505, 3.838617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.710497, 0.239444, 0.661710,
		-0.680880, 0.003604, -0.732386,
		-0.177751, -0.970904, 0.160472,
		0.568524, 1.164234, 3.886759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.108849, 1.843373, 3.825115>,  <0.692949, 1.843867, 3.774428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.108849, 1.843373, 3.825115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.014526, 1.487175, 3.958912>,  <0.088551, 1.273456, 4.039190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.014526, 1.487175, 3.958912>,  <-0.108849, 1.843373, 3.825115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.014526, 1.487175, 3.958912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.735301, -0.000107, 0.677741,
		-0.603489, -0.454993, -0.654815,
		0.308437, -0.890495, 0.334492,
		0.107058, 1.220026, 4.059259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.606994, 1.357542, 3.768457>,  <-0.108849, 1.843373, 3.825115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.606994, 1.357542, 3.768457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.373787, 1.260437, 4.078594>,  <-0.233863, 1.202174, 4.264677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.373787, 1.260437, 4.078594>,  <-0.606994, 1.357542, 3.768457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.373787, 1.260437, 4.078594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.777961, 0.108328, 0.618904,
		-0.234238, -0.964018, -0.125703,
		0.583017, -0.242763, 0.775343,
		-0.198882, 1.187608, 4.311197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<-0.761026, 2.007277, 5.124625> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.787842, 1.634514, 5.267202>,  <-0.803931, 1.410856, 5.352749>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.787842, 1.634514, 5.267202>,  <-0.761026, 2.007277, 5.124625>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.787842, 1.634514, 5.267202> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609951, -0.320996, -0.724514,
		0.789598, 0.168843, 0.589938,
		-0.067039, -0.931908, 0.356444,
		-0.807954, 1.354941, 5.374135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.140988, 1.734434, 5.415748>,  <-0.761026, 2.007277, 5.124625>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.140988, 1.734434, 5.415748> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.361374, 1.437561, 5.263115>,  <-0.493605, 1.259437, 5.171535>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.361374, 1.437561, 5.263115>,  <-0.140988, 1.734434, 5.415748>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.361374, 1.437561, 5.263115> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.785608, -0.307020, -0.537176,
		0.281530, -0.595738, 0.752221,
		-0.550963, -0.742182, -0.381581,
		-0.526663, 1.214906, 5.148641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.222340, 1.071078, 5.436323>,  <-0.140988, 1.734434, 5.415748>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.222340, 1.071078, 5.436323> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.048088, 1.020340, 5.145988>,  <-0.210345, 0.989897, 4.971788>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.048088, 1.020340, 5.145988>,  <0.222340, 1.071078, 5.436323>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.048088, 1.020340, 5.145988> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664890, -0.529573, -0.526758,
		-0.317566, -0.838727, 0.442367,
		-0.676072, -0.126845, -0.725836,
		-0.250909, 0.982287, 4.928237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.442527, 0.464652, 5.198749>,  <0.222340, 1.071078, 5.436323>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.442527, 0.464652, 5.198749> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.239067, 0.660187, 4.915253>,  <0.116991, 0.777508, 4.745155>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.239067, 0.660187, 4.915253>,  <0.442527, 0.464652, 5.198749>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.239067, 0.660187, 4.915253> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617356, -0.366703, -0.695989,
		-0.600122, -0.791560, -0.115263,
		-0.508651, 0.488837, -0.708741,
		0.086472, 0.806838, 4.702631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.537176, 0.063117, 4.474835>,  <0.442527, 0.464652, 5.198749>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.537176, 0.063117, 4.474835> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.370605, 0.407608, 4.358301>,  <0.270663, 0.614303, 4.288381>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.370605, 0.407608, 4.358301>,  <0.537176, 0.063117, 4.474835>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.370605, 0.407608, 4.358301> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449993, -0.083196, -0.889148,
		-0.789998, -0.501363, -0.352901,
		-0.416426, 0.861228, -0.291334,
		0.245678, 0.665976, 4.270901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.121491, -0.073083, 3.942127>,  <0.537176, 0.063117, 4.474835>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.121491, -0.073083, 3.942127> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.263008, 0.299553, 3.908733>,  <0.347919, 0.523135, 3.888697>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.263008, 0.299553, 3.908733>,  <0.121491, -0.073083, 3.942127>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.263008, 0.299553, 3.908733> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460798, -0.251279, -0.851190,
		-0.813938, 0.262676, -0.518176,
		0.353794, 0.931590, -0.083485,
		0.369146, 0.579030, 3.883688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.108183, 0.033142, 3.266597>,  <0.121491, -0.073083, 3.942127>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.108183, 0.033142, 3.266597> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.341354, 0.325058, 3.409482>,  <0.481257, 0.500207, 3.495213>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.341354, 0.325058, 3.409482>,  <0.108183, 0.033142, 3.266597>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.341354, 0.325058, 3.409482> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534628, -0.013445, -0.844980,
		-0.611855, 0.683540, -0.398003,
		0.582929, 0.729789, 0.357214,
		0.516233, 0.543995, 3.516646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.136586, 0.572290, 2.756597>,  <0.108183, 0.033142, 3.266597>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.136586, 0.572290, 2.756597> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.454224, 0.640846, 2.989848>,  <0.644806, 0.681980, 3.129799>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.454224, 0.640846, 2.989848>,  <0.136586, 0.572290, 2.756597>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.454224, 0.640846, 2.989848> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570927, 0.118716, -0.812372,
		-0.208460, 0.978024, -0.003581,
		0.794095, 0.171392, 0.583128,
		0.692452, 0.692264, 3.164787>
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
