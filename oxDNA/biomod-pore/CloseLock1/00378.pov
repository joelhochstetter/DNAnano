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
	location <35, 94.9851, 44.8844>
	look_at <35, 29.7336, 32.9568>
	direction <0, -65.2515, -11.9276>
	angle 67.0682
}


# declare cpy_camera_pos = <35, 94.9851, 44.8844>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 56
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <-1, -1.16352, -0.803886>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <1, 1.16352, 0.803886>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<23.954149, 35.127693, 34.831905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.205242, 35.022774, 35.125069>,  <24.355898, 34.959824, 35.300968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.205242, 35.022774, 35.125069>,  <23.954149, 35.127693, 34.831905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.205242, 35.022774, 35.125069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186791, 0.964768, 0.185289,
		-0.755686, 0.020588, 0.654611,
		0.627733, -0.262295, 0.732907,
		24.393562, 34.944084, 35.344940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.728813, 35.440594, 35.507359>,  <23.954149, 35.127693, 34.831905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.728813, 35.440594, 35.507359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.117226, 35.353695, 35.467556>,  <24.350273, 35.301556, 35.443676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.117226, 35.353695, 35.467556>,  <23.728813, 35.440594, 35.507359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.117226, 35.353695, 35.467556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218533, 0.975827, 0.002081,
		0.096645, -0.023766, 0.995035,
		0.971032, -0.217247, -0.099502,
		24.408535, 35.288521, 35.437706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.150414, 35.743546, 36.135807>,  <23.728813, 35.440594, 35.507359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.150414, 35.743546, 36.135807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.353968, 35.706188, 35.793507>,  <24.476101, 35.683773, 35.588127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.353968, 35.706188, 35.793507>,  <24.150414, 35.743546, 36.135807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.353968, 35.706188, 35.793507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348241, 0.931457, 0.105433,
		0.787250, -0.351662, 0.506528,
		0.508886, -0.093392, -0.855753,
		24.506634, 35.678169, 35.536781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.202122, 35.553688, 36.897221>,  <24.150414, 35.743546, 36.135807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.202122, 35.553688, 36.897221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.583050, 35.514801, 37.012901>,  <24.811607, 35.491470, 37.082310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.583050, 35.514801, 37.012901>,  <24.202122, 35.553688, 36.897221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.583050, 35.514801, 37.012901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233383, 0.842648, -0.485260,
		-0.196519, 0.529617, 0.825158,
		0.952320, -0.097215, 0.289200,
		24.868746, 35.485638, 37.099663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.571739, 36.117470, 37.271755>,  <24.202122, 35.553688, 36.897221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.571739, 36.117470, 37.271755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.891365, 35.959301, 37.090588>,  <25.083139, 35.864399, 36.981888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.891365, 35.959301, 37.090588>,  <24.571739, 36.117470, 37.271755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.891365, 35.959301, 37.090588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383543, 0.915363, -0.122494,
		0.463026, -0.075835, 0.883095,
		0.799063, -0.395423, -0.452923,
		25.131084, 35.840675, 36.954712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.160803, 36.449173, 37.520466>,  <24.571739, 36.117470, 37.271755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.160803, 36.449173, 37.520466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.290602, 36.278721, 37.182682>,  <25.368481, 36.176449, 36.980011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.290602, 36.278721, 37.182682>,  <25.160803, 36.449173, 37.520466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.290602, 36.278721, 37.182682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540543, 0.816172, -0.204146,
		0.776219, -0.390223, 0.495187,
		0.324496, -0.426132, -0.844461,
		25.387951, 36.150883, 36.929344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.928509, 36.768616, 37.414631>,  <25.160803, 36.449173, 37.520466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.928509, 36.768616, 37.414631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.787796, 36.632267, 37.065907>,  <25.703369, 36.550457, 36.856670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.787796, 36.632267, 37.065907>,  <25.928509, 36.768616, 37.414631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.787796, 36.632267, 37.065907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339011, 0.821726, -0.458080,
		0.872538, -0.456698, -0.173508,
		-0.351781, -0.340871, -0.871813,
		25.682262, 36.530006, 36.804363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.461308, 36.730083, 37.069958>,  <25.928509, 36.768616, 37.414631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.461308, 36.730083, 37.069958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.175293, 36.756508, 36.791576>,  <26.003683, 36.772362, 36.624546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.175293, 36.756508, 36.791576>,  <26.461308, 36.730083, 37.069958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.175293, 36.756508, 36.791576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519071, 0.717018, -0.465242,
		0.468279, -0.693917, -0.546987,
		-0.715039, 0.066062, -0.695957,
		25.960781, 36.776325, 36.582790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.811649, 36.799339, 36.383587>,  <26.461308, 36.730083, 37.069958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.811649, 36.799339, 36.383587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.434690, 36.908119, 36.305679>,  <26.208515, 36.973389, 36.258934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.434690, 36.908119, 36.305679>,  <26.811649, 36.799339, 36.383587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.434690, 36.908119, 36.305679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332788, 0.821088, -0.463753,
		0.033803, -0.501855, -0.864291,
		-0.942396, 0.271949, -0.194766,
		26.151972, 36.989704, 36.247250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.672577, 36.781841, 35.712578>,  <26.811649, 36.799339, 36.383587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.672577, 36.781841, 35.712578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.427982, 37.057224, 35.868580>,  <26.281225, 37.222454, 35.962181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.427982, 37.057224, 35.868580>,  <26.672577, 36.781841, 35.712578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.427982, 37.057224, 35.868580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520095, 0.721176, -0.457609,
		-0.596311, -0.076980, -0.799054,
		-0.611485, 0.688461, 0.390008,
		26.244537, 37.263763, 35.985580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.425850, 37.335262, 35.254589>,  <26.672577, 36.781841, 35.712578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.425850, 37.335262, 35.254589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.360151, 37.514091, 35.606304>,  <26.320732, 37.621387, 35.817333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.360151, 37.514091, 35.606304>,  <26.425850, 37.335262, 35.254589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.360151, 37.514091, 35.606304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399610, 0.845130, -0.355060,
		-0.901851, 0.293054, -0.317466,
		-0.164248, 0.447074, 0.879288,
		26.310877, 37.648212, 35.870090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.061790, 38.027420, 35.065315>,  <26.425850, 37.335262, 35.254589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.061790, 38.027420, 35.065315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.198961, 38.083057, 35.436916>,  <26.281263, 38.116440, 35.659878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.198961, 38.083057, 35.436916>,  <26.061790, 38.027420, 35.065315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.198961, 38.083057, 35.436916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325410, 0.910149, -0.256391,
		-0.881197, 0.390232, 0.266853,
		0.342928, 0.139095, 0.929006,
		26.301840, 38.124786, 35.715618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.927174, 38.701214, 35.280048>,  <26.061790, 38.027420, 35.065315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.927174, 38.701214, 35.280048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.243874, 38.587135, 35.496120>,  <26.433893, 38.518688, 35.625763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.243874, 38.587135, 35.496120>,  <25.927174, 38.701214, 35.280048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.243874, 38.587135, 35.496120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431988, 0.886648, -0.165049,
		-0.431876, 0.364028, 0.825207,
		0.791751, -0.285198, 0.540178,
		26.481400, 38.501575, 35.658173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.097393, 39.207436, 35.601025>,  <25.927174, 38.701214, 35.280048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.097393, 39.207436, 35.601025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.437584, 38.997044, 35.598816>,  <26.641699, 38.870808, 35.597492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.437584, 38.997044, 35.598816>,  <26.097393, 39.207436, 35.601025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.437584, 38.997044, 35.598816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492113, 0.799329, -0.344815,
		0.185782, 0.290539, 0.938654,
		0.850476, -0.525985, -0.005523,
		26.692726, 38.839249, 35.597160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.622564, 39.680206, 35.795979>,  <26.097393, 39.207436, 35.601025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.622564, 39.680206, 35.795979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.858627, 39.387932, 35.658684>,  <27.000265, 39.212566, 35.576309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.858627, 39.387932, 35.658684>,  <26.622564, 39.680206, 35.795979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.858627, 39.387932, 35.658684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612093, 0.682219, -0.399899,
		0.526363, 0.025911, 0.849865,
		0.590156, -0.730688, -0.343235,
		27.035675, 39.168724, 35.555714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.283415, 39.970253, 35.852474>,  <26.622564, 39.680206, 35.795979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.283415, 39.970253, 35.852474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.352840, 39.672230, 35.594864>,  <27.394495, 39.493416, 35.440300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.352840, 39.672230, 35.594864>,  <27.283415, 39.970253, 35.852474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.352840, 39.672230, 35.594864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.730228, 0.536144, -0.423458,
		0.660790, -0.396787, 0.637116,
		0.173564, -0.745056, -0.644024,
		27.404909, 39.448711, 35.401657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.957590, 39.760506, 35.946579>,  <27.283415, 39.970253, 35.852474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.957590, 39.760506, 35.946579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.866934, 39.666870, 35.568409>,  <27.812540, 39.610687, 35.341507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.866934, 39.666870, 35.568409>,  <27.957590, 39.760506, 35.946579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.866934, 39.666870, 35.568409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.899450, 0.322095, -0.295371,
		0.373662, -0.917309, 0.137556,
		-0.226640, -0.234094, -0.945428,
		27.798943, 39.596642, 35.284779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.633579, 39.733761, 35.595390>,  <27.957590, 39.760506, 35.946579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.633579, 39.733761, 35.595390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.401262, 39.724522, 35.269901>,  <28.261871, 39.718979, 35.074608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.401262, 39.724522, 35.269901>,  <28.633579, 39.733761, 35.595390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.401262, 39.724522, 35.269901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709352, 0.476044, -0.519809,
		0.399374, -0.879118, -0.260099,
		-0.580792, -0.023096, -0.813724,
		28.227024, 39.717594, 35.025784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.042646, 39.451733, 35.127747>,  <28.633579, 39.733761, 35.595390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.042646, 39.451733, 35.127747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.757000, 39.630234, 34.912006>,  <28.585613, 39.737335, 34.782562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.757000, 39.630234, 34.912006>,  <29.042646, 39.451733, 35.127747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.757000, 39.630234, 34.912006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699981, 0.446148, -0.557654,
		-0.008224, -0.775765, -0.630969,
		-0.714114, 0.446252, -0.539352,
		28.542767, 39.764111, 34.750202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.223959, 39.508152, 34.370178>,  <29.042646, 39.451733, 35.127747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.223959, 39.508152, 34.370178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.926449, 39.775490, 34.365932>,  <28.747942, 39.935894, 34.363384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.926449, 39.775490, 34.365932>,  <29.223959, 39.508152, 34.370178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.926449, 39.775490, 34.365932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576784, 0.633695, -0.515510,
		-0.337816, -0.389543, -0.856818,
		-0.743775, 0.668346, -0.010610,
		28.703316, 39.975994, 34.362751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.083302, 39.605194, 33.663174>,  <29.223959, 39.508152, 34.370178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.083302, 39.605194, 33.663174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.947838, 39.936028, 33.842617>,  <28.866560, 40.134525, 33.950283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.947838, 39.936028, 33.842617>,  <29.083302, 39.605194, 33.663174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.947838, 39.936028, 33.842617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609307, 0.556084, -0.565257,
		-0.716977, 0.081912, -0.692268,
		-0.338658, 0.827080, 0.448608,
		28.846241, 40.184151, 33.977200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.986080, 40.164234, 33.162506>,  <29.083302, 39.605194, 33.663174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.986080, 40.164234, 33.162506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.996399, 40.356232, 33.513264>,  <29.002590, 40.471432, 33.723717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.996399, 40.356232, 33.513264>,  <28.986080, 40.164234, 33.162506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.996399, 40.356232, 33.513264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671230, 0.641716, -0.371012,
		-0.740800, 0.598166, -0.305634,
		0.025796, 0.479997, 0.876891,
		29.004137, 40.500233, 33.776329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.019222, 40.935764, 33.015968>,  <28.986080, 40.164234, 33.162506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.019222, 40.935764, 33.015968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.140915, 40.889542, 33.394196>,  <29.213930, 40.861809, 33.621132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.140915, 40.889542, 33.394196>,  <29.019222, 40.935764, 33.015968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.140915, 40.889542, 33.394196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.852038, 0.476903, -0.215860,
		-0.425999, 0.871327, 0.243545,
		0.304232, -0.115553, 0.945564,
		29.232185, 40.854877, 33.677864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.162975, 41.585709, 33.268864>,  <29.019222, 40.935764, 33.015968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.162975, 41.585709, 33.268864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.391409, 41.345512, 33.492748>,  <29.528469, 41.201397, 33.627079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.391409, 41.345512, 33.492748>,  <29.162975, 41.585709, 33.268864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.391409, 41.345512, 33.492748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.811329, 0.516657, -0.273517,
		-0.124937, 0.610312, 0.782247,
		0.571084, -0.600487, 0.559713,
		29.562735, 41.165367, 33.660664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.419325, 42.085064, 33.745434>,  <29.162975, 41.585709, 33.268864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.419325, 42.085064, 33.745434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.607437, 41.742031, 33.662113>,  <29.720304, 41.536213, 33.612122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.607437, 41.742031, 33.662113>,  <29.419325, 42.085064, 33.745434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.607437, 41.742031, 33.662113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.845523, 0.505459, -0.172053,
		0.252837, -0.095208, 0.962813,
		0.470281, -0.857582, -0.208299,
		29.748522, 41.484756, 33.599625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.934093, 41.913307, 34.189857>,  <29.419325, 42.085064, 33.745434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.934093, 41.913307, 34.189857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.041233, 41.730995, 33.850323>,  <30.105516, 41.621609, 33.646603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.041233, 41.730995, 33.850323>,  <29.934093, 41.913307, 34.189857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.041233, 41.730995, 33.850323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.907632, 0.414918, 0.063610,
		0.323204, -0.787467, 0.524818,
		0.267847, -0.455783, -0.848834,
		30.121588, 41.594261, 33.595673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.705816, 41.643913, 34.315800>,  <29.934093, 41.913307, 34.189857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.705816, 41.643913, 34.315800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.565115, 41.727222, 33.950748>,  <30.480694, 41.777206, 33.731716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.565115, 41.727222, 33.950748>,  <30.705816, 41.643913, 34.315800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.565115, 41.727222, 33.950748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717845, 0.685751, -0.120183,
		0.600806, -0.697401, -0.390722,
		-0.351754, 0.208272, -0.912629,
		30.459589, 41.789703, 33.676960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.260862, 41.534752, 34.845356>,  <30.705816, 41.643913, 34.315800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.260862, 41.534752, 34.845356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.563400, 41.699230, 35.048866>,  <31.744923, 41.797916, 35.170975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.563400, 41.699230, 35.048866>,  <31.260862, 41.534752, 34.845356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.563400, 41.699230, 35.048866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653922, -0.496805, -0.570589,
		0.018138, 0.764264, -0.644648,
		0.756345, 0.411200, 0.508780,
		31.790304, 41.822590, 35.201500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.809586, 41.458069, 34.420948>,  <31.260862, 41.534752, 34.845356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.809586, 41.458069, 34.420948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.003929, 41.580288, 34.748505>,  <32.120537, 41.653618, 34.945038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.003929, 41.580288, 34.748505>,  <31.809586, 41.458069, 34.420948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.003929, 41.580288, 34.748505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.774107, -0.585450, -0.240846,
		0.405831, 0.750926, -0.520971,
		0.485860, 0.305544, 0.818891,
		32.149689, 41.671951, 34.994171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.427250, 41.642067, 34.252464>,  <31.809586, 41.458069, 34.420948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.427250, 41.642067, 34.252464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.446312, 41.526123, 34.634819>,  <32.457748, 41.456558, 34.864231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.446312, 41.526123, 34.634819>,  <32.427250, 41.642067, 34.252464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.446312, 41.526123, 34.634819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687617, -0.684601, -0.241876,
		0.724508, 0.668808, 0.166684,
		0.047657, -0.289856, 0.955883,
		32.460609, 41.439167, 34.921585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.090527, 41.469624, 34.299099>,  <32.427250, 41.642067, 34.252464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.090527, 41.469624, 34.299099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.871899, 41.259659, 34.560093>,  <32.740723, 41.133682, 34.716690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.871899, 41.259659, 34.560093>,  <33.090527, 41.469624, 34.299099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.871899, 41.259659, 34.560093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580715, -0.798962, -0.156301,
		0.603353, 0.293478, 0.741509,
		-0.546567, -0.524910, 0.652483,
		32.707928, 41.102184, 34.755836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.479897, 41.218830, 34.903198>,  <33.090527, 41.469624, 34.299099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.479897, 41.218830, 34.903198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.180870, 40.959274, 34.846523>,  <33.001453, 40.803539, 34.812519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.180870, 40.959274, 34.846523>,  <33.479897, 41.218830, 34.903198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.180870, 40.959274, 34.846523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663600, -0.720787, -0.200254,
		0.027817, -0.243728, 0.969445,
		-0.747571, -0.648893, -0.141688,
		32.956600, 40.764606, 34.804016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.552235, 40.737431, 35.322540>,  <33.479897, 41.218830, 34.903198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.552235, 40.737431, 35.322540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.391026, 40.613541, 34.978065>,  <33.294300, 40.539207, 34.771381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.391026, 40.613541, 34.978065>,  <33.552235, 40.737431, 35.322540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.391026, 40.613541, 34.978065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.869759, -0.422417, -0.255116,
		-0.284764, -0.851842, 0.439631,
		-0.403026, -0.309725, -0.861186,
		33.270119, 40.520622, 34.719711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.504208, 39.953705, 35.168613>,  <33.552235, 40.737431, 35.322540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.504208, 39.953705, 35.168613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.550232, 40.150200, 34.823254>,  <33.577847, 40.268097, 34.616039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.550232, 40.150200, 34.823254>,  <33.504208, 39.953705, 35.168613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.550232, 40.150200, 34.823254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.739334, -0.622840, -0.255843,
		-0.663436, -0.608901, -0.434848,
		0.115057, 0.491233, -0.863396,
		33.584747, 40.297569, 34.564236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.984425, 39.438034, 34.961090>,  <33.504208, 39.953705, 35.168613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.984425, 39.438034, 34.961090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.945572, 39.718979, 34.679024>,  <33.922260, 39.887547, 34.509785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.945572, 39.718979, 34.679024>,  <33.984425, 39.438034, 34.961090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.945572, 39.718979, 34.679024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.781467, -0.384937, -0.491052,
		-0.616339, -0.598759, -0.511482,
		-0.097134, 0.702361, -0.705162,
		33.916431, 39.929688, 34.467476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.783016, 38.799835, 35.269947>,  <33.984425, 39.438034, 34.961090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.783016, 38.799835, 35.269947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.653149, 39.074390, 35.009651>,  <33.575230, 39.239124, 34.853474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.653149, 39.074390, 35.009651>,  <33.783016, 38.799835, 35.269947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.653149, 39.074390, 35.009651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.916651, -0.397914, 0.037623,
		-0.233113, 0.608714, 0.758370,
		-0.324668, 0.686391, -0.650737,
		33.555748, 39.280308, 34.814430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.249371, 39.163662, 35.567013>,  <33.783016, 38.799835, 35.269947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.249371, 39.163662, 35.567013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.194675, 39.120190, 35.173161>,  <33.161858, 39.094105, 34.936852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.194675, 39.120190, 35.173161>,  <33.249371, 39.163662, 35.567013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.194675, 39.120190, 35.173161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.946311, -0.279571, 0.162280,
		-0.292910, 0.953954, -0.064620,
		-0.136742, -0.108684, -0.984627,
		33.153652, 39.087585, 34.877773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.650337, 39.555248, 35.390404>,  <33.249371, 39.163662, 35.567013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.650337, 39.555248, 35.390404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.680180, 39.268425, 35.113201>,  <32.698086, 39.096333, 34.946880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.680180, 39.268425, 35.113201>,  <32.650337, 39.555248, 35.390404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.680180, 39.268425, 35.113201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.949810, -0.262812, 0.169679,
		-0.303801, 0.645570, -0.700674,
		0.074606, -0.717056, -0.693011,
		32.702560, 39.053307, 34.905296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.988121, 39.510548, 35.282917>,  <32.650337, 39.555248, 35.390404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.988121, 39.510548, 35.282917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.169617, 39.205460, 35.098579>,  <32.278515, 39.022408, 34.987976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.169617, 39.205460, 35.098579>,  <31.988121, 39.510548, 35.282917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.169617, 39.205460, 35.098579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.870105, -0.490875, -0.044270,
		-0.192449, 0.421067, -0.886378,
		0.453741, -0.762722, -0.460841,
		32.305740, 38.976643, 34.960327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.647505, 39.403576, 34.643772>,  <31.988121, 39.510548, 35.282917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.647505, 39.403576, 34.643772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.813854, 39.056332, 34.752163>,  <31.913664, 38.847984, 34.817196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.813854, 39.056332, 34.752163>,  <31.647505, 39.403576, 34.643772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.813854, 39.056332, 34.752163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.896827, -0.440904, -0.036122,
		0.150833, -0.227998, -0.961908,
		0.415874, -0.868113, 0.270978,
		31.938616, 38.795898, 34.833458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.579111, 38.903870, 34.091000>,  <31.647505, 39.403576, 34.643772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.579111, 38.903870, 34.091000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.600624, 38.725418, 34.448341>,  <31.613533, 38.618347, 34.662746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.600624, 38.725418, 34.448341>,  <31.579111, 38.903870, 34.091000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.600624, 38.725418, 34.448341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.692463, -0.661246, -0.288529,
		0.719446, -0.603093, -0.344493,
		0.053784, -0.446130, 0.893350,
		31.616760, 38.591579, 34.716347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.157042, 38.316914, 33.973759>,  <31.579111, 38.903870, 34.091000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.157042, 38.316914, 33.973759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.234341, 38.234058, 34.357372>,  <31.280720, 38.184345, 34.587540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.234341, 38.234058, 34.357372>,  <31.157042, 38.316914, 33.973759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.234341, 38.234058, 34.357372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562087, -0.824534, -0.064822,
		0.804185, -0.526535, -0.275768,
		0.193249, -0.207134, 0.959036,
		31.292315, 38.171917, 34.645084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.318878, 37.569695, 33.990303>,  <31.157042, 38.316914, 33.973759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.318878, 37.569695, 33.990303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.227491, 37.682777, 34.362942>,  <31.172659, 37.750626, 34.586525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.227491, 37.682777, 34.362942>,  <31.318878, 37.569695, 33.990303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.227491, 37.682777, 34.362942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553391, -0.824995, 0.114638,
		0.800975, -0.489349, 0.344931,
		-0.228468, 0.282704, 0.931601,
		31.158951, 37.767590, 34.642422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.343416, 36.914612, 34.470543>,  <31.318878, 37.569695, 33.990303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.343416, 36.914612, 34.470543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.106657, 37.201931, 34.616806>,  <30.964602, 37.374321, 34.704563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.106657, 37.201931, 34.616806>,  <31.343416, 36.914612, 34.470543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.106657, 37.201931, 34.616806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.696235, -0.684214, 0.217045,
		0.406093, -0.126118, 0.905087,
		-0.591900, 0.718293, 0.365662,
		30.929087, 37.417419, 34.726505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.980219, 36.535713, 35.009216>,  <31.343416, 36.914612, 34.470543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.980219, 36.535713, 35.009216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.756195, 36.864540, 34.968170>,  <30.621780, 37.061836, 34.943542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.756195, 36.864540, 34.968170>,  <30.980219, 36.535713, 35.009216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.756195, 36.864540, 34.968170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.805870, -0.511879, 0.297580,
		0.192108, 0.249355, 0.949166,
		-0.560061, 0.822072, -0.102611,
		30.588177, 37.111160, 34.937386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.716061, 36.748341, 35.674618>,  <30.980219, 36.535713, 35.009216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.716061, 36.748341, 35.674618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.461346, 36.927166, 35.423336>,  <30.308516, 37.034462, 35.272568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.461346, 36.927166, 35.423336>,  <30.716061, 36.748341, 35.674618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.461346, 36.927166, 35.423336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.768882, -0.307291, 0.560707,
		0.057629, 0.840065, 0.539416,
		-0.636788, 0.447060, -0.628202,
		30.270309, 37.061283, 35.234875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.304773, 37.253929, 36.029053>,  <30.716061, 36.748341, 35.674618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.304773, 37.253929, 36.029053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.091373, 37.155945, 35.705235>,  <29.963333, 37.097153, 35.510944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.091373, 37.155945, 35.705235>,  <30.304773, 37.253929, 36.029053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.091373, 37.155945, 35.705235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.821846, -0.076038, 0.564612,
		-0.199866, 0.966546, -0.160755,
		-0.533500, -0.244963, -0.809550,
		29.931324, 37.082455, 35.462368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.675249, 37.686035, 36.091209>,  <30.304773, 37.253929, 36.029053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.675249, 37.686035, 36.091209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.594585, 37.370899, 35.858437>,  <29.546188, 37.181816, 35.718773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.594585, 37.370899, 35.858437>,  <29.675249, 37.686035, 36.091209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.594585, 37.370899, 35.858437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.772831, -0.237013, 0.588691,
		-0.601719, 0.568446, -0.561073,
		-0.201657, -0.787841, -0.581928,
		29.534088, 37.134548, 35.683857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.967251, 37.614529, 36.173714>,  <29.675249, 37.686035, 36.091209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.967251, 37.614529, 36.173714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.053448, 37.258568, 36.012894>,  <29.105165, 37.044991, 35.916401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.053448, 37.258568, 36.012894>,  <28.967251, 37.614529, 36.173714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.053448, 37.258568, 36.012894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.663287, -0.435558, 0.608556,
		-0.716669, 0.135537, -0.684117,
		0.215490, -0.889898, -0.402050,
		29.118095, 36.991600, 35.892277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.325937, 37.334141, 36.015625>,  <28.967251, 37.614529, 36.173714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.325937, 37.334141, 36.015625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.589823, 37.034039, 36.033031>,  <28.748154, 36.853977, 36.043476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.589823, 37.034039, 36.033031>,  <28.325937, 37.334141, 36.015625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.589823, 37.034039, 36.033031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652068, -0.542666, 0.529454,
		-0.373611, -0.377664, -0.847222,
		0.659714, -0.750256, 0.043517,
		28.787737, 36.808960, 36.046085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.851980, 36.767841, 35.988548>,  <28.325937, 37.334141, 36.015625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.851980, 36.767841, 35.988548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.203125, 36.625954, 36.117252>,  <28.413813, 36.540821, 36.194473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.203125, 36.625954, 36.117252>,  <27.851980, 36.767841, 35.988548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.203125, 36.625954, 36.117252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459670, -0.812625, 0.358251,
		0.134391, -0.462399, -0.876428,
		0.877862, -0.354722, 0.321760,
		28.466484, 36.519535, 36.213779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.972986, 36.123905, 35.652580>,  <27.851980, 36.767841, 35.988548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.972986, 36.123905, 35.652580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.180256, 36.124790, 35.994690>,  <28.304617, 36.125320, 36.199955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.180256, 36.124790, 35.994690>,  <27.972986, 36.123905, 35.652580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.180256, 36.124790, 35.994690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474235, -0.831450, 0.289469,
		0.711756, -0.555596, -0.429787,
		0.518174, 0.002211, 0.855272,
		28.335709, 36.125454, 36.251270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.973137, 35.480015, 35.772884>,  <27.972986, 36.123905, 35.652580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.973137, 35.480015, 35.772884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.110201, 35.615932, 36.123226>,  <28.192440, 35.697483, 36.333431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.110201, 35.615932, 36.123226>,  <27.973137, 35.480015, 35.772884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.110201, 35.615932, 36.123226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465582, -0.748333, 0.472472,
		0.815975, -0.569681, -0.098223,
		0.342662, 0.339795, 0.875855,
		28.212999, 35.717873, 36.385983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.295218, 34.859936, 36.162254>,  <27.973137, 35.480015, 35.772884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.295218, 34.859936, 36.162254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.166292, 35.144073, 36.412544>,  <28.088936, 35.314556, 36.562717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.166292, 35.144073, 36.412544>,  <28.295218, 34.859936, 36.162254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.166292, 35.144073, 36.412544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537179, -0.681513, 0.496969,
		0.779456, -0.175945, 0.601242,
		-0.322315, 0.710340, 0.625723,
		28.069597, 35.357174, 36.600262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.320658, 34.592476, 36.847336>,  <28.295218, 34.859936, 36.162254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.320658, 34.592476, 36.847336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.046822, 34.884003, 36.852558>,  <27.882521, 35.058918, 36.855690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.046822, 34.884003, 36.852558>,  <28.320658, 34.592476, 36.847336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.046822, 34.884003, 36.852558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609312, -0.581983, 0.538549,
		0.400097, 0.360732, 0.842493,
		-0.684589, 0.728813, 0.013051,
		27.841444, 35.102646, 36.856472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.052113, 34.803295, 36.662483>,  <28.320658, 34.592476, 36.847336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.052113, 34.803295, 36.662483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.220385, 34.867367, 37.019665>,  <29.321348, 34.905811, 37.233974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.220385, 34.867367, 37.019665>,  <29.052113, 34.803295, 36.662483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.220385, 34.867367, 37.019665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.903172, -0.018819, 0.428866,
		0.085500, -0.986908, 0.136754,
		0.420678, 0.160180, 0.892957,
		29.346588, 34.915421, 37.287552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.784224, 34.986568, 36.871113>,  <29.052113, 34.803295, 36.662483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.784224, 34.986568, 36.871113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.132410, 34.800514, 36.806694>,  <30.341322, 34.688881, 36.768044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.132410, 34.800514, 36.806694>,  <29.784224, 34.986568, 36.871113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.132410, 34.800514, 36.806694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417026, 0.523072, 0.743293,
		-0.261496, -0.714171, 0.649291,
		0.870465, -0.465140, -0.161047,
		30.393549, 34.660973, 36.758381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.133381, 34.469025, 37.379311>,  <29.784224, 34.986568, 36.871113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.133381, 34.469025, 37.379311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.400658, 34.671944, 37.161625>,  <30.561024, 34.793694, 37.031013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.400658, 34.671944, 37.161625>,  <30.133381, 34.469025, 37.379311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.400658, 34.671944, 37.161625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416109, 0.351556, 0.838607,
		0.616746, -0.786802, 0.023814,
		0.668189, 0.507298, -0.544216,
		30.601114, 34.824135, 36.998360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.647144, 34.619923, 37.892830>,  <30.133381, 34.469025, 37.379311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.647144, 34.619923, 37.892830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.782764, 34.835594, 37.584457>,  <30.864136, 34.964996, 37.399433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.782764, 34.835594, 37.584457>,  <30.647144, 34.619923, 37.892830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.782764, 34.835594, 37.584457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504873, 0.587180, 0.632711,
		0.793820, -0.603740, -0.073136,
		0.339048, 0.539182, -0.770927,
		30.884480, 34.997349, 37.353180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.345127, 34.624821, 37.865925>,  <30.647144, 34.619923, 37.892830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.345127, 34.624821, 37.865925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.200270, 34.960270, 37.703163>,  <31.113356, 35.161537, 37.605507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.200270, 34.960270, 37.703163>,  <31.345127, 34.624821, 37.865925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.200270, 34.960270, 37.703163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545508, 0.544650, 0.637007,
		0.755827, 0.008717, -0.654714,
		-0.362143, 0.838618, -0.406906,
		31.091627, 35.211857, 37.581093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.918139, 35.067577, 37.656281>,  <31.345127, 34.624821, 37.865925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.918139, 35.067577, 37.656281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.582933, 35.277527, 37.715935>,  <31.381809, 35.403496, 37.751728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.582933, 35.277527, 37.715935>,  <31.918139, 35.067577, 37.656281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.582933, 35.277527, 37.715935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523220, 0.695417, 0.492581,
		0.154835, 0.490819, -0.857393,
		-0.838014, 0.524874, 0.149131,
		31.331530, 35.434990, 37.760674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.267090, 35.101040, 38.307285>,  <31.918139, 35.067577, 37.656281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.267090, 35.101040, 38.307285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.324543, 34.709660, 38.366623>,  <32.359016, 34.474831, 38.402225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.324543, 34.709660, 38.366623>,  <32.267090, 35.101040, 38.307285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.324543, 34.709660, 38.366623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308149, -0.098222, -0.946254,
		0.940432, 0.181627, 0.287400,
		0.143636, -0.978450, 0.148340,
		32.367634, 34.416126, 38.411125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.882210, 34.919640, 37.917534>,  <32.267090, 35.101040, 38.307285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.882210, 34.919640, 37.917534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.689278, 34.572334, 37.963974>,  <32.573521, 34.363953, 37.991837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.689278, 34.572334, 37.963974>,  <32.882210, 34.919640, 37.917534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.689278, 34.572334, 37.963974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139532, -0.206994, -0.968341,
		0.864808, -0.450856, 0.220989,
		-0.482326, -0.868264, 0.116101,
		32.544579, 34.311855, 37.998806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.343384, 34.464661, 38.313480>,  <32.882210, 34.919640, 37.917534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.343384, 34.464661, 38.313480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.233078, 34.165142, 38.554565>,  <33.166893, 33.985432, 38.699215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.233078, 34.165142, 38.554565>,  <33.343384, 34.464661, 38.313480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.233078, 34.165142, 38.554565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.871175, 0.070282, 0.485916,
		-0.406211, 0.659064, 0.632951,
		-0.275764, -0.748796, 0.602709,
		33.150349, 33.940502, 38.735378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.372322, 34.599113, 39.028721>,  <33.343384, 34.464661, 38.313480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.372322, 34.599113, 39.028721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.410690, 34.201298, 39.012310>,  <33.433712, 33.962608, 39.002464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.410690, 34.201298, 39.012310>,  <33.372322, 34.599113, 39.028721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.410690, 34.201298, 39.012310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.860643, 0.062159, 0.505402,
		-0.500093, -0.083793, 0.861908,
		0.095925, -0.994543, -0.041030,
		33.439468, 33.902935, 39.000000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.481480, 34.293484, 39.765530>,  <33.372322, 34.599113, 39.028721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.481480, 34.293484, 39.765530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.663017, 34.094826, 39.469589>,  <33.771938, 33.975632, 39.292027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.663017, 34.094826, 39.469589>,  <33.481480, 34.293484, 39.765530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.663017, 34.094826, 39.469589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.849250, -0.010336, 0.527890,
		-0.269820, -0.867893, 0.417084,
		0.453841, -0.496644, -0.739847,
		33.799171, 33.945831, 39.247635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.877308, 33.780525, 40.095177>,  <33.481480, 34.293484, 39.765530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.877308, 33.780525, 40.095177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.031754, 33.876942, 39.739014>,  <34.124420, 33.934792, 39.525318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.031754, 33.876942, 39.739014>,  <33.877308, 33.780525, 40.095177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.031754, 33.876942, 39.739014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.918790, -0.014568, 0.394478,
		0.082114, -0.970406, -0.227090,
		0.386112, 0.241040, -0.890403,
		34.147587, 33.949253, 39.471893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.362591, 33.277416, 39.997032>,  <33.877308, 33.780525, 40.095177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.362591, 33.277416, 39.997032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.487453, 33.574966, 39.760654>,  <34.562370, 33.753494, 39.618828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.487453, 33.574966, 39.760654>,  <34.362591, 33.277416, 39.997032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.487453, 33.574966, 39.760654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.900588, -0.033642, 0.433371,
		0.302491, -0.667476, -0.680423,
		0.312155, 0.743871, -0.590944,
		34.581100, 33.798126, 39.583370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.071331, 33.146591, 39.786526>,  <34.362591, 33.277416, 39.997032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.071331, 33.146591, 39.786526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.050419, 33.542351, 39.732330>,  <35.037872, 33.779808, 39.699814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.050419, 33.542351, 39.732330>,  <35.071331, 33.146591, 39.786526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.050419, 33.542351, 39.732330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.834257, 0.117845, 0.538635,
		0.548891, -0.084868, -0.831574,
		-0.052284, 0.989399, -0.135486,
		35.034733, 33.839169, 39.691685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.750767, 33.347740, 39.667717>,  <35.071331, 33.146591, 39.786526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.750767, 33.347740, 39.667717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.569592, 33.695534, 39.746559>,  <35.460888, 33.904209, 39.793865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.569592, 33.695534, 39.746559>,  <35.750767, 33.347740, 39.667717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.569592, 33.695534, 39.746559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.745178, 0.247839, 0.619100,
		0.489445, 0.427291, -0.760174,
		-0.452937, 0.869481, 0.197105,
		35.433712, 33.956379, 39.805691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.275124, 33.801605, 39.616016>,  <35.750767, 33.347740, 39.667717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.275124, 33.801605, 39.616016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.991550, 33.943314, 39.859955>,  <35.821407, 34.028339, 40.006317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.991550, 33.943314, 39.859955>,  <36.275124, 33.801605, 39.616016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.991550, 33.943314, 39.859955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692475, 0.185630, 0.697151,
		0.133774, 0.916534, -0.376921,
		-0.708931, 0.354269, 0.609844,
		35.778870, 34.049595, 40.042908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.565514, 34.385700, 39.869164>,  <36.275124, 33.801605, 39.616016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.565514, 34.385700, 39.869164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.268673, 34.322613, 40.129749>,  <36.090569, 34.284760, 40.286098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.268673, 34.322613, 40.129749>,  <36.565514, 34.385700, 39.869164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.268673, 34.322613, 40.129749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589014, 0.310422, 0.746124,
		-0.319909, 0.937423, -0.137465,
		-0.742106, -0.157723, 0.651462,
		36.046040, 34.275295, 40.325188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.560963, 35.000439, 40.231640>,  <36.565514, 34.385700, 39.869164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.560963, 35.000439, 40.231640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.376411, 34.736214, 40.468552>,  <36.265682, 34.577679, 40.610699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.376411, 34.736214, 40.468552>,  <36.560963, 35.000439, 40.231640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.376411, 34.736214, 40.468552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559652, 0.301308, 0.772012,
		-0.688417, 0.687659, 0.230666,
		-0.461380, -0.660559, 0.592276,
		36.237999, 34.538048, 40.646233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.414558, 35.430145, 40.717274>,  <36.560963, 35.000439, 40.231640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.414558, 35.430145, 40.717274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.374149, 35.061481, 40.867123>,  <36.349903, 34.840282, 40.957031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.374149, 35.061481, 40.867123>,  <36.414558, 35.430145, 40.717274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.374149, 35.061481, 40.867123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626278, 0.233662, 0.743759,
		-0.773026, 0.309756, 0.553608,
		-0.101027, -0.921658, 0.374621,
		36.343842, 34.784985, 40.979507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.268219, 35.483044, 41.368923>,  <36.414558, 35.430145, 40.717274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.268219, 35.483044, 41.368923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.399998, 35.105385, 41.371830>,  <36.479065, 34.878792, 41.373573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.399998, 35.105385, 41.371830>,  <36.268219, 35.483044, 41.368923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.399998, 35.105385, 41.371830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518447, 0.187331, 0.834338,
		-0.789098, -0.271103, 0.551205,
		0.329449, -0.944145, 0.007270,
		36.498833, 34.822140, 41.374012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.162327, 35.196785, 42.043709>,  <36.268219, 35.483044, 41.368923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.162327, 35.196785, 42.043709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.454933, 34.987640, 41.868664>,  <36.630497, 34.862152, 41.763638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.454933, 34.987640, 41.868664>,  <36.162327, 35.196785, 42.043709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.454933, 34.987640, 41.868664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586335, 0.154823, 0.795136,
		-0.347994, -0.838239, 0.419827,
		0.731514, -0.522862, -0.437611,
		36.674389, 34.830784, 41.737381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.403912, 34.839096, 42.575741>,  <36.162327, 35.196785, 42.043709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.403912, 34.839096, 42.575741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.682846, 34.788868, 42.293476>,  <36.850208, 34.758732, 42.124119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.682846, 34.788868, 42.293476>,  <36.403912, 34.839096, 42.575741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.682846, 34.788868, 42.293476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694115, -0.127136, 0.708549,
		-0.178689, -0.983904, -0.001494,
		0.697334, -0.125573, -0.705660,
		36.892048, 34.751198, 42.081779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.640388, 34.198097, 42.767284>,  <36.403912, 34.839096, 42.575741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.640388, 34.198097, 42.767284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.922184, 34.405842, 42.573807>,  <37.091259, 34.530487, 42.457718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.922184, 34.405842, 42.573807>,  <36.640388, 34.198097, 42.767284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.922184, 34.405842, 42.573807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601877, -0.076038, 0.794961,
		0.376094, -0.851164, -0.366160,
		0.704484, 0.519363, -0.483698,
		37.133530, 34.561649, 42.428696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.295975, 33.810177, 42.925251>,  <36.640388, 34.198097, 42.767284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.295975, 33.810177, 42.925251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.408001, 34.169689, 42.790337>,  <37.475216, 34.385395, 42.709389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.408001, 34.169689, 42.790337>,  <37.295975, 33.810177, 42.925251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.408001, 34.169689, 42.790337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572292, 0.125765, 0.810349,
		0.770742, -0.419977, -0.479141,
		0.280069, 0.898778, -0.337282,
		37.492023, 34.439323, 42.689152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.069462, 33.801659, 42.843430>,  <37.295975, 33.810177, 42.925251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.069462, 33.801659, 42.843430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.927258, 34.174191, 42.875023>,  <37.841934, 34.397709, 42.893978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.927258, 34.174191, 42.875023>,  <38.069462, 33.801659, 42.843430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.927258, 34.174191, 42.875023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548685, 0.139539, 0.824302,
		0.756674, 0.336388, -0.560614,
		-0.355513, 0.931328, 0.078986,
		37.820602, 34.453590, 42.898720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.582714, 34.136139, 42.991352>,  <38.069462, 33.801659, 42.843430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.582714, 34.136139, 42.991352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.282467, 34.377426, 43.099205>,  <38.102318, 34.522198, 43.163918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.282467, 34.377426, 43.099205>,  <38.582714, 34.136139, 42.991352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.282467, 34.377426, 43.099205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465090, 0.192500, 0.864080,
		0.469326, 0.773996, -0.425045,
		-0.750616, 0.603219, 0.269632,
		38.057281, 34.558392, 43.180096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.955547, 34.664307, 43.423931>,  <38.582714, 34.136139, 42.991352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.955547, 34.664307, 43.423931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.559990, 34.705914, 43.466400>,  <38.322655, 34.730877, 43.491882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.559990, 34.705914, 43.466400>,  <38.955547, 34.664307, 43.423931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.559990, 34.705914, 43.466400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135129, 0.331713, 0.933652,
		0.061895, 0.937629, -0.342084,
		-0.988893, 0.104014, 0.106169,
		38.263321, 34.737118, 43.498249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.941456, 35.309635, 43.710194>,  <38.955547, 34.664307, 43.423931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.941456, 35.309635, 43.710194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.614433, 35.097801, 43.800655>,  <38.418221, 34.970703, 43.854931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.614433, 35.097801, 43.800655>,  <38.941456, 35.309635, 43.710194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.614433, 35.097801, 43.800655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193982, 0.116504, 0.974063,
		-0.542195, 0.840219, 0.007481,
		-0.817555, -0.529583, 0.226155,
		38.369167, 34.938927, 43.868504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.617683, 35.693142, 44.311008>,  <38.941456, 35.309635, 43.710194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.617683, 35.693142, 44.311008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.451958, 35.330166, 44.339008>,  <38.352520, 35.112381, 44.355808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.451958, 35.330166, 44.339008>,  <38.617683, 35.693142, 44.311008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.451958, 35.330166, 44.339008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201464, -0.016441, 0.979358,
		-0.887554, 0.419868, 0.189628,
		-0.414319, -0.907436, 0.069996,
		38.327663, 35.057934, 44.360008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.110806, 35.773712, 44.827747>,  <38.617683, 35.693142, 44.311008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.110806, 35.773712, 44.827747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.213043, 35.387348, 44.811321>,  <38.274384, 35.155529, 44.801464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.213043, 35.387348, 44.811321>,  <38.110806, 35.773712, 44.827747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.213043, 35.387348, 44.811321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126487, -0.008702, 0.991930,
		-0.958475, -0.258724, 0.119951,
		0.255592, -0.965912, -0.041066,
		38.289722, 35.097576, 44.799000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.741817, 35.508095, 45.291203>,  <38.110806, 35.773712, 44.827747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.741817, 35.508095, 45.291203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.024010, 35.231571, 45.228729>,  <38.193325, 35.065659, 45.191246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.024010, 35.231571, 45.228729>,  <37.741817, 35.508095, 45.291203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.024010, 35.231571, 45.228729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112452, -0.108388, 0.987728,
		-0.699749, -0.714387, 0.001273,
		0.705482, -0.691305, -0.156179,
		38.235653, 35.024181, 45.181877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.634846, 34.956577, 45.758759>,  <37.741817, 35.508095, 45.291203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.634846, 34.956577, 45.758759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.006329, 34.863407, 45.643345>,  <38.229218, 34.807503, 45.574097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.006329, 34.863407, 45.643345>,  <37.634846, 34.956577, 45.758759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.006329, 34.863407, 45.643345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266654, -0.121237, 0.956137,
		-0.257693, -0.964907, -0.050482,
		0.928703, -0.232929, -0.288538,
		38.284939, 34.793530, 45.556782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.670330, 34.277229, 46.063171>,  <37.634846, 34.956577, 45.758759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.670330, 34.277229, 46.063171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.035545, 34.424500, 45.992962>,  <38.254673, 34.512859, 45.950836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.035545, 34.424500, 45.992962>,  <37.670330, 34.277229, 46.063171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.035545, 34.424500, 45.992962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280447, -0.254214, 0.925594,
		0.296158, -0.894329, -0.335360,
		0.913039, 0.368172, -0.175525,
		38.309456, 34.534950, 45.940304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.224052, 33.704594, 46.236198>,  <37.670330, 34.277229, 46.063171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.224052, 33.704594, 46.236198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.411942, 34.057693, 46.231819>,  <38.524673, 34.269554, 46.229191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.411942, 34.057693, 46.231819>,  <38.224052, 33.704594, 46.236198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.411942, 34.057693, 46.231819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458425, -0.233304, 0.857564,
		0.754458, -0.407834, -0.514261,
		0.469723, 0.882746, -0.010943,
		38.552860, 34.322517, 46.228535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.908070, 33.459171, 46.486816>,  <38.224052, 33.704594, 46.236198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.908070, 33.459171, 46.486816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.863056, 33.854034, 46.532181>,  <38.836048, 34.090950, 46.559399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.863056, 33.854034, 46.532181>,  <38.908070, 33.459171, 46.486816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.863056, 33.854034, 46.532181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530116, -0.036887, 0.847122,
		0.840424, 0.155452, -0.519156,
		-0.112537, 0.987155, 0.113409,
		38.829296, 34.150181, 46.566204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.551659, 33.779980, 46.453205>,  <38.908070, 33.459171, 46.486816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.551659, 33.779980, 46.453205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.324532, 34.043056, 46.651203>,  <39.188255, 34.200901, 46.770004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.324532, 34.043056, 46.651203>,  <39.551659, 33.779980, 46.453205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.324532, 34.043056, 46.651203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688007, 0.049053, 0.724044,
		0.451916, 0.751689, -0.480349,
		-0.567818, 0.657691, 0.495000,
		39.154186, 34.240364, 46.799702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.997372, 34.392551, 46.616505>,  <39.551659, 33.779980, 46.453205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.997372, 34.392551, 46.616505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.709518, 34.362263, 46.892590>,  <39.536804, 34.344090, 47.058239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.709518, 34.362263, 46.892590>,  <39.997372, 34.392551, 46.616505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.709518, 34.362263, 46.892590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693340, -0.131974, 0.708423,
		0.037444, 0.988357, 0.147477,
		-0.719637, -0.075725, 0.690209,
		39.493626, 34.339546, 47.099651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.254978, 34.781399, 47.087936>,  <39.997372, 34.392551, 46.616505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.254978, 34.781399, 47.087936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.980244, 34.556389, 47.272034>,  <39.815403, 34.421383, 47.382492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.980244, 34.556389, 47.272034>,  <40.254978, 34.781399, 47.087936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.980244, 34.556389, 47.272034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653217, -0.200086, 0.730256,
		-0.318699, 0.802203, 0.504877,
		-0.686832, -0.562526, 0.460246,
		39.774193, 34.387630, 47.410107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.237316, 35.089863, 47.698311>,  <40.254978, 34.781399, 47.087936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.237316, 35.089863, 47.698311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.083736, 34.731674, 47.788387>,  <39.991589, 34.516762, 47.842434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.083736, 34.731674, 47.788387>,  <40.237316, 35.089863, 47.698311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.083736, 34.731674, 47.788387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555326, -0.029092, 0.831124,
		-0.737698, 0.444163, 0.508449,
		-0.383946, -0.895474, 0.225194,
		39.968552, 34.463032, 47.855946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.151237, 35.086494, 48.457718>,  <40.237316, 35.089863, 47.698311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.151237, 35.086494, 48.457718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.126942, 34.702507, 48.348339>,  <40.112362, 34.472115, 48.282711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.126942, 34.702507, 48.348339>,  <40.151237, 35.086494, 48.457718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.126942, 34.702507, 48.348339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536911, -0.262366, 0.801805,
		-0.841449, -0.098111, 0.531355,
		-0.060744, -0.959968, -0.273444,
		40.108719, 34.414516, 48.266304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.800541, 34.767452, 48.963261>,  <40.151237, 35.086494, 48.457718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.800541, 34.767452, 48.963261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.026272, 34.504013, 48.764149>,  <40.161713, 34.345951, 48.644680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.026272, 34.504013, 48.764149>,  <39.800541, 34.767452, 48.963261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.026272, 34.504013, 48.764149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545415, -0.155197, 0.823672,
		-0.619720, -0.736319, 0.271626,
		0.564330, -0.658595, -0.497778,
		40.195572, 34.306435, 48.614815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.956470, 34.414101, 49.485813>,  <39.800541, 34.767452, 48.963261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.956470, 34.414101, 49.485813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.197914, 34.264496, 49.204170>,  <40.342781, 34.174732, 49.035183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.197914, 34.264496, 49.204170>,  <39.956470, 34.414101, 49.485813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.197914, 34.264496, 49.204170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671488, -0.237642, 0.701876,
		-0.429835, -0.896461, 0.107700,
		0.603611, -0.374010, -0.704110,
		40.378998, 34.152294, 48.992939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.186928, 33.796688, 49.713684>,  <39.956470, 34.414101, 49.485813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.186928, 33.796688, 49.713684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.469246, 33.933578, 49.465576>,  <40.638638, 34.015713, 49.316711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.469246, 33.933578, 49.465576>,  <40.186928, 33.796688, 49.713684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.469246, 33.933578, 49.465576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.680691, -0.085066, 0.727615,
		0.196248, -0.935758, -0.292992,
		0.705795, 0.342230, -0.620268,
		40.680984, 34.036247, 49.279495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.683323, 33.245060, 49.595436>,  <40.186928, 33.796688, 49.713684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.683323, 33.245060, 49.595436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.856491, 33.601437, 49.540588>,  <40.960392, 33.815262, 49.507679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.856491, 33.601437, 49.540588>,  <40.683323, 33.245060, 49.595436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.856491, 33.601437, 49.540588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632508, -0.191856, 0.750417,
		0.642272, -0.411598, -0.646586,
		0.432921, 0.890943, -0.137115,
		40.986366, 33.868721, 49.499454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.427147, 33.107525, 49.836052>,  <40.683323, 33.245060, 49.595436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.427147, 33.107525, 49.836052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.396126, 33.506317, 49.837440>,  <41.377514, 33.745594, 49.838276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.396126, 33.506317, 49.837440>,  <41.427147, 33.107525, 49.836052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.396126, 33.506317, 49.837440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622536, 0.045701, 0.781256,
		0.778739, 0.062752, -0.624202,
		-0.077552, 0.996982, 0.003476,
		41.372860, 33.805412, 49.838482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.110783, 33.298538, 49.989582>,  <41.427147, 33.107525, 49.836052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.110783, 33.298538, 49.989582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.894028, 33.617798, 50.094894>,  <41.763977, 33.809353, 50.158081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.894028, 33.617798, 50.094894>,  <42.110783, 33.298538, 49.989582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.894028, 33.617798, 50.094894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591406, 0.139544, 0.794208,
		0.597160, 0.586074, -0.547647,
		-0.541886, 0.798151, 0.263278,
		41.731461, 33.857243, 50.173878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.569736, 33.869080, 50.230637>,  <42.110783, 33.298538, 49.989582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.569736, 33.869080, 50.230637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.216778, 33.950760, 50.400188>,  <42.005001, 33.999767, 50.501919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.216778, 33.950760, 50.400188>,  <42.569736, 33.869080, 50.230637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.216778, 33.950760, 50.400188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399363, -0.151272, 0.904227,
		0.248761, 0.967172, 0.051934,
		-0.882399, 0.204196, 0.423883,
		41.952057, 34.012020, 50.527351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.731037, 34.408428, 50.818096>,  <42.569736, 33.869080, 50.230637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.731037, 34.408428, 50.818096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.374752, 34.241928, 50.891159>,  <42.160980, 34.142029, 50.934998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.374752, 34.241928, 50.891159>,  <42.731037, 34.408428, 50.818096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.374752, 34.241928, 50.891159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236167, -0.080422, 0.968379,
		-0.388394, 0.905689, 0.169937,
		-0.890716, -0.416246, 0.182658,
		42.107536, 34.117054, 50.945957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.540787, 34.759842, 51.359016>,  <42.731037, 34.408428, 50.818096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.540787, 34.759842, 51.359016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.340458, 34.413795, 51.369991>,  <42.220261, 34.206169, 51.376575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.340458, 34.413795, 51.369991>,  <42.540787, 34.759842, 51.359016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.340458, 34.413795, 51.369991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209182, -0.090214, 0.973706,
		-0.839892, 0.493394, 0.226148,
		-0.500823, -0.865115, 0.027439,
		42.190212, 34.154263, 51.378223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.053093, 34.704494, 51.977333>,  <42.540787, 34.759842, 51.359016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.053093, 34.704494, 51.977333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.180523, 34.337936, 51.880394>,  <42.256981, 34.118000, 51.822231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.180523, 34.337936, 51.880394>,  <42.053093, 34.704494, 51.977333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.180523, 34.337936, 51.880394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200706, -0.184659, 0.962090,
		-0.926406, -0.355137, 0.125098,
		0.318573, -0.916395, -0.242348,
		42.276096, 34.063019, 51.807690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.744938, 34.145767, 52.428932>,  <42.053093, 34.704494, 51.977333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.744938, 34.145767, 52.428932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.125473, 34.061539, 52.338940>,  <42.353794, 34.011002, 52.284946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.125473, 34.061539, 52.338940>,  <41.744938, 34.145767, 52.428932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.125473, 34.061539, 52.338940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225981, -0.019618, 0.973934,
		-0.209501, -0.977381, 0.028923,
		0.951337, -0.210576, -0.224980,
		42.410873, 33.998367, 52.271446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.086842, 33.606236, 52.903248>,  <41.744938, 34.145767, 52.428932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.086842, 33.606236, 52.903248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.356773, 33.875145, 52.781490>,  <42.518734, 34.036491, 52.708435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.356773, 33.875145, 52.781490>,  <42.086842, 33.606236, 52.903248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.356773, 33.875145, 52.781490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205646, 0.224832, 0.952450,
		0.708743, -0.705338, 0.013473,
		0.674828, 0.672271, -0.304398,
		42.559223, 34.076828, 52.690170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.483913, 33.005962, 53.105885>,  <42.086842, 33.606236, 52.903248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.483913, 33.005962, 53.105885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.154724, 33.065483, 53.325184>,  <41.957211, 33.101196, 53.456764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.154724, 33.065483, 53.325184>,  <42.483913, 33.005962, 53.105885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.154724, 33.065483, 53.325184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557324, 0.398398, 0.728470,
		-0.110022, 0.905062, -0.410801,
		-0.822973, 0.148802, 0.548246,
		41.907833, 33.110123, 53.489658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.391209, 32.542854, 53.720661>,  <42.483913, 33.005962, 53.105885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.391209, 32.542854, 53.720661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.785301, 32.503258, 53.776550>,  <43.021755, 32.479500, 53.810085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.785301, 32.503258, 53.776550>,  <42.391209, 32.542854, 53.720661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.785301, 32.503258, 53.776550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156630, -0.850750, 0.501689,
		0.069210, -0.516164, -0.853689,
		0.985229, -0.098991, 0.139727,
		43.080872, 32.473560, 53.818470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.937851, 32.050110, 53.502411>,  <42.391209, 32.542854, 53.720661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.937851, 32.050110, 53.502411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.705482, 31.752829, 53.369637>,  <42.566063, 31.574461, 53.289970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.705482, 31.752829, 53.369637>,  <42.937851, 32.050110, 53.502411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.705482, 31.752829, 53.369637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.811295, -0.495718, -0.309942,
		0.065801, -0.449353, 0.890928,
		-0.580922, -0.743200, -0.331939,
		42.531204, 31.529869, 53.270054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.111706, 31.390854, 53.472454>,  <42.937851, 32.050110, 53.502411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.111706, 31.390854, 53.472454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.385315, 31.125717, 53.350636>,  <43.549480, 30.966635, 53.277542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.385315, 31.125717, 53.350636>,  <43.111706, 31.390854, 53.472454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.385315, 31.125717, 53.350636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331085, 0.089906, -0.939308,
		0.649992, 0.743343, -0.157959,
		0.684027, -0.662841, -0.304548,
		43.590523, 30.926865, 53.259270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.496777, 31.637079, 53.002796>,  <43.111706, 31.390854, 53.472454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.496777, 31.637079, 53.002796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.545422, 31.257526, 52.886292>,  <43.574608, 31.029795, 52.816387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.545422, 31.257526, 52.886292>,  <43.496777, 31.637079, 53.002796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.545422, 31.257526, 52.886292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260666, 0.252607, -0.931795,
		0.957738, 0.189242, -0.216621,
		0.121615, -0.948882, -0.291261,
		43.581905, 30.972862, 52.798912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.260368, 31.630011, 52.344139>,  <43.496777, 31.637079, 53.002796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.260368, 31.630011, 52.344139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.329399, 31.236862, 52.318268>,  <43.370819, 31.000973, 52.302746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.329399, 31.236862, 52.318268>,  <43.260368, 31.630011, 52.344139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.329399, 31.236862, 52.318268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341527, 0.001880, -0.939870,
		0.923891, 0.184292, -0.335352,
		0.172581, -0.982869, -0.064678,
		43.381172, 30.942001, 52.298866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.719467, 31.454952, 51.776470>,  <43.260368, 31.630011, 52.344139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.719467, 31.454952, 51.776470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.468662, 31.162529, 51.884106>,  <43.318180, 30.987074, 51.948685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.468662, 31.162529, 51.884106>,  <43.719467, 31.454952, 51.776470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.468662, 31.162529, 51.884106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471967, 0.081687, -0.877824,
		0.619762, -0.677405, -0.396255,
		-0.627011, -0.731061, 0.269086,
		43.280560, 30.943211, 51.964832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.682953, 30.833668, 51.336037>,  <43.719467, 31.454952, 51.776470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.682953, 30.833668, 51.336037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.338516, 30.910261, 51.524445>,  <43.131855, 30.956217, 51.637489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.338516, 30.910261, 51.524445>,  <43.682953, 30.833668, 51.336037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.338516, 30.910261, 51.524445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451306, 0.138842, -0.881502,
		-0.234192, -0.971626, -0.033137,
		-0.861090, 0.191486, 0.471016,
		43.080189, 30.967707, 51.665749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.134193, 30.281588, 51.281914>,  <43.682953, 30.833668, 51.336037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.134193, 30.281588, 51.281914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.026871, 30.666142, 51.306419>,  <42.962479, 30.896873, 51.321125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.026871, 30.666142, 51.306419>,  <43.134193, 30.281588, 51.281914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.026871, 30.666142, 51.306419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402483, -0.054089, -0.913828,
		-0.875225, -0.269845, 0.401453,
		-0.268306, 0.961383, 0.061268,
		42.946381, 30.954557, 51.324799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.417858, 30.400480, 51.367393>,  <43.134193, 30.281588, 51.281914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.417858, 30.400480, 51.367393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.547249, 30.726568, 51.175236>,  <42.624882, 30.922220, 51.059940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.547249, 30.726568, 51.175236>,  <42.417858, 30.400480, 51.367393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.547249, 30.726568, 51.175236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575488, -0.233513, -0.783763,
		-0.751119, 0.529989, 0.393614,
		0.323472, 0.815219, -0.480398,
		42.644291, 30.971134, 51.031116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.880157, 30.844997, 51.149872>,  <42.417858, 30.400480, 51.367393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.880157, 30.844997, 51.149872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.167858, 30.951777, 50.893307>,  <42.340477, 31.015844, 50.739368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.167858, 30.951777, 50.893307>,  <41.880157, 30.844997, 51.149872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.167858, 30.951777, 50.893307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624771, -0.155282, -0.765212,
		-0.303870, 0.951119, 0.055093,
		0.719252, 0.266946, -0.641417,
		42.383633, 31.031860, 50.700882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.534092, 31.108593, 50.605949>,  <41.880157, 30.844997, 51.149872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.534092, 31.108593, 50.605949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.890156, 31.071976, 50.427406>,  <42.103794, 31.050005, 50.320282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.890156, 31.071976, 50.427406>,  <41.534092, 31.108593, 50.605949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.890156, 31.071976, 50.427406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455413, -0.210318, -0.865081,
		-0.014684, 0.973338, -0.228907,
		0.890159, -0.091545, -0.446359,
		42.157204, 31.044512, 50.293499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.561115, 31.559481, 50.072212>,  <41.534092, 31.108593, 50.605949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.561115, 31.559481, 50.072212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.834198, 31.278849, 49.990536>,  <41.998047, 31.110470, 49.941532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.834198, 31.278849, 49.990536>,  <41.561115, 31.559481, 50.072212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.834198, 31.278849, 49.990536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451050, -0.184792, -0.873159,
		0.574860, 0.688211, -0.442608,
		0.682708, -0.701582, -0.204188,
		42.039009, 31.068375, 49.929279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.915379, 31.819931, 49.460590>,  <41.561115, 31.559481, 50.072212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.915379, 31.819931, 49.460590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.997738, 31.430101, 49.495949>,  <42.047153, 31.196203, 49.517162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.997738, 31.430101, 49.495949>,  <41.915379, 31.819931, 49.460590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.997738, 31.430101, 49.495949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286445, -0.146395, -0.946846,
		0.935711, 0.169632, -0.309304,
		0.205897, -0.974573, 0.088393,
		42.059505, 31.137730, 49.522469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.220711, 31.545069, 48.758015>,  <41.915379, 31.819931, 49.460590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.220711, 31.545069, 48.758015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.118958, 31.196093, 48.924934>,  <42.057907, 30.986706, 49.025085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.118958, 31.196093, 48.924934>,  <42.220711, 31.545069, 48.758015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.118958, 31.196093, 48.924934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354639, -0.317282, -0.879525,
		0.899735, -0.371722, -0.228692,
		-0.254379, -0.872442, 0.417297,
		42.042645, 30.934361, 49.050125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.529636, 31.068281, 48.342907>,  <42.220711, 31.545069, 48.758015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.529636, 31.068281, 48.342907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.228451, 30.893394, 48.539635>,  <42.047737, 30.788464, 48.657669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.228451, 30.893394, 48.539635>,  <42.529636, 31.068281, 48.342907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.228451, 30.893394, 48.539635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445669, -0.211077, -0.869957,
		0.484171, -0.874236, -0.035920,
		-0.752967, -0.437216, 0.491817,
		42.002560, 30.762230, 48.687180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.457314, 30.401966, 47.982498>,  <42.529636, 31.068281, 48.342907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.457314, 30.401966, 47.982498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.103405, 30.449921, 48.162636>,  <41.891060, 30.478693, 48.270718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.103405, 30.449921, 48.162636>,  <42.457314, 30.401966, 47.982498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.103405, 30.449921, 48.162636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464370, -0.145446, -0.873617,
		-0.039230, -0.982076, 0.184356,
		-0.884772, 0.119881, 0.450341,
		41.837975, 30.485886, 48.297737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.060741, 29.904835, 47.675224>,  <42.457314, 30.401966, 47.982498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.060741, 29.904835, 47.675224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.768692, 30.135599, 47.821697>,  <41.593460, 30.274057, 47.909580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.768692, 30.135599, 47.821697>,  <42.060741, 29.904835, 47.675224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.768692, 30.135599, 47.821697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556746, -0.191563, -0.808293,
		-0.396168, -0.794025, 0.461059,
		-0.730126, 0.576913, 0.366179,
		41.549652, 30.308672, 47.931553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.464783, 29.470881, 47.596466>,  <42.060741, 29.904835, 47.675224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.464783, 29.470881, 47.596466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.332180, 29.840687, 47.671696>,  <41.252617, 30.062571, 47.716835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.332180, 29.840687, 47.671696>,  <41.464783, 29.470881, 47.596466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.332180, 29.840687, 47.671696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.680945, -0.096490, -0.725950,
		-0.653006, -0.368725, 0.661532,
		-0.331507, 0.924517, 0.188073,
		41.232727, 30.118042, 47.728119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.765278, 29.401510, 47.716015>,  <41.464783, 29.470881, 47.596466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.765278, 29.401510, 47.716015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.864300, 29.769846, 47.595501>,  <40.923714, 29.990847, 47.523193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.864300, 29.769846, 47.595501>,  <40.765278, 29.401510, 47.716015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.864300, 29.769846, 47.595501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.682318, -0.055077, -0.728978,
		-0.687865, 0.386033, 0.614671,
		0.247555, 0.920839, -0.301282,
		40.938568, 30.046099, 47.505116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.123672, 29.543438, 47.402725>,  <40.765278, 29.401510, 47.716015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.123672, 29.543438, 47.402725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.370804, 29.829330, 47.271606>,  <40.519081, 30.000866, 47.192936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.370804, 29.829330, 47.271606>,  <40.123672, 29.543438, 47.402725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.370804, 29.829330, 47.271606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463967, -0.005204, -0.885837,
		-0.634840, 0.699382, 0.328396,
		0.617829, 0.714730, -0.327794,
		40.556152, 30.043749, 47.173267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.756931, 30.089643, 47.175377>,  <40.123672, 29.543438, 47.402725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.756931, 30.089643, 47.175377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.088692, 30.133579, 46.956280>,  <40.287750, 30.159941, 46.824821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.088692, 30.133579, 46.956280>,  <39.756931, 30.089643, 47.175377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.088692, 30.133579, 46.956280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557919, 0.213017, -0.802091,
		0.028577, 0.970855, 0.237960,
		0.829403, 0.109842, -0.547746,
		40.337513, 30.166533, 46.791958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.711319, 30.791666, 46.911518>,  <39.756931, 30.089643, 47.175377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.711319, 30.791666, 46.911518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.964886, 30.576347, 46.689388>,  <40.117027, 30.447155, 46.556110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.964886, 30.576347, 46.689388>,  <39.711319, 30.791666, 46.911518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.964886, 30.576347, 46.689388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537373, 0.209824, -0.816826,
		0.556215, 0.816216, -0.156255,
		0.633920, -0.538298, -0.555320,
		40.155064, 30.414858, 46.522793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.891396, 31.151005, 46.344532>,  <39.711319, 30.791666, 46.911518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.891396, 31.151005, 46.344532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.917263, 30.768856, 46.229233>,  <39.932785, 30.539568, 46.160053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.917263, 30.768856, 46.229233>,  <39.891396, 31.151005, 46.344532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.917263, 30.768856, 46.229233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493353, 0.220469, -0.841425,
		0.867422, 0.196624, -0.457076,
		0.064673, -0.955370, -0.288245,
		39.936665, 30.482244, 46.142761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.756863, 31.165649, 45.683697>,  <39.891396, 31.151005, 46.344532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.756863, 31.165649, 45.683697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.714558, 30.772438, 45.743649>,  <39.689175, 30.536510, 45.779621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.714558, 30.772438, 45.743649>,  <39.756863, 31.165649, 45.683697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.714558, 30.772438, 45.743649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551050, -0.067525, -0.831736,
		0.827742, -0.170562, -0.534557,
		-0.105766, -0.983030, 0.149881,
		39.682827, 30.477530, 45.788612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.963821, 30.914665, 45.102253>,  <39.756863, 31.165649, 45.683697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.963821, 30.914665, 45.102253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.726059, 30.636724, 45.264172>,  <39.583401, 30.469961, 45.361324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.726059, 30.636724, 45.264172>,  <39.963821, 30.914665, 45.102253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.726059, 30.636724, 45.264172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498324, -0.076802, -0.863582,
		0.631150, -0.715041, -0.300609,
		-0.594409, -0.694851, 0.404796,
		39.547737, 30.428268, 45.385609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.858253, 30.375395, 44.489136>,  <39.963821, 30.914665, 45.102253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.858253, 30.375395, 44.489136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.575226, 30.357332, 44.771217>,  <39.405411, 30.346495, 44.940464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.575226, 30.357332, 44.771217>,  <39.858253, 30.375395, 44.489136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.575226, 30.357332, 44.771217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.690583, -0.167378, -0.703619,
		0.149809, -0.984858, 0.087246,
		-0.707568, -0.045158, 0.705201,
		39.362957, 30.343784, 44.982777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.430428, 29.734701, 44.321075>,  <39.858253, 30.375395, 44.489136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.430428, 29.734701, 44.321075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.219776, 29.962837, 44.573227>,  <39.093384, 30.099718, 44.724518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.219776, 29.962837, 44.573227>,  <39.430428, 29.734701, 44.321075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.219776, 29.962837, 44.573227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.710510, 0.111816, -0.694747,
		-0.466727, -0.813763, 0.346346,
		-0.526632, 0.570340, 0.630374,
		39.061787, 30.133940, 44.762341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.758148, 29.422878, 44.367256>,  <39.430428, 29.734701, 44.321075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.758148, 29.422878, 44.367256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.732586, 29.803238, 44.488392>,  <38.717247, 30.031454, 44.561073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.732586, 29.803238, 44.488392>,  <38.758148, 29.422878, 44.367256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.732586, 29.803238, 44.488392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.843520, 0.110688, -0.525568,
		-0.533282, -0.289038, 0.795027,
		-0.063909, 0.950897, 0.302837,
		38.713413, 30.088507, 44.579243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.053673, 29.466581, 44.494923>,  <38.758148, 29.422878, 44.367256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.053673, 29.466581, 44.494923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.172241, 29.847328, 44.463707>,  <38.243382, 30.075775, 44.444977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.172241, 29.847328, 44.463707>,  <38.053673, 29.466581, 44.494923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.172241, 29.847328, 44.463707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.875276, 0.238052, -0.420978,
		-0.382137, 0.193091, 0.903707,
		0.296417, 0.951865, -0.078039,
		38.261166, 30.132887, 44.440296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.528309, 29.830345, 44.813168>,  <38.053673, 29.466581, 44.494923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.528309, 29.830345, 44.813168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.726021, 30.088623, 44.580353>,  <37.844646, 30.243589, 44.440662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.726021, 30.088623, 44.580353>,  <37.528309, 29.830345, 44.813168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.726021, 30.088623, 44.580353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.869305, 0.366935, -0.331161,
		-0.000258, 0.669654, 0.742673,
		0.494276, 0.645695, -0.582039,
		37.874302, 30.282331, 44.405743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.125317, 30.389330, 44.830582>,  <37.528309, 29.830345, 44.813168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.125317, 30.389330, 44.830582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.364487, 30.425697, 44.512032>,  <37.507988, 30.447517, 44.320900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.364487, 30.425697, 44.512032>,  <37.125317, 30.389330, 44.830582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.364487, 30.425697, 44.512032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.780448, 0.292525, -0.552567,
		0.182723, 0.951926, 0.245865,
		0.597924, 0.090918, -0.796380,
		37.543865, 30.452972, 44.273117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.903095, 30.994987, 44.537895>,  <37.125317, 30.389330, 44.830582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.903095, 30.994987, 44.537895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.118744, 30.827105, 44.245815>,  <37.248135, 30.726376, 44.070568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.118744, 30.827105, 44.245815>,  <36.903095, 30.994987, 44.537895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.118744, 30.827105, 44.245815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615165, 0.395936, -0.681767,
		0.575255, 0.816750, -0.044731,
		0.539123, -0.419707, -0.730200,
		37.280479, 30.701193, 44.026756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.994648, 31.497347, 43.932110>,  <36.903095, 30.994987, 44.537895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.994648, 31.497347, 43.932110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.047749, 31.142649, 43.754997>,  <37.079609, 30.929829, 43.648731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.047749, 31.142649, 43.754997>,  <36.994648, 31.497347, 43.932110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.047749, 31.142649, 43.754997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557724, 0.302465, -0.772955,
		0.819342, 0.349563, -0.454406,
		0.132755, -0.886747, -0.442782,
		37.087574, 30.876625, 43.622162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.955975, 31.673449, 43.268295>,  <36.994648, 31.497347, 43.932110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.955975, 31.673449, 43.268295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.918835, 31.276119, 43.240925>,  <36.896549, 31.037722, 43.224503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.918835, 31.276119, 43.240925>,  <36.955975, 31.673449, 43.268295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.918835, 31.276119, 43.240925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448998, 0.103114, -0.887563,
		0.888695, -0.051689, -0.455576,
		-0.092854, -0.993325, -0.068429,
		36.890980, 30.978121, 43.220398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.108822, 31.616919, 42.593914>,  <36.955975, 31.673449, 43.268295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.108822, 31.616919, 42.593914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.922508, 31.277874, 42.695580>,  <36.810722, 31.074448, 42.756580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.922508, 31.277874, 42.695580>,  <37.108822, 31.616919, 42.593914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.922508, 31.277874, 42.695580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451472, -0.019407, -0.892074,
		0.761066, -0.530261, -0.373634,
		-0.465781, -0.847612, 0.254168,
		36.782772, 31.023590, 42.771832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.207077, 31.089043, 42.045834>,  <37.108822, 31.616919, 42.593914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.207077, 31.089043, 42.045834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.876610, 31.002802, 42.254047>,  <36.678329, 30.951057, 42.378975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.876610, 31.002802, 42.254047>,  <37.207077, 31.089043, 42.045834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.876610, 31.002802, 42.254047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518107, -0.072272, -0.852257,
		0.221370, -0.973803, -0.051996,
		-0.826172, -0.215603, 0.520533,
		36.628757, 30.938122, 42.410206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.957493, 30.495903, 41.758453>,  <37.207077, 31.089043, 42.045834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.957493, 30.495903, 41.758453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.641079, 30.636414, 41.958797>,  <36.451229, 30.720720, 42.079006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.641079, 30.636414, 41.958797>,  <36.957493, 30.495903, 41.758453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.641079, 30.636414, 41.958797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561171, -0.090627, -0.822724,
		-0.243612, -0.931875, 0.268815,
		-0.791037, 0.351277, 0.500864,
		36.403767, 30.741796, 42.109058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.393284, 30.118341, 41.535683>,  <36.957493, 30.495903, 41.758453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.393284, 30.118341, 41.535683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.206535, 30.431456, 41.700256>,  <36.094486, 30.619324, 41.799000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.206535, 30.431456, 41.700256>,  <36.393284, 30.118341, 41.535683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.206535, 30.431456, 41.700256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.741667, -0.093210, -0.664261,
		-0.481624, -0.615271, 0.624083,
		-0.466871, 0.782785, 0.411434,
		36.066475, 30.666290, 41.823689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.617325, 29.924540, 41.509995>,  <36.393284, 30.118341, 41.535683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.617325, 29.924540, 41.509995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.634563, 30.322954, 41.541122>,  <35.644905, 30.562002, 41.559799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.634563, 30.322954, 41.541122>,  <35.617325, 29.924540, 41.509995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.634563, 30.322954, 41.541122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.676608, 0.086404, -0.731257,
		-0.735082, -0.021139, 0.677649,
		0.043094, 0.996036, 0.077817,
		35.647491, 30.621765, 41.564468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.956070, 30.222326, 41.451714>,  <35.617325, 29.924540, 41.509995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.956070, 30.222326, 41.451714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.184937, 30.536036, 41.355766>,  <35.322258, 30.724262, 41.298199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.184937, 30.536036, 41.355766>,  <34.956070, 30.222326, 41.451714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.184937, 30.536036, 41.355766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623296, 0.225740, -0.748694,
		-0.533034, 0.577888, 0.617996,
		0.572168, 0.784275, -0.239868,
		35.356586, 30.771318, 41.283806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.545288, 30.871302, 41.417789>,  <34.956070, 30.222326, 41.451714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.545288, 30.871302, 41.417789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.863739, 30.967867, 41.195835>,  <35.054810, 31.025806, 41.062664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.863739, 30.967867, 41.195835>,  <34.545288, 30.871302, 41.417789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.863739, 30.967867, 41.195835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604796, 0.347718, -0.716459,
		0.019981, 0.905987, 0.422834,
		0.796130, 0.241413, -0.554885,
		35.102577, 31.040291, 41.029369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.371578, 31.390577, 41.103928>,  <34.545288, 30.871302, 41.417789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.371578, 31.390577, 41.103928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.691132, 31.318369, 40.874424>,  <34.882862, 31.275043, 40.736721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.691132, 31.318369, 40.874424>,  <34.371578, 31.390577, 41.103928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.691132, 31.318369, 40.874424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450071, 0.453412, -0.769321,
		0.399028, 0.872829, 0.280975,
		0.798882, -0.180522, -0.573759,
		34.930798, 31.264212, 40.702297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.447849, 31.984207, 40.758888>,  <34.371578, 31.390577, 41.103928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.447849, 31.984207, 40.758888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.656864, 31.700369, 40.569813>,  <34.782272, 31.530066, 40.456367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.656864, 31.700369, 40.569813>,  <34.447849, 31.984207, 40.758888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.656864, 31.700369, 40.569813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449794, 0.241550, -0.859848,
		0.724320, 0.661914, -0.192952,
		0.522538, -0.709593, -0.472685,
		34.813625, 31.487492, 40.428009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.513283, 32.277752, 40.087284>,  <34.447849, 31.984207, 40.758888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.513283, 32.277752, 40.087284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.616432, 31.901243, 40.000095>,  <34.678322, 31.675339, 39.947781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.616432, 31.901243, 40.000095>,  <34.513283, 32.277752, 40.087284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.616432, 31.901243, 40.000095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514887, 0.057023, -0.855359,
		0.817554, 0.332805, -0.469943,
		0.257871, -0.941270, -0.217976,
		34.693794, 31.618862, 39.934704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.776989, 32.330956, 39.404278>,  <34.513283, 32.277752, 40.087284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.776989, 32.330956, 39.404278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.684422, 31.943111, 39.436039>,  <34.628883, 31.710405, 39.455097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.684422, 31.943111, 39.436039>,  <34.776989, 32.330956, 39.404278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.684422, 31.943111, 39.436039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142033, -0.047074, -0.988742,
		0.962431, -0.240089, -0.126823,
		-0.231416, -0.969609, 0.079406,
		34.614998, 31.652229, 39.459862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.094929, 31.912151, 38.913101>,  <34.776989, 32.330956, 39.404278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.094929, 31.912151, 38.913101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.773052, 31.697323, 39.014317>,  <34.579926, 31.568426, 39.075047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.773052, 31.697323, 39.014317>,  <35.094929, 31.912151, 38.913101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.773052, 31.697323, 39.014317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176388, -0.190683, -0.965675,
		0.566887, -0.821701, 0.058708,
		-0.804690, -0.537073, 0.253034,
		34.531647, 31.536201, 39.090225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.370472, 31.950411, 38.183361>,  <35.094929, 31.912151, 38.913101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.370472, 31.950411, 38.183361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.403431, 31.706820, 37.867802>,  <35.423206, 31.560665, 37.678467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.403431, 31.706820, 37.867802>,  <35.370472, 31.950411, 38.183361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.403431, 31.706820, 37.867802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.784048, -0.449040, 0.428523,
		-0.615207, -0.653842, 0.440467,
		0.082399, -0.608978, -0.788896,
		35.428150, 31.524126, 37.631134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.475182, 31.281357, 38.455624>,  <35.370472, 31.950411, 38.183361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.475182, 31.281357, 38.455624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.631046, 31.323149, 38.089619>,  <35.724564, 31.348225, 37.870014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.631046, 31.323149, 38.089619>,  <35.475182, 31.281357, 38.455624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.631046, 31.323149, 38.089619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.882806, -0.325381, 0.338794,
		-0.262330, -0.939793, -0.219026,
		0.389663, 0.104482, -0.915012,
		35.747944, 31.354494, 37.815117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.732128, 30.642056, 38.456646>,  <35.475182, 31.281357, 38.455624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.732128, 30.642056, 38.456646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.902569, 30.869596, 38.175266>,  <36.004833, 31.006121, 38.006439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.902569, 30.869596, 38.175266>,  <35.732128, 30.642056, 38.456646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.902569, 30.869596, 38.175266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.903852, -0.300873, 0.304182,
		-0.038615, -0.765429, -0.642361,
		0.426099, 0.568853, -0.703453,
		36.030399, 31.040253, 37.964230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.246502, 30.265383, 38.047501>,  <35.732128, 30.642056, 38.456646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.246502, 30.265383, 38.047501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.374641, 30.644295, 38.045113>,  <36.451523, 30.871643, 38.043678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.374641, 30.644295, 38.045113>,  <36.246502, 30.265383, 38.047501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.374641, 30.644295, 38.045113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.848744, -0.284214, 0.445934,
		0.420728, -0.147920, -0.895046,
		0.320347, 0.947282, -0.005969,
		36.470745, 30.928478, 38.043324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.938850, 30.209232, 37.996403>,  <36.246502, 30.265383, 38.047501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.938850, 30.209232, 37.996403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.918819, 30.598326, 38.086983>,  <36.906799, 30.831781, 38.141331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.918819, 30.598326, 38.086983>,  <36.938850, 30.209232, 37.996403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.918819, 30.598326, 38.086983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.895819, -0.056501, 0.440814,
		0.441589, 0.224939, -0.868563,
		-0.050082, 0.972733, 0.226454,
		36.903793, 30.890146, 38.154919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.614212, 30.504742, 37.851364>,  <36.938850, 30.209232, 37.996403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.614212, 30.504742, 37.851364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.463333, 30.765682, 38.114323>,  <37.372807, 30.922247, 38.272099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.463333, 30.765682, 38.114323>,  <37.614212, 30.504742, 37.851364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.463333, 30.765682, 38.114323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.855420, -0.026639, 0.517250,
		0.354940, 0.757450, -0.547985,
		-0.377193, 0.652350, 0.657392,
		37.350174, 30.961388, 38.311539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.166286, 30.930759, 37.996582>,  <37.614212, 30.504742, 37.851364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.166286, 30.930759, 37.996582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.916042, 31.004637, 38.299767>,  <37.765896, 31.048964, 38.481678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.916042, 31.004637, 38.299767>,  <38.166286, 30.930759, 37.996582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.916042, 31.004637, 38.299767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.769160, -0.016397, 0.638846,
		0.130418, 0.982659, -0.131801,
		-0.625607, 0.184693, 0.757961,
		37.728359, 31.060045, 38.527153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.493828, 31.443937, 38.349251>,  <38.166286, 30.930759, 37.996582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.493828, 31.443937, 38.349251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.226841, 31.260895, 38.584229>,  <38.066650, 31.151070, 38.725216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.226841, 31.260895, 38.584229>,  <38.493828, 31.443937, 38.349251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.226841, 31.260895, 38.584229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687397, -0.075323, 0.722366,
		-0.286310, 0.885960, 0.364832,
		-0.667467, -0.457604, 0.587440,
		38.026600, 31.123613, 38.760460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.635681, 31.632299, 39.026047>,  <38.493828, 31.443937, 38.349251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.635681, 31.632299, 39.026047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.422173, 31.304169, 39.108173>,  <38.294067, 31.107290, 39.157448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.422173, 31.304169, 39.108173>,  <38.635681, 31.632299, 39.026047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.422173, 31.304169, 39.108173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645628, -0.238529, 0.725444,
		-0.546126, 0.519779, 0.656944,
		-0.533771, -0.820325, 0.205317,
		38.262043, 31.058071, 39.169769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.510036, 31.722879, 39.675640>,  <38.635681, 31.632299, 39.026047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.510036, 31.722879, 39.675640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.472122, 31.327335, 39.629726>,  <38.449375, 31.090010, 39.602180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.472122, 31.327335, 39.629726>,  <38.510036, 31.722879, 39.675640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.472122, 31.327335, 39.629726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620429, -0.148848, 0.770008,
		-0.778514, 0.001772, 0.627625,
		-0.094785, -0.988858, -0.114781,
		38.443687, 31.030678, 39.595291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.345150, 31.503164, 40.311665>,  <38.510036, 31.722879, 39.675640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.345150, 31.503164, 40.311665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.428310, 31.160461, 40.122883>,  <38.478207, 30.954840, 40.009613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.428310, 31.160461, 40.122883>,  <38.345150, 31.503164, 40.311665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.428310, 31.160461, 40.122883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704405, -0.203629, 0.679963,
		-0.678668, -0.473813, 0.561170,
		0.207904, -0.856759, -0.471952,
		38.490681, 30.903433, 39.981297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.293442, 30.912283, 40.805717>,  <38.345150, 31.503164, 40.311665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.293442, 30.912283, 40.805717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.547642, 30.743919, 40.546803>,  <38.700161, 30.642900, 40.391453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.547642, 30.743919, 40.546803>,  <38.293442, 30.912283, 40.805717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.547642, 30.743919, 40.546803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551273, -0.339611, 0.762078,
		-0.540591, -0.841129, 0.016214,
		0.635499, -0.420911, -0.647283,
		38.738293, 30.617647, 40.352619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.290848, 30.157351, 40.977398>,  <38.293442, 30.912283, 40.805717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.290848, 30.157351, 40.977398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.624767, 30.237198, 40.772163>,  <38.825119, 30.285107, 40.649025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.624767, 30.237198, 40.772163>,  <38.290848, 30.157351, 40.977398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.624767, 30.237198, 40.772163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545516, -0.425640, 0.721972,
		-0.074268, -0.882600, -0.464221,
		0.834803, 0.199621, -0.513084,
		38.875210, 30.297085, 40.618237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.606022, 29.564695, 40.765488>,  <38.290848, 30.157351, 40.977398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.606022, 29.564695, 40.765488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.907204, 29.827194, 40.745880>,  <39.087914, 29.984694, 40.734116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.907204, 29.827194, 40.745880>,  <38.606022, 29.564695, 40.765488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.907204, 29.827194, 40.745880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516183, -0.542759, 0.662547,
		0.408189, -0.524169, -0.747415,
		0.752953, 0.656247, -0.049019,
		39.133091, 30.024069, 40.731174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.250031, 29.211618, 40.738644>,  <38.606022, 29.564695, 40.765488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.250031, 29.211618, 40.738644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.341663, 29.579838, 40.865204>,  <39.396645, 29.800770, 40.941139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.341663, 29.579838, 40.865204>,  <39.250031, 29.211618, 40.738644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.341663, 29.579838, 40.865204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649281, -0.386679, 0.654914,
		0.725227, 0.055406, -0.686276,
		0.229083, 0.920548, 0.316405,
		39.410389, 29.856003, 40.960125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.964508, 29.136511, 40.751678>,  <39.250031, 29.211618, 40.738644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.964508, 29.136511, 40.751678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.845497, 29.456450, 40.960186>,  <39.774090, 29.648413, 41.085293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.845497, 29.456450, 40.960186>,  <39.964508, 29.136511, 40.751678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.845497, 29.456450, 40.960186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650676, -0.229669, 0.723791,
		0.698641, 0.554526, -0.452108,
		-0.297526, 0.799846, 0.521273,
		39.756241, 29.696404, 41.116570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.550373, 29.640211, 40.913063>,  <39.964508, 29.136511, 40.751678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.550373, 29.640211, 40.913063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.272243, 29.696926, 41.194893>,  <40.105366, 29.730955, 41.363991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.272243, 29.696926, 41.194893>,  <40.550373, 29.640211, 40.913063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.272243, 29.696926, 41.194893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711560, -0.002032, 0.702623,
		0.101054, 0.989895, -0.099476,
		-0.695321, 0.141786, 0.704575,
		40.063648, 29.739462, 41.406265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.841404, 30.143215, 41.350922>,  <40.550373, 29.640211, 40.913063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.841404, 30.143215, 41.350922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.553177, 30.001295, 41.589214>,  <40.380241, 29.916143, 41.732189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.553177, 30.001295, 41.589214>,  <40.841404, 30.143215, 41.350922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.553177, 30.001295, 41.589214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626572, 0.034798, 0.778586,
		-0.296975, 0.934294, 0.197235,
		-0.720565, -0.354802, 0.595736,
		40.337006, 29.894854, 41.767937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.868565, 30.491207, 42.006985>,  <40.841404, 30.143215, 41.350922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.868565, 30.491207, 42.006985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.678738, 30.146532, 42.078861>,  <40.564842, 29.939728, 42.121986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.678738, 30.146532, 42.078861>,  <40.868565, 30.491207, 42.006985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.678738, 30.146532, 42.078861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396967, -0.027314, 0.917426,
		-0.785625, 0.506707, 0.355023,
		-0.474564, -0.861686, 0.179687,
		40.536369, 29.888027, 42.132767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.558399, 30.577572, 42.672646>,  <40.868565, 30.491207, 42.006985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.558399, 30.577572, 42.672646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.567169, 30.181545, 42.617092>,  <40.572433, 29.943930, 42.583759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.567169, 30.181545, 42.617092>,  <40.558399, 30.577572, 42.672646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.567169, 30.181545, 42.617092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278467, -0.127375, 0.951962,
		-0.960195, -0.059549, 0.272907,
		0.021927, -0.990065, -0.138887,
		40.573746, 29.884525, 42.575424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.282135, 30.286539, 43.308319>,  <40.558399, 30.577572, 42.672646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.282135, 30.286539, 43.308319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.484390, 29.991947, 43.128574>,  <40.605743, 29.815193, 43.020725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.484390, 29.991947, 43.128574>,  <40.282135, 30.286539, 43.308319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.484390, 29.991947, 43.128574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482873, -0.190050, 0.854819,
		-0.714957, -0.649216, 0.259528,
		0.505638, -0.736478, -0.449367,
		40.636082, 29.771004, 42.993763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.300537, 29.855698, 43.857479>,  <40.282135, 30.286539, 43.308319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.300537, 29.855698, 43.857479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.577538, 29.695793, 43.617268>,  <40.743736, 29.599850, 43.473141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.577538, 29.695793, 43.617268>,  <40.300537, 29.855698, 43.857479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.577538, 29.695793, 43.617268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523682, -0.293978, 0.799584,
		-0.496184, -0.868199, 0.005767,
		0.692502, -0.399761, -0.600527,
		40.785290, 29.575865, 43.437111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.391777, 29.161406, 44.032635>,  <40.300537, 29.855698, 43.857479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.391777, 29.161406, 44.032635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.722969, 29.305256, 43.860535>,  <40.921684, 29.391567, 43.757275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.722969, 29.305256, 43.860535>,  <40.391777, 29.161406, 44.032635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.722969, 29.305256, 43.860535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512614, -0.174381, 0.840725,
		0.227320, -0.916657, -0.328734,
		0.827981, 0.359627, -0.430251,
		40.971363, 29.413143, 43.731461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.956436, 28.665133, 44.325649>,  <40.391777, 29.161406, 44.032635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.956436, 28.665133, 44.325649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.154282, 28.979090, 44.176357>,  <41.272987, 29.167465, 44.086784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.154282, 28.979090, 44.176357>,  <40.956436, 28.665133, 44.325649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.154282, 28.979090, 44.176357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.702660, -0.108399, 0.703220,
		0.511496, -0.610073, -0.605130,
		0.494611, 0.784895, -0.373228,
		41.302666, 29.214558, 44.064388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.646957, 28.451015, 44.486847>,  <40.956436, 28.665133, 44.325649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.646957, 28.451015, 44.486847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.689129, 28.830109, 44.366390>,  <41.714432, 29.057564, 44.294117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.689129, 28.830109, 44.366390>,  <41.646957, 28.451015, 44.486847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.689129, 28.830109, 44.366390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.776529, 0.110708, 0.620280,
		0.621198, -0.299243, -0.724270,
		0.105432, 0.947733, -0.301142,
		41.720760, 29.114428, 44.276047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.404995, 28.595190, 44.314342>,  <41.646957, 28.451015, 44.486847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.404995, 28.595190, 44.314342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.242039, 28.952045, 44.392441>,  <42.144264, 29.166159, 44.439301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.242039, 28.952045, 44.392441>,  <42.404995, 28.595190, 44.314342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.242039, 28.952045, 44.392441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.700137, 0.167827, 0.694004,
		0.586382, 0.419427, -0.692991,
		-0.407387, 0.892141, 0.195246,
		42.119823, 29.219688, 44.451015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.992367, 28.997616, 44.374630>,  <42.404995, 28.595190, 44.314342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.992367, 28.997616, 44.374630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.687805, 29.202044, 44.534168>,  <42.505070, 29.324699, 44.629890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.687805, 29.202044, 44.534168>,  <42.992367, 28.997616, 44.374630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.687805, 29.202044, 44.534168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620728, 0.397285, 0.675915,
		0.186984, 0.762217, -0.619728,
		-0.761402, 0.511067, 0.398844,
		42.459385, 29.355364, 44.653820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.158272, 29.757360, 44.496376>,  <42.992367, 28.997616, 44.374630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.158272, 29.757360, 44.496376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.865643, 29.643314, 44.744087>,  <42.690063, 29.574886, 44.892715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.865643, 29.643314, 44.744087>,  <43.158272, 29.757360, 44.496376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.865643, 29.643314, 44.744087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539334, 0.313614, 0.781514,
		-0.417036, 0.905736, -0.075660,
		-0.731573, -0.285113, 0.619283,
		42.646172, 29.557781, 44.929871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.147812, 30.331100, 44.899178>,  <43.158272, 29.757360, 44.496376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.147812, 30.331100, 44.899178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.993896, 30.013491, 45.087418>,  <42.901546, 29.822924, 45.200359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.993896, 30.013491, 45.087418>,  <43.147812, 30.331100, 44.899178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.993896, 30.013491, 45.087418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604961, 0.168112, 0.778306,
		-0.697108, 0.584176, 0.415666,
		-0.384789, -0.794026, 0.470596,
		42.878460, 29.775284, 45.228596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.824509, 30.749006, 45.403683>,  <43.147812, 30.331100, 44.899178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.824509, 30.749006, 45.403683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.882690, 30.372734, 45.526295>,  <42.917599, 30.146971, 45.599861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.882690, 30.372734, 45.526295>,  <42.824509, 30.749006, 45.403683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.882690, 30.372734, 45.526295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565967, 0.333238, 0.754078,
		-0.811495, 0.063803, 0.580866,
		0.145454, -0.940681, 0.306532,
		42.926327, 30.090530, 45.618256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.647800, 30.719400, 46.036190>,  <42.824509, 30.749006, 45.403683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.647800, 30.719400, 46.036190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.909439, 30.422112, 45.979935>,  <43.066422, 30.243738, 45.946182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.909439, 30.422112, 45.979935>,  <42.647800, 30.719400, 46.036190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.909439, 30.422112, 45.979935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446241, 0.229032, 0.865109,
		-0.610758, -0.628623, 0.481465,
		0.654098, -0.743221, -0.140634,
		43.105667, 30.199144, 45.937744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.599403, 30.389826, 46.679604>,  <42.647800, 30.719400, 46.036190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.599403, 30.389826, 46.679604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.934032, 30.240986, 46.518764>,  <43.134811, 30.151682, 46.422260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.934032, 30.240986, 46.518764>,  <42.599403, 30.389826, 46.679604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.934032, 30.240986, 46.518764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415167, -0.048302, 0.908462,
		-0.357459, -0.926936, 0.114075,
		0.836576, -0.372098, -0.402099,
		43.185005, 30.129356, 46.398136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.962364, 29.937546, 47.243717>,  <42.599403, 30.389826, 46.679604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.962364, 29.937546, 47.243717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.257874, 29.993160, 46.979935>,  <43.435181, 30.026529, 46.821667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.257874, 29.993160, 46.979935>,  <42.962364, 29.937546, 47.243717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.257874, 29.993160, 46.979935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669551, -0.039732, 0.741703,
		0.076923, -0.989490, -0.122445,
		0.738772, 0.139037, -0.659457,
		43.479504, 30.034872, 46.782097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.557838, 29.443506, 47.459595>,  <42.962364, 29.937546, 47.243717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.557838, 29.443506, 47.459595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.712643, 29.747746, 47.251091>,  <43.805527, 29.930288, 47.125988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.712643, 29.747746, 47.251091>,  <43.557838, 29.443506, 47.459595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.712643, 29.747746, 47.251091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.680638, 0.145729, 0.717980,
		0.622057, -0.632657, -0.461293,
		0.387011, 0.760598, -0.521262,
		43.828747, 29.975925, 47.094711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.257919, 29.240318, 47.488583>,  <43.557838, 29.443506, 47.459595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.257919, 29.240318, 47.488583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.263023, 29.615086, 47.348854>,  <44.266087, 29.839945, 47.265018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.263023, 29.615086, 47.348854>,  <44.257919, 29.240318, 47.488583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.263023, 29.615086, 47.348854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.806018, 0.197104, 0.558109,
		0.591754, -0.288681, -0.752656,
		0.012764, 0.936917, -0.349319,
		44.266853, 29.896160, 47.244057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.912571, 29.435186, 47.284229>,  <44.257919, 29.240318, 47.488583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.912571, 29.435186, 47.284229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.750385, 29.791906, 47.364521>,  <44.653076, 30.005938, 47.412697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.750385, 29.791906, 47.364521>,  <44.912571, 29.435186, 47.284229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.750385, 29.791906, 47.364521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.754445, 0.202479, 0.624352,
		0.516153, 0.404592, -0.754912,
		-0.405462, 0.891800, 0.200732,
		44.628746, 30.059446, 47.424740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.519089, 29.820616, 47.272278>,  <44.912571, 29.435186, 47.284229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.519089, 29.820616, 47.272278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.247540, 30.050623, 47.454918>,  <45.084610, 30.188627, 47.564503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.247540, 30.050623, 47.454918>,  <45.519089, 29.820616, 47.272278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.247540, 30.050623, 47.454918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675546, 0.245471, 0.695256,
		0.287703, 0.780446, -0.555096,
		-0.678870, 0.575020, 0.456605,
		45.043880, 30.223129, 47.591900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.816864, 30.534626, 47.332485>,  <45.519089, 29.820616, 47.272278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.816864, 30.534626, 47.332485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.544605, 30.463140, 47.616676>,  <45.381252, 30.420250, 47.787193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.544605, 30.463140, 47.616676>,  <45.816864, 30.534626, 47.332485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.544605, 30.463140, 47.616676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708617, 0.085583, 0.700384,
		-0.185973, 0.980172, 0.068388,
		-0.680644, -0.178713, 0.710482,
		45.340412, 30.409527, 47.829823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.159653, 30.829308, 47.904110>,  <45.816864, 30.534626, 47.332485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.159653, 30.829308, 47.904110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.872528, 30.623316, 48.091530>,  <45.700253, 30.499720, 48.203983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.872528, 30.623316, 48.091530>,  <46.159653, 30.829308, 47.904110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.872528, 30.623316, 48.091530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505782, 0.076786, 0.859237,
		-0.478470, 0.853755, 0.205350,
		-0.717810, -0.514982, 0.468554,
		45.657185, 30.468821, 48.232098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.517307, 31.385004, 48.113258>,  <46.159653, 30.829308, 47.904110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.517307, 31.385004, 48.113258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.605919, 31.769053, 48.181488>,  <46.659084, 31.999481, 48.222427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.605919, 31.769053, 48.181488>,  <46.517307, 31.385004, 48.113258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.605919, 31.769053, 48.181488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611434, 0.273024, -0.742702,
		-0.759653, 0.060236, 0.647533,
		0.221529, 0.960120, 0.170573,
		46.672379, 32.057087, 48.232658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.806351, 31.725117, 48.201416>,  <46.517307, 31.385004, 48.113258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.806351, 31.725117, 48.201416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.079971, 31.978661, 48.057030>,  <46.244144, 32.130787, 47.970398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.079971, 31.978661, 48.057030>,  <45.806351, 31.725117, 48.201416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.079971, 31.978661, 48.057030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615938, 0.236839, -0.751351,
		-0.390760, 0.736295, 0.552428,
		0.684052, 0.633859, -0.360964,
		46.285187, 32.168819, 47.948742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.487141, 32.355354, 48.060963>,  <45.806351, 31.725117, 48.201416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.487141, 32.355354, 48.060963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.815948, 32.359676, 47.833221>,  <46.013233, 32.362270, 47.696575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.815948, 32.359676, 47.833221>,  <45.487141, 32.355354, 48.060963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.815948, 32.359676, 47.833221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544338, 0.308574, -0.780050,
		0.167259, 0.951139, 0.259536,
		0.822022, 0.010804, -0.569353,
		46.062553, 32.362919, 47.662415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.377991, 33.053513, 47.769917>,  <45.487141, 32.355354, 48.060963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.377991, 33.053513, 47.769917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.630123, 32.828030, 47.556408>,  <45.781403, 32.692738, 47.428303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.630123, 32.828030, 47.556408>,  <45.377991, 33.053513, 47.769917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.630123, 32.828030, 47.556408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591375, 0.096785, -0.800568,
		0.502950, 0.820282, -0.272359,
		0.630331, -0.563711, -0.533772,
		45.819221, 32.658916, 47.396275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.426643, 33.458485, 47.111614>,  <45.377991, 33.053513, 47.769917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.426643, 33.458485, 47.111614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.576778, 33.094105, 47.043148>,  <45.666859, 32.875477, 47.002068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.576778, 33.094105, 47.043148>,  <45.426643, 33.458485, 47.111614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.576778, 33.094105, 47.043148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485277, -0.035794, -0.873627,
		0.789702, 0.410965, -0.455497,
		0.375334, -0.910948, -0.171165,
		45.689377, 32.820820, 46.991798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.828197, 33.467228, 46.477272>,  <45.426643, 33.458485, 47.111614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.828197, 33.467228, 46.477272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.704937, 33.090366, 46.530010>,  <45.630981, 32.864250, 46.561653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.704937, 33.090366, 46.530010>,  <45.828197, 33.467228, 46.477272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.704937, 33.090366, 46.530010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398555, 0.002008, -0.917142,
		0.863828, -0.335165, -0.376120,
		-0.308149, -0.942157, 0.131847,
		45.612492, 32.807720, 46.569565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.956451, 33.162270, 45.816505>,  <45.828197, 33.467228, 46.477272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.956451, 33.162270, 45.816505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.695408, 32.913013, 45.988922>,  <45.538780, 32.763458, 46.092373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.695408, 32.913013, 45.988922>,  <45.956451, 33.162270, 45.816505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.695408, 32.913013, 45.988922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440347, -0.151029, -0.885034,
		0.616599, -0.767390, -0.175835,
		-0.652610, -0.623140, 0.431042,
		45.499626, 32.726070, 46.118237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.825108, 32.732716, 45.286896>,  <45.956451, 33.162270, 45.816505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.825108, 32.732716, 45.286896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.518978, 32.666496, 45.535690>,  <45.335300, 32.626762, 45.684967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.518978, 32.666496, 45.535690>,  <45.825108, 32.732716, 45.286896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.518978, 32.666496, 45.535690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574967, -0.258489, -0.776271,
		0.289289, -0.951723, 0.102643,
		-0.765327, -0.165550, 0.621987,
		45.289379, 32.616833, 45.722286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.544384, 31.993675, 45.171505>,  <45.825108, 32.732716, 45.286896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.544384, 31.993675, 45.171505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.248341, 32.207706, 45.334442>,  <45.070713, 32.336124, 45.432205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.248341, 32.207706, 45.334442>,  <45.544384, 31.993675, 45.171505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.248341, 32.207706, 45.334442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585214, -0.214058, -0.782115,
		-0.331301, -0.817232, 0.471563,
		-0.740111, 0.535081, 0.407338,
		45.026306, 32.368229, 45.456642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.854126, 31.583221, 45.138390>,  <45.544384, 31.993675, 45.171505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.854126, 31.583221, 45.138390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.753895, 31.962862, 45.214722>,  <44.693756, 32.190647, 45.260521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.753895, 31.962862, 45.214722>,  <44.854126, 31.583221, 45.138390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.753895, 31.962862, 45.214722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.771054, -0.076467, -0.632162,
		-0.585392, -0.305550, 0.750969,
		-0.250581, 0.949100, 0.190833,
		44.678719, 32.247593, 45.271973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.133205, 31.570509, 45.318111>,  <44.854126, 31.583221, 45.138390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.133205, 31.570509, 45.318111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.221958, 31.938133, 45.187820>,  <44.275211, 32.158707, 45.109646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.221958, 31.938133, 45.187820>,  <44.133205, 31.570509, 45.318111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.221958, 31.938133, 45.187820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.862071, 0.028805, -0.505968,
		-0.455632, 0.393064, 0.798687,
		0.221884, 0.919060, -0.325724,
		44.288525, 32.213852, 45.090103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.563042, 31.892365, 45.422970>,  <44.133205, 31.570509, 45.318111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.563042, 31.892365, 45.422970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.756207, 32.126472, 45.162430>,  <43.872105, 32.266937, 45.006107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.756207, 32.126472, 45.162430>,  <43.563042, 31.892365, 45.422970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.756207, 32.126472, 45.162430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.805581, 0.005339, -0.592461,
		-0.343273, 0.810820, 0.474061,
		0.482911, 0.585271, -0.651349,
		43.901081, 32.302055, 44.967026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.174614, 32.548965, 45.319176>,  <43.563042, 31.892365, 45.422970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.174614, 32.548965, 45.319176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.414845, 32.491276, 45.004593>,  <43.558983, 32.456661, 44.815845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.414845, 32.491276, 45.004593>,  <43.174614, 32.548965, 45.319176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.414845, 32.491276, 45.004593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.751961, 0.232458, -0.616862,
		0.271785, 0.961854, 0.031156,
		0.600573, -0.144225, -0.786454,
		43.595016, 32.448009, 44.768658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.864059, 33.001160, 44.841370>,  <43.174614, 32.548965, 45.319176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.864059, 33.001160, 44.841370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.102924, 32.767006, 44.622017>,  <43.246243, 32.626514, 44.490406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.102924, 32.767006, 44.622017>,  <42.864059, 33.001160, 44.841370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.102924, 32.767006, 44.622017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599339, 0.128736, -0.790075,
		0.533092, 0.800472, -0.273965,
		0.597164, -0.585381, -0.548383,
		43.282074, 32.591393, 44.457500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.790459, 33.327980, 44.214867>,  <42.864059, 33.001160, 44.841370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.790459, 33.327980, 44.214867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.963711, 32.976849, 44.133076>,  <43.067661, 32.766167, 44.084003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.963711, 32.976849, 44.133076>,  <42.790459, 33.327980, 44.214867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.963711, 32.976849, 44.133076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388294, 0.023002, -0.921248,
		0.813406, 0.478414, -0.330895,
		0.433127, -0.877833, -0.204475,
		43.093647, 32.713497, 44.071732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.023880, 33.445400, 43.569454>,  <42.790459, 33.327980, 44.214867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.023880, 33.445400, 43.569454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.016830, 33.047291, 43.607666>,  <43.012600, 32.808426, 43.630592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.016830, 33.047291, 43.607666>,  <43.023880, 33.445400, 43.569454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.016830, 33.047291, 43.607666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386585, -0.081329, -0.918661,
		0.922086, -0.053119, -0.383323,
		-0.017623, -0.995271, 0.095527,
		43.011543, 32.748711, 43.636326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.470188, 33.013309, 43.112801>,  <43.023880, 33.445400, 43.569454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.470188, 33.013309, 43.112801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.146641, 32.796780, 43.204628>,  <42.952511, 32.666862, 43.259724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.146641, 32.796780, 43.204628>,  <43.470188, 33.013309, 43.112801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.146641, 32.796780, 43.204628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194150, -0.122645, -0.973275,
		0.555013, -0.831821, -0.005895,
		-0.808867, -0.541325, 0.229567,
		42.903980, 32.634380, 43.273499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.371483, 32.602493, 42.590649>,  <43.470188, 33.013309, 43.112801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.371483, 32.602493, 42.590649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.021187, 32.524158, 42.767162>,  <42.811008, 32.477158, 42.873070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.021187, 32.524158, 42.767162>,  <43.371483, 32.602493, 42.590649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.021187, 32.524158, 42.767162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372729, -0.306690, -0.875793,
		0.306852, -0.931444, 0.195585,
		-0.875737, -0.195839, 0.441285,
		42.758465, 32.465408, 42.899548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.039970, 32.021194, 42.209621>,  <43.371483, 32.602493, 42.590649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.039970, 32.021194, 42.209621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.724567, 32.162342, 42.411110>,  <42.535324, 32.247032, 42.532005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.724567, 32.162342, 42.411110>,  <43.039970, 32.021194, 42.209621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.724567, 32.162342, 42.411110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614860, -0.471191, -0.632397,
		0.014196, -0.808370, 0.588504,
		-0.788509, 0.352870, 0.503723,
		42.488014, 32.268204, 42.562225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.535732, 31.440845, 42.096710>,  <43.039970, 32.021194, 42.209621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.535732, 31.440845, 42.096710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.342674, 31.772078, 42.210789>,  <42.226841, 31.970816, 42.279236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.342674, 31.772078, 42.210789>,  <42.535732, 31.440845, 42.096710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.342674, 31.772078, 42.210789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.790983, -0.272323, -0.547892,
		-0.376032, -0.490026, 0.786432,
		-0.482645, 0.828079, 0.285200,
		42.197880, 32.020500, 42.296349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.828671, 31.232460, 42.290623>,  <42.535732, 31.440845, 42.096710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.828671, 31.232460, 42.290623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.852745, 31.624125, 42.213039>,  <41.867191, 31.859123, 42.166489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.852745, 31.624125, 42.213039>,  <41.828671, 31.232460, 42.290623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.852745, 31.624125, 42.213039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.837958, -0.056026, -0.542851,
		-0.542406, 0.195202, 0.817124,
		0.060185, 0.979162, -0.193960,
		41.870800, 31.917873, 42.154850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.077194, 31.304220, 42.291069>,  <41.828671, 31.232460, 42.290623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.077194, 31.304220, 42.291069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.245468, 31.622789, 42.117294>,  <41.346432, 31.813931, 42.013031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.245468, 31.622789, 42.117294>,  <41.077194, 31.304220, 42.291069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.245468, 31.622789, 42.117294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607613, -0.108248, -0.786822,
		-0.673670, 0.594973, 0.438379,
		0.420684, 0.796423, -0.434436,
		41.371674, 31.861717, 41.986965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.561161, 31.623600, 41.873375>,  <41.077194, 31.304220, 42.291069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.561161, 31.623600, 41.873375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.914757, 31.739864, 41.726906>,  <41.126915, 31.809624, 41.639027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.914757, 31.739864, 41.726906>,  <40.561161, 31.623600, 41.873375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.914757, 31.739864, 41.726906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379989, -0.009557, -0.924942,
		-0.272343, 0.956779, 0.101999,
		0.883990, 0.290660, -0.366168,
		41.179955, 31.827063, 41.617054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.441879, 32.219910, 41.391994>,  <40.561161, 31.623600, 41.873375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.441879, 32.219910, 41.391994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.787418, 32.033497, 41.315483>,  <40.994740, 31.921650, 41.269577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.787418, 32.033497, 41.315483>,  <40.441879, 32.219910, 41.391994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.787418, 32.033497, 41.315483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229312, -0.025694, -0.973014,
		0.448540, 0.884395, -0.129062,
		0.863845, -0.466031, -0.191278,
		41.046574, 31.893688, 41.258099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.668121, 32.569767, 40.794601>,  <40.441879, 32.219910, 41.391994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.668121, 32.569767, 40.794601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.869015, 32.224178, 40.780060>,  <40.989552, 32.016827, 40.771336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.869015, 32.224178, 40.780060>,  <40.668121, 32.569767, 40.794601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.869015, 32.224178, 40.780060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207976, -0.079873, -0.974867,
		0.839352, 0.497169, -0.219800,
		0.502230, -0.863969, -0.036357,
		41.019684, 31.964987, 40.769154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.955448, 32.571266, 40.172256>,  <40.668121, 32.569767, 40.794601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.955448, 32.571266, 40.172256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.961273, 32.188538, 40.288383>,  <40.964767, 31.958900, 40.358059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.961273, 32.188538, 40.288383>,  <40.955448, 32.571266, 40.172256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.961273, 32.188538, 40.288383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190856, -0.287666, -0.938521,
		0.981510, -0.041741, -0.186804,
		0.014563, -0.956821, 0.290314,
		40.965641, 31.901491, 40.375477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.523361, 32.192280, 39.916164>,  <40.955448, 32.571266, 40.172256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.523361, 32.192280, 39.916164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.192120, 31.969139, 39.938240>,  <40.993374, 31.835255, 39.951485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.192120, 31.969139, 39.938240>,  <41.523361, 32.192280, 39.916164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.192120, 31.969139, 39.938240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029490, -0.141671, -0.989474,
		0.559803, -0.817757, 0.133769,
		-0.828101, -0.557855, 0.055192,
		40.943687, 31.801783, 39.954796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.643856, 31.563221, 39.575745>,  <41.523361, 32.192280, 39.916164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.643856, 31.563221, 39.575745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.248238, 31.621038, 39.587719>,  <41.010868, 31.655729, 39.594902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.248238, 31.621038, 39.587719>,  <41.643856, 31.563221, 39.575745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.248238, 31.621038, 39.587719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063487, -0.233482, -0.970286,
		-0.133255, -0.961559, 0.240101,
		-0.989046, 0.144539, 0.029934,
		40.951523, 31.664400, 39.596699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.402416, 31.048384, 39.141659>,  <41.643856, 31.563221, 39.575745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.402416, 31.048384, 39.141659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.101578, 31.310530, 39.169491>,  <40.921074, 31.467817, 39.186192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.101578, 31.310530, 39.169491>,  <41.402416, 31.048384, 39.141659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.101578, 31.310530, 39.169491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217737, -0.147434, -0.964808,
		-0.622044, -0.740781, 0.253582,
		-0.752098, 0.655367, 0.069585,
		40.875950, 31.507139, 39.190365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.769253, 30.702345, 38.938606>,  <41.402416, 31.048384, 39.141659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.769253, 30.702345, 38.938606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.729824, 31.095530, 38.876549>,  <40.706165, 31.331440, 38.839314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.729824, 31.095530, 38.876549>,  <40.769253, 30.702345, 38.938606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.729824, 31.095530, 38.876549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020359, -0.153879, -0.987880,
		-0.994921, -0.100540, -0.004843,
		-0.098576, 0.982961, -0.155145,
		40.700253, 31.390417, 38.830006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.370506, 30.808125, 38.228745>,  <40.769253, 30.702345, 38.938606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.370506, 30.808125, 38.228745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.495773, 31.182760, 38.291637>,  <40.570934, 31.407541, 38.329372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.495773, 31.182760, 38.291637>,  <40.370506, 30.808125, 38.228745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.495773, 31.182760, 38.291637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096888, 0.133191, -0.986343,
		-0.944741, 0.324130, -0.049032,
		0.313172, 0.936589, 0.157236,
		40.589725, 31.463737, 38.338810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.046726, 31.084023, 37.739399>,  <40.370506, 30.808125, 38.228745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.046726, 31.084023, 37.739399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.312038, 31.364389, 37.844299>,  <40.471226, 31.532610, 37.907238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.312038, 31.364389, 37.844299>,  <40.046726, 31.084023, 37.739399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.312038, 31.364389, 37.844299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139091, 0.228865, -0.963470,
		-0.735334, 0.675525, 0.054309,
		0.663278, 0.700918, 0.262251,
		40.511021, 31.574665, 37.922974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.750420, 31.637064, 37.543148>,  <40.046726, 31.084023, 37.739399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.750420, 31.637064, 37.543148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.146473, 31.693106, 37.542850>,  <40.384106, 31.726730, 37.542671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.146473, 31.693106, 37.542850>,  <39.750420, 31.637064, 37.543148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.146473, 31.693106, 37.542850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043282, 0.300829, -0.952695,
		-0.133254, 0.943331, 0.303926,
		0.990137, 0.140105, -0.000742,
		40.443512, 31.735138, 37.542629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.884758, 32.249435, 37.174168>,  <39.750420, 31.637064, 37.543148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.884758, 32.249435, 37.174168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.249634, 32.085529, 37.175209>,  <40.468559, 31.987186, 37.175835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.249634, 32.085529, 37.175209>,  <39.884758, 32.249435, 37.174168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.249634, 32.085529, 37.175209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192621, 0.423177, -0.885335,
		0.361678, 0.808093, 0.464946,
		0.912188, -0.409764, 0.002602,
		40.523289, 31.962601, 37.175991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.441708, 32.786842, 37.105553>,  <39.884758, 32.249435, 37.174168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.441708, 32.786842, 37.105553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.608543, 32.447819, 36.974293>,  <40.708645, 32.244404, 36.895538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.608543, 32.447819, 36.974293>,  <40.441708, 32.786842, 37.105553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.608543, 32.447819, 36.974293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242811, 0.451841, -0.858419,
		0.875828, 0.278364, 0.394256,
		0.417094, -0.847557, -0.328145,
		40.733673, 32.193550, 36.875851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.110680, 32.934929, 36.904102>,  <40.441708, 32.786842, 37.105553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.110680, 32.934929, 36.904102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.018688, 32.595028, 36.714355>,  <40.963493, 32.391087, 36.600506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.018688, 32.595028, 36.714355>,  <41.110680, 32.934929, 36.904102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.018688, 32.595028, 36.714355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502913, 0.313538, -0.805464,
		0.833180, -0.423808, 0.355245,
		-0.229979, -0.849754, -0.474372,
		40.949696, 32.340103, 36.572044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.752430, 32.679237, 36.542713>,  <41.110680, 32.934929, 36.904102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.752430, 32.679237, 36.542713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.437489, 32.496468, 36.377159>,  <41.248524, 32.386806, 36.277828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.437489, 32.496468, 36.377159>,  <41.752430, 32.679237, 36.542713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.437489, 32.496468, 36.377159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403239, 0.126137, -0.906360,
		0.466341, -0.880518, 0.084934,
		-0.787353, -0.456922, -0.413882,
		41.201283, 32.359390, 36.252995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.940998, 32.403206, 35.994366>,  <41.752430, 32.679237, 36.542713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.940998, 32.403206, 35.994366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.560825, 32.363823, 35.876389>,  <41.332722, 32.340195, 35.805603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.560825, 32.363823, 35.876389>,  <41.940998, 32.403206, 35.994366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.560825, 32.363823, 35.876389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265318, 0.237860, -0.934360,
		0.162149, -0.966296, -0.199947,
		-0.950428, -0.098456, -0.294945,
		41.275696, 32.334286, 35.787907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.004036, 32.010662, 35.354511>,  <41.940998, 32.403206, 35.994366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.004036, 32.010662, 35.354511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.646214, 32.189438, 35.355125>,  <41.431519, 32.296703, 35.355495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.646214, 32.189438, 35.355125>,  <42.004036, 32.010662, 35.354511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.646214, 32.189438, 35.355125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202644, 0.408659, -0.889907,
		-0.398368, -0.795763, -0.456140,
		-0.894561, 0.446944, 0.001540,
		41.377846, 32.323521, 35.355587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.860062, 32.128948, 35.374962>,  <42.004036, 32.010662, 35.354511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.860062, 32.128948, 35.374962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.120262, 31.849123, 35.256664>,  <43.276382, 31.681229, 35.185684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.120262, 31.849123, 35.256664>,  <42.860062, 32.128948, 35.374962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.120262, 31.849123, 35.256664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534004, 0.698160, -0.476878,
		0.540084, 0.152278, 0.827720,
		0.650499, -0.699560, -0.295748,
		43.315411, 31.639256, 35.167938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.596783, 32.304955, 35.595295>,  <42.860062, 32.128948, 35.374962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.596783, 32.304955, 35.595295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.564819, 32.127472, 35.238255>,  <43.545643, 32.020981, 35.024029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.564819, 32.127472, 35.238255>,  <43.596783, 32.304955, 35.595295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.564819, 32.127472, 35.238255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450528, 0.782706, -0.429412,
		0.889179, -0.436456, 0.137358,
		-0.079909, -0.443707, -0.892602,
		43.540848, 31.994360, 34.970474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.265911, 32.343403, 35.335308>,  <43.596783, 32.304955, 35.595295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.265911, 32.343403, 35.335308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.967484, 32.324753, 35.069614>,  <43.788429, 32.313564, 34.910198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.967484, 32.324753, 35.069614>,  <44.265911, 32.343403, 35.335308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.967484, 32.324753, 35.069614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290641, 0.874703, -0.387843,
		0.599094, -0.482411, -0.639035,
		-0.746066, -0.046624, -0.664238,
		43.743664, 32.310764, 34.870342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.599876, 32.647976, 34.876953>,  <44.265911, 32.343403, 35.335308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.599876, 32.647976, 34.876953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.211380, 32.660061, 34.782478>,  <43.978283, 32.667313, 34.725792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.211380, 32.660061, 34.782478>,  <44.599876, 32.647976, 34.876953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.211380, 32.660061, 34.782478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158009, 0.823842, -0.544350,
		0.178136, -0.566013, -0.804920,
		-0.971237, 0.030216, -0.236191,
		43.920010, 32.669125, 34.711620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.548809, 32.677200, 34.138119>,  <44.599876, 32.647976, 34.876953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.548809, 32.677200, 34.138119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.220276, 32.852234, 34.284508>,  <44.023155, 32.957253, 34.372341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.220276, 32.852234, 34.284508>,  <44.548809, 32.677200, 34.138119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.220276, 32.852234, 34.284508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079032, 0.722653, -0.686678,
		-0.564949, -0.535067, -0.628121,
		-0.821332, 0.437580, 0.365974,
		43.973877, 32.983509, 34.394299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.232632, 32.717911, 33.509163>,  <44.548809, 32.677200, 34.138119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.232632, 32.717911, 33.509163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.159824, 33.018414, 33.762932>,  <44.116142, 33.198715, 33.915192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.159824, 33.018414, 33.762932>,  <44.232632, 32.717911, 33.509163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.159824, 33.018414, 33.762932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186851, 0.607016, -0.772411,
		-0.965379, -0.259133, 0.029885,
		-0.182016, 0.751253, 0.634420,
		44.105221, 33.243790, 33.953259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.610092, 32.960297, 33.223682>,  <44.232632, 32.717911, 33.509163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.610092, 32.960297, 33.223682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.793331, 33.237267, 33.446640>,  <43.903275, 33.403450, 33.580414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.793331, 33.237267, 33.446640>,  <43.610092, 32.960297, 33.223682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.793331, 33.237267, 33.446640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193783, 0.689773, -0.697612,
		-0.867520, 0.211563, 0.450166,
		0.458101, 0.692427, 0.557394,
		43.930763, 33.444996, 33.613857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.420799, 33.512100, 32.866344>,  <43.610092, 32.960297, 33.223682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.420799, 33.512100, 32.866344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.668781, 33.688927, 33.125645>,  <43.817570, 33.795021, 33.281227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.668781, 33.688927, 33.125645>,  <43.420799, 33.512100, 32.866344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.668781, 33.688927, 33.125645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062799, 0.795578, -0.602587,
		-0.782120, 0.414287, 0.465462,
		0.619956, 0.442065, 0.648254,
		43.854767, 33.821545, 33.320122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.134617, 34.272316, 32.964699>,  <43.420799, 33.512100, 32.866344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.134617, 34.272316, 32.964699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.534538, 34.267422, 32.970821>,  <43.774490, 34.264484, 32.974495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.534538, 34.267422, 32.970821>,  <43.134617, 34.272316, 32.964699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.534538, 34.267422, 32.970821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017695, 0.899295, -0.436984,
		-0.008417, 0.437171, 0.899339,
		0.999808, -0.012236, 0.015305,
		43.834480, 34.263752, 32.975414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.319504, 34.873016, 33.246990>,  <43.134617, 34.272316, 32.964699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.319504, 34.873016, 33.246990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.634853, 34.761623, 33.027569>,  <43.824062, 34.694786, 32.895916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.634853, 34.761623, 33.027569>,  <43.319504, 34.873016, 33.246990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.634853, 34.761623, 33.027569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048374, 0.860855, -0.506546,
		0.613292, 0.425883, 0.665204,
		0.788374, -0.278482, -0.548557,
		43.871365, 34.678078, 32.863003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.775627, 35.463409, 33.124287>,  <43.319504, 34.873016, 33.246990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.775627, 35.463409, 33.124287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.889912, 35.216717, 32.830891>,  <43.958485, 35.068703, 32.654854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.889912, 35.216717, 32.830891>,  <43.775627, 35.463409, 33.124287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.889912, 35.216717, 32.830891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032287, 0.771160, -0.635822,
		0.957771, 0.157981, 0.240244,
		0.285715, -0.616728, -0.733494,
		43.975628, 35.031700, 32.610844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.392094, 35.692738, 32.900070>,  <43.775627, 35.463409, 33.124287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.392094, 35.692738, 32.900070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.263554, 35.484871, 32.583420>,  <44.186428, 35.360149, 32.393429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.263554, 35.484871, 32.583420>,  <44.392094, 35.692738, 32.900070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.263554, 35.484871, 32.583420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354007, 0.709432, -0.609414,
		0.878301, -0.476079, -0.044011,
		-0.321352, -0.519668, -0.791630,
		44.167149, 35.328972, 32.345932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.813717, 35.952625, 32.277084>,  <44.392094, 35.692738, 32.900070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.813717, 35.952625, 32.277084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.522110, 35.776962, 32.067066>,  <44.347145, 35.671566, 31.941055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.522110, 35.776962, 32.067066>,  <44.813717, 35.952625, 32.277084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.522110, 35.776962, 32.067066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133020, 0.661537, -0.738021,
		0.671448, -0.607870, -0.423853,
		-0.729015, -0.439162, -0.525047,
		44.303402, 35.645214, 31.909554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.013397, 35.848278, 31.589914>,  <44.813717, 35.952625, 32.277084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.013397, 35.848278, 31.589914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.616390, 35.842594, 31.541418>,  <44.378185, 35.839184, 31.512320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.616390, 35.842594, 31.541418>,  <45.013397, 35.848278, 31.589914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.616390, 35.842594, 31.541418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070617, 0.743305, -0.665215,
		0.099573, -0.668802, -0.736742,
		-0.992521, -0.014211, -0.121242,
		44.318634, 35.838329, 31.505045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.984314, 35.794086, 30.898739>,  <45.013397, 35.848278, 31.589914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.984314, 35.794086, 30.898739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.641281, 35.926754, 31.055990>,  <44.435463, 36.006355, 31.150341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.641281, 35.926754, 31.055990>,  <44.984314, 35.794086, 30.898739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.641281, 35.926754, 31.055990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030344, 0.730362, -0.682386,
		-0.513454, -0.597130, -0.616280,
		-0.857581, 0.331674, 0.393126,
		44.384007, 36.026257, 31.173927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.498199, 35.863785, 30.263102>,  <44.984314, 35.794086, 30.898739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.498199, 35.863785, 30.263102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.333740, 36.079075, 30.557386>,  <44.235065, 36.208248, 30.733957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.333740, 36.079075, 30.557386>,  <44.498199, 35.863785, 30.263102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.333740, 36.079075, 30.557386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291571, 0.687035, -0.665559,
		-0.863679, -0.488157, -0.125544,
		-0.411150, 0.538225, 0.735710,
		44.210396, 36.240543, 30.778099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.771648, 36.029919, 30.050419>,  <44.498199, 35.863785, 30.263102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.771648, 36.029919, 30.050419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.855274, 36.316216, 30.316954>,  <43.905449, 36.487995, 30.476873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.855274, 36.316216, 30.316954>,  <43.771648, 36.029919, 30.050419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.855274, 36.316216, 30.316954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303332, 0.695247, -0.651630,
		-0.929668, -0.065889, 0.362459,
		0.209064, 0.715745, 0.666335,
		43.917992, 36.530937, 30.516853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.238480, 36.462353, 29.976511>,  <43.771648, 36.029919, 30.050419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.238480, 36.462353, 29.976511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.534283, 36.664787, 30.154055>,  <43.711765, 36.786247, 30.260580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.534283, 36.664787, 30.154055>,  <43.238480, 36.462353, 29.976511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.534283, 36.664787, 30.154055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145875, 0.764188, -0.628282,
		-0.657153, 0.399871, 0.638947,
		0.739507, 0.506083, 0.443857,
		43.756134, 36.816612, 30.287212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.949505, 37.058510, 30.031031>,  <43.238480, 36.462353, 29.976511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.949505, 37.058510, 30.031031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.345486, 37.111618, 30.050495>,  <43.583073, 37.143482, 30.062174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.345486, 37.111618, 30.050495>,  <42.949505, 37.058510, 30.031031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.345486, 37.111618, 30.050495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048047, 0.639473, -0.767311,
		-0.132990, 0.757263, 0.639426,
		0.989952, 0.132767, 0.048659,
		43.642471, 37.151447, 30.065092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.095230, 37.792824, 30.034037>,  <42.949505, 37.058510, 30.031031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.095230, 37.792824, 30.034037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.444603, 37.634716, 29.920277>,  <43.654224, 37.539852, 29.852020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.444603, 37.634716, 29.920277>,  <43.095230, 37.792824, 30.034037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.444603, 37.634716, 29.920277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011575, 0.567024, -0.823620,
		0.486814, 0.722666, 0.490680,
		0.873429, -0.395270, -0.284400,
		43.706631, 37.516136, 29.834957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.403870, 38.404179, 29.749557>,  <43.095230, 37.792824, 30.034037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.403870, 38.404179, 29.749557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.604706, 38.089302, 29.606316>,  <43.725208, 37.900375, 29.520370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.604706, 38.089302, 29.606316>,  <43.403870, 38.404179, 29.749557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.604706, 38.089302, 29.606316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041906, 0.435742, -0.899095,
		0.863801, 0.436418, 0.251769,
		0.502088, -0.787190, -0.358106,
		43.755333, 37.853146, 29.498884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.977333, 38.685799, 29.305689>,  <43.403870, 38.404179, 29.749557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.977333, 38.685799, 29.305689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.938820, 38.306820, 29.183661>,  <43.915710, 38.079433, 29.110443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.938820, 38.306820, 29.183661>,  <43.977333, 38.685799, 29.305689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.938820, 38.306820, 29.183661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043603, 0.302187, -0.952251,
		0.994398, -0.104992, 0.012215,
		-0.096287, -0.947449, -0.305072,
		43.909935, 38.022587, 29.092138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.395847, 38.557735, 28.654722>,  <43.977333, 38.685799, 29.305689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.395847, 38.557735, 28.654722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.147053, 38.244839, 28.640675>,  <43.997776, 38.057102, 28.632246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.147053, 38.244839, 28.640675>,  <44.395847, 38.557735, 28.654722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.147053, 38.244839, 28.640675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061759, 0.093721, -0.993681,
		0.780589, -0.615886, -0.106603,
		-0.621986, -0.782241, -0.035121,
		43.960457, 38.010166, 28.630138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.743176, 38.024254, 28.227877>,  <44.395847, 38.557735, 28.654722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.743176, 38.024254, 28.227877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.348999, 37.956768, 28.236259>,  <44.112492, 37.916275, 28.241289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.348999, 37.956768, 28.236259>,  <44.743176, 38.024254, 28.227877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.348999, 37.956768, 28.236259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000468, -0.125947, -0.992037,
		0.170013, -0.977585, 0.124192,
		-0.985442, -0.168718, 0.020956,
		44.053368, 37.906155, 28.242546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.633457, 37.515308, 27.737568>,  <44.743176, 38.024254, 28.227877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.633457, 37.515308, 27.737568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.258621, 37.640377, 27.799665>,  <44.033718, 37.715416, 27.836924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.258621, 37.640377, 27.799665>,  <44.633457, 37.515308, 27.737568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.258621, 37.640377, 27.799665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234738, -0.235234, -0.943167,
		-0.258391, -0.920270, 0.293833,
		-0.937087, 0.312680, 0.155240,
		43.977493, 37.734177, 27.846239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.232769, 37.018177, 27.492563>,  <44.633457, 37.515308, 27.737568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.232769, 37.018177, 27.492563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.979706, 37.327942, 27.494785>,  <43.827866, 37.513802, 27.496119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.979706, 37.327942, 27.494785>,  <44.232769, 37.018177, 27.492563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.979706, 37.327942, 27.494785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270338, -0.214120, -0.938653,
		-0.725713, -0.595350, 0.344817,
		-0.632659, 0.774410, 0.005556,
		43.789909, 37.560265, 27.496452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.653973, 36.804169, 27.186747>,  <44.232769, 37.018177, 27.492563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.653973, 36.804169, 27.186747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.636726, 37.200485, 27.135418>,  <43.626377, 37.438274, 27.104620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.636726, 37.200485, 27.135418>,  <43.653973, 36.804169, 27.186747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.636726, 37.200485, 27.135418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093024, -0.131866, -0.986893,
		-0.994730, -0.030615, 0.097853,
		-0.043117, 0.990795, -0.128323,
		43.623791, 37.497723, 27.096920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.119453, 36.854847, 26.772854>,  <43.653973, 36.804169, 27.186747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.119453, 36.854847, 26.772854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.324501, 37.197620, 26.751331>,  <43.447529, 37.403282, 26.738417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.324501, 37.197620, 26.751331>,  <43.119453, 36.854847, 26.772854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.324501, 37.197620, 26.751331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056328, -0.028970, -0.997992,
		-0.856768, 0.514619, 0.033419,
		0.512617, 0.856929, -0.053808,
		43.478287, 37.454700, 26.735189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.762733, 37.273071, 26.223074>,  <43.119453, 36.854847, 26.772854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.762733, 37.273071, 26.223074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.119484, 37.452213, 26.248289>,  <43.333534, 37.559700, 26.263418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.119484, 37.452213, 26.248289>,  <42.762733, 37.273071, 26.223074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.119484, 37.452213, 26.248289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129926, -0.120205, -0.984210,
		-0.433210, 0.885987, -0.165397,
		0.891879, 0.447859, 0.063039,
		43.387047, 37.586571, 26.267200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.880501, 37.783985, 25.690439>,  <42.762733, 37.273071, 26.223074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.880501, 37.783985, 25.690439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.245159, 37.651478, 25.787735>,  <43.463955, 37.571972, 25.846113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.245159, 37.651478, 25.787735>,  <42.880501, 37.783985, 25.690439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.245159, 37.651478, 25.787735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244541, -0.038441, -0.968877,
		0.330308, 0.942753, 0.045964,
		0.911645, -0.331268, 0.243239,
		43.518654, 37.552097, 25.860706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.340481, 38.173210, 25.183670>,  <42.880501, 37.783985, 25.690439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.340481, 38.173210, 25.183670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.491302, 37.831253, 25.326212>,  <43.581795, 37.626080, 25.411737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.491302, 37.831253, 25.326212>,  <43.340481, 38.173210, 25.183670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.491302, 37.831253, 25.326212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351533, -0.223870, -0.909014,
		0.856885, 0.468023, 0.216109,
		0.377059, -0.854890, 0.356356,
		43.604420, 37.574787, 25.433119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.055595, 38.170551, 25.046614>,  <43.340481, 38.173210, 25.183670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.055595, 38.170551, 25.046614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.915203, 37.796543, 25.066847>,  <43.830967, 37.572140, 25.078987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.915203, 37.796543, 25.066847>,  <44.055595, 38.170551, 25.046614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.915203, 37.796543, 25.066847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313633, -0.168284, -0.934513,
		0.882297, -0.312131, 0.352316,
		-0.350980, -0.935016, 0.050582,
		43.809910, 37.516037, 25.082022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.480946, 37.993439, 24.532791>,  <44.055595, 38.170551, 25.046614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.480946, 37.993439, 24.532791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.221855, 37.700176, 24.615677>,  <44.066402, 37.524220, 24.665409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.221855, 37.700176, 24.615677>,  <44.480946, 37.993439, 24.532791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.221855, 37.700176, 24.615677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116526, -0.364112, -0.924037,
		0.752911, -0.574376, 0.321276,
		-0.647725, -0.733154, 0.207214,
		44.027538, 37.480228, 24.677841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.245144, 38.116413, 23.874159>,  <44.480946, 37.993439, 24.532791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.245144, 38.116413, 23.874159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.389828, 37.819077, 23.649086>,  <44.476639, 37.640675, 23.514042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.389828, 37.819077, 23.649086>,  <44.245144, 38.116413, 23.874159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.389828, 37.819077, 23.649086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325265, -0.465005, 0.823391,
		-0.873709, -0.480851, 0.073584,
		0.361712, -0.743339, -0.562683,
		44.498341, 37.596073, 23.480282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.859753, 37.395611, 23.949364>,  <44.245144, 38.116413, 23.874159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.859753, 37.395611, 23.949364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.238361, 37.333508, 23.836229>,  <44.465527, 37.296246, 23.768349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.238361, 37.333508, 23.836229>,  <43.859753, 37.395611, 23.949364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.238361, 37.333508, 23.836229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211474, -0.363532, 0.907262,
		-0.243679, -0.918553, -0.311257,
		0.946520, -0.155258, -0.282835,
		44.522316, 37.286930, 23.751379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.976028, 36.696491, 24.141678>,  <43.859753, 37.395611, 23.949364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.976028, 36.696491, 24.141678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.306320, 36.918648, 24.102251>,  <44.504494, 37.051941, 24.078594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.306320, 36.918648, 24.102251>,  <43.976028, 36.696491, 24.141678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.306320, 36.918648, 24.102251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391113, -0.437814, 0.809536,
		0.406456, -0.707006, -0.578736,
		0.825726, 0.555392, -0.098567,
		44.554039, 37.085266, 24.072681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.538670, 36.322582, 24.122969>,  <43.976028, 36.696491, 24.141678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.538670, 36.322582, 24.122969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.658802, 36.671329, 24.277710>,  <44.730881, 36.880577, 24.370554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.658802, 36.671329, 24.277710>,  <44.538670, 36.322582, 24.122969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.658802, 36.671329, 24.277710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419646, -0.484990, 0.767256,
		0.856563, -0.068089, -0.511531,
		0.300329, 0.871865, 0.386851,
		44.748901, 36.932888, 24.393764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.259235, 36.280453, 24.396801>,  <44.538670, 36.322582, 24.122969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.259235, 36.280453, 24.396801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.039768, 36.541870, 24.605358>,  <44.908089, 36.698719, 24.730492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.039768, 36.541870, 24.605358>,  <45.259235, 36.280453, 24.396801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.039768, 36.541870, 24.605358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346994, -0.389381, 0.853216,
		0.760634, 0.649048, -0.013137,
		-0.548663, 0.653543, 0.521392,
		44.875168, 36.737934, 24.761776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.686787, 36.312290, 24.952452>,  <45.259235, 36.280453, 24.396801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.686787, 36.312290, 24.952452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.314907, 36.430275, 25.040686>,  <45.091778, 36.501068, 25.093626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.314907, 36.430275, 25.040686>,  <45.686787, 36.312290, 24.952452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.314907, 36.430275, 25.040686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130286, -0.296813, 0.946006,
		0.344511, 0.908239, 0.237516,
		-0.929697, 0.294965, 0.220587,
		45.035999, 36.518764, 25.106861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.632957, 36.893272, 25.411486>,  <45.686787, 36.312290, 24.952452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.632957, 36.893272, 25.411486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.345173, 36.628468, 25.495499>,  <45.172501, 36.469585, 25.545906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.345173, 36.628468, 25.495499>,  <45.632957, 36.893272, 25.411486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.345173, 36.628468, 25.495499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458301, -0.225301, 0.859767,
		-0.521859, 0.714826, 0.465497,
		-0.719461, -0.662015, 0.210031,
		45.129333, 36.429863, 25.558508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.336182, 37.112499, 26.087944>,  <45.632957, 36.893272, 25.411486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.336182, 37.112499, 26.087944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.249516, 36.724335, 26.045317>,  <45.197514, 36.491436, 26.019741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.249516, 36.724335, 26.045317>,  <45.336182, 37.112499, 26.087944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.249516, 36.724335, 26.045317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254267, -0.161489, 0.953557,
		-0.942551, 0.179510, 0.281733,
		-0.216670, -0.970411, -0.106568,
		45.184513, 36.433212, 26.013346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.767925, 37.016357, 26.543957>,  <45.336182, 37.112499, 26.087944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.767925, 37.016357, 26.543957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.958931, 36.675247, 26.459328>,  <45.073532, 36.470581, 26.408550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.958931, 36.675247, 26.459328>,  <44.767925, 37.016357, 26.543957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.958931, 36.675247, 26.459328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369138, -0.023802, 0.929070,
		-0.797320, -0.521741, 0.303425,
		0.477512, -0.852772, -0.211572,
		45.102184, 36.419415, 26.395857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.562214, 36.471039, 27.094454>,  <44.767925, 37.016357, 26.543957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.562214, 36.471039, 27.094454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.924568, 36.401768, 26.939856>,  <45.141979, 36.360203, 26.847097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.924568, 36.401768, 26.939856>,  <44.562214, 36.471039, 27.094454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.924568, 36.401768, 26.939856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384083, -0.048613, 0.922018,
		-0.178467, -0.983689, 0.022479,
		0.905886, -0.173184, -0.386494,
		45.196335, 36.349812, 26.823908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.837605, 35.892452, 27.475872>,  <44.562214, 36.471039, 27.094454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.837605, 35.892452, 27.475872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.154755, 36.055191, 27.294401>,  <45.345047, 36.152832, 27.185518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.154755, 36.055191, 27.294401>,  <44.837605, 35.892452, 27.475872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.154755, 36.055191, 27.294401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485027, 0.029370, 0.874006,
		0.368909, -0.913025, -0.174044,
		0.792877, 0.406845, -0.453677,
		45.392616, 36.177246, 27.158298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.362877, 35.407871, 27.529400>,  <44.837605, 35.892452, 27.475872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.362877, 35.407871, 27.529400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.555973, 35.753689, 27.473495>,  <45.671829, 35.961178, 27.439953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.555973, 35.753689, 27.473495>,  <45.362877, 35.407871, 27.529400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.555973, 35.753689, 27.473495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516004, -0.151842, 0.843021,
		0.707605, -0.479074, -0.519406,
		0.482737, 0.864542, -0.139760,
		45.700794, 36.013050, 27.431568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.072578, 35.258667, 27.623693>,  <45.362877, 35.407871, 27.529400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.072578, 35.258667, 27.623693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.062244, 35.657108, 27.657412>,  <46.056046, 35.896175, 27.677643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.062244, 35.657108, 27.657412>,  <46.072578, 35.258667, 27.623693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.062244, 35.657108, 27.657412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600938, -0.051910, 0.797608,
		0.798878, 0.071260, -0.597257,
		-0.025834, 0.996106, 0.084293,
		46.054493, 35.955940, 27.682699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.777985, 35.409119, 27.818970>,  <46.072578, 35.258667, 27.623693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.777985, 35.409119, 27.818970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.583153, 35.745018, 27.914955>,  <46.466255, 35.946556, 27.972546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.583153, 35.745018, 27.914955>,  <46.777985, 35.409119, 27.818970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.583153, 35.745018, 27.914955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508203, 0.049067, 0.859838,
		0.710273, 0.540756, -0.450662,
		-0.487075, 0.839748, 0.239963,
		46.437031, 35.996941, 27.986944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.300682, 35.914234, 28.062801>,  <46.777985, 35.409119, 27.818970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.300682, 35.914234, 28.062801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.950214, 36.031456, 28.215878>,  <46.739933, 36.101788, 28.307722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.950214, 36.031456, 28.215878>,  <47.300682, 35.914234, 28.062801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.950214, 36.031456, 28.215878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411194, 0.040184, 0.910662,
		0.251492, 0.955252, -0.155708,
		-0.876168, 0.293050, 0.382689,
		46.687363, 36.119370, 28.330685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.465977, 36.406910, 28.616764>,  <47.300682, 35.914234, 28.062801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.465977, 36.406910, 28.616764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.092468, 36.290424, 28.699959>,  <46.868362, 36.220531, 28.749876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.092468, 36.290424, 28.699959>,  <47.465977, 36.406910, 28.616764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.092468, 36.290424, 28.699959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211860, 0.018541, 0.977124,
		-0.288409, 0.956478, 0.044384,
		-0.933775, -0.291215, 0.207987,
		46.812336, 36.203060, 28.762356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.231915, 36.785061, 29.123066>,  <47.465977, 36.406910, 28.616764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.231915, 36.785061, 29.123066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.970753, 36.483707, 29.154383>,  <46.814056, 36.302895, 29.173172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.970753, 36.483707, 29.154383>,  <47.231915, 36.785061, 29.123066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.970753, 36.483707, 29.154383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152343, -0.029365, 0.987891,
		-0.741960, 0.656928, 0.133946,
		-0.652907, -0.753381, 0.078291,
		46.774879, 36.257694, 29.177870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.850193, 36.981094, 29.793591>,  <47.231915, 36.785061, 29.123066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.850193, 36.981094, 29.793591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.759480, 36.599873, 29.713333>,  <46.705051, 36.371140, 29.665178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.759480, 36.599873, 29.713333>,  <46.850193, 36.981094, 29.793591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.759480, 36.599873, 29.713333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138554, -0.235485, 0.961951,
		-0.964040, 0.190353, 0.185453,
		-0.226782, -0.953054, -0.200643,
		46.691444, 36.313957, 29.653141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.434002, 36.796379, 30.348507>,  <46.850193, 36.981094, 29.793591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.434002, 36.796379, 30.348507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.553944, 36.436081, 30.222813>,  <46.625908, 36.219902, 30.147396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.553944, 36.436081, 30.222813>,  <46.434002, 36.796379, 30.348507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.553944, 36.436081, 30.222813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041758, -0.341468, 0.938965,
		-0.953070, -0.268432, -0.140005,
		0.299856, -0.900746, -0.314234,
		46.643902, 36.165855, 30.128542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.946495, 36.347321, 30.673939>,  <46.434002, 36.796379, 30.348507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.946495, 36.347321, 30.673939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.257706, 36.120197, 30.566404>,  <46.444431, 35.983921, 30.501884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.257706, 36.120197, 30.566404>,  <45.946495, 36.347321, 30.673939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.257706, 36.120197, 30.566404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095044, -0.529379, 0.843045,
		-0.621004, -0.630357, -0.465836,
		0.778023, -0.567809, -0.268835,
		46.491112, 35.949856, 30.485754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.684784, 35.641232, 30.733124>,  <45.946495, 36.347321, 30.673939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.684784, 35.641232, 30.733124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.082474, 35.658264, 30.772522>,  <46.321087, 35.668484, 30.796162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.082474, 35.658264, 30.772522>,  <45.684784, 35.641232, 30.733124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.082474, 35.658264, 30.772522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052931, -0.603851, 0.795338,
		0.093342, -0.795959, -0.598111,
		0.994226, 0.042580, 0.098495,
		46.380741, 35.671040, 30.802071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.909992, 34.960682, 30.889490>,  <45.684784, 35.641232, 30.733124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.909992, 34.960682, 30.889490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.209377, 35.178696, 31.040617>,  <46.389008, 35.309505, 31.131292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.209377, 35.178696, 31.040617>,  <45.909992, 34.960682, 30.889490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.209377, 35.178696, 31.040617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045088, -0.526567, 0.848937,
		0.661647, -0.652430, -0.369539,
		0.748459, 0.545035, 0.377818,
		46.433914, 35.342205, 31.153963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.319244, 34.416405, 31.419991>,  <45.909992, 34.960682, 30.889490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.319244, 34.416405, 31.419991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.439671, 34.785664, 31.515623>,  <46.511925, 35.007217, 31.573004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.439671, 34.785664, 31.515623>,  <46.319244, 34.416405, 31.419991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.439671, 34.785664, 31.515623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163358, -0.296935, 0.940821,
		0.939508, -0.244190, -0.240199,
		0.301062, 0.923147, 0.239082,
		46.529987, 35.062607, 31.587347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.996243, 34.430042, 31.750862>,  <46.319244, 34.416405, 31.419991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.996243, 34.430042, 31.750862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.829014, 34.766396, 31.888346>,  <46.728676, 34.968208, 31.970835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.829014, 34.766396, 31.888346>,  <46.996243, 34.430042, 31.750862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.829014, 34.766396, 31.888346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221870, -0.272384, 0.936259,
		0.880903, 0.467681, -0.072690,
		-0.418071, 0.840881, 0.343708,
		46.703594, 35.018661, 31.991459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.279343, 34.557251, 32.379265>,  <46.996243, 34.430042, 31.750862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.279343, 34.557251, 32.379265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.979965, 34.818855, 32.423267>,  <46.800339, 34.975819, 32.449669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.979965, 34.818855, 32.423267>,  <47.279343, 34.557251, 32.379265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.979965, 34.818855, 32.423267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020565, -0.142906, 0.989523,
		0.662876, 0.742867, 0.093508,
		-0.748447, 0.654008, 0.110006,
		46.755432, 35.015057, 32.456268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.484116, 35.018925, 32.862991>,  <47.279343, 34.557251, 32.379265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.484116, 35.018925, 32.862991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.085167, 35.047844, 32.864864>,  <46.845798, 35.065193, 32.865986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.085167, 35.047844, 32.864864>,  <47.484116, 35.018925, 32.862991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.085167, 35.047844, 32.864864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001340, -0.046180, 0.998932,
		0.072432, 0.996314, 0.045962,
		-0.997372, 0.072293, 0.004679,
		46.785954, 35.069530, 32.866268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.206955, 35.585022, 33.324707>,  <47.484116, 35.018925, 32.862991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.206955, 35.585022, 33.324707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.895550, 35.335739, 33.294952>,  <46.708706, 35.186169, 33.277100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.895550, 35.335739, 33.294952>,  <47.206955, 35.585022, 33.324707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.895550, 35.335739, 33.294952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086542, -0.010798, 0.996190,
		-0.621633, 0.781985, -0.045527,
		-0.778514, -0.623204, -0.074387,
		46.661995, 35.148777, 33.272636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.584808, 35.882244, 33.816101>,  <47.206955, 35.585022, 33.324707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.584808, 35.882244, 33.816101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.540283, 35.492741, 33.736694>,  <46.513569, 35.259041, 33.689049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.540283, 35.492741, 33.736694>,  <46.584808, 35.882244, 33.816101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.540283, 35.492741, 33.736694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163123, -0.179145, 0.970205,
		-0.980306, 0.140378, -0.138901,
		-0.111312, -0.973756, -0.198516,
		46.506889, 35.200615, 33.677139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.987427, 35.401047, 34.229744>,  <46.584808, 35.882244, 33.816101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.987427, 35.401047, 34.229744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.030605, 35.035465, 34.386223>,  <47.056511, 34.816116, 34.480110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.030605, 35.035465, 34.386223>,  <46.987427, 35.401047, 34.229744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.030605, 35.035465, 34.386223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.784220, 0.320128, 0.531524,
		-0.611022, 0.249412, 0.751296,
		0.107943, -0.913954, 0.391199,
		47.062988, 34.761280, 34.503582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.122787, 35.347370, 35.021317>,  <46.987427, 35.401047, 34.229744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.122787, 35.347370, 35.021317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.300816, 35.039993, 34.837399>,  <47.407631, 34.855568, 34.727047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.300816, 35.039993, 34.837399>,  <47.122787, 35.347370, 35.021317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.300816, 35.039993, 34.837399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.892083, 0.335665, 0.302517,
		-0.078128, -0.544819, 0.834906,
		0.445066, -0.768441, -0.459799,
		47.434334, 34.809460, 34.699459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.562313, 34.886841, 35.553925>,  <47.122787, 35.347370, 35.021317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.562313, 34.886841, 35.553925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.682728, 34.907791, 35.173054>,  <47.754974, 34.920361, 34.944530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.682728, 34.907791, 35.173054>,  <47.562313, 34.886841, 35.553925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.682728, 34.907791, 35.173054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.940085, 0.151286, 0.305535,
		0.160055, -0.987101, -0.003699,
		0.301035, 0.052379, -0.952173,
		47.773037, 34.923504, 34.887402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<42.147411, 35.693352, 43.570721> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.801567, 35.795326, 43.743908>,  <41.594063, 35.856510, 43.847820>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.801567, 35.795326, 43.743908>,  <42.147411, 35.693352, 43.570721>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.801567, 35.795326, 43.743908> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481756, -0.175871, -0.858475,
		-0.142708, -0.950830, 0.274876,
		-0.864607, 0.254934, 0.432970,
		41.542187, 35.871807, 43.873798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.644703, 35.248287, 43.358833>,  <42.147411, 35.693352, 43.570721>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.644703, 35.248287, 43.358833> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.413300, 35.560135, 43.454769>,  <41.274456, 35.747242, 43.512329>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.413300, 35.560135, 43.454769>,  <41.644703, 35.248287, 43.358833>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.413300, 35.560135, 43.454769> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451250, -0.060955, -0.890313,
		-0.679487, -0.623279, 0.387067,
		-0.578507, 0.779620, 0.239836,
		41.239746, 35.794022, 43.526722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.922234, 35.055103, 43.311317>,  <41.644703, 35.248287, 43.358833>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.922234, 35.055103, 43.311317> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.937431, 35.452797, 43.271221>,  <40.946548, 35.691414, 43.247162>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.937431, 35.452797, 43.271221>,  <40.922234, 35.055103, 43.311317>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.937431, 35.452797, 43.271221> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583448, -0.059367, -0.809978,
		-0.811262, 0.089259, 0.577830,
		0.037994, 0.994238, -0.100240,
		40.948830, 35.751068, 43.241150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.262142, 35.168793, 43.187283>,  <40.922234, 35.055103, 43.311317>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.262142, 35.168793, 43.187283> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.445515, 35.495491, 43.047127>,  <40.555538, 35.691509, 42.963036>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.445515, 35.495491, 43.047127>,  <40.262142, 35.168793, 43.187283>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.445515, 35.495491, 43.047127> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584583, -0.019836, -0.811091,
		-0.669403, 0.576661, 0.468360,
		0.458434, 0.816742, -0.350385,
		40.583046, 35.740513, 42.942013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.632015, 35.646397, 43.002666>,  <40.262142, 35.168793, 43.187283>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.632015, 35.646397, 43.002666> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.954918, 35.788849, 42.814407>,  <40.148659, 35.874321, 42.701450>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.954918, 35.788849, 42.814407>,  <39.632015, 35.646397, 43.002666>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.954918, 35.788849, 42.814407> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581766, 0.345801, -0.736187,
		-0.099429, 0.868097, 0.486335,
		0.807256, 0.356131, -0.470646,
		40.197094, 35.895687, 42.673214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.435230, 36.220142, 42.796875>,  <39.632015, 35.646397, 43.002666>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.435230, 36.220142, 42.796875> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.732903, 36.116852, 42.550457>,  <39.911507, 36.054878, 42.402607>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.732903, 36.116852, 42.550457>,  <39.435230, 36.220142, 42.796875>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.732903, 36.116852, 42.550457> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579444, 0.209261, -0.787689,
		0.332319, 0.943148, 0.006099,
		0.744183, -0.258230, -0.616043,
		39.956158, 36.039383, 42.365643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.189781, 36.409481, 42.160133>,  <39.435230, 36.220142, 42.796875>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.189781, 36.409481, 42.160133> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.484833, 36.195717, 41.995056>,  <39.661861, 36.067459, 41.896011>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.484833, 36.195717, 41.995056>,  <39.189781, 36.409481, 42.160133>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.484833, 36.195717, 41.995056> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458602, 0.052067, -0.887115,
		0.495572, 0.843619, -0.206677,
		0.737626, -0.534412, -0.412688,
		39.706120, 36.035393, 41.871250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.415226, 36.713806, 41.479301>,  <39.189781, 36.409481, 42.160133>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.415226, 36.713806, 41.479301> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.549049, 36.336979, 41.469608>,  <39.629341, 36.110882, 41.463791>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.549049, 36.336979, 41.469608>,  <39.415226, 36.713806, 41.479301>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.549049, 36.336979, 41.469608> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435558, -0.131775, -0.890463,
		0.835680, 0.308465, -0.454410,
		0.334556, -0.942064, -0.024233,
		39.649418, 36.054359, 41.462337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.519230, 36.623478, 40.749298>,  <39.415226, 36.713806, 41.479301>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.519230, 36.623478, 40.749298> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.511486, 36.249424, 40.890804>,  <39.506840, 36.024990, 40.975708>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.511486, 36.249424, 40.890804>,  <39.519230, 36.623478, 40.749298>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.511486, 36.249424, 40.890804> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424979, -0.312578, -0.849522,
		0.904996, -0.166786, -0.391362,
		-0.019357, -0.935135, 0.353763,
		39.505680, 35.968884, 40.996933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.942497, 36.136841, 40.311386>,  <39.519230, 36.623478, 40.749298>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.942497, 36.136841, 40.311386> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.660976, 35.929237, 40.505417>,  <39.492065, 35.804676, 40.621834>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.660976, 35.929237, 40.505417>,  <39.942497, 36.136841, 40.311386>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.660976, 35.929237, 40.505417> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377506, -0.305192, -0.874269,
		0.601793, -0.798429, 0.018866,
		-0.703800, -0.519007, 0.485074,
		39.449837, 35.773537, 40.650940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.902210, 35.487213, 39.981964>,  <39.942497, 36.136841, 40.311386>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.902210, 35.487213, 39.981964> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.561428, 35.478119, 40.191212>,  <39.356960, 35.472664, 40.316761>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.561428, 35.478119, 40.191212>,  <39.902210, 35.487213, 39.981964>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.561428, 35.478119, 40.191212> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474014, -0.390948, -0.788968,
		0.222447, -0.920132, 0.322295,
		-0.851956, -0.022731, 0.523120,
		39.305840, 35.471298, 40.348148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.647987, 34.842728, 39.858170>,  <39.902210, 35.487213, 39.981964>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.647987, 34.842728, 39.858170> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.343266, 35.088947, 39.938923>,  <39.160435, 35.236679, 39.987373>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.343266, 35.088947, 39.938923>,  <39.647987, 34.842728, 39.858170>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.343266, 35.088947, 39.938923> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524482, -0.403139, -0.749931,
		-0.380226, -0.677189, 0.629955,
		-0.761805, 0.615544, 0.201889,
		39.114727, 35.273613, 39.999489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.186234, 34.425510, 39.668816>,  <39.647987, 34.842728, 39.858170>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.186234, 34.425510, 39.668816> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.002228, 34.775871, 39.727032>,  <38.891827, 34.986088, 39.761963>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.002228, 34.775871, 39.727032>,  <39.186234, 34.425510, 39.668816>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.002228, 34.775871, 39.727032> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583184, -0.174447, -0.793388,
		-0.669543, -0.449845, 0.591060,
		-0.460010, 0.875904, 0.145542,
		38.864223, 35.038643, 39.770695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.502010, 34.289745, 39.606491>,  <39.186234, 34.425510, 39.668816>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.502010, 34.289745, 39.606491> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.525372, 34.678463, 39.515102>,  <38.539391, 34.911694, 39.460270>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.525372, 34.678463, 39.515102>,  <38.502010, 34.289745, 39.606491>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.525372, 34.678463, 39.515102> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511192, -0.167469, -0.842993,
		-0.857480, 0.166029, 0.486993,
		0.058405, 0.971797, -0.228474,
		38.542892, 34.970001, 39.446560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.797066, 34.485275, 39.275105>,  <38.502010, 34.289745, 39.606491>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.797066, 34.485275, 39.275105> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.006409, 34.814735, 39.187740>,  <38.132015, 35.012409, 39.135323>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.006409, 34.814735, 39.187740>,  <37.797066, 34.485275, 39.275105>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.006409, 34.814735, 39.187740> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474892, 0.069103, -0.877327,
		-0.707516, 0.562875, 0.427309,
		0.523354, 0.823648, -0.218414,
		38.163414, 35.061829, 39.122215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.337444, 35.038280, 38.937260>,  <37.797066, 34.485275, 39.275105>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.337444, 35.038280, 38.937260> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.712948, 35.084225, 38.807308>,  <37.938248, 35.111790, 38.729336>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.712948, 35.084225, 38.807308>,  <37.337444, 35.038280, 38.937260>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.712948, 35.084225, 38.807308> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331764, 0.046471, -0.942217,
		-0.093125, 0.992294, 0.081732,
		0.938755, 0.114860, -0.324880,
		37.994576, 35.118683, 38.709843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.243099, 35.449162, 38.372349>,  <37.337444, 35.038280, 38.937260>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.243099, 35.449162, 38.372349> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.616055, 35.316231, 38.315491>,  <37.839828, 35.236473, 38.281376>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.616055, 35.316231, 38.315491>,  <37.243099, 35.449162, 38.372349>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.616055, 35.316231, 38.315491> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125500, 0.071149, -0.989539,
		0.338965, 0.940476, 0.024631,
		0.932391, -0.332328, -0.142146,
		37.895771, 35.216534, 38.272846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.520493, 35.846256, 37.769836>,  <37.243099, 35.449162, 38.372349>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.520493, 35.846256, 37.769836> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.767128, 35.532883, 37.800949>,  <37.915108, 35.344860, 37.819618>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.767128, 35.532883, 37.800949>,  <37.520493, 35.846256, 37.769836>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.767128, 35.532883, 37.800949> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055542, -0.055270, -0.996925,
		0.785324, 0.619012, 0.009434,
		0.616588, -0.783434, 0.077786,
		37.952103, 35.297852, 37.824284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.968075, 35.924465, 37.256893>,  <37.520493, 35.846256, 37.769836>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.968075, 35.924465, 37.256893> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.008476, 35.534630, 37.336864>,  <38.032719, 35.300728, 37.384846>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.008476, 35.534630, 37.336864>,  <37.968075, 35.924465, 37.256893>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.008476, 35.534630, 37.336864> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028649, -0.198022, -0.979779,
		0.994473, 0.104689, 0.007920,
		0.101004, -0.974591, 0.199927,
		38.038776, 35.242252, 37.396843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.497131, 35.632481, 36.827003>,  <37.968075, 35.924465, 37.256893>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.497131, 35.632481, 36.827003> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.275284, 35.320206, 36.942188>,  <38.142178, 35.132839, 37.011299>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.275284, 35.320206, 36.942188>,  <38.497131, 35.632481, 36.827003>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.275284, 35.320206, 36.942188> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083361, -0.292196, -0.952718,
		0.827920, -0.552399, 0.096977,
		-0.554617, -0.780690, 0.287963,
		38.108898, 35.085999, 37.028576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.777573, 35.061127, 36.375107>,  <38.497131, 35.632481, 36.827003>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.777573, 35.061127, 36.375107> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.428570, 34.917782, 36.507965>,  <38.219170, 34.831776, 36.587681>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.428570, 34.917782, 36.507965>,  <38.777573, 35.061127, 36.375107>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.428570, 34.917782, 36.507965> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031956, -0.636464, -0.770644,
		0.487564, -0.683003, 0.543865,
		-0.872502, -0.358358, 0.332143,
		38.166821, 34.810276, 36.607609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.874115, 34.337238, 36.224205>,  <38.777573, 35.061127, 36.375107>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.874115, 34.337238, 36.224205> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.483299, 34.410458, 36.267818>,  <38.248810, 34.454388, 36.293987>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.483299, 34.410458, 36.267818>,  <38.874115, 34.337238, 36.224205>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.483299, 34.410458, 36.267818> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199622, -0.607597, -0.768750,
		-0.074466, -0.772865, 0.630186,
		-0.977040, 0.183045, 0.109035,
		38.190186, 34.465370, 36.300529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.351528, 34.334469, 35.642914>,  <38.874115, 34.337238, 36.224205>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.351528, 34.334469, 35.642914> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.704666, 34.315250, 35.456036>,  <39.916550, 34.303719, 35.343910>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.704666, 34.315250, 35.456036>,  <39.351528, 34.334469, 35.642914>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.704666, 34.315250, 35.456036> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462861, -0.079609, 0.882849,
		-0.079609, -0.995668, -0.048045,
		-0.882849, 0.048045, 0.467194,
		39.969521, 34.300838, 35.315876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.739185, 33.795036, 35.974312>,  <39.351528, 34.334469, 35.642914>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.739185, 33.795036, 35.974312> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.037231, 34.006523, 35.811699>,  <40.216057, 34.133415, 35.714130>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.037231, 34.006523, 35.811699>,  <39.739185, 33.795036, 35.974312>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.037231, 34.006523, 35.811699> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470323, 0.015622, 0.882356,
		0.472871, -0.848652, -0.237029,
		0.745111, 0.528721, -0.406528,
		40.260765, 34.165138, 35.689739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.333435, 33.447754, 36.034206>,  <39.739185, 33.795036, 35.974312>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.333435, 33.447754, 36.034206> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.450291, 33.829357, 36.007309>,  <40.520405, 34.058319, 35.991173>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.450291, 33.829357, 36.007309>,  <40.333435, 33.447754, 36.034206>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.450291, 33.829357, 36.007309> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290210, -0.021438, 0.956723,
		0.911280, -0.299012, -0.283126,
		0.292142, 0.954008, -0.067240,
		40.537933, 34.115559, 35.987137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.054222, 33.572430, 36.155815>,  <40.333435, 33.447754, 36.034206>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.054222, 33.572430, 36.155815> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.921291, 33.940762, 36.237419>,  <40.841534, 34.161762, 36.286381>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.921291, 33.940762, 36.237419>,  <41.054222, 33.572430, 36.155815>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.921291, 33.940762, 36.237419> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572655, 0.025131, 0.819411,
		0.749415, 0.389144, -0.535672,
		-0.332331, 0.920834, 0.204012,
		40.821590, 34.217010, 36.298622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.674648, 34.031784, 36.245060>,  <41.054222, 33.572430, 36.155815>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.674648, 34.031784, 36.245060> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.372990, 34.234077, 36.412628>,  <41.191994, 34.355453, 36.513168>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.372990, 34.234077, 36.412628>,  <41.674648, 34.031784, 36.245060>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.372990, 34.234077, 36.412628> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609752, 0.302367, 0.732651,
		0.243857, 0.807965, -0.536401,
		-0.754146, 0.505733, 0.418924,
		41.146748, 34.385796, 36.538307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.917976, 34.631180, 36.503651>,  <41.674648, 34.031784, 36.245060>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.917976, 34.631180, 36.503651> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.578861, 34.592033, 36.712139>,  <41.375393, 34.568546, 36.837231>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.578861, 34.592033, 36.712139>,  <41.917976, 34.631180, 36.503651>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.578861, 34.592033, 36.712139> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483511, 0.261124, 0.835483,
		-0.217865, 0.960332, -0.174062,
		-0.847792, -0.097861, 0.521221,
		41.324524, 34.562675, 36.868504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.028145, 35.177711, 36.905212>,  <41.917976, 34.631180, 36.503651>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.028145, 35.177711, 36.905212> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.733433, 34.962872, 37.069492>,  <41.556606, 34.833965, 37.168060>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.733433, 34.962872, 37.069492>,  <42.028145, 35.177711, 36.905212>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.733433, 34.962872, 37.069492> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407296, 0.132284, 0.903665,
		-0.539691, 0.833079, 0.121297,
		-0.736779, -0.537104, 0.410702,
		41.512398, 34.801739, 37.192703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.655319, 35.607494, 37.440971>,  <42.028145, 35.177711, 36.905212>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.655319, 35.607494, 37.440971> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.597965, 35.226978, 37.550144>,  <41.563553, 34.998669, 37.615650>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.597965, 35.226978, 37.550144>,  <41.655319, 35.607494, 37.440971>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.597965, 35.226978, 37.550144> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327498, 0.214638, 0.920150,
		-0.933908, 0.221326, 0.280768,
		-0.143389, -0.951286, 0.272936,
		41.554947, 34.941593, 37.632027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.472263, 35.740044, 38.145691>,  <41.655319, 35.607494, 37.440971>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.472263, 35.740044, 38.145691> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.514694, 35.343231, 38.118481>,  <41.540154, 35.105145, 38.102154>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.514694, 35.343231, 38.118481>,  <41.472263, 35.740044, 38.145691>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.514694, 35.343231, 38.118481> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322735, -0.030360, 0.946002,
		-0.940527, -0.122303, 0.316941,
		0.106077, -0.992029, -0.068026,
		41.546516, 35.045624, 38.098072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.257252, 35.453358, 38.748871>,  <41.472263, 35.740044, 38.145691>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.257252, 35.453358, 38.748871> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.534039, 35.183559, 38.645916>,  <41.700111, 35.021683, 38.584145>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.534039, 35.183559, 38.645916>,  <41.257252, 35.453358, 38.748871>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.534039, 35.183559, 38.645916> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392950, 0.052809, 0.918042,
		-0.605619, -0.736392, 0.301583,
		0.691965, -0.674491, -0.257383,
		41.741627, 34.981213, 38.568703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.296955, 35.059559, 39.249653>,  <41.257252, 35.453358, 38.748871>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.296955, 35.059559, 39.249653> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.629932, 34.941658, 39.061966>,  <41.829720, 34.870918, 38.949352>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.629932, 34.941658, 39.061966>,  <41.296955, 35.059559, 39.249653>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.629932, 34.941658, 39.061966> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426835, -0.198886, 0.882188,
		-0.353348, -0.934647, -0.039749,
		0.832440, -0.294753, -0.469216,
		41.879665, 34.853233, 38.921200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.482906, 34.354172, 39.411415>,  <41.296955, 35.059559, 39.249653>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.482906, 34.354172, 39.411415> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.824902, 34.533531, 39.307159>,  <42.030098, 34.641148, 39.244606>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.824902, 34.533531, 39.307159>,  <41.482906, 34.354172, 39.411415>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.824902, 34.533531, 39.307159> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373963, -0.184774, 0.908851,
		0.359366, -0.874529, -0.325663,
		0.854990, 0.448396, -0.260640,
		42.081398, 34.668049, 39.228966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.166050, 33.919285, 39.697334>,  <41.482906, 34.354172, 39.411415>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.166050, 33.919285, 39.697334> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.259781, 34.298599, 39.611687>,  <42.316017, 34.526188, 39.560299>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.259781, 34.298599, 39.611687>,  <42.166050, 33.919285, 39.697334>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.259781, 34.298599, 39.611687> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364233, 0.118571, 0.923729,
		0.901347, -0.294441, -0.317612,
		0.234324, 0.948285, -0.214119,
		42.330078, 34.583084, 39.547451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.883507, 34.032867, 40.044060>,  <42.166050, 33.919285, 39.697334>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.883507, 34.032867, 40.044060> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.740925, 34.400551, 39.977123>,  <42.655376, 34.621159, 39.936962>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.740925, 34.400551, 39.977123>,  <42.883507, 34.032867, 40.044060>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.740925, 34.400551, 39.977123> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485481, 0.335254, 0.807411,
		0.798279, 0.206561, -0.565759,
		-0.356453, 0.919205, -0.167345,
		42.633987, 34.676311, 39.926918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.377468, 34.340210, 40.263020>,  <42.883507, 34.032867, 40.044060>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.377468, 34.340210, 40.263020> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.104397, 34.632408, 40.270325>,  <42.940556, 34.807728, 40.274708>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.104397, 34.632408, 40.270325>,  <43.377468, 34.340210, 40.263020>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.104397, 34.632408, 40.270325> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459029, 0.409274, 0.788535,
		0.568546, 0.546696, -0.614719,
		-0.682677, 0.730492, 0.018259,
		42.899593, 34.851555, 40.275803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.693024, 34.973709, 40.287468>,  <43.377468, 34.340210, 40.263020>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.693024, 34.973709, 40.287468> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.329407, 35.036427, 40.441898>,  <43.111237, 35.074059, 40.534557>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.329407, 35.036427, 40.441898>,  <43.693024, 34.973709, 40.287468>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.329407, 35.036427, 40.441898> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416680, 0.352073, 0.838106,
		-0.004516, 0.922745, -0.385383,
		-0.909042, 0.156797, 0.386080,
		43.056694, 35.083466, 40.557724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.880913, 35.557728, 40.626938>,  <43.693024, 34.973709, 40.287468>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.880913, 35.557728, 40.626938> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.512943, 35.455105, 40.745548>,  <43.292164, 35.393532, 40.816715>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.512943, 35.455105, 40.745548>,  <43.880913, 35.557728, 40.626938>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.512943, 35.455105, 40.745548> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259822, 0.167530, 0.951013,
		-0.293662, 0.951900, -0.087456,
		-0.919921, -0.256553, 0.296522,
		43.236965, 35.378139, 40.834503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.514938, 36.143177, 40.871017>,  <43.880913, 35.557728, 40.626938>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.514938, 36.143177, 40.871017> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.370277, 35.815868, 41.049740>,  <43.283482, 35.619484, 41.156975>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.370277, 35.815868, 41.049740>,  <43.514938, 36.143177, 40.871017>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.370277, 35.815868, 41.049740> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195418, 0.402068, 0.894513,
		-0.911603, 0.410816, 0.014497,
		-0.361651, -0.818274, 0.446807,
		43.261784, 35.570385, 41.183781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<43.159004, 36.428322, 41.511032> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.196159, 36.034317, 41.569168>,  <43.218452, 35.797913, 41.604050>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.196159, 36.034317, 41.569168>,  <43.159004, 36.428322, 41.511032>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.196159, 36.034317, 41.569168> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154462, 0.158462, 0.975208,
		-0.983623, -0.068132, 0.166865,
		0.092885, -0.985012, 0.145343,
		43.224026, 35.738815, 41.612770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.681614, 36.208248, 42.076759>,  <43.159004, 36.428322, 41.511032>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.681614, 36.208248, 42.076759> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.958496, 35.919643, 42.070164>,  <43.124626, 35.746479, 42.066208>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.958496, 35.919643, 42.070164>,  <42.681614, 36.208248, 42.076759>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.958496, 35.919643, 42.070164> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151226, 0.122666, 0.980859,
		-0.705679, -0.681450, 0.194021,
		0.692206, -0.721512, -0.016490,
		43.166157, 35.703190, 42.065216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.466793, 35.698757, 42.630600>,  <42.681614, 36.208248, 42.076759>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.466793, 35.698757, 42.630600> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.855427, 35.629211, 42.566349>,  <43.088608, 35.587482, 42.527798>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.855427, 35.629211, 42.566349>,  <42.466793, 35.698757, 42.630600>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.855427, 35.629211, 42.566349> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137812, -0.136235, 0.981044,
		-0.192458, -0.975299, -0.108402,
		0.971580, -0.173871, -0.160627,
		43.146900, 35.577053, 42.518162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.578167, 35.090355, 42.929623>,  <42.466793, 35.698757, 42.630600>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.578167, 35.090355, 42.929623> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.930656, 35.277515, 42.902744>,  <43.142151, 35.389812, 42.886616>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.930656, 35.277515, 42.902744>,  <42.578167, 35.090355, 42.929623>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.930656, 35.277515, 42.902744> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172972, -0.186884, 0.967034,
		0.439917, -0.863796, -0.245620,
		0.881223, 0.467900, -0.067199,
		43.195023, 35.417885, 42.882584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.937138, 34.763824, 43.377663>,  <42.578167, 35.090355, 42.929623>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.937138, 34.763824, 43.377663> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.121815, 35.113201, 43.315762>,  <43.232620, 35.322826, 43.278622>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.121815, 35.113201, 43.315762>,  <42.937138, 34.763824, 43.377663>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.121815, 35.113201, 43.315762> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302769, 0.008818, 0.953023,
		0.833771, -0.486856, -0.260379,
		0.461689, 0.873438, -0.154757,
		43.260323, 35.375233, 43.269333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.724743, 34.701328, 43.496178>,  <42.937138, 34.763824, 43.377663>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.724743, 34.701328, 43.496178> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.633823, 35.084190, 43.567932>,  <43.579269, 35.313908, 43.610985>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.633823, 35.084190, 43.567932>,  <43.724743, 34.701328, 43.496178>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.633823, 35.084190, 43.567932> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535458, -0.031019, 0.843992,
		0.813400, 0.287894, -0.505468,
		-0.227301, 0.957160, 0.179386,
		43.565632, 35.371338, 43.621746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.401745, 34.909290, 43.684887>,  <43.724743, 34.701328, 43.496178>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.401745, 34.909290, 43.684887> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.139065, 35.192039, 43.790020>,  <43.981457, 35.361691, 43.853100>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.139065, 35.192039, 43.790020>,  <44.401745, 34.909290, 43.684887>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.139065, 35.192039, 43.790020> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579657, 0.250158, 0.775512,
		0.482439, 0.661628, -0.574021,
		-0.656696, 0.706873, 0.262832,
		43.942055, 35.404102, 43.868870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.775669, 35.359070, 44.022518>,  <44.401745, 34.909290, 43.684887>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.775669, 35.359070, 44.022518> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.410362, 35.451382, 44.156792>,  <44.191177, 35.506767, 44.237354>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.410362, 35.451382, 44.156792>,  <44.775669, 35.359070, 44.022518>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.410362, 35.451382, 44.156792> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387452, 0.237651, 0.890731,
		0.125786, 0.943538, -0.306455,
		-0.913268, 0.230778, 0.335683,
		44.136383, 35.520615, 44.257496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.783939, 36.083111, 44.235806>,  <44.775669, 35.359070, 44.022518>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.783939, 36.083111, 44.235806> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.479477, 35.909492, 44.428577>,  <44.296799, 35.805321, 44.544239>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.479477, 35.909492, 44.428577>,  <44.783939, 36.083111, 44.235806>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.479477, 35.909492, 44.428577> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435297, 0.208958, 0.875701,
		-0.480795, 0.876323, 0.029889,
		-0.761152, -0.434044, 0.481927,
		44.251133, 35.779278, 44.573154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.721680, 36.563667, 44.873943>,  <44.783939, 36.083111, 44.235806>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.721680, 36.563667, 44.873943> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.508205, 36.240322, 44.973331>,  <44.380123, 36.046314, 45.032963>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.508205, 36.240322, 44.973331>,  <44.721680, 36.563667, 44.873943>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.508205, 36.240322, 44.973331> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274424, 0.112372, 0.955020,
		-0.799921, 0.577865, 0.161862,
		-0.533684, -0.808359, 0.248469,
		44.348099, 35.997814, 45.047871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.457573, 36.692055, 45.521839>,  <44.721680, 36.563667, 44.873943>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.457573, 36.692055, 45.521839> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.432682, 36.297108, 45.463547>,  <44.417747, 36.060139, 45.428574>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.432682, 36.297108, 45.463547>,  <44.457573, 36.692055, 45.521839>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.432682, 36.297108, 45.463547> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443564, -0.158160, 0.882177,
		-0.894080, -0.009740, 0.447803,
		-0.062232, -0.987366, -0.145728,
		44.414013, 36.000896, 45.419830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.054035, 36.301750, 46.151455>,  <44.457573, 36.692055, 45.521839>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.054035, 36.301750, 46.151455> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.306942, 36.034122, 45.995209>,  <44.458687, 35.873547, 45.901463>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.306942, 36.034122, 45.995209>,  <44.054035, 36.301750, 46.151455>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.306942, 36.034122, 45.995209> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298110, -0.255262, 0.919767,
		-0.715097, -0.697988, 0.038062,
		0.632271, -0.669069, -0.390614,
		44.496624, 35.833401, 45.878025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.124378, 35.811115, 46.660717>,  <44.054035, 36.301750, 46.151455>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.124378, 35.811115, 46.660717> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.426407, 35.739952, 46.408302>,  <44.607624, 35.697254, 46.256851>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.426407, 35.739952, 46.408302>,  <44.124378, 35.811115, 46.660717>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.426407, 35.739952, 46.408302> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545251, -0.364095, 0.755074,
		-0.364095, -0.914212, -0.177912,
		-0.755074, 0.177912, 0.631040,
		44.652927, 35.686577, 46.218990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.247345, 35.128155, 46.644497>,  <44.124378, 35.811115, 46.660717>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.247345, 35.128155, 46.644497> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.596542, 35.287739, 46.532272>,  <44.806061, 35.383488, 46.464939>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.596542, 35.287739, 46.532272>,  <44.247345, 35.128155, 46.644497>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.596542, 35.287739, 46.532272> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461116, -0.487699, 0.741297,
		0.158921, -0.776517, -0.609725,
		0.872993, 0.398962, -0.280559,
		44.858440, 35.407429, 46.448105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.686104, 34.774807, 47.066887>,  <44.247345, 35.128155, 46.644497>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.686104, 34.774807, 47.066887> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.931637, 35.057411, 46.926006>,  <45.078957, 35.226974, 46.841480>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.931637, 35.057411, 46.926006>,  <44.686104, 34.774807, 47.066887>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.931637, 35.057411, 46.926006> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620361, -0.155790, 0.768688,
		0.488220, -0.690339, -0.533923,
		0.613835, 0.706514, -0.352199,
		45.115788, 35.269363, 46.820347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.418629, 34.462864, 47.001373>,  <44.686104, 34.774807, 47.066887>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.418629, 34.462864, 47.001373> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.439114, 34.860798, 47.036427>,  <45.451405, 35.099560, 47.057457>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.439114, 34.860798, 47.036427>,  <45.418629, 34.462864, 47.001373>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.439114, 34.860798, 47.036427> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607262, -0.100679, 0.788097,
		0.792850, 0.012858, -0.609281,
		0.051209, 0.994836, 0.087631,
		45.454475, 35.159248, 47.062717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.109665, 34.596508, 47.107590>,  <45.418629, 34.462864, 47.001373>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.109665, 34.596508, 47.107590> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.976624, 34.959332, 47.210831>,  <45.896797, 35.177025, 47.272774>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.976624, 34.959332, 47.210831>,  <46.109665, 34.596508, 47.107590>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.976624, 34.959332, 47.210831> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548530, -0.036555, 0.835331,
		0.767131, 0.419410, -0.485392,
		-0.332603, 0.907061, 0.258101,
		45.876842, 35.231449, 47.288261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.681992, 35.067070, 47.257710>,  <46.109665, 34.596508, 47.107590>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.681992, 35.067070, 47.257710> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.368690, 35.193958, 47.471588>,  <46.180710, 35.270092, 47.599915>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.368690, 35.193958, 47.471588>,  <46.681992, 35.067070, 47.257710>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.368690, 35.193958, 47.471588> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519895, -0.137426, 0.843103,
		0.340927, 0.938343, -0.057281,
		-0.783248, 0.317217, 0.534692,
		46.133717, 35.289124, 47.631996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.994400, 35.288326, 47.901112>,  <46.681992, 35.067070, 47.257710>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.994400, 35.288326, 47.901112> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.605507, 35.235981, 47.978722>,  <46.372173, 35.204575, 48.025288>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.605507, 35.235981, 47.978722>,  <46.994400, 35.288326, 47.901112>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.605507, 35.235981, 47.978722> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221546, -0.247450, 0.943232,
		-0.075422, 0.960023, 0.269570,
		-0.972229, -0.130863, 0.194026,
		46.313839, 35.196724, 48.036930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.786503, 35.673756, 48.494476>,  <46.994400, 35.288326, 47.901112>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.786503, 35.673756, 48.494476> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.510334, 35.386494, 48.459656>,  <46.344631, 35.214138, 48.438763>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.510334, 35.386494, 48.459656>,  <46.786503, 35.673756, 48.494476>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.510334, 35.386494, 48.459656> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168206, -0.276402, 0.946208,
		-0.703581, 0.638639, 0.311631,
		-0.690421, -0.718152, -0.087048,
		46.303207, 35.171047, 48.433540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.337620, 35.731457, 49.063789>,  <46.786503, 35.673756, 48.494476>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.337620, 35.731457, 49.063789> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.304359, 35.358509, 48.923061>,  <46.284405, 35.134743, 48.838623>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.304359, 35.358509, 48.923061>,  <46.337620, 35.731457, 49.063789>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.304359, 35.358509, 48.923061> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259686, -0.361120, 0.895631,
		-0.962107, -0.016895, 0.272149,
		-0.083147, -0.932366, -0.351823,
		46.279415, 35.078800, 48.817513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.961880, 35.395546, 49.547894>,  <46.337620, 35.731457, 49.063789>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.961880, 35.395546, 49.547894> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.167809, 35.108185, 49.360767>,  <46.291367, 34.935768, 49.248489>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.167809, 35.108185, 49.360767>,  <45.961880, 35.395546, 49.547894>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.167809, 35.108185, 49.360767> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161359, -0.454736, 0.875887,
		-0.841975, -0.526412, -0.118187,
		0.514821, -0.718405, -0.467818,
		46.322254, 34.892662, 49.220421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.691875, 34.693073, 49.598087>,  <45.961880, 35.395546, 49.547894>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.691875, 34.693073, 49.598087> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.089489, 34.673855, 49.558922>,  <46.328056, 34.662323, 49.535423>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.089489, 34.673855, 49.558922>,  <45.691875, 34.693073, 49.598087>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.089489, 34.673855, 49.558922> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076502, -0.332714, 0.939920,
		-0.077733, -0.941803, -0.327053,
		0.994035, -0.048043, -0.097913,
		46.387699, 34.659443, 49.529549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.682598, 34.650291, 50.375042>,  <45.691875, 34.693073, 49.598087>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.682598, 34.650291, 50.375042> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.482803, 34.726803, 50.713020>,  <45.362926, 34.772709, 50.915806>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.482803, 34.726803, 50.713020>,  <45.682598, 34.650291, 50.375042>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.482803, 34.726803, 50.713020> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.812782, 0.234088, -0.533467,
		-0.299831, -0.953213, 0.038543,
		-0.499486, 0.191277, 0.844942,
		45.332958, 34.784187, 50.966503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.115574, 34.230076, 50.474892>,  <45.682598, 34.650291, 50.375042>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.115574, 34.230076, 50.474892> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.060329, 34.600834, 50.614483>,  <45.027184, 34.823288, 50.698238>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.060329, 34.600834, 50.614483>,  <45.115574, 34.230076, 50.474892>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.060329, 34.600834, 50.614483> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.698470, 0.158654, -0.697831,
		-0.702185, -0.340129, 0.625498,
		-0.138115, 0.926898, 0.348975,
		45.018894, 34.878902, 50.719177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.354893, 34.399269, 50.669556>,  <45.115574, 34.230076, 50.474892>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.354893, 34.399269, 50.669556> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.554264, 34.740124, 50.605759>,  <44.673885, 34.944637, 50.567482>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.554264, 34.740124, 50.605759>,  <44.354893, 34.399269, 50.669556>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.554264, 34.740124, 50.605759> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.740156, 0.322489, -0.590059,
		-0.451375, 0.412151, 0.791450,
		0.498427, 0.852134, -0.159493,
		44.703793, 34.995766, 50.557911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.831139, 34.851963, 50.560505>,  <44.354893, 34.399269, 50.669556>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.831139, 34.851963, 50.560505> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.136879, 35.079796, 50.439613>,  <44.320324, 35.216496, 50.367077>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.136879, 35.079796, 50.439613>,  <43.831139, 34.851963, 50.560505>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.136879, 35.079796, 50.439613> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635853, 0.588000, -0.499947,
		-0.107051, 0.574309, 0.811610,
		0.764350, 0.569584, -0.302230,
		44.366184, 35.250671, 50.348946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.650936, 35.545475, 50.726460>,  <43.831139, 34.851963, 50.560505>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.650936, 35.545475, 50.726460> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.904121, 35.577301, 50.418427>,  <44.056034, 35.596397, 50.233608>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.904121, 35.577301, 50.418427>,  <43.650936, 35.545475, 50.726460>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.904121, 35.577301, 50.418427> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.706997, 0.464715, -0.533099,
		0.315455, 0.881878, 0.350397,
		0.632964, 0.079561, -0.770082,
		44.094009, 35.601170, 50.187401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.369999, 36.169609, 50.380947>,  <43.650936, 35.545475, 50.726460>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.369999, 36.169609, 50.380947> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.637760, 35.991283, 50.143242>,  <43.798416, 35.884289, 50.000618>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.637760, 35.991283, 50.143242>,  <43.369999, 36.169609, 50.380947>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.637760, 35.991283, 50.143242> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521164, 0.288255, -0.803304,
		0.529423, 0.847444, -0.039383,
		0.669402, -0.445812, -0.594266,
		43.838581, 35.857540, 49.964962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.414879, 36.609543, 49.787323>,  <43.369999, 36.169609, 50.380947>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.414879, 36.609543, 49.787323> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.532833, 36.236801, 49.702766>,  <43.603607, 36.013157, 49.652031>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.532833, 36.236801, 49.702766>,  <43.414879, 36.609543, 49.787323>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.532833, 36.236801, 49.702766> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556808, 0.012210, -0.830552,
		0.776535, 0.362624, -0.515264,
		0.294886, -0.931856, -0.211393,
		43.621300, 35.957245, 49.639347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.505138, 36.639011, 49.094791>,  <43.414879, 36.609543, 49.787323>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.505138, 36.639011, 49.094791> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.463341, 36.248951, 49.172928>,  <43.438263, 36.014915, 49.219810>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.463341, 36.248951, 49.172928>,  <43.505138, 36.639011, 49.094791>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.463341, 36.248951, 49.172928> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.650518, -0.081553, -0.755100,
		0.752269, -0.205973, -0.625833,
		-0.104492, -0.975154, 0.195339,
		43.431992, 35.956406, 49.231529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.506813, 36.367352, 48.505806>,  <43.505138, 36.639011, 49.094791>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.506813, 36.367352, 48.505806> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.325161, 36.077316, 48.712887>,  <43.216167, 35.903297, 48.837135>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.325161, 36.077316, 48.712887>,  <43.506813, 36.367352, 48.505806>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.325161, 36.077316, 48.712887> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472658, -0.296487, -0.829873,
		0.755220, -0.621569, -0.208072,
		-0.454133, -0.725084, 0.517703,
		43.188923, 35.859791, 48.868198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.689075, 35.827499, 48.066166>,  <43.506813, 36.367352, 48.505806>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.689075, 35.827499, 48.066166> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.379955, 35.683846, 48.275471>,  <43.194481, 35.597652, 48.401054>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.379955, 35.683846, 48.275471>,  <43.689075, 35.827499, 48.066166>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.379955, 35.683846, 48.275471> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413660, -0.340248, -0.844463,
		0.481310, -0.869055, 0.114387,
		-0.772804, -0.359131, 0.523257,
		43.148113, 35.576107, 48.432449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.664017, 35.185551, 47.928051>,  <43.689075, 35.827499, 48.066166>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.664017, 35.185551, 47.928051> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.290340, 35.284508, 48.030884>,  <43.066135, 35.343884, 48.092583>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.290340, 35.284508, 48.030884>,  <43.664017, 35.185551, 47.928051>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.290340, 35.284508, 48.030884> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327278, -0.307281, -0.893570,
		-0.142067, -0.918899, 0.368024,
		-0.934187, 0.247393, 0.257082,
		43.010086, 35.358727, 48.108009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.312271, 34.822727, 47.398510>,  <43.664017, 35.185551, 47.928051>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.312271, 34.822727, 47.398510> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.037766, 35.048443, 47.582081>,  <42.873062, 35.183872, 47.692223>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.037766, 35.048443, 47.582081>,  <43.312271, 34.822727, 47.398510>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.037766, 35.048443, 47.582081> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492842, 0.103268, -0.863969,
		-0.534923, -0.819091, 0.207238,
		-0.686268, 0.564293, 0.458923,
		42.831886, 35.217731, 47.719757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.764141, 34.512569, 47.168209>,  <43.312271, 34.822727, 47.398510>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.764141, 34.512569, 47.168209> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.675362, 34.884830, 47.284569>,  <42.622093, 35.108189, 47.354385>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.675362, 34.884830, 47.284569>,  <42.764141, 34.512569, 47.168209>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.675362, 34.884830, 47.284569> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586471, 0.110922, -0.802339,
		-0.778967, -0.348680, 0.521183,
		-0.221949, 0.930655, 0.290895,
		42.608776, 35.164028, 47.371838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.269047, 34.650852, 46.796021>,  <42.764141, 34.512569, 47.168209>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.269047, 34.650852, 46.796021> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.319912, 35.027981, 46.919254>,  <42.350430, 35.254257, 46.993195>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.319912, 35.027981, 46.919254>,  <42.269047, 34.650852, 46.796021>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.319912, 35.027981, 46.919254> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432146, 0.332235, -0.838373,
		-0.892794, -0.026530, 0.449684,
		0.127159, 0.942824, 0.308082,
		42.358059, 35.310829, 47.011681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.597836, 34.994598, 46.580807>,  <42.269047, 34.650852, 46.796021>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.597836, 34.994598, 46.580807> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.883987, 35.271160, 46.621189>,  <42.055679, 35.437096, 46.645416>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.883987, 35.271160, 46.621189>,  <41.597836, 34.994598, 46.580807>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.883987, 35.271160, 46.621189> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330869, 0.462451, -0.822596,
		-0.615432, 0.555067, 0.559593,
		0.715380, 0.691404, 0.100953,
		42.098602, 35.478580, 46.651474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.186741, 35.600025, 46.418049>,  <41.597836, 34.994598, 46.580807>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.186741, 35.600025, 46.418049> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.572765, 35.699467, 46.384949>,  <41.804382, 35.759132, 46.365089>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.572765, 35.699467, 46.384949>,  <41.186741, 35.600025, 46.418049>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.572765, 35.699467, 46.384949> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198166, 0.485949, -0.851225,
		-0.171405, 0.837884, 0.518237,
		0.965065, 0.248601, -0.082746,
		41.862286, 35.774048, 46.360126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.186333, 36.302517, 46.186806>,  <41.186741, 35.600025, 46.418049>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.186333, 36.302517, 46.186806> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.553486, 36.173103, 46.094875>,  <41.773777, 36.095455, 46.039715>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.553486, 36.173103, 46.094875>,  <41.186333, 36.302517, 46.186806>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.553486, 36.173103, 46.094875> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093916, 0.385586, -0.917880,
		0.385586, 0.864088, 0.323536,
		0.917880, -0.323536, -0.229828,
		41.828850, 36.076042, 46.025928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.497375, 36.800091, 45.893482>,  <41.186333, 36.302517, 46.186806>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.497375, 36.800091, 45.893482> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.654789, 36.457314, 45.760345>,  <41.749237, 36.251648, 45.680462>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.654789, 36.457314, 45.760345>,  <41.497375, 36.800091, 45.893482>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.654789, 36.457314, 45.760345> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057359, 0.338465, -0.939229,
		0.917518, 0.388713, 0.084045,
		0.393537, -0.856938, -0.332844,
		41.772850, 36.200233, 45.660492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.959515, 36.987583, 45.247700>,  <41.497375, 36.800091, 45.893482>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.959515, 36.987583, 45.247700> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.891922, 36.595165, 45.209763>,  <41.851364, 36.359715, 45.187000>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.891922, 36.595165, 45.209763>,  <41.959515, 36.987583, 45.247700>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.891922, 36.595165, 45.209763> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368917, 0.152191, -0.916918,
		0.913972, -0.119957, -0.387642,
		-0.168986, -0.981045, -0.094844,
		41.841225, 36.300854, 45.181309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.170700, 36.838081, 44.642040>,  <41.959515, 36.987583, 45.247700>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.170700, 36.838081, 44.642040> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.937111, 36.515469, 44.678864>,  <41.796955, 36.321899, 44.700958>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.937111, 36.515469, 44.678864>,  <42.170700, 36.838081, 44.642040>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.937111, 36.515469, 44.678864> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191926, 0.026987, -0.981038,
		0.788757, -0.590570, -0.170555,
		-0.583974, -0.806535, 0.092060,
		41.761917, 36.273510, 44.706482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.246532, 36.529270, 44.071110>,  <42.170700, 36.838081, 44.642040>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.246532, 36.529270, 44.071110> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.909481, 36.348301, 44.187923>,  <41.707249, 36.239719, 44.258011>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.909481, 36.348301, 44.187923>,  <42.246532, 36.529270, 44.071110>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.909481, 36.348301, 44.187923> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313715, -0.028347, -0.949094,
		0.437670, -0.891353, -0.118046,
		-0.842632, -0.452422, 0.292038,
		41.656693, 36.212574, 44.275536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<44.603497, 37.830711, 26.448948> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.207058, 37.832462, 26.395731>,  <43.969193, 37.833511, 26.363800>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.207058, 37.832462, 26.395731>,  <44.603497, 37.830711, 26.448948>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.207058, 37.832462, 26.395731> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133089, -0.053125, 0.989679,
		-0.002735, 0.998578, 0.053235,
		-0.991100, 0.004378, -0.133045,
		43.909729, 37.833775, 26.355818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.262295, 38.503380, 26.638319>,  <44.603497, 37.830711, 26.448948>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.262295, 38.503380, 26.638319> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.007729, 38.195496, 26.658382>,  <43.854988, 38.010765, 26.670420>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.007729, 38.195496, 26.658382>,  <44.262295, 38.503380, 26.638319>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.007729, 38.195496, 26.658382> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009121, 0.072530, 0.997325,
		-0.771292, 0.634256, -0.053180,
		-0.636417, -0.769713, 0.050157,
		43.816803, 37.964581, 26.673429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.559433, 38.749142, 26.937725>,  <44.262295, 38.503380, 26.638319>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.559433, 38.749142, 26.937725> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.581924, 38.352329, 26.982838>,  <43.595417, 38.114243, 27.009905>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.581924, 38.352329, 26.982838>,  <43.559433, 38.749142, 26.937725>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.581924, 38.352329, 26.982838> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075304, 0.108423, 0.991248,
		-0.995574, -0.064226, -0.068607,
		0.056226, -0.992028, 0.112780,
		43.598793, 38.054722, 27.016672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.003292, 38.619511, 27.396797>,  <43.559433, 38.749142, 26.937725>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.003292, 38.619511, 27.396797> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.231113, 38.290981, 27.409746>,  <43.367805, 38.093864, 27.417515>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.231113, 38.290981, 27.409746>,  <43.003292, 38.619511, 27.396797>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.231113, 38.290981, 27.409746> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106642, -0.034786, 0.993689,
		-0.815010, -0.569407, -0.107399,
		0.569549, -0.821319, 0.032372,
		43.401978, 38.044586, 27.419458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.771687, 38.217842, 27.922836>,  <43.003292, 38.619511, 27.396797>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.771687, 38.217842, 27.922836> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.138832, 38.064278, 27.882555>,  <43.359119, 37.972137, 27.858385>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.138832, 38.064278, 27.882555>,  <42.771687, 38.217842, 27.922836>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.138832, 38.064278, 27.882555> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045688, -0.354238, 0.934038,
		-0.394266, -0.852716, -0.342681,
		0.917860, -0.383916, -0.100706,
		43.414192, 37.949104, 27.852345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.741508, 37.665321, 28.371588>,  <42.771687, 38.217842, 27.922836>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.741508, 37.665321, 28.371588> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.134388, 37.692310, 28.301460>,  <43.370113, 37.708504, 28.259384>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.134388, 37.692310, 28.301460>,  <42.741508, 37.665321, 28.371588>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.134388, 37.692310, 28.301460> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185678, -0.206973, 0.960565,
		0.028529, -0.976017, -0.215817,
		0.982196, 0.067476, -0.175320,
		43.429047, 37.712555, 28.248865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.037521, 37.149921, 28.775742>,  <42.741508, 37.665321, 28.371588>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.037521, 37.149921, 28.775742> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.357967, 37.378468, 28.704460>,  <43.550236, 37.515594, 28.661692>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.357967, 37.378468, 28.704460>,  <43.037521, 37.149921, 28.775742>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.357967, 37.378468, 28.704460> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284951, -0.102276, 0.953070,
		0.526327, -0.814297, -0.244746,
		0.801114, 0.571367, -0.178204,
		43.598301, 37.549877, 28.650999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.654118, 36.754543, 28.964952>,  <43.037521, 37.149921, 28.775742>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.654118, 36.754543, 28.964952> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.753826, 37.141911, 28.962828>,  <43.813652, 37.374332, 28.961552>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.753826, 37.141911, 28.962828>,  <43.654118, 36.754543, 28.964952>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.753826, 37.141911, 28.962828> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414531, -0.101740, 0.904330,
		0.875229, -0.227629, -0.426800,
		0.249274, 0.968418, -0.005313,
		43.828609, 37.432438, 28.961233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.394741, 36.828651, 29.008842>,  <43.654118, 36.754543, 28.964952>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.394741, 36.828651, 29.008842> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.193768, 37.138206, 29.163065>,  <44.073185, 37.323940, 29.255598>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.193768, 37.138206, 29.163065>,  <44.394741, 36.828651, 29.008842>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.193768, 37.138206, 29.163065> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489975, -0.112563, 0.864439,
		0.712380, 0.623238, -0.322631,
		-0.502434, 0.773889, 0.385558,
		44.043037, 37.370373, 29.278732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.866306, 37.168755, 29.448177>,  <44.394741, 36.828651, 29.008842>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.866306, 37.168755, 29.448177> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.497761, 37.254295, 29.578014>,  <44.276634, 37.305618, 29.655916>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.497761, 37.254295, 29.578014>,  <44.866306, 37.168755, 29.448177>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.497761, 37.254295, 29.578014> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269619, -0.249922, 0.929970,
		0.279998, 0.944355, 0.172611,
		-0.921361, 0.213850, 0.324594,
		44.221352, 37.318451, 29.675392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.876682, 37.486675, 30.160490>,  <44.866306, 37.168755, 29.448177>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.876682, 37.486675, 30.160490> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.494553, 37.372841, 30.128582>,  <44.265274, 37.304539, 30.109436>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.494553, 37.372841, 30.128582>,  <44.876682, 37.486675, 30.160490>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.494553, 37.372841, 30.128582> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123978, -0.630877, 0.765914,
		-0.268294, 0.721807, 0.637976,
		-0.955326, -0.284586, -0.079772,
		44.207954, 37.287464, 30.104650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.631809, 37.594463, 30.845255>,  <44.876682, 37.486675, 30.160490>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.631809, 37.594463, 30.845255> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.378616, 37.341496, 30.666643>,  <44.226700, 37.189716, 30.559477>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.378616, 37.341496, 30.666643>,  <44.631809, 37.594463, 30.845255>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.378616, 37.341496, 30.666643> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046280, -0.544844, 0.837259,
		-0.772784, 0.550633, 0.315607,
		-0.632979, -0.632415, -0.446530,
		44.188725, 37.151772, 30.532684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.241817, 37.378166, 31.405966>,  <44.631809, 37.594463, 30.845255>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.241817, 37.378166, 31.405966> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.136589, 37.105957, 31.132416>,  <44.073452, 36.942631, 30.968287>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.136589, 37.105957, 31.132416>,  <44.241817, 37.378166, 31.405966>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.136589, 37.105957, 31.132416> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162393, -0.667493, 0.726692,
		-0.951011, 0.302228, 0.065085,
		-0.263071, -0.680523, -0.683873,
		44.057667, 36.901798, 30.927254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.658939, 36.986660, 31.688219>,  <44.241817, 37.378166, 31.405966>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.658939, 36.986660, 31.688219> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.803928, 36.757698, 31.394018>,  <43.890923, 36.620319, 31.217497>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.803928, 36.757698, 31.394018>,  <43.658939, 36.986660, 31.688219>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.803928, 36.757698, 31.394018> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100294, -0.808545, 0.579824,
		-0.926583, -0.136402, -0.350483,
		0.362470, -0.572407, -0.735504,
		43.912670, 36.585976, 31.173367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.175007, 36.504684, 31.584352>,  <43.658939, 36.986660, 31.688219>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.175007, 36.504684, 31.584352> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.524361, 36.367008, 31.446527>,  <43.733974, 36.284401, 31.363832>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.524361, 36.367008, 31.446527>,  <43.175007, 36.504684, 31.584352>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.524361, 36.367008, 31.446527> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085442, -0.804803, 0.587360,
		-0.479471, -0.483553, -0.732314,
		0.873389, -0.344193, -0.344563,
		43.786377, 36.263752, 31.343159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.045837, 35.828880, 31.434479>,  <43.175007, 36.504684, 31.584352>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.045837, 35.828880, 31.434479> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.444214, 35.848385, 31.464724>,  <43.683239, 35.860088, 31.482870>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.444214, 35.848385, 31.464724>,  <43.045837, 35.828880, 31.434479>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.444214, 35.848385, 31.464724> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008483, -0.785752, 0.618483,
		0.089573, -0.616616, -0.782151,
		0.995944, 0.048764, 0.075613,
		43.742996, 35.863014, 31.487408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.196716, 35.176086, 31.355000>,  <43.045837, 35.828880, 31.434479>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.196716, 35.176086, 31.355000> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.540836, 35.302025, 31.515375>,  <43.747311, 35.377586, 31.611601>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.540836, 35.302025, 31.515375>,  <43.196716, 35.176086, 31.355000>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.540836, 35.302025, 31.515375> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055663, -0.839803, 0.540030,
		0.506734, -0.442272, -0.740011,
		0.860303, 0.314843, 0.400939,
		43.798927, 35.396477, 31.635656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.670906, 34.576817, 31.449074>,  <43.196716, 35.176086, 31.355000>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.670906, 34.576817, 31.449074> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.860863, 34.805790, 31.716444>,  <43.974838, 34.943176, 31.876865>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.860863, 34.805790, 31.716444>,  <43.670906, 34.576817, 31.449074>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.860863, 34.805790, 31.716444> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150196, -0.801113, 0.579361,
		0.867131, -0.174741, -0.466423,
		0.474896, 0.572436, 0.668424,
		44.003330, 34.977520, 31.916971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.382450, 34.323261, 31.618277>,  <43.670906, 34.576817, 31.449074>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.382450, 34.323261, 31.618277> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.262978, 34.544712, 31.929220>,  <44.191296, 34.677582, 32.115788>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.262978, 34.544712, 31.929220>,  <44.382450, 34.323261, 31.618277>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.262978, 34.544712, 31.929220> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202235, -0.759326, 0.618487,
		0.932680, 0.341939, 0.114833,
		-0.298681, 0.553627, 0.777359,
		44.173374, 34.710800, 32.162430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.824360, 34.198467, 32.088169>,  <44.382450, 34.323261, 31.618277>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.824360, 34.198467, 32.088169> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.535423, 34.349014, 32.320229>,  <44.362061, 34.439342, 32.459465>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.535423, 34.349014, 32.320229>,  <44.824360, 34.198467, 32.088169>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.535423, 34.349014, 32.320229> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120015, -0.757970, 0.641154,
		0.681045, 0.532758, 0.502342,
		-0.722340, 0.376366, 0.580150,
		44.318722, 34.461926, 32.494274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.131050, 34.116966, 32.707771>,  <44.824360, 34.198467, 32.088169>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.131050, 34.116966, 32.707771> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.739006, 34.160275, 32.774296>,  <44.503780, 34.186260, 32.814209>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.739006, 34.160275, 32.774296>,  <45.131050, 34.116966, 32.707771>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.739006, 34.160275, 32.774296> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017440, -0.787822, 0.615656,
		0.197675, 0.606313, 0.770266,
		-0.980112, 0.108266, 0.166307,
		44.444973, 34.192753, 32.824188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.629436, 34.534218, 32.959553>,  <45.131050, 34.116966, 32.707771>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.629436, 34.534218, 32.959553> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.949947, 34.748756, 33.065594>,  <46.142254, 34.877480, 33.129219>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.949947, 34.748756, 33.065594>,  <45.629436, 34.534218, 32.959553>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.949947, 34.748756, 33.065594> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069511, 0.356642, -0.931651,
		-0.594238, 0.764941, 0.248488,
		0.801280, 0.536350, 0.265103,
		46.190331, 34.909660, 33.145126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.495049, 35.203320, 32.779625>,  <45.629436, 34.534218, 32.959553>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.495049, 35.203320, 32.779625> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.891571, 35.152100, 32.791748>,  <46.129486, 35.121368, 32.799023>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.891571, 35.152100, 32.791748>,  <45.495049, 35.203320, 32.779625>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.891571, 35.152100, 32.791748> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083402, 0.433279, -0.897393,
		0.101775, 0.892118, 0.440191,
		0.991305, -0.128045, 0.030308,
		46.188961, 35.113686, 32.800838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.875862, 35.899353, 32.707661>,  <45.495049, 35.203320, 32.779625>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.875862, 35.899353, 32.707661> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.142612, 35.617210, 32.611542>,  <46.302662, 35.447926, 32.553871>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.142612, 35.617210, 32.611542>,  <45.875862, 35.899353, 32.707661>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.142612, 35.617210, 32.611542> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142575, 0.437294, -0.887945,
		0.731398, 0.557893, 0.392189,
		0.666881, -0.705357, -0.240294,
		46.342678, 35.405602, 32.539452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.277859, 36.201302, 32.348797>,  <45.875862, 35.899353, 32.707661>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.277859, 36.201302, 32.348797> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.400688, 35.836372, 32.240444>,  <46.474384, 35.617416, 32.175434>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.400688, 35.836372, 32.240444>,  <46.277859, 36.201302, 32.348797>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.400688, 35.836372, 32.240444> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153748, 0.328447, -0.931925,
		0.939185, 0.244522, 0.241125,
		0.307073, -0.912322, -0.270878,
		46.492809, 35.562675, 32.159180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.883682, 36.277275, 31.938015>,  <46.277859, 36.201302, 32.348797>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.883682, 36.277275, 31.938015> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.766403, 35.908154, 31.838043>,  <46.696037, 35.686680, 31.778061>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.766403, 35.908154, 31.838043>,  <46.883682, 36.277275, 31.938015>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.766403, 35.908154, 31.838043> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242276, 0.181170, -0.953142,
		0.924846, -0.340007, 0.170456,
		-0.293193, -0.922807, -0.249930,
		46.678444, 35.631310, 31.763063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.444794, 36.038975, 31.549252>,  <46.883682, 36.277275, 31.938015>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.444794, 36.038975, 31.549252> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.110519, 35.857616, 31.425278>,  <46.909954, 35.748802, 31.350893>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.110519, 35.857616, 31.425278>,  <47.444794, 36.038975, 31.549252>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.110519, 35.857616, 31.425278> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235870, 0.213340, -0.948078,
		0.495973, -0.865402, -0.071344,
		-0.835689, -0.453394, -0.309933,
		46.859814, 35.721600, 31.332298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.673870, 35.667542, 30.920734>,  <47.444794, 36.038975, 31.549252>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.673870, 35.667542, 30.920734> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.276638, 35.690399, 30.879700>,  <47.038300, 35.704113, 30.855080>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.276638, 35.690399, 30.879700>,  <47.673870, 35.667542, 30.920734>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.276638, 35.690399, 30.879700> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112772, 0.220517, -0.968842,
		-0.032746, -0.973707, -0.225436,
		-0.993081, 0.057149, -0.102586,
		46.978714, 35.707542, 30.848925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.609695, 35.413624, 30.278286>,  <47.673870, 35.667542, 30.920734>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.609695, 35.413624, 30.278286> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.239540, 35.552288, 30.339569>,  <47.017445, 35.635487, 30.376339>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.239540, 35.552288, 30.339569>,  <47.609695, 35.413624, 30.278286>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.239540, 35.552288, 30.339569> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136764, 0.071573, -0.988015,
		-0.353476, -0.935254, -0.018822,
		-0.925392, 0.346665, 0.153209,
		46.961922, 35.656288, 30.385532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.075607, 34.994278, 29.821333>,  <47.609695, 35.413624, 30.278286>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.075607, 34.994278, 29.821333> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.901047, 35.345009, 29.902052>,  <46.796310, 35.555447, 29.950483>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.901047, 35.345009, 29.902052>,  <47.075607, 34.994278, 29.821333>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.901047, 35.345009, 29.902052> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214443, 0.116458, -0.969769,
		-0.873822, -0.466485, 0.137207,
		-0.436404, 0.876829, 0.201798,
		46.770126, 35.608059, 29.962591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.439278, 35.060307, 29.533525>,  <47.075607, 34.994278, 29.821333>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.439278, 35.060307, 29.533525> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.509571, 35.453140, 29.560766>,  <46.551746, 35.688839, 29.577110>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.509571, 35.453140, 29.560766>,  <46.439278, 35.060307, 29.533525>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.509571, 35.453140, 29.560766> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448025, 0.141383, -0.882770,
		-0.876580, 0.124619, 0.464842,
		0.175730, 0.982080, 0.068101,
		46.562290, 35.747765, 29.581196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.927673, 35.286636, 29.127203>,  <46.439278, 35.060307, 29.533525>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.927673, 35.286636, 29.127203> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.189854, 35.586491, 29.163918>,  <46.347164, 35.766403, 29.185947>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.189854, 35.586491, 29.163918>,  <45.927673, 35.286636, 29.127203>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.189854, 35.586491, 29.163918> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221595, 0.307078, -0.925526,
		-0.721995, 0.586300, 0.367391,
		0.655454, 0.749637, 0.091787,
		46.386490, 35.811382, 29.191454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.568443, 35.864952, 28.972525>,  <45.927673, 35.286636, 29.127203>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.568443, 35.864952, 28.972525> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.954670, 35.938351, 28.898748>,  <46.186405, 35.982388, 28.854483>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.954670, 35.938351, 28.898748>,  <45.568443, 35.864952, 28.972525>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.954670, 35.938351, 28.898748> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252693, 0.492676, -0.832717,
		-0.061928, 0.850647, 0.522077,
		0.965563, 0.183494, -0.184442,
		46.244339, 35.993401, 28.843416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.599064, 36.514938, 28.824610>,  <45.568443, 35.864952, 28.972525>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.599064, 36.514938, 28.824610> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.926956, 36.355072, 28.660509>,  <46.123692, 36.259151, 28.562048>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.926956, 36.355072, 28.660509>,  <45.599064, 36.514938, 28.824610>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.926956, 36.355072, 28.660509> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317412, 0.279226, -0.906246,
		0.476748, 0.873098, 0.102033,
		0.819732, -0.399665, -0.410252,
		46.172874, 36.235172, 28.537434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.829369, 37.132122, 28.339407>,  <45.599064, 36.514938, 28.824610>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.829369, 37.132122, 28.339407> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.999954, 36.787354, 28.229694>,  <46.102306, 36.580494, 28.163866>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.999954, 36.787354, 28.229694>,  <45.829369, 37.132122, 28.339407>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.999954, 36.787354, 28.229694> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409485, 0.086409, -0.908215,
		0.806507, 0.499632, -0.316092,
		0.426460, -0.861917, -0.274281,
		46.127892, 36.528778, 28.147409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.075554, 37.255943, 27.718538>,  <45.829369, 37.132122, 28.339407>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.075554, 37.255943, 27.718538> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.047092, 36.857048, 27.726973>,  <46.030014, 36.617710, 27.732033>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.047092, 36.857048, 27.726973>,  <46.075554, 37.255943, 27.718538>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.047092, 36.857048, 27.726973> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323919, 0.003106, -0.946080,
		0.943405, -0.074148, -0.323247,
		-0.071154, -0.997242, 0.021088,
		46.025745, 36.557877, 27.733299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.366295, 37.080513, 27.160049>,  <46.075554, 37.255943, 27.718538>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.366295, 37.080513, 27.160049> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.165432, 36.744591, 27.242573>,  <46.044914, 36.543037, 27.292086>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.165432, 36.744591, 27.242573>,  <46.366295, 37.080513, 27.160049>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.165432, 36.744591, 27.242573> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312258, -0.046384, -0.948864,
		0.806431, -0.540902, -0.238944,
		-0.502159, -0.839806, 0.206307,
		46.014786, 36.492649, 27.304464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.537827, 36.578869, 26.643980>,  <46.366295, 37.080513, 27.160049>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.537827, 36.578869, 26.643980> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.202293, 36.418377, 26.791151>,  <46.000973, 36.322083, 26.879454>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.202293, 36.418377, 26.791151>,  <46.537827, 36.578869, 26.643980>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.202293, 36.418377, 26.791151> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346359, -0.128063, -0.929320,
		0.419988, -0.906981, -0.031545,
		-0.838836, -0.401229, 0.367926,
		45.950642, 36.298008, 26.901529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.366646, 35.935547, 26.284718>,  <46.537827, 36.578869, 26.643980>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.366646, 35.935547, 26.284718> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.017868, 36.064636, 26.431995>,  <45.808601, 36.142090, 26.520361>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.017868, 36.064636, 26.431995>,  <46.366646, 35.935547, 26.284718>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.017868, 36.064636, 26.431995> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439406, -0.184098, -0.879221,
		-0.215962, -0.928416, 0.302330,
		-0.871942, 0.322725, 0.368194,
		45.756287, 36.161453, 26.542454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.834251, 35.419834, 26.054253>,  <46.366646, 35.935547, 26.284718>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.834251, 35.419834, 26.054253> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.634598, 35.749569, 26.161081>,  <45.514805, 35.947411, 26.225180>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.634598, 35.749569, 26.161081>,  <45.834251, 35.419834, 26.054253>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.634598, 35.749569, 26.161081> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481562, -0.007650, -0.876378,
		-0.720391, -0.566043, 0.400790,
		-0.499134, 0.824340, 0.267074,
		45.484856, 35.996872, 26.241203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.095543, 35.138363, 25.881493>,  <45.834251, 35.419834, 26.054253>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.095543, 35.138363, 25.881493> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.116837, 35.536514, 25.913483>,  <45.129612, 35.775406, 25.932676>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.116837, 35.536514, 25.913483>,  <45.095543, 35.138363, 25.881493>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.116837, 35.536514, 25.913483> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462318, 0.095555, -0.881551,
		-0.885115, 0.009960, 0.465266,
		0.053239, 0.995374, 0.079973,
		45.132809, 35.835125, 25.937475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.354279, 35.422073, 25.847008>,  <45.095543, 35.138363, 25.881493>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.354279, 35.422073, 25.847008> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.597744, 35.726166, 25.756166>,  <44.743824, 35.908623, 25.701662>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.597744, 35.726166, 25.756166>,  <44.354279, 35.422073, 25.847008>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.597744, 35.726166, 25.756166> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496952, 0.142146, -0.856057,
		-0.618519, 0.633911, 0.464318,
		0.608664, 0.760231, -0.227103,
		44.780342, 35.954235, 25.688036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<43.168198, 35.220924, 38.797504> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.835411, 35.031441, 38.913048>,  <42.635738, 34.917751, 38.982372>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.835411, 35.031441, 38.913048>,  <43.168198, 35.220924, 38.797504>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.835411, 35.031441, 38.913048> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278729, -0.093321, -0.955825,
		0.479739, -0.875724, -0.054397,
		-0.831962, -0.473708, 0.288859,
		42.585823, 34.889328, 38.999706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.975361, 34.728287, 38.266079>,  <43.168198, 35.220924, 38.797504>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.975361, 34.728287, 38.266079> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.633472, 34.729836, 38.473709>,  <42.428341, 34.730766, 38.598286>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.633472, 34.729836, 38.473709>,  <42.975361, 34.728287, 38.266079>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.633472, 34.729836, 38.473709> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516516, -0.105761, -0.849721,
		0.051607, -0.994384, 0.092397,
		-0.854721, 0.003873, 0.519074,
		42.377056, 34.730999, 38.629433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.625168, 34.185467, 38.166065>,  <42.975361, 34.728287, 38.266079>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.625168, 34.185467, 38.166065> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.328087, 34.426750, 38.282364>,  <42.149837, 34.571518, 38.352142>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.328087, 34.426750, 38.282364>,  <42.625168, 34.185467, 38.166065>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.328087, 34.426750, 38.282364> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542462, -0.287428, -0.789380,
		-0.392590, -0.743994, 0.540690,
		-0.742703, 0.603207, 0.290747,
		42.105274, 34.607712, 38.369587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.005470, 33.835262, 38.046650>,  <42.625168, 34.185467, 38.166065>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.005470, 33.835262, 38.046650> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.884670, 34.216335, 38.032845>,  <41.812191, 34.444981, 38.024563>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.884670, 34.216335, 38.032845>,  <42.005470, 33.835262, 38.046650>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.884670, 34.216335, 38.032845> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.712413, -0.249595, -0.655873,
		-0.633454, -0.173483, 0.754082,
		-0.301998, 0.952684, -0.034515,
		41.794071, 34.502140, 38.022491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.255409, 33.693253, 37.846622>,  <42.005470, 33.835262, 38.046650>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.255409, 33.693253, 37.846622> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.352932, 34.076141, 37.784298>,  <41.411446, 34.305874, 37.746902>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.352932, 34.076141, 37.784298>,  <41.255409, 33.693253, 37.846622>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.352932, 34.076141, 37.784298> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580908, 0.015491, -0.813822,
		-0.776597, 0.288930, 0.559836,
		0.243810, 0.957225, -0.155812,
		41.426075, 34.363308, 37.737553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.628395, 34.114193, 37.857040>,  <41.255409, 33.693253, 37.846622>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.628395, 34.114193, 37.857040> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.889008, 34.342377, 37.657009>,  <41.045376, 34.479286, 37.536991>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.889008, 34.342377, 37.657009>,  <40.628395, 34.114193, 37.857040>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.889008, 34.342377, 37.657009> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613784, 0.008981, -0.789423,
		-0.445842, 0.821277, 0.355990,
		0.651532, 0.570459, -0.500082,
		41.084469, 34.513515, 37.506985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.218494, 34.653168, 37.552948>,  <40.628395, 34.114193, 37.857040>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.218494, 34.653168, 37.552948> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.547001, 34.588787, 37.334000>,  <40.744106, 34.550159, 37.202629>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.547001, 34.588787, 37.334000>,  <40.218494, 34.653168, 37.552948>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.547001, 34.588787, 37.334000> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549112, 0.037515, -0.834906,
		0.154913, 0.986249, -0.057570,
		0.821266, -0.160950, -0.547373,
		40.793381, 34.540501, 37.169788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.057312, 35.037285, 36.977776>,  <40.218494, 34.653168, 37.552948>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.057312, 35.037285, 36.977776> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.376705, 34.836746, 36.844463>,  <40.568340, 34.716423, 36.764477>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.376705, 34.836746, 36.844463>,  <40.057312, 35.037285, 36.977776>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.376705, 34.836746, 36.844463> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337966, 0.084840, -0.937327,
		0.498204, 0.861076, -0.101696,
		0.798481, -0.501349, -0.333282,
		40.616249, 34.686340, 36.744480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.342297, 35.396057, 36.461685>,  <40.057312, 35.037285, 36.977776>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.342297, 35.396057, 36.461685> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.529713, 35.047104, 36.405945>,  <40.642162, 34.837730, 36.372501>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.529713, 35.047104, 36.405945>,  <40.342297, 35.396057, 36.461685>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.529713, 35.047104, 36.405945> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179055, 0.060687, -0.981965,
		0.865108, 0.485038, -0.127771,
		0.468537, -0.872384, -0.139349,
		40.670273, 34.785389, 36.364140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.744953, 35.384869, 35.819824>,  <40.342297, 35.396057, 36.461685>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.744953, 35.384869, 35.819824> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.657806, 34.999111, 35.879787>,  <40.605518, 34.767654, 35.915764>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.657806, 34.999111, 35.879787>,  <40.744953, 35.384869, 35.819824>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.657806, 34.999111, 35.879787> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222925, -0.100366, -0.969655,
		0.950179, -0.244671, -0.193122,
		-0.217863, -0.964398, 0.149909,
		40.592449, 34.709793, 35.924759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.070751, 34.962296, 35.169548>,  <40.744953, 35.384869, 35.819824>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.070751, 34.962296, 35.169548> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.790611, 34.739113, 35.347622>,  <40.622528, 34.605206, 35.454468>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.790611, 34.739113, 35.347622>,  <41.070751, 34.962296, 35.169548>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.790611, 34.739113, 35.347622> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412848, -0.192152, -0.890300,
		0.582291, -0.807319, -0.095776,
		-0.700353, -0.557955, 0.445188,
		40.580505, 34.571728, 35.481178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.189247, 34.318478, 34.849461>,  <41.070751, 34.962296, 35.169548>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.189247, 34.318478, 34.849461> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.815395, 34.326469, 34.991486>,  <40.591084, 34.331264, 35.076702>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.815395, 34.326469, 34.991486>,  <41.189247, 34.318478, 34.849461>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.815395, 34.326469, 34.991486> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355612, -0.060746, -0.932657,
		0.002939, -0.997953, 0.063878,
		-0.934629, 0.019975, 0.355063,
		40.535007, 34.332462, 35.098003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.689384, 33.737183, 34.511936>,  <41.189247, 34.318478, 34.849461>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.689384, 33.737183, 34.511936> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.487988, 34.067566, 34.613358>,  <40.367149, 34.265797, 34.674210>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.487988, 34.067566, 34.613358>,  <40.689384, 33.737183, 34.511936>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.487988, 34.067566, 34.613358> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530499, -0.063904, -0.845274,
		-0.681958, -0.560097, 0.470345,
		-0.503492, 0.825959, 0.253550,
		40.336941, 34.315353, 34.689423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.231083, 33.579193, 34.960045>,  <40.689384, 33.737183, 34.511936>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.231083, 33.579193, 34.960045> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.066544, 33.252869, 34.797447>,  <40.967819, 33.057072, 34.699890>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.066544, 33.252869, 34.797447>,  <41.231083, 33.579193, 34.960045>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.066544, 33.252869, 34.797447> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151592, -0.500995, 0.852070,
		-0.898783, 0.288877, 0.329755,
		-0.411349, -0.815815, -0.406495,
		40.943138, 33.008125, 34.675499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.628719, 33.446804, 35.220028>,  <41.231083, 33.579193, 34.960045>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.628719, 33.446804, 35.220028> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.736443, 33.084518, 35.089085>,  <40.801079, 32.867149, 35.010521>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.736443, 33.084518, 35.089085>,  <40.628719, 33.446804, 35.220028>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.736443, 33.084518, 35.089085> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060023, -0.355039, 0.932923,
		-0.961181, -0.231597, -0.149979,
		0.269310, -0.905710, -0.327355,
		40.817234, 32.812805, 34.990879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.216671, 33.010288, 35.436386>,  <40.628719, 33.446804, 35.220028>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.216671, 33.010288, 35.436386> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.549896, 32.791912, 35.400723>,  <40.749832, 32.660885, 35.379322>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.549896, 32.791912, 35.400723>,  <40.216671, 33.010288, 35.436386>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.549896, 32.791912, 35.400723> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221229, -0.476539, 0.850864,
		-0.507019, -0.689095, -0.517765,
		0.833060, -0.545948, -0.089166,
		40.799816, 32.628128, 35.373974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.035374, 32.259159, 35.446953>,  <40.216671, 33.010288, 35.436386>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.035374, 32.259159, 35.446953> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.420815, 32.277283, 35.552349>,  <40.652077, 32.288155, 35.615585>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.420815, 32.277283, 35.552349>,  <40.035374, 32.259159, 35.446953>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.420815, 32.277283, 35.552349> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211231, -0.475122, 0.854190,
		0.163888, -0.878753, -0.448257,
		0.963598, 0.045306, 0.263487,
		40.709892, 32.290874, 35.631393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.240280, 31.625145, 35.726917>,  <40.035374, 32.259159, 35.446953>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.240280, 31.625145, 35.726917> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.560059, 31.816179, 35.872681>,  <40.751926, 31.930799, 35.960136>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.560059, 31.816179, 35.872681>,  <40.240280, 31.625145, 35.726917>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.560059, 31.816179, 35.872681> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072692, -0.525236, 0.847846,
		0.596319, -0.704300, -0.385183,
		0.799450, 0.477587, 0.364405,
		40.799892, 31.959455, 35.982002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.634407, 31.165100, 36.131565>,  <40.240280, 31.625145, 35.726917>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.634407, 31.165100, 36.131565> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.749756, 31.525778, 36.260429>,  <40.818966, 31.742184, 36.337749>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.749756, 31.525778, 36.260429>,  <40.634407, 31.165100, 36.131565>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.749756, 31.525778, 36.260429> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126775, -0.297539, 0.946255,
		0.949088, -0.313719, 0.028509,
		0.288375, 0.901694, 0.322162,
		40.836269, 31.796286, 36.357079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.154999, 30.994377, 36.621655>,  <40.634407, 31.165100, 36.131565>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.154999, 30.994377, 36.621655> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.060131, 31.377287, 36.687840>,  <41.003212, 31.607033, 36.727551>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.060131, 31.377287, 36.687840>,  <41.154999, 30.994377, 36.621655>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.060131, 31.377287, 36.687840> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029686, -0.177380, 0.983695,
		0.971014, 0.228391, 0.070487,
		-0.237170, 0.957274, 0.165459,
		40.988979, 31.664469, 36.737476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.585709, 31.200258, 37.200134>,  <41.154999, 30.994377, 36.621655>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.585709, 31.200258, 37.200134> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.263359, 31.435696, 37.174469>,  <41.069950, 31.576958, 37.159069>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.263359, 31.435696, 37.174469>,  <41.585709, 31.200258, 37.200134>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.263359, 31.435696, 37.174469> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170589, -0.127051, 0.977117,
		0.566975, 0.798382, 0.202796,
		-0.805878, 0.588595, -0.064160,
		41.021595, 31.612274, 37.155220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.690495, 31.955624, 37.497116>,  <41.585709, 31.200258, 37.200134>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.690495, 31.955624, 37.497116> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.308407, 31.839771, 37.521332>,  <41.079155, 31.770260, 37.535862>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.308407, 31.839771, 37.521332>,  <41.690495, 31.955624, 37.497116>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.308407, 31.839771, 37.521332> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034008, 0.095796, 0.994820,
		-0.293928, 0.952333, -0.081657,
		-0.955222, -0.289629, 0.060544,
		41.021839, 31.752882, 37.539494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.423458, 32.481533, 37.949802>,  <41.690495, 31.955624, 37.497116>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.423458, 32.481533, 37.949802> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.157902, 32.183167, 37.971142>,  <40.998566, 32.004147, 37.983944>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.157902, 32.183167, 37.971142>,  <41.423458, 32.481533, 37.949802>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.157902, 32.183167, 37.971142> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094196, -0.012647, 0.995473,
		-0.741869, 0.665915, 0.078659,
		-0.663895, -0.745921, 0.053345,
		40.958733, 31.959391, 37.987144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.130543, 32.596706, 38.618561>,  <41.423458, 32.481533, 37.949802>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.130543, 32.596706, 38.618561> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.928905, 32.263214, 38.528419>,  <40.807922, 32.063118, 38.474335>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.928905, 32.263214, 38.528419>,  <41.130543, 32.596706, 38.618561>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.928905, 32.263214, 38.528419> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315131, -0.065376, 0.946794,
		-0.804105, 0.548286, -0.229779,
		-0.504092, -0.833732, -0.225351,
		40.777679, 32.013096, 38.460815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.415981, 32.640507, 38.779449>,  <41.130543, 32.596706, 38.618561>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.415981, 32.640507, 38.779449> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.505604, 32.250813, 38.789822>,  <40.559380, 32.016998, 38.796043>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.505604, 32.250813, 38.789822>,  <40.415981, 32.640507, 38.779449>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.505604, 32.250813, 38.789822> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181229, -0.015509, 0.983319,
		-0.957577, -0.225019, -0.180033,
		0.224058, -0.974231, 0.025929,
		40.572823, 31.958544, 38.797600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.868599, 32.374207, 39.292141>,  <40.415981, 32.640507, 38.779449>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.868599, 32.374207, 39.292141> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.164490, 32.106243, 39.266777>,  <40.342026, 31.945465, 39.251560>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.164490, 32.106243, 39.266777>,  <39.868599, 32.374207, 39.292141>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.164490, 32.106243, 39.266777> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174780, 0.100287, 0.979487,
		-0.649808, -0.735638, 0.191272,
		0.739730, -0.669909, -0.063407,
		40.386410, 31.905270, 39.247753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.661873, 31.709385, 39.656433>,  <39.868599, 32.374207, 39.292141>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.661873, 31.709385, 39.656433> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.061337, 31.690216, 39.648563>,  <40.301014, 31.678715, 39.643841>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.061337, 31.690216, 39.648563>,  <39.661873, 31.709385, 39.656433>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.061337, 31.690216, 39.648563> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015547, -0.084934, 0.996265,
		-0.049403, -0.995234, -0.084075,
		0.998658, -0.047911, -0.019669,
		40.360935, 31.675840, 39.642662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.717617, 31.186190, 39.996262>,  <39.661873, 31.709385, 39.656433>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.717617, 31.186190, 39.996262> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.069798, 31.375402, 40.009178>,  <40.281105, 31.488930, 40.016930>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.069798, 31.375402, 40.009178>,  <39.717617, 31.186190, 39.996262>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.069798, 31.375402, 40.009178> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001675, -0.065009, 0.997883,
		0.474132, -0.878642, -0.056445,
		0.880452, 0.473034, 0.032294,
		40.333935, 31.517313, 40.018867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.989208, 30.518829, 39.984463>,  <39.717617, 31.186190, 39.996262>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.989208, 30.518829, 39.984463> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.641384, 30.431978, 40.161873>,  <39.432690, 30.379868, 40.268318>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.641384, 30.431978, 40.161873>,  <39.989208, 30.518829, 39.984463>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.641384, 30.431978, 40.161873> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485197, 0.208550, -0.849171,
		0.091879, -0.953606, -0.286696,
		-0.869564, -0.217125, 0.443526,
		39.380516, 30.366840, 40.294930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.532536, 30.064804, 39.513947>,  <39.989208, 30.518829, 39.984463>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.532536, 30.064804, 39.513947> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.286934, 30.251549, 39.768517>,  <39.139572, 30.363596, 39.921257>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.286934, 30.251549, 39.768517>,  <39.532536, 30.064804, 39.513947>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.286934, 30.251549, 39.768517> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.664991, 0.128376, -0.735735,
		-0.425189, -0.874962, 0.231636,
		-0.614004, 0.466863, 0.636426,
		39.102734, 30.391607, 39.959446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.937443, 29.841984, 39.392818>,  <39.532536, 30.064804, 39.513947>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.937443, 29.841984, 39.392818> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.798161, 30.166256, 39.581097>,  <38.714592, 30.360819, 39.694061>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.798161, 30.166256, 39.581097>,  <38.937443, 29.841984, 39.392818>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.798161, 30.166256, 39.581097> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.720959, 0.089326, -0.687196,
		-0.599141, -0.578635, 0.553364,
		-0.348206, 0.810680, 0.470691,
		38.693699, 30.409460, 39.722305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.205772, 29.725788, 39.448452>,  <38.937443, 29.841984, 39.392818>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.205772, 29.725788, 39.448452> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.285473, 30.114447, 39.499367>,  <38.333294, 30.347643, 39.529915>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.285473, 30.114447, 39.499367>,  <38.205772, 29.725788, 39.448452>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.285473, 30.114447, 39.499367> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.771833, 0.235633, -0.590552,
		-0.603801, 0.019425, 0.796899,
		0.199247, 0.971648, 0.127283,
		38.345245, 30.405941, 39.537552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.531738, 30.034595, 39.493851>,  <38.205772, 29.725788, 39.448452>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.531738, 30.034595, 39.493851> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.763866, 30.341507, 39.384666>,  <37.903145, 30.525654, 39.319157>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.763866, 30.341507, 39.384666>,  <37.531738, 30.034595, 39.493851>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.763866, 30.341507, 39.384666> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.723771, 0.332269, -0.604775,
		-0.373336, 0.548524, 0.748159,
		0.580323, 0.767280, -0.272957,
		37.937965, 30.571692, 39.302780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.071533, 30.537256, 39.555145>,  <37.531738, 30.034595, 39.493851>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.071533, 30.537256, 39.555145> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.358173, 30.707504, 39.334114>,  <37.530155, 30.809652, 39.201496>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.358173, 30.707504, 39.334114>,  <37.071533, 30.537256, 39.555145>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.358173, 30.707504, 39.334114> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.697238, 0.415889, -0.583862,
		-0.018694, 0.803669, 0.594783,
		0.716596, 0.425620, -0.552574,
		37.573151, 30.835190, 39.168343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.812748, 31.215677, 39.475376>,  <37.071533, 30.537256, 39.555145>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.812748, 31.215677, 39.475376> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.103981, 31.196625, 39.201843>,  <37.278721, 31.185192, 39.037724>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.103981, 31.196625, 39.201843>,  <36.812748, 31.215677, 39.475376>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.103981, 31.196625, 39.201843> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612137, 0.403802, -0.679877,
		0.308517, 0.913606, 0.264843,
		0.728083, -0.047633, -0.683832,
		37.322407, 31.182335, 38.996693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.825653, 31.845619, 39.130589>,  <36.812748, 31.215677, 39.475376>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.825653, 31.845619, 39.130589> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.983498, 31.582869, 38.873592>,  <37.078205, 31.425219, 38.719395>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.983498, 31.582869, 38.873592>,  <36.825653, 31.845619, 39.130589>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.983498, 31.582869, 38.873592> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.723031, 0.209504, -0.658282,
		0.567014, 0.724306, -0.392269,
		0.394616, -0.656878, -0.642487,
		37.101883, 31.385805, 38.680847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.748146, 32.137756, 38.465618>,  <36.825653, 31.845619, 39.130589>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.748146, 32.137756, 38.465618> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.818348, 31.760952, 38.351204>,  <36.860470, 31.534870, 38.282555>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.818348, 31.760952, 38.351204>,  <36.748146, 32.137756, 38.465618>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.818348, 31.760952, 38.351204> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605840, 0.125668, -0.785599,
		0.775987, 0.311168, -0.548651,
		0.175505, -0.942010, -0.286035,
		36.870998, 31.478350, 38.265392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.764999, 32.142872, 37.753643>,  <36.748146, 32.137756, 38.465618>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.764999, 32.142872, 37.753643> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.668247, 31.765818, 37.845665>,  <36.610195, 31.539585, 37.900879>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.668247, 31.765818, 37.845665>,  <36.764999, 32.142872, 37.753643>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.668247, 31.765818, 37.845665> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.663382, -0.012373, -0.748179,
		0.708108, -0.333586, -0.622337,
		-0.241882, -0.942638, 0.230056,
		36.595684, 31.483027, 37.914680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.738899, 31.800238, 37.145683>,  <36.764999, 32.142872, 37.753643>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.738899, 31.800238, 37.145683> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.513157, 31.579473, 37.391251>,  <36.377712, 31.447016, 37.538589>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.513157, 31.579473, 37.391251>,  <36.738899, 31.800238, 37.145683>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.513157, 31.579473, 37.391251> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.715796, -0.043328, -0.696964,
		0.411261, -0.832778, -0.370602,
		-0.564359, -0.551909, 0.613918,
		36.343849, 31.413900, 37.575428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.406513, 31.355711, 36.697083>,  <36.738899, 31.800238, 37.145683>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.406513, 31.355711, 36.697083> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.196560, 31.371828, 37.037170>,  <36.070587, 31.381498, 37.241222>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.196560, 31.371828, 37.037170>,  <36.406513, 31.355711, 36.697083>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.196560, 31.371828, 37.037170> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.833071, 0.180607, -0.522851,
		-0.174624, -0.982730, -0.061229,
		-0.524880, 0.040294, 0.850222,
		36.039097, 31.383917, 37.292236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<41.765400, 29.267839, 42.602394> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.455246, 29.343306, 42.843456>,  <41.269154, 29.388584, 42.988094>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.455246, 29.343306, 42.843456>,  <41.765400, 29.267839, 42.602394>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.455246, 29.343306, 42.843456> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628702, -0.141016, -0.764753,
		-0.059293, -0.971865, 0.227952,
		-0.775383, 0.188659, 0.602653,
		41.222630, 29.399904, 43.024250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.249290, 28.701912, 42.575390>,  <41.765400, 29.267839, 42.602394>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.249290, 28.701912, 42.575390> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.082184, 29.050573, 42.677910>,  <40.981918, 29.259771, 42.739422>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.082184, 29.050573, 42.677910>,  <41.249290, 28.701912, 42.575390>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.082184, 29.050573, 42.677910> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538782, -0.010535, -0.842379,
		-0.731564, -0.490006, 0.474034,
		-0.417765, 0.871655, 0.256299,
		40.956856, 29.312069, 42.754799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.617783, 28.581526, 42.402565>,  <41.249290, 28.701912, 42.575390>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.617783, 28.581526, 42.402565> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.612366, 28.979551, 42.441891>,  <40.609116, 29.218367, 42.465488>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.612366, 28.979551, 42.441891>,  <40.617783, 28.581526, 42.402565>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.612366, 28.979551, 42.441891> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583287, 0.072000, -0.809069,
		-0.812153, -0.068307, 0.579432,
		-0.013546, 0.995063, 0.098318,
		40.608303, 29.278070, 42.471386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.890640, 28.771475, 42.311726>,  <40.617783, 28.581526, 42.402565>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.890640, 28.771475, 42.311726> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.087322, 29.116978, 42.267635>,  <40.205330, 29.324280, 42.241180>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.087322, 29.116978, 42.267635>,  <39.890640, 28.771475, 42.311726>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.087322, 29.116978, 42.267635> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656587, 0.284640, -0.698479,
		-0.571942, 0.415817, 0.707091,
		0.491706, 0.863757, -0.110222,
		40.234833, 29.376104, 42.234570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.389095, 29.267218, 42.354641>,  <39.890640, 28.771475, 42.311726>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.389095, 29.267218, 42.354641> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.682465, 29.491024, 42.200222>,  <39.858486, 29.625307, 42.107571>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.682465, 29.491024, 42.200222>,  <39.389095, 29.267218, 42.354641>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.682465, 29.491024, 42.200222> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612320, 0.297142, -0.732647,
		-0.295216, 0.773724, 0.560533,
		0.733425, 0.559515, -0.386045,
		39.902493, 29.658878, 42.084408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.185585, 30.070782, 42.287022>,  <39.389095, 29.267218, 42.354641>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.185585, 30.070782, 42.287022> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.468666, 29.973440, 42.021709>,  <39.638515, 29.915035, 41.862522>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.468666, 29.973440, 42.021709>,  <39.185585, 30.070782, 42.287022>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.468666, 29.973440, 42.021709> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545909, 0.407597, -0.732017,
		0.448489, 0.880139, 0.155608,
		0.707701, -0.243354, -0.663278,
		39.680977, 29.900434, 41.822727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.476604, 30.713017, 41.917114>,  <39.185585, 30.070782, 42.287022>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.476604, 30.713017, 41.917114> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.535091, 30.392389, 41.685215>,  <39.570183, 30.200012, 41.546074>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.535091, 30.392389, 41.685215>,  <39.476604, 30.713017, 41.917114>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.535091, 30.392389, 41.685215> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162429, 0.558640, -0.813350,
		0.975826, 0.213094, -0.048514,
		0.146218, -0.801568, -0.579749,
		39.578957, 30.151918, 41.511292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.735229, 31.009188, 41.398479>,  <39.476604, 30.713017, 41.917114>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.735229, 31.009188, 41.398479> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.646233, 30.647148, 41.253540>,  <39.592834, 30.429924, 41.166576>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.646233, 30.647148, 41.253540>,  <39.735229, 31.009188, 41.398479>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.646233, 30.647148, 41.253540> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112269, 0.392977, -0.912669,
		0.968449, -0.162378, -0.189047,
		-0.222489, -0.905098, -0.362349,
		39.579487, 30.375618, 41.144836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.088341, 30.883356, 40.697407>,  <39.735229, 31.009188, 41.398479>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.088341, 30.883356, 40.697407> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.776840, 30.636209, 40.740849>,  <39.589939, 30.487923, 40.766914>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.776840, 30.636209, 40.740849>,  <40.088341, 30.883356, 40.697407>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.776840, 30.636209, 40.740849> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336315, 0.265039, -0.903685,
		0.529572, -0.740267, -0.414196,
		-0.778747, -0.617866, 0.108606,
		39.543217, 30.450850, 40.773430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.894836, 30.705383, 40.802563>,  <40.088341, 30.883356, 40.697407>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.894836, 30.705383, 40.802563> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.965126, 31.068577, 40.650410>,  <41.007298, 31.286493, 40.559116>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.965126, 31.068577, 40.650410>,  <40.894836, 30.705383, 40.802563>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.965126, 31.068577, 40.650410> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320259, 0.312649, 0.894251,
		0.930890, -0.278960, -0.235850,
		0.175721, 0.907982, -0.380381,
		41.017841, 31.340971, 40.536297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.656574, 30.873713, 40.930962>,  <40.894836, 30.705383, 40.802563>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.656574, 30.873713, 40.930962> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.446980, 31.207697, 40.863697>,  <41.321224, 31.408087, 40.823338>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.446980, 31.207697, 40.863697>,  <41.656574, 30.873713, 40.930962>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.446980, 31.207697, 40.863697> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415540, 0.422955, 0.805255,
		0.743481, 0.352065, -0.568582,
		-0.523987, 0.834961, -0.168162,
		41.289783, 31.458185, 40.813248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.154877, 31.362864, 40.944641>,  <41.656574, 30.873713, 40.930962>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.154877, 31.362864, 40.944641> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.801743, 31.529192, 41.032001>,  <41.589863, 31.628990, 41.084419>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.801743, 31.529192, 41.032001>,  <42.154877, 31.362864, 40.944641>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.801743, 31.529192, 41.032001> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406654, 0.444011, 0.798428,
		0.235033, 0.793691, -0.561083,
		-0.882832, 0.415823, 0.218400,
		41.536892, 31.653938, 41.097523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.288956, 32.136803, 41.064556>,  <42.154877, 31.362864, 40.944641>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.288956, 32.136803, 41.064556> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.943317, 32.039314, 41.240711>,  <41.735935, 31.980822, 41.346405>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.943317, 32.039314, 41.240711>,  <42.288956, 32.136803, 41.064556>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.943317, 32.039314, 41.240711> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385336, 0.242585, 0.890320,
		-0.323819, 0.939017, -0.115702,
		-0.864093, -0.243718, 0.440390,
		41.684090, 31.966198, 41.372829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.052483, 32.747223, 41.257488>,  <42.288956, 32.136803, 41.064556>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.052483, 32.747223, 41.257488> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.872772, 32.478043, 41.492531>,  <41.764946, 32.316532, 41.633556>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.872772, 32.478043, 41.492531>,  <42.052483, 32.747223, 41.257488>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.872772, 32.478043, 41.492531> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490648, 0.363800, 0.791779,
		-0.746603, 0.644036, 0.166737,
		-0.449275, -0.672954, 0.587609,
		41.737991, 32.276157, 41.668812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.969318, 33.191998, 41.819527>,  <42.052483, 32.747223, 41.257488>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.969318, 33.191998, 41.819527> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.918381, 32.811337, 41.931343>,  <41.887817, 32.582939, 41.998432>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.918381, 32.811337, 41.931343>,  <41.969318, 33.191998, 41.819527>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.918381, 32.811337, 41.931343> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310466, 0.229431, 0.922481,
		-0.942016, 0.204262, 0.266239,
		-0.127345, -0.951650, 0.279545,
		41.880177, 32.525841, 42.015205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.602119, 33.100010, 42.507736>,  <41.969318, 33.191998, 41.819527>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.602119, 33.100010, 42.507736> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.801060, 32.758572, 42.445744>,  <41.920425, 32.553707, 42.408546>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.801060, 32.758572, 42.445744>,  <41.602119, 33.100010, 42.507736>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.801060, 32.758572, 42.445744> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375903, 0.051031, 0.925253,
		-0.781882, -0.518433, 0.346249,
		0.497351, -0.853594, -0.154981,
		41.950264, 32.502495, 42.399250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.428345, 32.737831, 43.125946>,  <41.602119, 33.100010, 42.507736>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.428345, 32.737831, 43.125946> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.752529, 32.583412, 42.949707>,  <41.947041, 32.490761, 42.843964>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.752529, 32.583412, 42.949707>,  <41.428345, 32.737831, 43.125946>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.752529, 32.583412, 42.949707> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556567, 0.272828, 0.784728,
		-0.182736, -0.881210, 0.435977,
		0.810457, -0.386049, -0.440597,
		41.995667, 32.467598, 42.817528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.658569, 32.243828, 43.520042>,  <41.428345, 32.737831, 43.125946>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.658569, 32.243828, 43.520042> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.997562, 32.342468, 43.332020>,  <42.200958, 32.401653, 43.219204>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.997562, 32.342468, 43.332020>,  <41.658569, 32.243828, 43.520042>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.997562, 32.342468, 43.332020> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487306, -0.010314, 0.873170,
		0.210479, -0.969061, -0.128912,
		0.847485, 0.246603, -0.470059,
		42.251808, 32.416451, 43.191002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.065929, 31.808466, 43.793652>,  <41.658569, 32.243828, 43.520042>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.065929, 31.808466, 43.793652> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.321880, 32.063892, 43.622639>,  <42.475452, 32.217148, 43.520031>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.321880, 32.063892, 43.622639>,  <42.065929, 31.808466, 43.793652>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.321880, 32.063892, 43.622639> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631157, -0.119322, 0.766423,
		0.438397, -0.760260, -0.479387,
		0.639882, 0.638566, -0.427533,
		42.513844, 32.255463, 43.494377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.699047, 31.445877, 43.857655>,  <42.065929, 31.808466, 43.793652>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.699047, 31.445877, 43.857655> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.796337, 31.827539, 43.787880>,  <42.854710, 32.056538, 43.746014>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.796337, 31.827539, 43.787880>,  <42.699047, 31.445877, 43.857655>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.796337, 31.827539, 43.787880> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.773002, -0.082036, 0.629078,
		0.585928, -0.287850, -0.757517,
		0.243223, 0.954156, -0.174441,
		42.869305, 32.113785, 43.735546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.428234, 31.490093, 43.778702>,  <42.699047, 31.445877, 43.857655>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.428234, 31.490093, 43.778702> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.332775, 31.869295, 43.862923>,  <43.275501, 32.096817, 43.913456>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.332775, 31.869295, 43.862923>,  <43.428234, 31.490093, 43.778702>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.332775, 31.869295, 43.862923> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.889980, 0.126754, 0.438028,
		0.388565, 0.291919, -0.873957,
		-0.238646, 0.948007, 0.210550,
		43.261181, 32.153698, 43.926086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.067417, 31.854694, 43.685448>,  <43.428234, 31.490093, 43.778702>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.067417, 31.854694, 43.685448> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.840240, 32.097149, 43.908173>,  <43.703934, 32.242622, 44.041809>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.840240, 32.097149, 43.908173>,  <44.067417, 31.854694, 43.685448>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.840240, 32.097149, 43.908173> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.801762, 0.254487, 0.540753,
		0.186067, 0.753550, -0.630509,
		-0.567940, 0.606135, 0.556816,
		43.669857, 32.278988, 44.075218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.455936, 32.496273, 43.793510>,  <44.067417, 31.854694, 43.685448>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.455936, 32.496273, 43.793510> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.189034, 32.470047, 44.090286>,  <44.028893, 32.454311, 44.268353>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.189034, 32.470047, 44.090286>,  <44.455936, 32.496273, 43.793510>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.189034, 32.470047, 44.090286> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.724206, 0.175678, 0.666831,
		-0.174064, 0.982262, -0.069739,
		-0.667254, -0.065566, 0.741939,
		43.988857, 32.450378, 44.312866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<38.305569, 35.032665, 47.318710> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.592175, 34.794735, 47.172947>,  <38.764137, 34.651978, 47.085491>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.592175, 34.794735, 47.172947>,  <38.305569, 35.032665, 47.318710>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.592175, 34.794735, 47.172947> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319376, 0.184692, -0.929456,
		0.620167, 0.782350, -0.057639,
		0.716514, -0.594826, -0.364404,
		38.807129, 34.616287, 47.063625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.814816, 35.467812, 46.793655>,  <38.305569, 35.032665, 47.318710>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.814816, 35.467812, 46.793655> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.811054, 35.076450, 46.711056>,  <38.808796, 34.841633, 46.661495>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.811054, 35.076450, 46.711056>,  <38.814816, 35.467812, 46.793655>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.811054, 35.076450, 46.711056> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143334, 0.205693, -0.968063,
		0.989630, 0.020492, -0.142173,
		-0.009407, -0.978402, -0.206497,
		38.808231, 34.782928, 46.649105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.282871, 35.379456, 46.205128>,  <38.814816, 35.467812, 46.793655>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.282871, 35.379456, 46.205128> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.042789, 35.059521, 46.206551>,  <38.898743, 34.867558, 46.207405>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.042789, 35.059521, 46.206551>,  <39.282871, 35.379456, 46.205128>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.042789, 35.059521, 46.206551> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182682, 0.132754, -0.974168,
		0.778708, -0.585347, -0.225796,
		-0.600201, -0.799841, 0.003556,
		38.862728, 34.819569, 46.207619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.502327, 34.979561, 45.709766>,  <39.282871, 35.379456, 46.205128>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.502327, 34.979561, 45.709766> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.136032, 34.833366, 45.776508>,  <38.916256, 34.745647, 45.816551>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.136032, 34.833366, 45.776508>,  <39.502327, 34.979561, 45.709766>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.136032, 34.833366, 45.776508> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079018, -0.243337, -0.966718,
		0.393928, -0.898445, 0.193953,
		-0.915739, -0.365491, 0.166851,
		38.861309, 34.723721, 45.826565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.512199, 34.363731, 45.366917>,  <39.502327, 34.979561, 45.709766>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.512199, 34.363731, 45.366917> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.142387, 34.503998, 45.426617>,  <38.920502, 34.588158, 45.462437>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.142387, 34.503998, 45.426617>,  <39.512199, 34.363731, 45.366917>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.142387, 34.503998, 45.426617> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200184, -0.113597, -0.973151,
		-0.324298, -0.929585, 0.175222,
		-0.924531, 0.350668, 0.149248,
		38.865028, 34.609200, 45.471390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.054497, 33.985893, 44.857452>,  <39.512199, 34.363731, 45.366917>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.054497, 33.985893, 44.857452> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.832314, 34.300488, 44.965458>,  <38.699001, 34.489243, 45.030262>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.832314, 34.300488, 44.965458>,  <39.054497, 33.985893, 44.857452>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.832314, 34.300488, 44.965458> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516422, -0.071765, -0.853322,
		-0.651745, -0.613428, 0.446020,
		-0.555461, 0.786483, 0.270015,
		38.665676, 34.536434, 45.046463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.390179, 33.816734, 44.731266>,  <39.054497, 33.985893, 44.857452>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.390179, 33.816734, 44.731266> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.361675, 34.215473, 44.745186>,  <38.344574, 34.454716, 44.753536>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.361675, 34.215473, 44.745186>,  <38.390179, 33.816734, 44.731266>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.361675, 34.215473, 44.745186> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475498, -0.003279, -0.879711,
		-0.876826, -0.079235, 0.474234,
		-0.071259, 0.996850, 0.034801,
		38.340298, 34.514530, 44.755627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.785545, 33.917107, 44.442703>,  <38.390179, 33.816734, 44.731266>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.785545, 33.917107, 44.442703> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.933609, 34.288055, 44.420918>,  <38.022446, 34.510624, 44.407845>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.933609, 34.288055, 44.420918>,  <37.785545, 33.917107, 44.442703>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.933609, 34.288055, 44.420918> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487002, 0.143792, -0.861483,
		-0.791083, 0.345409, 0.504857,
		0.370158, 0.927371, -0.054464,
		38.044655, 34.566265, 44.404579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.211159, 34.352356, 44.231777>,  <37.785545, 33.917107, 44.442703>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.211159, 34.352356, 44.231777> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.554802, 34.529556, 44.129261>,  <37.760986, 34.635876, 44.067749>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.554802, 34.529556, 44.129261>,  <37.211159, 34.352356, 44.231777>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.554802, 34.529556, 44.129261> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401039, 0.271580, -0.874878,
		-0.317968, 0.854397, 0.410977,
		0.859106, 0.443001, -0.256293,
		37.812534, 34.662457, 44.052372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.001690, 34.638767, 43.670189>,  <37.211159, 34.352356, 44.231777>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.001690, 34.638767, 43.670189> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.391327, 34.726734, 43.649078>,  <37.625107, 34.779514, 43.636410>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.391327, 34.726734, 43.649078>,  <37.001690, 34.638767, 43.670189>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.391327, 34.726734, 43.649078> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114386, 0.277748, -0.953820,
		-0.195099, 0.935144, 0.295706,
		0.974090, 0.219914, -0.052779,
		37.683556, 34.792709, 43.633244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.073261, 35.381878, 43.466461>,  <37.001690, 34.638767, 43.670189>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.073261, 35.381878, 43.466461> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.383247, 35.143257, 43.382984>,  <37.569241, 35.000084, 43.332897>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.383247, 35.143257, 43.382984>,  <37.073261, 35.381878, 43.466461>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.383247, 35.143257, 43.382984> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155930, 0.139521, -0.977865,
		0.612462, 0.790355, 0.015104,
		0.774968, -0.596550, -0.208692,
		37.615738, 34.964291, 43.320377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.377052, 35.659679, 42.813446>,  <37.073261, 35.381878, 43.466461>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.377052, 35.659679, 42.813446> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.533669, 35.297359, 42.878216>,  <37.627636, 35.079967, 42.917080>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.533669, 35.297359, 42.878216>,  <37.377052, 35.659679, 42.813446>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.533669, 35.297359, 42.878216> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032225, -0.189366, -0.981378,
		0.919598, 0.379027, -0.103333,
		0.391537, -0.905803, 0.161927,
		37.651131, 35.025620, 42.926792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.799992, 35.589725, 42.230824>,  <37.377052, 35.659679, 42.813446>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.799992, 35.589725, 42.230824> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.726143, 35.224052, 42.375145>,  <37.681831, 35.004646, 42.461739>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.726143, 35.224052, 42.375145>,  <37.799992, 35.589725, 42.230824>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.726143, 35.224052, 42.375145> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151942, -0.336150, -0.929471,
		0.970993, -0.226426, -0.076841,
		-0.184626, -0.914185, 0.360803,
		37.670753, 34.949799, 42.483387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.174763, 35.050411, 41.811974>,  <37.799992, 35.589725, 42.230824>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.174763, 35.050411, 41.811974> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.844589, 34.901653, 41.981842>,  <37.646484, 34.812397, 42.083763>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.844589, 34.901653, 41.981842>,  <38.174763, 35.050411, 41.811974>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.844589, 34.901653, 41.981842> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384358, -0.180714, -0.905324,
		0.413430, -0.910515, 0.006227,
		-0.825436, -0.371895, 0.424676,
		37.596958, 34.790085, 42.109245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.763504, 34.965706, 41.482685>,  <38.174763, 35.050411, 41.811974>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.763504, 34.965706, 41.482685> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.937180, 35.198673, 41.207798>,  <39.041386, 35.338455, 41.042866>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.937180, 35.198673, 41.207798>,  <38.763504, 34.965706, 41.482685>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.937180, 35.198673, 41.207798> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.751247, 0.186873, 0.633014,
		0.497104, -0.791115, -0.356405,
		0.434184, 0.582421, -0.687219,
		39.067436, 35.373398, 41.001633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.441761, 34.799362, 41.501575>,  <38.763504, 34.965706, 41.482685>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.441761, 34.799362, 41.501575> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.463127, 35.157974, 41.325672>,  <39.475948, 35.373142, 41.220131>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.463127, 35.157974, 41.325672>,  <39.441761, 34.799362, 41.501575>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.463127, 35.157974, 41.325672> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728822, 0.266038, 0.630906,
		0.682616, -0.354206, -0.639197,
		0.053419, 0.896528, -0.439755,
		39.479153, 35.426933, 41.193745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.118145, 34.880215, 41.443398>,  <39.441761, 34.799362, 41.501575>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.118145, 34.880215, 41.443398> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.959641, 35.247417, 41.449734>,  <39.864540, 35.467739, 41.453537>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.959641, 35.247417, 41.449734>,  <40.118145, 34.880215, 41.443398>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.959641, 35.247417, 41.449734> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641294, 0.264383, 0.720308,
		0.657056, 0.295588, -0.693473,
		-0.396257, 0.918003, 0.015844,
		39.840763, 35.522820, 41.454487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.627769, 35.300266, 41.367718>,  <40.118145, 34.880215, 41.443398>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.627769, 35.300266, 41.367718> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.336369, 35.493320, 41.562183>,  <40.161530, 35.609154, 41.678864>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.336369, 35.493320, 41.562183>,  <40.627769, 35.300266, 41.367718>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.336369, 35.493320, 41.562183> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638665, 0.221804, 0.736825,
		0.247785, 0.847270, -0.469826,
		-0.728498, 0.482636, 0.486161,
		40.117821, 35.638111, 41.708031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.967236, 35.748405, 41.656689>,  <40.627769, 35.300266, 41.367718>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.967236, 35.748405, 41.656689> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.638817, 35.839420, 41.866112>,  <40.441765, 35.894032, 41.991764>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.638817, 35.839420, 41.866112>,  <40.967236, 35.748405, 41.656689>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.638817, 35.839420, 41.866112> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570292, 0.285956, 0.770062,
		0.025508, 0.930835, -0.364548,
		-0.821046, 0.227542, 0.523554,
		40.392502, 35.907684, 42.023178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.178940, 36.340618, 42.003471>,  <40.967236, 35.748405, 41.656689>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.178940, 36.340618, 42.003471> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.865795, 36.203121, 42.210922>,  <40.677910, 36.120625, 42.335392>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.865795, 36.203121, 42.210922>,  <41.178940, 36.340618, 42.003471>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.865795, 36.203121, 42.210922> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494927, 0.161107, 0.853869,
		-0.377063, 0.925142, 0.044002,
		-0.782860, -0.343740, 0.518625,
		40.630936, 36.099998, 42.366508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.186981, 36.844368, 42.521519>,  <41.178940, 36.340618, 42.003471>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.186981, 36.844368, 42.521519> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.979271, 36.528526, 42.652290>,  <40.854645, 36.339020, 42.730751>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.979271, 36.528526, 42.652290>,  <41.186981, 36.844368, 42.521519>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.979271, 36.528526, 42.652290> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479504, 0.047465, 0.876255,
		-0.707413, 0.611778, 0.353971,
		-0.519272, -0.789605, 0.326927,
		40.823490, 36.291645, 42.750370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.837513, 36.995216, 43.137165>,  <41.186981, 36.844368, 42.521519>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.837513, 36.995216, 43.137165> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.871784, 36.597031, 43.153690>,  <40.892345, 36.358120, 43.163605>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.871784, 36.597031, 43.153690>,  <40.837513, 36.995216, 43.137165>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.871784, 36.597031, 43.153690> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526820, 0.080460, 0.846160,
		-0.845648, -0.050727, 0.531325,
		0.085674, -0.995466, 0.041317,
		40.897488, 36.298389, 43.166084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.788788, 36.904156, 43.870132>,  <40.837513, 36.995216, 43.137165>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.788788, 36.904156, 43.870132> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.913029, 36.535847, 43.775723>,  <40.987576, 36.314861, 43.719078>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.913029, 36.535847, 43.775723>,  <40.788788, 36.904156, 43.870132>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.913029, 36.535847, 43.775723> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330532, -0.128187, 0.935049,
		-0.891220, -0.368447, 0.264528,
		0.310607, -0.920769, -0.236026,
		41.006210, 36.259617, 43.704914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.455688, 36.351513, 44.390060>,  <40.788788, 36.904156, 43.870132>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.455688, 36.351513, 44.390060> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.787746, 36.192493, 44.233692>,  <40.986980, 36.097080, 44.139870>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.787746, 36.192493, 44.233692>,  <40.455688, 36.351513, 44.390060>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.787746, 36.192493, 44.233692> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286559, -0.297237, 0.910788,
		-0.478279, -0.868105, -0.132827,
		0.830140, -0.397548, -0.390925,
		41.036789, 36.073231, 44.116413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.600101, 35.581799, 44.575241>,  <40.455688, 36.351513, 44.390060>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.600101, 35.581799, 44.575241> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.947029, 35.760773, 44.488014>,  <41.155186, 35.868156, 44.435680>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.947029, 35.760773, 44.488014>,  <40.600101, 35.581799, 44.575241>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.947029, 35.760773, 44.488014> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297487, -0.114731, 0.947807,
		0.399065, -0.886926, -0.232615,
		0.867323, 0.447437, -0.218064,
		41.207226, 35.895004, 44.422596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.039505, 35.227955, 44.955612>,  <40.600101, 35.581799, 44.575241>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.039505, 35.227955, 44.955612> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.260380, 35.547413, 44.859901>,  <41.392906, 35.739086, 44.802475>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.260380, 35.547413, 44.859901>,  <41.039505, 35.227955, 44.955612>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.260380, 35.547413, 44.859901> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452969, -0.046445, 0.890316,
		0.699935, -0.600006, -0.387408,
		0.552188, 0.798647, -0.239275,
		41.426037, 35.787006, 44.788120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.760323, 35.024750, 44.995972>,  <41.039505, 35.227955, 44.955612>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.760323, 35.024750, 44.995972> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.752674, 35.420517, 45.053509>,  <41.748085, 35.657978, 45.088032>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.752674, 35.420517, 45.053509>,  <41.760323, 35.024750, 44.995972>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.752674, 35.420517, 45.053509> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477628, -0.117352, 0.870689,
		0.878354, 0.085353, -0.470329,
		-0.019122, 0.989416, 0.143844,
		41.746937, 35.717342, 45.096661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.499035, 35.265079, 45.174355>,  <41.760323, 35.024750, 44.995972>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.499035, 35.265079, 45.174355> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.259594, 35.545212, 45.329895>,  <42.115929, 35.713291, 45.423222>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.259594, 35.545212, 45.329895>,  <42.499035, 35.265079, 45.174355>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.259594, 35.545212, 45.329895> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529133, -0.018758, 0.848332,
		0.601410, 0.713569, -0.359341,
		-0.598603, 0.700334, 0.388854,
		42.080013, 35.755314, 45.446552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.969513, 35.714855, 44.751999>,  <42.499035, 35.265079, 45.174355>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.969513, 35.714855, 44.751999> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.336060, 35.669991, 44.598278>,  <43.555988, 35.643074, 44.506046>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.336060, 35.669991, 44.598278>,  <42.969513, 35.714855, 44.751999>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.336060, 35.669991, 44.598278> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355290, 0.214521, -0.909808,
		0.184483, 0.970258, 0.156731,
		0.916371, -0.112159, -0.384298,
		43.610970, 35.636341, 44.482990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.083080, 36.263931, 44.289757>,  <42.969513, 35.714855, 44.751999>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.083080, 36.263931, 44.289757> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.333691, 35.982578, 44.155460>,  <43.484058, 35.813766, 44.074883>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.333691, 35.982578, 44.155460>,  <43.083080, 36.263931, 44.289757>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.333691, 35.982578, 44.155460> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304950, 0.175199, -0.936115,
		0.717267, 0.688883, -0.104729,
		0.626525, -0.703381, -0.335739,
		43.521648, 35.771564, 44.054737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.364685, 36.610886, 43.755383>,  <43.083080, 36.263931, 44.289757>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.364685, 36.610886, 43.755383> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.433304, 36.218449, 43.719563>,  <43.474476, 35.982986, 43.698071>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.433304, 36.218449, 43.719563>,  <43.364685, 36.610886, 43.755383>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.433304, 36.218449, 43.719563> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263474, 0.041900, -0.963756,
		0.949290, 0.188928, -0.251306,
		0.171551, -0.981097, -0.089553,
		43.484768, 35.924118, 43.692696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.819035, 36.546600, 43.128685>,  <43.364685, 36.610886, 43.755383>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.819035, 36.546600, 43.128685> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.671364, 36.177380, 43.171917>,  <43.582760, 35.955849, 43.197857>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.671364, 36.177380, 43.171917>,  <43.819035, 36.546600, 43.128685>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.671364, 36.177380, 43.171917> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053376, -0.137158, -0.989110,
		0.927825, -0.359389, 0.099904,
		-0.369178, -0.923053, 0.108075,
		43.560612, 35.900463, 43.204338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.265129, 36.025925, 42.752838>,  <43.819035, 36.546600, 43.128685>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.265129, 36.025925, 42.752838> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.930183, 35.812405, 42.799965>,  <43.729218, 35.684292, 42.828243>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.930183, 35.812405, 42.799965>,  <44.265129, 36.025925, 42.752838>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.930183, 35.812405, 42.799965> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001877, -0.218337, -0.975872,
		0.546648, -0.816935, 0.183829,
		-0.837360, -0.533803, 0.117820,
		43.678974, 35.652264, 42.835312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.427639, 35.427181, 42.326748>,  <44.265129, 36.025925, 42.752838>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.427639, 35.427181, 42.326748> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.036335, 35.479893, 42.390789>,  <43.801552, 35.511520, 42.429214>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.036335, 35.479893, 42.390789>,  <44.427639, 35.427181, 42.326748>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.036335, 35.479893, 42.390789> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189146, -0.250629, -0.949425,
		-0.084987, -0.959072, 0.270107,
		-0.978264, 0.131778, 0.160105,
		43.742855, 35.519428, 42.438820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.094837, 34.820026, 41.923504>,  <44.427639, 35.427181, 42.326748>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.094837, 34.820026, 41.923504> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.818672, 35.103462, 41.981792>,  <43.652973, 35.273525, 42.016766>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.818672, 35.103462, 41.981792>,  <44.094837, 34.820026, 41.923504>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.818672, 35.103462, 41.981792> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481793, -0.300124, -0.823287,
		-0.539641, -0.638610, 0.548603,
		-0.690408, 0.708593, 0.145718,
		43.611549, 35.316040, 42.025509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.394772, 34.506386, 41.945709>,  <44.094837, 34.820026, 41.923504>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.394772, 34.506386, 41.945709> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.345036, 34.882706, 41.819572>,  <43.315193, 35.108498, 41.743889>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.345036, 34.882706, 41.819572>,  <43.394772, 34.506386, 41.945709>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.345036, 34.882706, 41.819572> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640121, -0.318888, -0.698968,
		-0.758146, 0.114947, 0.641874,
		-0.124342, 0.940796, -0.315343,
		43.307732, 35.164944, 41.724968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.709229, 34.477085, 41.610184>,  <43.394772, 34.506386, 41.945709>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.709229, 34.477085, 41.610184> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.870071, 34.820126, 41.481918>,  <42.966579, 35.025951, 41.404961>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.870071, 34.820126, 41.481918>,  <42.709229, 34.477085, 41.610184>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.870071, 34.820126, 41.481918> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415771, -0.141001, -0.898473,
		-0.815747, 0.494608, 0.299868,
		0.402110, 0.857603, -0.320665,
		42.990704, 35.077408, 41.385719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.198441, 34.797829, 41.350502>,  <42.709229, 34.477085, 41.610184>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.198441, 34.797829, 41.350502> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.510880, 34.973637, 41.173096>,  <42.698345, 35.079121, 41.066654>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.510880, 34.973637, 41.173096>,  <42.198441, 34.797829, 41.350502>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.510880, 34.973637, 41.173096> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522403, 0.070936, -0.849743,
		-0.342015, 0.895429, 0.285013,
		0.781102, 0.439517, -0.443514,
		42.745209, 35.105492, 41.040043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.870350, 35.350876, 40.966991>,  <42.198441, 34.797829, 41.350502>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.870350, 35.350876, 40.966991> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.243973, 35.279919, 40.843014>,  <42.468147, 35.237343, 40.768627>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.243973, 35.279919, 40.843014>,  <41.870350, 35.350876, 40.966991>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.243973, 35.279919, 40.843014> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319574, -0.027803, -0.947153,
		0.159405, 0.983747, -0.082661,
		0.934057, -0.177397, -0.309948,
		42.524189, 35.226700, 40.750031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.885601, 35.661564, 40.308178>,  <41.870350, 35.350876, 40.966991>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.885601, 35.661564, 40.308178> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.206364, 35.422619, 40.303993>,  <42.398823, 35.279251, 40.301483>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.206364, 35.422619, 40.303993>,  <41.885601, 35.661564, 40.308178>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.206364, 35.422619, 40.303993> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175931, -0.219374, -0.959647,
		0.570960, 0.771387, -0.281011,
		0.801906, -0.597359, -0.010457,
		42.446934, 35.243412, 40.300858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.195984, 35.886864, 39.704777>,  <41.885601, 35.661564, 40.308178>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.195984, 35.886864, 39.704777> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.315777, 35.517029, 39.798973>,  <42.387653, 35.295128, 39.855492>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.315777, 35.517029, 39.798973>,  <42.195984, 35.886864, 39.704777>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.315777, 35.517029, 39.798973> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164686, -0.293205, -0.941759,
		0.939781, 0.243258, -0.240076,
		0.299482, -0.924584, 0.235487,
		42.405621, 35.239655, 39.869617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.865604, 35.723824, 39.285362>,  <42.195984, 35.886864, 39.704777>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.865604, 35.723824, 39.285362> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.694347, 35.369942, 39.359104>,  <42.591591, 35.157612, 39.403351>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.694347, 35.369942, 39.359104>,  <42.865604, 35.723824, 39.285362>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.694347, 35.369942, 39.359104> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365945, -0.016802, -0.930485,
		0.826302, -0.465848, -0.316560,
		-0.428146, -0.884705, 0.184358,
		42.565903, 35.104530, 39.414413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<30.267490, 40.126343, 33.678230> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.231955, 40.503529, 33.806561>,  <30.210634, 40.729839, 33.883560>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.231955, 40.503529, 33.806561>,  <30.267490, 40.126343, 33.678230>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.231955, 40.503529, 33.806561> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.878997, -0.225715, 0.420021,
		0.468479, -0.244690, 0.848914,
		-0.088837, 0.942963, 0.320825,
		30.205303, 40.786419, 33.902809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.129116, 40.248501, 34.371792>,  <30.267490, 40.126343, 33.678230>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.129116, 40.248501, 34.371792> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.956224, 40.546932, 34.169189>,  <29.852489, 40.725990, 34.047626>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.956224, 40.546932, 34.169189>,  <30.129116, 40.248501, 34.371792>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.956224, 40.546932, 34.169189> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.896182, -0.292987, 0.333191,
		0.100185, 0.597938, 0.795257,
		-0.432227, 0.746076, -0.506508,
		29.826557, 40.770756, 34.017239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.686026, 40.599941, 34.868404>,  <30.129116, 40.248501, 34.371792>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.686026, 40.599941, 34.868404> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.556114, 40.711330, 34.506859>,  <29.478168, 40.778164, 34.289932>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.556114, 40.711330, 34.506859>,  <29.686026, 40.599941, 34.868404>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.556114, 40.711330, 34.506859> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.943522, -0.161556, 0.289252,
		-0.065476, 0.946758, 0.315217,
		-0.324777, 0.278475, -0.903865,
		29.458681, 40.794872, 34.235699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.110163, 41.022648, 34.919750>,  <29.686026, 40.599941, 34.868404>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.110163, 41.022648, 34.919750> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.078430, 40.828720, 34.571346>,  <29.059391, 40.712364, 34.362305>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.078430, 40.828720, 34.571346>,  <29.110163, 41.022648, 34.919750>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.078430, 40.828720, 34.571346> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.956857, -0.207971, 0.202913,
		-0.279520, 0.849527, -0.447406,
		-0.079332, -0.484822, -0.871008,
		29.054630, 40.683273, 34.310043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.585857, 41.331158, 34.422428>,  <29.110163, 41.022648, 34.919750>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.585857, 41.331158, 34.422428> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.642342, 40.943485, 34.341694>,  <28.676233, 40.710880, 34.293251>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.642342, 40.943485, 34.341694>,  <28.585857, 41.331158, 34.422428>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.642342, 40.943485, 34.341694> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.976265, -0.170150, 0.134000,
		-0.164213, 0.178125, -0.970209,
		0.141212, -0.969186, -0.201838,
		28.684706, 40.652729, 34.281143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.939180, 40.981228, 34.477543>,  <28.585857, 41.331158, 34.422428>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.939180, 40.981228, 34.477543> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.167339, 40.655293, 34.436203>,  <28.304234, 40.459732, 34.411400>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.167339, 40.655293, 34.436203>,  <27.939180, 40.981228, 34.477543>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.167339, 40.655293, 34.436203> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.733450, -0.561932, 0.382469,
		-0.369727, -0.142356, -0.918170,
		0.570396, -0.814842, -0.103351,
		28.338459, 40.410839, 34.405197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.485331, 40.455051, 34.160233>,  <27.939180, 40.981228, 34.477543>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.485331, 40.455051, 34.160233> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.796467, 40.256126, 34.313934>,  <27.983149, 40.136772, 34.406155>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.796467, 40.256126, 34.313934>,  <27.485331, 40.455051, 34.160233>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.796467, 40.256126, 34.313934> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627700, -0.584630, 0.514004,
		-0.030975, -0.641007, -0.766910,
		0.777839, -0.497310, 0.384251,
		28.029819, 40.106934, 34.429211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.451105, 39.808838, 33.958645>,  <27.485331, 40.455051, 34.160233>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.451105, 39.808838, 33.958645> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.675442, 39.790878, 34.289326>,  <27.810043, 39.780102, 34.487736>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.675442, 39.790878, 34.289326>,  <27.451105, 39.808838, 33.958645>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.675442, 39.790878, 34.289326> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.727053, -0.504367, 0.465842,
		0.396046, -0.862321, -0.315514,
		0.560841, -0.044901, 0.826705,
		27.843695, 39.777409, 34.537338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.512096, 39.114361, 34.115314>,  <27.451105, 39.808838, 33.958645>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.512096, 39.114361, 34.115314> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.573622, 39.320034, 34.452824>,  <27.610537, 39.443439, 34.655331>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.573622, 39.320034, 34.452824>,  <27.512096, 39.114361, 34.115314>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.573622, 39.320034, 34.452824> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654184, -0.586989, 0.476955,
		0.740530, -0.625346, 0.246084,
		0.153813, 0.514184, 0.843775,
		27.619766, 39.474289, 34.705956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.567980, 38.557766, 34.479404>,  <27.512096, 39.114361, 34.115314>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.567980, 38.557766, 34.479404> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.493031, 38.829235, 34.763458>,  <27.448061, 38.992119, 34.933891>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.493031, 38.829235, 34.763458>,  <27.567980, 38.557766, 34.479404>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.493031, 38.829235, 34.763458> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490368, -0.691039, 0.531041,
		0.851134, -0.248722, 0.462285,
		-0.187375, 0.678677, 0.710132,
		27.436817, 39.032837, 34.976498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.699057, 38.142414, 35.070999>,  <27.567980, 38.557766, 34.479404>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.699057, 38.142414, 35.070999> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.499311, 38.458160, 35.213852>,  <27.379465, 38.647606, 35.299564>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.499311, 38.458160, 35.213852>,  <27.699057, 38.142414, 35.070999>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.499311, 38.458160, 35.213852> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453052, -0.589268, 0.668959,
		0.738498, 0.172254, 0.651881,
		-0.499364, 0.789361, 0.357134,
		27.349503, 38.694969, 35.320992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.764729, 38.085484, 35.795311>,  <27.699057, 38.142414, 35.070999>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.764729, 38.085484, 35.795311> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.441444, 38.310585, 35.725903>,  <27.247475, 38.445644, 35.684258>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.441444, 38.310585, 35.725903>,  <27.764729, 38.085484, 35.795311>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.441444, 38.310585, 35.725903> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521167, -0.546311, 0.655689,
		0.274197, 0.620365, 0.734822,
		-0.808208, 0.562753, -0.173517,
		27.198982, 38.479412, 35.673847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.496145, 38.233532, 36.427490>,  <27.764729, 38.085484, 35.795311>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.496145, 38.233532, 36.427490> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.179670, 38.278805, 36.187084>,  <26.989786, 38.305969, 36.042843>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.179670, 38.278805, 36.187084>,  <27.496145, 38.233532, 36.427490>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.179670, 38.278805, 36.187084> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569320, -0.495254, 0.656200,
		-0.223382, 0.861344, 0.456276,
		-0.791186, 0.113184, -0.601011,
		26.942314, 38.312759, 36.006783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.844542, 38.245670, 36.863453>,  <27.496145, 38.233532, 36.427490>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.844542, 38.245670, 36.863453> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.689379, 38.208847, 36.496616>,  <26.596281, 38.186752, 36.276516>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.689379, 38.208847, 36.496616>,  <26.844542, 38.245670, 36.863453>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.689379, 38.208847, 36.496616> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.710952, -0.603345, 0.361280,
		-0.586580, 0.792149, 0.168593,
		-0.387907, -0.092057, -0.917090,
		26.573006, 38.181229, 36.221489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.090092, 38.152691, 37.016521>,  <26.844542, 38.245670, 36.863453>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.090092, 38.152691, 37.016521> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.182047, 38.016399, 36.651871>,  <26.237219, 37.934624, 36.433083>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.182047, 38.016399, 36.651871>,  <26.090092, 38.152691, 37.016521>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.182047, 38.016399, 36.651871> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.677504, -0.728491, 0.101435,
		-0.698671, 0.594309, -0.398317,
		0.229887, -0.340731, -0.911622,
		26.251013, 37.914181, 36.378384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.368450, 37.982407, 36.636395>,  <26.090092, 38.152691, 37.016521>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.368450, 37.982407, 36.636395> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.622101, 37.767361, 36.414097>,  <25.774292, 37.638332, 36.280720>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.622101, 37.767361, 36.414097>,  <25.368450, 37.982407, 36.636395>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.622101, 37.767361, 36.414097> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602182, -0.794219, 0.081200,
		-0.485036, 0.283166, -0.827380,
		0.634127, -0.537618, -0.555742,
		25.812340, 37.606075, 36.247375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.027187, 37.537144, 36.055580>,  <25.368450, 37.982407, 36.636395>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.027187, 37.537144, 36.055580> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.375385, 37.358307, 36.137894>,  <25.584305, 37.251003, 36.187283>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.375385, 37.358307, 36.137894>,  <25.027187, 37.537144, 36.055580>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.375385, 37.358307, 36.137894> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469066, -0.880241, 0.071782,
		0.149046, -0.159012, -0.975961,
		0.870495, -0.447091, 0.205784,
		25.636534, 37.224178, 36.199627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.016211, 36.872494, 35.638798>,  <25.027187, 37.537144, 36.055580>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.016211, 36.872494, 35.638798> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.294216, 36.827763, 35.922897>,  <25.461020, 36.800922, 36.093357>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.294216, 36.827763, 35.922897>,  <25.016211, 36.872494, 35.638798>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.294216, 36.827763, 35.922897> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404387, -0.877580, 0.257536,
		0.594497, -0.466205, -0.655153,
		0.695014, -0.111831, 0.710246,
		25.502720, 36.794212, 36.135971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.228264, 36.114841, 35.632572>,  <25.016211, 36.872494, 35.638798>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.228264, 36.114841, 35.632572> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.375748, 36.220921, 35.988937>,  <25.464237, 36.284569, 36.202755>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.375748, 36.220921, 35.988937>,  <25.228264, 36.114841, 35.632572>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.375748, 36.220921, 35.988937> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289175, -0.878155, 0.381080,
		0.883420, -0.398137, -0.247093,
		0.368708, 0.265201, 0.890911,
		25.486361, 36.300480, 36.256210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.772705, 35.600731, 35.767269>,  <25.228264, 36.114841, 35.632572>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.772705, 35.600731, 35.767269> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.631519, 35.762794, 36.104614>,  <25.546808, 35.860031, 36.307022>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.631519, 35.762794, 36.104614>,  <25.772705, 35.600731, 35.767269>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.631519, 35.762794, 36.104614> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165613, -0.914203, 0.369873,
		0.920863, -0.009121, 0.389779,
		-0.352963, 0.405155, 0.843366,
		25.525631, 35.884342, 36.357624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.119938, 35.269314, 36.339611>,  <25.772705, 35.600731, 35.767269>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.119938, 35.269314, 36.339611> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.779682, 35.428589, 36.476933>,  <25.575529, 35.524155, 36.559326>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.779682, 35.428589, 36.476933>,  <26.119938, 35.269314, 36.339611>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.779682, 35.428589, 36.476933> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246959, -0.879084, 0.407703,
		0.464135, 0.262027, 0.846121,
		-0.850641, 0.398187, 0.343304,
		25.524490, 35.548046, 36.579926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.810196, 35.623997, 36.620697>,  <26.119938, 35.269314, 36.339611>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.810196, 35.623997, 36.620697> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.056063, 35.466175, 36.893906>,  <27.203583, 35.371483, 37.057831>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.056063, 35.466175, 36.893906>,  <26.810196, 35.623997, 36.620697>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.056063, 35.466175, 36.893906> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.764770, 0.510141, -0.393553,
		-0.193158, 0.764255, 0.615308,
		0.614669, -0.394551, 0.683017,
		27.240463, 35.347809, 37.098812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.156967, 36.153374, 37.046509>,  <26.810196, 35.623997, 36.620697>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.156967, 36.153374, 37.046509> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.383175, 35.825954, 37.006168>,  <27.518900, 35.629501, 36.981964>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.383175, 35.825954, 37.006168>,  <27.156967, 36.153374, 37.046509>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.383175, 35.825954, 37.006168> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.784983, 0.571727, -0.238602,
		0.252966, 0.055768, 0.965867,
		0.565518, -0.818547, -0.100851,
		27.552830, 35.580391, 36.975914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.792030, 36.305996, 37.473362>,  <27.156967, 36.153374, 37.046509>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.792030, 36.305996, 37.473362> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.878036, 36.016991, 37.210533>,  <27.929640, 35.843586, 37.052837>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.878036, 36.016991, 37.210533>,  <27.792030, 36.305996, 37.473362>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.878036, 36.016991, 37.210533> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.836835, 0.483151, -0.257433,
		0.503463, -0.494505, 0.708513,
		0.215017, -0.722516, -0.657068,
		27.942541, 35.800236, 37.013412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.444773, 36.174919, 37.554844>,  <27.792030, 36.305996, 37.473362>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.444773, 36.174919, 37.554844> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.367350, 36.045700, 37.184292>,  <28.320896, 35.968166, 36.961960>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.367350, 36.045700, 37.184292>,  <28.444773, 36.174919, 37.554844>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.367350, 36.045700, 37.184292> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.756628, 0.551925, -0.350560,
		0.624539, -0.768776, 0.137600,
		-0.193557, -0.323050, -0.926377,
		28.309282, 35.948784, 36.906380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.119310, 36.241219, 37.243538>,  <28.444773, 36.174919, 37.554844>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.119310, 36.241219, 37.243538> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.863682, 36.192188, 36.939812>,  <28.710304, 36.162769, 36.757576>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.863682, 36.192188, 36.939812>,  <29.119310, 36.241219, 37.243538>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.863682, 36.192188, 36.939812> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574408, 0.580479, -0.577148,
		0.511510, -0.804997, -0.300562,
		-0.639072, -0.122572, -0.759317,
		28.671961, 36.155415, 36.712017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.523291, 35.957214, 36.748867>,  <29.119310, 36.241219, 37.243538>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.523291, 35.957214, 36.748867> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.210972, 36.136578, 36.574837>,  <29.023581, 36.244194, 36.470421>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.210972, 36.136578, 36.574837>,  <29.523291, 35.957214, 36.748867>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.210972, 36.136578, 36.574837> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609265, 0.392207, -0.689180,
		-0.138393, -0.803185, -0.579432,
		-0.780797, 0.448406, -0.435073,
		28.976732, 36.271099, 36.444313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.589693, 35.842468, 36.022392>,  <29.523291, 35.957214, 36.748867>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.589693, 35.842468, 36.022392> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.323921, 36.141357, 36.027927>,  <29.164457, 36.320690, 36.031250>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.323921, 36.141357, 36.027927>,  <29.589693, 35.842468, 36.022392>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.323921, 36.141357, 36.027927> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445694, 0.411039, -0.795238,
		-0.599909, -0.522211, -0.606139,
		-0.664429, 0.747223, 0.013840,
		29.124592, 36.365524, 36.032078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.434666, 35.827629, 35.394482>,  <29.589693, 35.842468, 36.022392>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.434666, 35.827629, 35.394482> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.321011, 36.182411, 35.540123>,  <29.252817, 36.395279, 35.627510>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.321011, 36.182411, 35.540123>,  <29.434666, 35.827629, 35.394482>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.321011, 36.182411, 35.540123> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577116, 0.461476, -0.673779,
		-0.765639, 0.018686, -0.642999,
		-0.284138, 0.886956, 0.364108,
		29.235769, 36.448498, 35.649357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.217613, 36.260273, 34.819027>,  <29.434666, 35.827629, 35.394482>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.217613, 36.260273, 34.819027> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.335323, 36.508251, 35.109974>,  <29.405951, 36.657040, 35.284542>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.335323, 36.508251, 35.109974>,  <29.217613, 36.260273, 34.819027>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.335323, 36.508251, 35.109974> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573840, 0.493996, -0.653204,
		-0.764270, 0.609617, -0.210379,
		0.294278, 0.619948, 0.727369,
		29.423607, 36.694237, 35.328186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.125746, 36.975079, 34.502926>,  <29.217613, 36.260273, 34.819027>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.125746, 36.975079, 34.502926> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.399282, 36.952408, 34.793896>,  <29.563404, 36.938805, 34.968479>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.399282, 36.952408, 34.793896>,  <29.125746, 36.975079, 34.502926>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.399282, 36.952408, 34.793896> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596146, 0.618223, -0.512260,
		-0.420681, 0.783957, 0.456551,
		0.683840, -0.056673, 0.727428,
		29.604435, 36.935406, 35.012123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.374016, 37.621414, 34.456173>,  <29.125746, 36.975079, 34.502926>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.374016, 37.621414, 34.456173> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.646278, 37.431499, 34.679344>,  <29.809637, 37.317551, 34.813248>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.646278, 37.431499, 34.679344>,  <29.374016, 37.621414, 34.456173>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.646278, 37.431499, 34.679344> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727081, 0.531117, -0.435050,
		-0.089767, 0.701777, 0.706718,
		0.680658, -0.474788, 0.557926,
		29.850475, 37.289062, 34.846722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.852915, 38.127708, 34.663563>,  <29.374016, 37.621414, 34.456173>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.852915, 38.127708, 34.663563> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.074322, 37.802792, 34.737099>,  <30.207165, 37.607841, 34.781219>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.074322, 37.802792, 34.737099>,  <29.852915, 38.127708, 34.663563>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.074322, 37.802792, 34.737099> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.832608, 0.544909, -0.099183,
		-0.019612, 0.207968, 0.977939,
		0.553515, -0.812295, 0.183843,
		30.240376, 37.559105, 34.792252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.104700, 38.223000, 35.337288>,  <29.852915, 38.127708, 34.663563>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.104700, 38.223000, 35.337288> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.362083, 37.991974, 35.136341>,  <30.516514, 37.853359, 35.015774>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.362083, 37.991974, 35.136341>,  <30.104700, 38.223000, 35.337288>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.362083, 37.991974, 35.136341> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.743849, 0.626695, 0.232255,
		0.180690, -0.523134, 0.832876,
		0.643459, -0.577567, -0.502370,
		30.555120, 37.818703, 34.985630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.629793, 38.126652, 35.808800>,  <30.104700, 38.223000, 35.337288>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.629793, 38.126652, 35.808800> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.767361, 38.050091, 35.441086>,  <30.849901, 38.004154, 35.220459>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.767361, 38.050091, 35.441086>,  <30.629793, 38.126652, 35.808800>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.767361, 38.050091, 35.441086> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.864383, 0.446987, 0.230314,
		0.366826, -0.873824, 0.319172,
		0.343919, -0.191402, -0.919285,
		30.870537, 37.992672, 35.165298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.393267, 37.913406, 35.939503>,  <30.629793, 38.126652, 35.808800>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.393267, 37.913406, 35.939503> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.356295, 38.018200, 35.555248>,  <31.334110, 38.081078, 35.324696>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.356295, 38.018200, 35.555248>,  <31.393267, 37.913406, 35.939503>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.356295, 38.018200, 35.555248> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.790906, 0.605429, 0.089011,
		0.604916, -0.751545, -0.263166,
		-0.092432, 0.261984, -0.960636,
		31.328566, 38.096794, 35.267059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.105118, 37.864464, 35.703476>,  <31.393267, 37.913406, 35.939503>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.105118, 37.864464, 35.703476> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.923742, 38.082275, 35.421234>,  <31.814917, 38.212963, 35.251888>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.923742, 38.082275, 35.421234>,  <32.105118, 37.864464, 35.703476>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.923742, 38.082275, 35.421234> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.834484, 0.537474, -0.121482,
		0.313092, -0.643898, -0.698118,
		-0.453443, 0.544533, -0.705601,
		31.787710, 38.245636, 35.209553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.601135, 37.733189, 35.240257>,  <32.105118, 37.864464, 35.703476>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.601135, 37.733189, 35.240257> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.376484, 38.040321, 35.116966>,  <32.241692, 38.224602, 35.042992>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.376484, 38.040321, 35.116966>,  <32.601135, 37.733189, 35.240257>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.376484, 38.040321, 35.116966> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.800850, 0.410886, -0.435673,
		-0.207880, -0.491528, -0.845687,
		-0.561627, 0.767836, -0.308226,
		32.207996, 38.270672, 35.024498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.721405, 37.900188, 34.490623>,  <32.601135, 37.733189, 35.240257>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.721405, 37.900188, 34.490623> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.582355, 38.248180, 34.630508>,  <32.498924, 38.456974, 34.714439>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.582355, 38.248180, 34.630508>,  <32.721405, 37.900188, 34.490623>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.582355, 38.248180, 34.630508> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711110, 0.487713, -0.506417,
		-0.611130, 0.072640, -0.788190,
		-0.347625, 0.869977, 0.349711,
		32.478069, 38.509174, 34.735420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.788635, 38.292763, 33.892578>,  <32.721405, 37.900188, 34.490623>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.788635, 38.292763, 33.892578> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.765945, 38.545303, 34.201946>,  <32.752331, 38.696827, 34.387566>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.765945, 38.545303, 34.201946>,  <32.788635, 38.292763, 33.892578>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.765945, 38.545303, 34.201946> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.745887, 0.541739, -0.387520,
		-0.663653, 0.554902, -0.501646,
		-0.056726, 0.631350, 0.773421,
		32.748928, 38.734707, 34.433971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.930897, 38.894676, 33.578201>,  <32.788635, 38.292763, 33.892578>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.930897, 38.894676, 33.578201> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.988228, 38.953369, 33.969696>,  <33.022629, 38.988586, 34.204594>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.988228, 38.953369, 33.969696>,  <32.930897, 38.894676, 33.578201>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.988228, 38.953369, 33.969696> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.864019, 0.463719, -0.196054,
		-0.482626, 0.873747, -0.060315,
		0.143332, 0.146734, 0.978736,
		33.031227, 38.997391, 34.263317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.033207, 39.625919, 33.689438>,  <32.930897, 38.894676, 33.578201>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.033207, 39.625919, 33.689438> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.202148, 39.420460, 33.988174>,  <33.303513, 39.297184, 34.167416>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.202148, 39.420460, 33.988174>,  <33.033207, 39.625919, 33.689438>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.202148, 39.420460, 33.988174> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.805268, 0.590882, -0.049009,
		-0.416123, 0.622110, 0.663190,
		0.422356, -0.513652, 0.746845,
		33.328854, 39.266365, 34.212227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<44.646584, 33.152977, 44.274422> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.416340, 32.887516, 44.465515>,  <44.278194, 32.728237, 44.580173>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.416340, 32.887516, 44.465515>,  <44.646584, 33.152977, 44.274422>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.416340, 32.887516, 44.465515> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544611, 0.124668, 0.829371,
		-0.609975, 0.737577, 0.289673,
		-0.575612, -0.663655, 0.477737,
		44.243656, 32.688419, 44.608837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.685555, 33.407009, 44.951973>,  <44.646584, 33.152977, 44.274422>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.685555, 33.407009, 44.951973> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.497261, 33.057816, 45.003052>,  <44.384285, 32.848301, 45.033699>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.497261, 33.057816, 45.003052>,  <44.685555, 33.407009, 44.951973>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.497261, 33.057816, 45.003052> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371128, -0.064620, 0.926330,
		-0.800421, 0.483447, 0.354409,
		-0.470734, -0.872985, 0.127697,
		44.356041, 32.795921, 45.041363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.220478, 33.443550, 45.588867>,  <44.685555, 33.407009, 44.951973>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.220478, 33.443550, 45.588867> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.342922, 33.072720, 45.502308>,  <44.416389, 32.850224, 45.450375>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.342922, 33.072720, 45.502308>,  <44.220478, 33.443550, 45.588867>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.342922, 33.072720, 45.502308> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570966, -0.003098, 0.820968,
		-0.761769, -0.374864, 0.528380,
		0.306115, -0.927074, -0.216394,
		44.434757, 32.794598, 45.437389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.138847, 33.076389, 46.190861>,  <44.220478, 33.443550, 45.588867>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.138847, 33.076389, 46.190861> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.406044, 32.891518, 45.957561>,  <44.566360, 32.780594, 45.817581>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.406044, 32.891518, 45.957561>,  <44.138847, 33.076389, 46.190861>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.406044, 32.891518, 45.957561> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609544, -0.109798, 0.785112,
		-0.426905, -0.879961, 0.208376,
		0.667988, -0.462183, -0.583248,
		44.606441, 32.752861, 45.782585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.340267, 32.558216, 46.609097>,  <44.138847, 33.076389, 46.190861>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.340267, 32.558216, 46.609097> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.619888, 32.543713, 46.323437>,  <44.787663, 32.535011, 46.152042>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.619888, 32.543713, 46.323437>,  <44.340267, 32.558216, 46.609097>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.619888, 32.543713, 46.323437> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707231, -0.112417, 0.697988,
		-0.105586, -0.992999, -0.052948,
		0.699054, -0.036251, -0.714150,
		44.829605, 32.532833, 46.109192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.670860, 31.959497, 46.743053>,  <44.340267, 32.558216, 46.609097>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.670860, 31.959497, 46.743053> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.932766, 32.188210, 46.545326>,  <45.089909, 32.325436, 46.426689>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.932766, 32.188210, 46.545326>,  <44.670860, 31.959497, 46.743053>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.932766, 32.188210, 46.545326> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684871, -0.172165, 0.708033,
		0.319735, -0.802139, -0.504324,
		0.654768, 0.571780, -0.494315,
		45.129196, 32.359745, 46.397030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.298729, 31.569887, 46.656059>,  <44.670860, 31.959497, 46.743053>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.298729, 31.569887, 46.656059> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.393887, 31.957975, 46.637840>,  <45.450981, 32.190830, 46.626907>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.393887, 31.957975, 46.637840>,  <45.298729, 31.569887, 46.656059>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<45.393887, 31.957975, 46.637840> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.753821, -0.154858, 0.638571,
		0.612502, -0.186248, -0.768214,
		0.237897, 0.970222, -0.045547,
		45.465256, 32.249043, 46.624176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.997746, 31.546011, 46.726238>,  <45.298729, 31.569887, 46.656059>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.997746, 31.546011, 46.726238> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.927853, 31.932611, 46.801437>,  <45.885918, 32.164574, 46.846558>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.927853, 31.932611, 46.801437>,  <45.997746, 31.546011, 46.726238>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<45.927853, 31.932611, 46.801437> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.776612, 0.017917, 0.629724,
		0.605261, 0.256034, -0.753728,
		-0.174735, 0.966502, 0.187994,
		45.875431, 32.222561, 46.857834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.649982, 31.955608, 46.706696>,  <45.997746, 31.546011, 46.726238>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.649982, 31.955608, 46.706696> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.396698, 32.176121, 46.924000>,  <46.244728, 32.308430, 47.054382>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.396698, 32.176121, 46.924000>,  <46.649982, 31.955608, 46.706696>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<46.396698, 32.176121, 46.924000> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.739130, 0.222451, 0.635769,
		0.229640, 0.804116, -0.548328,
		-0.633208, 0.551283, 0.543262,
		46.206734, 32.341507, 47.086979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.178230, 32.396057, 47.018978>,  <46.649982, 31.955608, 46.706696>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.178230, 32.396057, 47.018978> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.826103, 32.411266, 47.208122>,  <46.614826, 32.420391, 47.321609>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.826103, 32.411266, 47.208122>,  <47.178230, 32.396057, 47.018978>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<46.826103, 32.411266, 47.208122> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463747, -0.140975, 0.874680,
		0.099921, 0.989283, 0.106469,
		-0.880315, 0.038024, 0.472863,
		46.562008, 32.422672, 47.349979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.278358, 32.907730, 47.519699>,  <47.178230, 32.396057, 47.018978>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.278358, 32.907730, 47.519699> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.978287, 32.678452, 47.651566>,  <46.798244, 32.540886, 47.730686>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.978287, 32.678452, 47.651566>,  <47.278358, 32.907730, 47.519699>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<46.978287, 32.678452, 47.651566> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453562, -0.083267, 0.887326,
		-0.481158, 0.815179, 0.322443,
		-0.750179, -0.573192, 0.329670,
		46.753235, 32.506493, 47.750465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.084030, 33.322529, 48.038807>,  <47.278358, 32.907730, 47.519699>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.084030, 33.322529, 48.038807> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.983273, 32.941395, 48.106522>,  <46.922817, 32.712715, 48.147152>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.983273, 32.941395, 48.106522>,  <47.084030, 33.322529, 48.038807>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<46.983273, 32.941395, 48.106522> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475657, 0.030442, 0.879104,
		-0.842793, 0.301962, 0.445554,
		-0.251893, -0.952834, 0.169287,
		46.907703, 32.655544, 48.157307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.679588, 33.119194, 48.627750>,  <47.084030, 33.322529, 48.038807>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.679588, 33.119194, 48.627750> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.936302, 32.819347, 48.563023>,  <47.090328, 32.639439, 48.524185>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.936302, 32.819347, 48.563023>,  <46.679588, 33.119194, 48.627750>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<46.936302, 32.819347, 48.563023> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447956, 0.195167, 0.872494,
		-0.622458, -0.632438, 0.461052,
		0.641780, -0.749621, -0.161821,
		47.128838, 32.594460, 48.514477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.268211, 33.517464, 48.703308>,  <46.679588, 33.119194, 48.627750>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.268211, 33.517464, 48.703308> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.244057, 33.735989, 49.037472>,  <47.229565, 33.867104, 49.237968>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.244057, 33.735989, 49.037472>,  <47.268211, 33.517464, 48.703308>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<47.244057, 33.735989, 49.037472> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.998068, 0.045312, 0.042516,
		-0.014628, 0.836358, -0.547989,
		-0.060389, 0.546308, 0.835404,
		47.225941, 33.899879, 49.288094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.748940, 33.843475, 48.453743>,  <47.268211, 33.517464, 48.703308>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.748940, 33.843475, 48.453743> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.614395, 34.144619, 48.680042>,  <46.533669, 34.325306, 48.815823>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.614395, 34.144619, 48.680042>,  <46.748940, 33.843475, 48.453743>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<46.614395, 34.144619, 48.680042> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273090, 0.496956, -0.823684,
		-0.901269, -0.431551, 0.038444,
		-0.336358, 0.752860, 0.565744,
		46.513489, 34.370476, 48.849766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.039375, 33.952629, 48.318474>,  <46.748940, 33.843475, 48.453743>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.039375, 33.952629, 48.318474> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.091053, 34.310158, 48.490238>,  <46.122059, 34.524673, 48.593296>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.091053, 34.310158, 48.490238>,  <46.039375, 33.952629, 48.318474>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<46.091053, 34.310158, 48.490238> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397826, 0.443377, -0.803213,
		-0.908320, -0.067062, 0.412866,
		0.129190, 0.893823, 0.429407,
		46.129810, 34.578304, 48.619061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.384529, 34.247574, 48.188011>,  <46.039375, 33.952629, 48.318474>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.384529, 34.247574, 48.188011> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.646931, 34.529217, 48.296741>,  <45.804371, 34.698200, 48.361980>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.646931, 34.529217, 48.296741>,  <45.384529, 34.247574, 48.188011>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<45.646931, 34.529217, 48.296741> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263007, 0.550834, -0.792092,
		-0.707447, 0.448126, 0.546536,
		0.656008, 0.704106, 0.271825,
		45.843735, 34.740448, 48.378288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.014263, 34.884136, 48.171471>,  <45.384529, 34.247574, 48.188011>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.014263, 34.884136, 48.171471> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.397221, 34.998974, 48.159039>,  <45.626995, 35.067875, 48.151581>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.397221, 34.998974, 48.159039>,  <45.014263, 34.884136, 48.171471>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<45.397221, 34.998974, 48.159039> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197404, 0.572125, -0.796055,
		-0.210762, 0.768277, 0.604425,
		0.957398, 0.287094, -0.031079,
		45.684441, 35.085102, 48.149715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.026493, 35.611843, 48.169754>,  <45.014263, 34.884136, 48.171471>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.026493, 35.611843, 48.169754> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.383568, 35.516430, 48.016800>,  <45.597813, 35.459183, 47.925030>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.383568, 35.516430, 48.016800>,  <45.026493, 35.611843, 48.169754>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<45.383568, 35.516430, 48.016800> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256151, 0.429554, -0.865951,
		0.370808, 0.870969, 0.322357,
		0.892686, -0.238529, -0.382381,
		45.651375, 35.444870, 47.902084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.250149, 36.200062, 47.806084>,  <45.026493, 35.611843, 48.169754>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.250149, 36.200062, 47.806084> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.436981, 35.883072, 47.649208>,  <45.549080, 35.692879, 47.555084>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.436981, 35.883072, 47.649208>,  <45.250149, 36.200062, 47.806084>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<45.436981, 35.883072, 47.649208> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208122, 0.332550, -0.919835,
		0.859372, 0.511261, -0.009604,
		0.467082, -0.792479, -0.392188,
		45.577106, 35.645329, 47.531551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.495323, 36.470783, 47.167793>,  <45.250149, 36.200062, 47.806084>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.495323, 36.470783, 47.167793> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.477974, 36.072239, 47.138451>,  <45.467564, 35.833111, 47.120846>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.477974, 36.072239, 47.138451>,  <45.495323, 36.470783, 47.167793>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<45.477974, 36.072239, 47.138451> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280672, 0.082620, -0.956242,
		0.958824, -0.020885, -0.283234,
		-0.043372, -0.996362, -0.073356,
		45.464962, 35.773331, 47.116444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.836910, 36.305359, 46.540016>,  <45.495323, 36.470783, 47.167793>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.836910, 36.305359, 46.540016> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.601486, 35.993645, 46.626095>,  <45.460232, 35.806618, 46.677742>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.601486, 35.993645, 46.626095>,  <45.836910, 36.305359, 46.540016>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<45.601486, 35.993645, 46.626095> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310112, -0.028205, -0.950281,
		0.746612, -0.626032, -0.225066,
		-0.588559, -0.779287, 0.215199,
		45.424919, 35.759857, 46.690655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.963799, 35.890301, 46.037827>,  <45.836910, 36.305359, 46.540016>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.963799, 35.890301, 46.037827> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.608479, 35.772480, 46.178776>,  <45.395287, 35.701790, 46.263348>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.608479, 35.772480, 46.178776>,  <45.963799, 35.890301, 46.037827>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<45.608479, 35.772480, 46.178776> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383604, 0.053958, -0.921920,
		0.252538, -0.954111, -0.160922,
		-0.888297, -0.294550, 0.352375,
		45.341988, 35.684116, 46.284489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.657818, 35.493759, 45.520863>,  <45.963799, 35.890301, 46.037827>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.657818, 35.493759, 45.520863> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.323803, 35.554043, 45.732521>,  <45.123394, 35.590214, 45.859516>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.323803, 35.554043, 45.732521>,  <45.657818, 35.493759, 45.520863>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<45.323803, 35.554043, 45.732521> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527593, 0.053442, -0.847815,
		-0.156049, -0.987133, 0.034885,
		-0.835042, 0.150706, 0.529144,
		45.073292, 35.599255, 45.891266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.254589, 35.052746, 45.249195>,  <45.657818, 35.493759, 45.520863>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.254589, 35.052746, 45.249195> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.020687, 35.311935, 45.444412>,  <44.880344, 35.467449, 45.561543>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.020687, 35.311935, 45.444412>,  <45.254589, 35.052746, 45.249195>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<45.020687, 35.311935, 45.444412> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656322, -0.024322, -0.754088,
		-0.476762, -0.761271, 0.439504,
		-0.584756, 0.647977, 0.488043,
		44.845261, 35.506329, 45.590824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.615448, 34.743591, 45.235359>,  <45.254589, 35.052746, 45.249195>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.615448, 34.743591, 45.235359> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.558487, 35.134426, 45.298626>,  <44.524311, 35.368927, 45.336586>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.558487, 35.134426, 45.298626>,  <44.615448, 34.743591, 45.235359>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.558487, 35.134426, 45.298626> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.664869, 0.023957, -0.746575,
		-0.733261, -0.211472, 0.646226,
		-0.142399, 0.977090, 0.158168,
		44.515766, 35.427555, 45.346077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.890278, 34.745056, 45.266693>,  <44.615448, 34.743591, 45.235359>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.890278, 34.745056, 45.266693> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.024105, 35.113213, 45.185757>,  <44.104401, 35.334106, 45.137196>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.024105, 35.113213, 45.185757>,  <43.890278, 34.745056, 45.266693>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.024105, 35.113213, 45.185757> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604143, 0.044701, -0.795622,
		-0.723238, 0.388436, 0.571003,
		0.334572, 0.920391, -0.202342,
		44.124477, 35.389328, 45.125053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.303093, 35.164265, 45.223129>,  <43.890278, 34.745056, 45.266693>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.303093, 35.164265, 45.223129> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.606609, 35.337460, 45.028496>,  <43.788719, 35.441376, 44.911716>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.606609, 35.337460, 45.028496>,  <43.303093, 35.164265, 45.223129>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.606609, 35.337460, 45.028496> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537514, -0.005652, -0.843236,
		-0.367858, 0.901384, 0.228446,
		0.758788, 0.432984, -0.486586,
		43.834248, 35.467354, 44.882519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.944454, 35.703537, 45.568111>,  <43.303093, 35.164265, 45.223129>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.944454, 35.703537, 45.568111> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.585651, 35.808079, 45.710705>,  <42.370369, 35.870804, 45.796261>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.585651, 35.808079, 45.710705>,  <42.944454, 35.703537, 45.568111>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.585651, 35.808079, 45.710705> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364169, -0.020135, 0.931115,
		0.250533, 0.965032, -0.077118,
		-0.897003, 0.261359, 0.356479,
		42.316551, 35.886486, 45.817650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.085693, 36.103580, 46.164383>,  <42.944454, 35.703537, 45.568111>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.085693, 36.103580, 46.164383> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.711685, 35.980423, 46.234741>,  <42.487282, 35.906528, 46.276955>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.711685, 35.980423, 46.234741>,  <43.085693, 36.103580, 46.164383>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.711685, 35.980423, 46.234741> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198800, -0.044426, 0.979033,
		-0.293620, 0.950384, 0.102748,
		-0.935022, -0.307890, 0.175893,
		42.431179, 35.888058, 46.287510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.880745, 36.435738, 46.737247>,  <43.085693, 36.103580, 46.164383>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.880745, 36.435738, 46.737247> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.611000, 36.140499, 46.728806>,  <42.449154, 35.963356, 46.723740>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.611000, 36.140499, 46.728806>,  <42.880745, 36.435738, 46.737247>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.611000, 36.140499, 46.728806> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040003, -0.065056, 0.997079,
		-0.737316, 0.671549, 0.073397,
		-0.674362, -0.738099, -0.021103,
		42.408691, 35.919071, 46.722473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.494675, 36.549633, 47.270996>,  <42.880745, 36.435738, 46.737247>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.494675, 36.549633, 47.270996> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.432468, 36.164234, 47.183830>,  <42.395145, 35.932995, 47.131531>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.432468, 36.164234, 47.183830>,  <42.494675, 36.549633, 47.270996>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.432468, 36.164234, 47.183830> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088861, -0.233347, 0.968325,
		-0.983828, 0.131229, 0.121907,
		-0.155519, -0.963498, -0.217912,
		42.385815, 35.875183, 47.118458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.100266, 36.312256, 47.767769>,  <42.494675, 36.549633, 47.270996>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.100266, 36.312256, 47.767769> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.263756, 35.970734, 47.638794>,  <42.361851, 35.765820, 47.561409>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.263756, 35.970734, 47.638794>,  <42.100266, 36.312256, 47.767769>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.263756, 35.970734, 47.638794> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261323, -0.229017, 0.937689,
		-0.874444, -0.467518, 0.129513,
		0.408726, -0.853802, -0.322436,
		42.386375, 35.714592, 47.542065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.856323, 35.838360, 48.179470>,  <42.100266, 36.312256, 47.767769>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.856323, 35.838360, 48.179470> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.181702, 35.647003, 48.047146>,  <42.376930, 35.532188, 47.967751>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.181702, 35.647003, 48.047146>,  <41.856323, 35.838360, 48.179470>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.181702, 35.647003, 48.047146> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232944, -0.253202, 0.938949,
		-0.532953, -0.840848, -0.094527,
		0.813448, -0.478397, -0.330815,
		42.425735, 35.503483, 47.947903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.815201, 35.362263, 48.599537>,  <41.856323, 35.838360, 48.179470>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.815201, 35.362263, 48.599537> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.185257, 35.357151, 48.447773>,  <42.407291, 35.354084, 48.356712>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.185257, 35.357151, 48.447773>,  <41.815201, 35.362263, 48.599537>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.185257, 35.357151, 48.447773> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368875, -0.205917, 0.906383,
		-0.089712, -0.978486, -0.185787,
		0.925139, -0.012781, -0.379412,
		42.462799, 35.353317, 48.333950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.509323, 34.572014, 48.449528>,  <41.815201, 35.362263, 48.599537>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.509323, 34.572014, 48.449528> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.274189, 34.364136, 48.697517>,  <41.133110, 34.239410, 48.846310>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.274189, 34.364136, 48.697517>,  <41.509323, 34.572014, 48.449528>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.274189, 34.364136, 48.697517> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.685883, -0.086207, -0.722588,
		0.428971, -0.849992, -0.305774,
		-0.587834, -0.519694, 0.619975,
		41.097839, 34.208229, 48.883511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.331432, 33.940067, 48.139938>,  <41.509323, 34.572014, 48.449528>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.331432, 33.940067, 48.139938> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.046291, 34.022053, 48.408218>,  <40.875206, 34.071243, 48.569187>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.046291, 34.022053, 48.408218>,  <41.331432, 33.940067, 48.139938>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.046291, 34.022053, 48.408218> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.695841, -0.087452, -0.712852,
		-0.087452, -0.974856, 0.204959,
		0.712852, -0.204959, -0.670696,
		40.832436, 34.083542, 48.609428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.828613, 33.583759, 47.766212>,  <41.331432, 33.940067, 48.139938>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.828613, 33.583759, 47.766212> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.640728, 33.769772, 48.066376>,  <40.527996, 33.881378, 48.246475>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.640728, 33.769772, 48.066376>,  <40.828613, 33.583759, 47.766212>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.640728, 33.769772, 48.066376> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.875693, -0.137631, -0.462838,
		-0.111947, -0.874538, 0.471859,
		-0.469711, 0.465017, 0.750420,
		40.499817, 33.909283, 48.291500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.270378, 33.210182, 47.974308>,  <40.828613, 33.583759, 47.766212>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.270378, 33.210182, 47.974308> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.211128, 33.593822, 48.070793>,  <40.175579, 33.824005, 48.128685>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.211128, 33.593822, 48.070793>,  <40.270378, 33.210182, 47.974308>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.211128, 33.593822, 48.070793> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.901001, -0.030314, -0.432756,
		-0.407744, -0.281439, 0.868641,
		-0.148127, 0.959100, 0.241217,
		40.166691, 33.881554, 48.143158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.571289, 33.222488, 48.056656>,  <40.270378, 33.210182, 47.974308>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.571289, 33.222488, 48.056656> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.670620, 33.606377, 48.004082>,  <39.730217, 33.836708, 47.972538>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.670620, 33.606377, 48.004082>,  <39.571289, 33.222488, 48.056656>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.670620, 33.606377, 48.004082> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.727184, 0.095054, -0.679829,
		-0.639951, 0.264398, 0.721496,
		0.248327, 0.959718, -0.131436,
		39.745117, 33.894291, 47.964649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.010414, 33.633575, 48.107292>,  <39.571289, 33.222488, 48.056656>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.010414, 33.633575, 48.107292> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.247189, 33.875961, 47.894722>,  <39.389252, 34.021393, 47.767178>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.247189, 33.875961, 47.894722>,  <39.010414, 33.633575, 48.107292>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.247189, 33.875961, 47.894722> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.759652, 0.199115, -0.619098,
		-0.269337, 0.770167, 0.578188,
		0.591935, 0.605967, -0.531429,
		39.424770, 34.057751, 47.735294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.614239, 34.155796, 48.038723>,  <39.010414, 33.633575, 48.107292>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.614239, 34.155796, 48.038723> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.890560, 34.162971, 47.749596>,  <39.056351, 34.167278, 47.576118>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.890560, 34.162971, 47.749596>,  <38.614239, 34.155796, 48.038723>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.890560, 34.162971, 47.749596> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.712218, 0.189230, -0.675971,
		0.124654, 0.981769, 0.143497,
		0.690802, 0.017939, -0.722822,
		39.097801, 34.168354, 47.532749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<44.737263, 29.807964, 48.826115> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<45.013149, 30.038660, 48.650997>,  <45.178680, 30.177078, 48.545925>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<45.013149, 30.038660, 48.650997>,  <44.737263, 29.807964, 48.826115>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<45.013149, 30.038660, 48.650997> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632347, 0.185215, -0.752219,
		-0.352747, 0.795655, 0.492445,
		0.689715, 0.576739, -0.437796,
		45.220062, 30.211681, 48.519657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.378914, 30.379244, 48.700878>,  <44.737263, 29.807964, 48.826115>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.378914, 30.379244, 48.700878> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<44.689358, 30.400522, 48.449539>,  <44.875626, 30.413290, 48.298737>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<44.689358, 30.400522, 48.449539>,  <44.378914, 30.379244, 48.700878>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<44.689358, 30.400522, 48.449539> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617709, 0.264545, -0.740575,
		0.126829, 0.962905, 0.238177,
		0.776112, 0.053198, -0.628347,
		44.922192, 30.416481, 48.261036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.211460, 30.998137, 48.261662>,  <44.378914, 30.379244, 48.700878>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.211460, 30.998137, 48.261662> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<44.449707, 30.765879, 48.039639>,  <44.592655, 30.626524, 47.906425>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<44.449707, 30.765879, 48.039639>,  <44.211460, 30.998137, 48.261662>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<44.449707, 30.765879, 48.039639> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.636280, 0.080729, -0.767223,
		0.490292, 0.810146, -0.321367,
		0.595619, -0.580642, -0.555061,
		44.628391, 30.591686, 47.873119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.206577, 31.214384, 47.625099>,  <44.211460, 30.998137, 48.261662>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.206577, 31.214384, 47.625099> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<44.336121, 30.846645, 47.535728>,  <44.413845, 30.626001, 47.482105>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<44.336121, 30.846645, 47.535728>,  <44.206577, 31.214384, 47.625099>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<44.336121, 30.846645, 47.535728> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596631, -0.015178, -0.802372,
		0.734268, 0.393153, -0.553427,
		0.323855, -0.919348, -0.223423,
		44.433277, 30.570841, 47.468700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.387897, 31.187025, 46.877468>,  <44.206577, 31.214384, 47.625099>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.387897, 31.187025, 46.877468> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<44.308086, 30.809557, 46.983047>,  <44.260201, 30.583076, 47.046394>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<44.308086, 30.809557, 46.983047>,  <44.387897, 31.187025, 46.877468>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<44.308086, 30.809557, 46.983047> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547213, -0.116146, -0.828896,
		0.812863, -0.309828, -0.493215,
		-0.199530, -0.943672, 0.263953,
		44.248226, 30.526455, 47.062233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.400696, 30.829187, 46.282196>,  <44.387897, 31.187025, 46.877468>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.400696, 30.829187, 46.282196> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<44.217262, 30.560427, 46.514832>,  <44.107201, 30.399170, 46.654411>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<44.217262, 30.560427, 46.514832>,  <44.400696, 30.829187, 46.282196>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<44.217262, 30.560427, 46.514832> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568539, -0.281162, -0.773118,
		0.682981, -0.685197, -0.253067,
		-0.458585, -0.671903, 0.581589,
		44.079685, 30.358856, 46.689308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.351086, 30.290228, 45.913147>,  <44.400696, 30.829187, 46.282196>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.351086, 30.290228, 45.913147> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<44.076450, 30.204239, 46.190960>,  <43.911667, 30.152645, 46.357647>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<44.076450, 30.204239, 46.190960>,  <44.351086, 30.290228, 45.913147>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<44.076450, 30.204239, 46.190960> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557787, -0.456979, -0.692852,
		0.466332, -0.863109, 0.193850,
		-0.686592, -0.214972, 0.694535,
		43.870472, 30.139748, 46.399319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.281532, 29.647583, 45.828789>,  <44.351086, 30.290228, 45.913147>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.281532, 29.647583, 45.828789> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<43.952038, 29.790462, 46.004910>,  <43.754341, 29.876190, 46.110580>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<43.952038, 29.790462, 46.004910>,  <44.281532, 29.647583, 45.828789>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<43.952038, 29.790462, 46.004910> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564330, -0.441654, -0.697477,
		-0.054675, -0.823014, 0.565384,
		-0.823737, 0.357198, 0.440303,
		43.704918, 29.897621, 46.137001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.728207, 29.124826, 45.742538>,  <44.281532, 29.647583, 45.828789>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.728207, 29.124826, 45.742538> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<43.526150, 29.462511, 45.814243>,  <43.404915, 29.665123, 45.857265>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<43.526150, 29.462511, 45.814243>,  <43.728207, 29.124826, 45.742538>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<43.526150, 29.462511, 45.814243> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.729288, -0.306484, -0.611724,
		-0.461486, -0.439739, 0.770494,
		-0.505143, 0.844214, 0.179258,
		43.374607, 29.715775, 45.868023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.036606, 28.853750, 45.993988>,  <43.728207, 29.124826, 45.742538>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.036606, 28.853750, 45.993988> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<43.011772, 29.231819, 45.865742>,  <42.996872, 29.458660, 45.788795>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<43.011772, 29.231819, 45.865742>,  <43.036606, 28.853750, 45.993988>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<43.011772, 29.231819, 45.865742> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.763331, -0.251927, -0.594860,
		-0.643017, 0.207805, 0.737120,
		-0.062086, 0.945172, -0.320617,
		42.993145, 29.515371, 45.769558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.282028, 28.976330, 46.009079>,  <43.036606, 28.853750, 45.993988>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.282028, 28.976330, 46.009079> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<42.475079, 29.210865, 45.748840>,  <42.590908, 29.351587, 45.592697>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<42.475079, 29.210865, 45.748840>,  <42.282028, 28.976330, 46.009079>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<42.475079, 29.210865, 45.748840> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.722366, -0.153547, -0.674248,
		-0.495236, 0.795379, 0.349447,
		0.482626, 0.586340, -0.650597,
		42.619865, 29.386766, 45.553661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.873573, 29.544767, 45.934280>,  <42.282028, 28.976330, 46.009079>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.873573, 29.544767, 45.934280> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<42.105854, 29.519979, 45.609577>,  <42.245224, 29.505106, 45.414757>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<42.105854, 29.519979, 45.609577>,  <41.873573, 29.544767, 45.934280>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<42.105854, 29.519979, 45.609577> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.805608, 0.100039, -0.583941,
		0.117395, 0.993052, 0.008168,
		0.580701, -0.061972, -0.811755,
		42.280064, 29.501389, 45.366051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.454174, 30.193323, 46.227432>,  <41.873573, 29.544767, 45.934280>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.454174, 30.193323, 46.227432> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.096199, 30.192812, 46.405910>,  <40.881416, 30.192505, 46.512997>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.096199, 30.192812, 46.405910>,  <41.454174, 30.193323, 46.227432>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<41.096199, 30.192812, 46.405910> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440933, 0.150669, 0.884803,
		-0.068357, 0.988583, -0.134276,
		-0.894933, -0.001276, 0.446199,
		40.827721, 30.192429, 46.539772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.424263, 30.808233, 46.625298>,  <41.454174, 30.193323, 46.227432>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.424263, 30.808233, 46.625298> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.174713, 30.549376, 46.800560>,  <41.024982, 30.394062, 46.905716>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.174713, 30.549376, 46.800560>,  <41.424263, 30.808233, 46.625298>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<41.174713, 30.549376, 46.800560> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468604, 0.138924, 0.872416,
		-0.625449, 0.749604, 0.216583,
		-0.623878, -0.647143, 0.438157,
		40.987549, 30.355232, 46.932007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.132694, 31.232658, 47.063721>,  <41.424263, 30.808233, 46.625298>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.132694, 31.232658, 47.063721> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.082989, 30.861452, 47.204205>,  <41.053165, 30.638729, 47.288494>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.082989, 30.861452, 47.204205>,  <41.132694, 31.232658, 47.063721>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<41.082989, 30.861452, 47.204205> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266955, 0.309629, 0.912614,
		-0.955663, 0.207165, 0.209261,
		-0.124268, -0.928015, 0.351205,
		41.045708, 30.583048, 47.309566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.886082, 31.378632, 47.704277>,  <41.132694, 31.232658, 47.063721>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.886082, 31.378632, 47.704277> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.990391, 30.992737, 47.718578>,  <41.052975, 30.761200, 47.727161>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.990391, 30.992737, 47.718578>,  <40.886082, 31.378632, 47.704277>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.990391, 30.992737, 47.718578> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234200, 0.099149, 0.967119,
		-0.936563, -0.243822, 0.251797,
		0.260770, -0.964739, 0.035756,
		41.068623, 30.703316, 47.729305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.806698, 31.195490, 48.416542>,  <40.886082, 31.378632, 47.704277>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.806698, 31.195490, 48.416542> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.035999, 30.899950, 48.274853>,  <41.173580, 30.722626, 48.189838>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.035999, 30.899950, 48.274853>,  <40.806698, 31.195490, 48.416542>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<41.035999, 30.899950, 48.274853> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500599, -0.026437, 0.865276,
		-0.648673, -0.673352, 0.354712,
		0.573257, -0.738849, -0.354228,
		41.207977, 30.678295, 48.168583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.716419, 30.644505, 48.933781>,  <40.806698, 31.195490, 48.416542>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.716419, 30.644505, 48.933781> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.057972, 30.627399, 48.726299>,  <41.262905, 30.617136, 48.601810>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.057972, 30.627399, 48.726299>,  <40.716419, 30.644505, 48.933781>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<41.057972, 30.627399, 48.726299> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520242, 0.040800, 0.853044,
		-0.015321, -0.998252, 0.057089,
		0.853882, -0.042770, -0.518707,
		41.314137, 30.614571, 48.570686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.102791, 30.106895, 49.242905>,  <40.716419, 30.644505, 48.933781>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.102791, 30.106895, 49.242905> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.398861, 30.309517, 49.066025>,  <41.576504, 30.431089, 48.959896>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.398861, 30.309517, 49.066025>,  <41.102791, 30.106895, 49.242905>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<41.398861, 30.309517, 49.066025> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553450, -0.085462, 0.828486,
		0.381882, -0.857962, -0.343609,
		0.740175, 0.506554, -0.442202,
		41.620914, 30.461483, 48.933365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.637501, 29.892128, 49.663395>,  <41.102791, 30.106895, 49.242905>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.637501, 29.892128, 49.663395> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.791771, 30.181402, 49.434219>,  <41.884335, 30.354967, 49.296715>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.791771, 30.181402, 49.434219>,  <41.637501, 29.892128, 49.663395>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<41.791771, 30.181402, 49.434219> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752226, 0.113099, 0.649126,
		0.534236, -0.681332, -0.500378,
		0.385678, 0.723184, -0.572938,
		41.907475, 30.398357, 49.262337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.382244, 29.836828, 49.567524>,  <41.637501, 29.892128, 49.663395>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.382244, 29.836828, 49.567524> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<42.255360, 30.215590, 49.546539>,  <42.179230, 30.442846, 49.533947>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<42.255360, 30.215590, 49.546539>,  <42.382244, 29.836828, 49.567524>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<42.255360, 30.215590, 49.546539> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697137, 0.270331, 0.664019,
		0.642942, 0.174065, -0.745873,
		-0.317215, 0.946902, -0.052460,
		42.160194, 30.499660, 49.530800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.958248, 30.384916, 49.413200>,  <42.382244, 29.836828, 49.567524>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.958248, 30.384916, 49.413200> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<42.662319, 30.577139, 49.601551>,  <42.484760, 30.692472, 49.714561>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<42.662319, 30.577139, 49.601551>,  <42.958248, 30.384916, 49.413200>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<42.662319, 30.577139, 49.601551> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626482, 0.236865, 0.742574,
		0.245317, 0.844369, -0.476299,
		-0.739825, 0.480559, 0.470875,
		42.440372, 30.721306, 49.742813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.346004, 30.901762, 49.793488>,  <42.958248, 30.384916, 49.413200>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.346004, 30.901762, 49.793488> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<42.975590, 30.921120, 49.943211>,  <42.753342, 30.932734, 50.033043>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<42.975590, 30.921120, 49.943211>,  <43.346004, 30.901762, 49.793488>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<42.975590, 30.921120, 49.943211> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366121, 0.356052, 0.859757,
		-0.091665, 0.933212, -0.347437,
		-0.926041, 0.048394, 0.374306,
		42.697777, 30.935638, 50.055504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.356590, 31.522270, 50.008720>,  <43.346004, 30.901762, 49.793488>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.356590, 31.522270, 50.008720> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<43.064346, 31.347143, 50.218300>,  <42.889000, 31.242067, 50.344048>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<43.064346, 31.347143, 50.218300>,  <43.356590, 31.522270, 50.008720>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<43.064346, 31.347143, 50.218300> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346583, 0.423358, 0.837048,
		-0.588291, 0.793149, -0.157571,
		-0.730612, -0.437816, 0.523949,
		42.845161, 31.215797, 50.375484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.284580, 31.977976, 50.582191>,  <43.356590, 31.522270, 50.008720>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.284580, 31.977976, 50.582191> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<43.046394, 31.693531, 50.731716>,  <42.903481, 31.522865, 50.821430>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<43.046394, 31.693531, 50.731716>,  <43.284580, 31.977976, 50.582191>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<43.046394, 31.693531, 50.731716> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352316, 0.187027, 0.917003,
		-0.722005, 0.677748, 0.139167,
		-0.595469, -0.711111, 0.373815,
		42.867752, 31.480198, 50.843861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.750381, 32.233604, 51.143944>,  <43.284580, 31.977976, 50.582191>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.750381, 32.233604, 51.143944> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<42.854626, 31.852495, 51.206303>,  <42.917171, 31.623829, 51.243717>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<42.854626, 31.852495, 51.206303>,  <42.750381, 32.233604, 51.143944>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<42.854626, 31.852495, 51.206303> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336197, 0.240928, 0.910453,
		-0.905016, -0.184864, 0.383108,
		0.260611, -0.952774, 0.155893,
		42.932808, 31.566664, 51.253071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.212944, 32.815220, 51.307919>,  <42.750381, 32.233604, 51.143944>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.212944, 32.815220, 51.307919> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<42.100197, 33.144733, 51.504662>,  <42.032551, 33.342442, 51.622707>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<42.100197, 33.144733, 51.504662>,  <42.212944, 32.815220, 51.307919>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<42.100197, 33.144733, 51.504662> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580881, 0.261496, -0.770842,
		-0.763629, -0.502987, 0.404815,
		-0.281866, 0.823786, 0.491861,
		42.015636, 33.391869, 51.652222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.464352, 33.068508, 51.149475>,  <42.212944, 32.815220, 51.307919>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.464352, 33.068508, 51.149475> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.635761, 33.410919, 51.265121>,  <41.738605, 33.616364, 51.334511>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.635761, 33.410919, 51.265121>,  <41.464352, 33.068508, 51.149475>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<41.635761, 33.410919, 51.265121> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378854, 0.460732, -0.802618,
		-0.820266, 0.234409, 0.521744,
		0.428525, 0.856025, 0.289116,
		41.764320, 33.667728, 51.351856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.970840, 33.531475, 51.144997>,  <41.464352, 33.068508, 51.149475>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.970840, 33.531475, 51.144997> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.309032, 33.741913, 51.108360>,  <41.511948, 33.868176, 51.086380>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.309032, 33.741913, 51.108360>,  <40.970840, 33.531475, 51.144997>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<41.309032, 33.741913, 51.108360> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345116, 0.407440, -0.845510,
		-0.407500, 0.746471, 0.526046,
		0.845481, 0.526092, -0.091587,
		41.562675, 33.899742, 51.080883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.799038, 34.253056, 51.032154>,  <40.970840, 33.531475, 51.144997>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.799038, 34.253056, 51.032154> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.160286, 34.197712, 50.869556>,  <41.377033, 34.164505, 50.771999>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.160286, 34.197712, 50.869556>,  <40.799038, 34.253056, 51.032154>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<41.160286, 34.197712, 50.869556> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368831, 0.234766, -0.899360,
		0.219865, 0.962155, 0.160991,
		0.903118, -0.138359, -0.406490,
		41.431221, 34.156204, 50.747608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.865681, 34.791962, 50.555962>,  <40.799038, 34.253056, 51.032154>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.865681, 34.791962, 50.555962> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.140659, 34.529381, 50.431709>,  <41.305645, 34.371834, 50.357159>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.140659, 34.529381, 50.431709>,  <40.865681, 34.791962, 50.555962>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<41.140659, 34.529381, 50.431709> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239003, 0.199409, -0.950323,
		0.685782, 0.727537, -0.019811,
		0.687445, -0.656449, -0.310634,
		41.346893, 34.332447, 50.338520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.177654, 35.105431, 49.911118>,  <40.865681, 34.791962, 50.555962>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.177654, 35.105431, 49.911118> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.244404, 34.712006, 49.883507>,  <41.284454, 34.475952, 49.866940>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.244404, 34.712006, 49.883507>,  <41.177654, 35.105431, 49.911118>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<41.244404, 34.712006, 49.883507> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408022, -0.005156, -0.912958,
		0.897592, 0.180512, -0.402174,
		0.166874, -0.983559, -0.069025,
		41.294464, 34.416939, 49.862801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.501564, 35.004509, 49.233047>,  <41.177654, 35.105431, 49.911118>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.501564, 35.004509, 49.233047> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.378517, 34.629898, 49.300316>,  <41.304688, 34.405132, 49.340675>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.378517, 34.629898, 49.300316>,  <41.501564, 35.004509, 49.233047>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<41.378517, 34.629898, 49.300316> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524340, 0.019366, -0.851288,
		0.794002, -0.350049, -0.497019,
		-0.307618, -0.936531, 0.168168,
		41.286232, 34.348938, 49.350765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.214745, 35.054096, 49.140015>,  <41.501564, 35.004509, 49.233047>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.214745, 35.054096, 49.140015> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<42.502514, 35.218651, 48.916161>,  <42.675175, 35.317383, 48.781849>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<42.502514, 35.218651, 48.916161>,  <42.214745, 35.054096, 49.140015>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<42.502514, 35.218651, 48.916161> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617697, -0.010503, 0.786346,
		0.317612, -0.911402, -0.261666,
		0.719426, 0.411383, -0.559634,
		42.718342, 35.342064, 48.748272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.677372, 34.968678, 49.599762>,  <42.214745, 35.054096, 49.140015>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.677372, 34.968678, 49.599762> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<42.860176, 35.203476, 49.332458>,  <42.969856, 35.344357, 49.172077>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<42.860176, 35.203476, 49.332458>,  <42.677372, 34.968678, 49.599762>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<42.860176, 35.203476, 49.332458> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.769668, 0.115595, 0.627892,
		0.445821, -0.801292, -0.398968,
		0.457006, 0.587001, -0.668263,
		42.997276, 35.379578, 49.131981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.393211, 34.684216, 49.424900>,  <42.677372, 34.968678, 49.599762>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.393211, 34.684216, 49.424900> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<43.403793, 35.082600, 49.390572>,  <43.410145, 35.321629, 49.369972>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<43.403793, 35.082600, 49.390572>,  <43.393211, 34.684216, 49.424900>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<43.403793, 35.082600, 49.390572> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.812012, 0.028661, 0.582937,
		0.583041, -0.085115, -0.807972,
		0.026459, 0.995959, -0.085825,
		43.411732, 35.381386, 49.364822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.090530, 34.762615, 49.443962>,  <43.393211, 34.684216, 49.424900>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.090530, 34.762615, 49.443962> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<43.939804, 35.132805, 49.459499>,  <43.849369, 35.354919, 49.468822>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<43.939804, 35.132805, 49.459499>,  <44.090530, 34.762615, 49.443962>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<43.939804, 35.132805, 49.459499> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.761002, 0.285400, 0.582599,
		0.528092, 0.249097, -0.811831,
		-0.376820, 0.925471, 0.038846,
		43.826759, 35.410446, 49.471153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.573044, 35.149567, 49.159515>,  <44.090530, 34.762615, 49.443962>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.573044, 35.149567, 49.159515> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<44.348560, 35.378387, 49.398781>,  <44.213871, 35.515678, 49.542339>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<44.348560, 35.378387, 49.398781>,  <44.573044, 35.149567, 49.159515>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<44.348560, 35.378387, 49.398781> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712405, -0.034043, 0.700942,
		0.421338, 0.819511, -0.388427,
		-0.561206, 0.572051, 0.598168,
		44.180199, 35.550003, 49.578232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.990276, 35.773445, 49.297821>,  <44.573044, 35.149567, 49.159515>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.990276, 35.773445, 49.297821> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<44.726254, 35.706795, 49.590824>,  <44.567841, 35.666805, 49.766624>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<44.726254, 35.706795, 49.590824>,  <44.990276, 35.773445, 49.297821>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<44.726254, 35.706795, 49.590824> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.746076, -0.031495, 0.665116,
		-0.087757, 0.985517, 0.145106,
		-0.660053, -0.166629, 0.732506,
		44.528236, 35.656807, 49.810577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.244835, 36.101238, 49.891254>,  <44.990276, 35.773445, 49.297821>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.244835, 36.101238, 49.891254> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<44.983490, 35.839611, 50.043728>,  <44.826683, 35.682632, 50.135212>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<44.983490, 35.839611, 50.043728>,  <45.244835, 36.101238, 49.891254>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<44.983490, 35.839611, 50.043728> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653187, -0.232516, 0.720613,
		-0.382701, 0.719810, 0.579149,
		-0.653366, -0.654072, 0.381186,
		44.787479, 35.643391, 50.158085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.121891, 36.276428, 50.560833>,  <45.244835, 36.101238, 49.891254>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.121891, 36.276428, 50.560833> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<45.023556, 35.888710, 50.558422>,  <44.964554, 35.656078, 50.556976>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<45.023556, 35.888710, 50.558422>,  <45.121891, 36.276428, 50.560833>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<45.023556, 35.888710, 50.558422> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563024, -0.147855, 0.813107,
		-0.789031, 0.196495, 0.582083,
		-0.245835, -0.969293, -0.006031,
		44.949806, 35.597923, 50.556614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.938972, 36.105564, 51.265896>,  <45.121891, 36.276428, 50.560833>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.938972, 36.105564, 51.265896> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<44.977966, 35.740116, 51.108013>,  <45.001362, 35.520847, 51.013283>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<44.977966, 35.740116, 51.108013>,  <44.938972, 36.105564, 51.265896>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<44.977966, 35.740116, 51.108013> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439011, -0.316446, 0.840911,
		-0.893177, -0.255256, 0.370241,
		0.097486, -0.913623, -0.394702,
		45.007214, 35.466030, 50.989601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<36.958424, 34.923923, 36.593109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.294899, 34.725071, 36.508011>,  <37.496784, 34.605759, 36.456951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.294899, 34.725071, 36.508011>,  <36.958424, 34.923923, 36.593109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.294899, 34.725071, 36.508011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321704, 0.143856, 0.935848,
		-0.434632, -0.855668, 0.280939,
		0.841190, -0.497129, -0.212747,
		37.547256, 34.575932, 36.444187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.959553, 34.516979, 37.099083>,  <36.958424, 34.923923, 36.593109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.959553, 34.516979, 37.099083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.333607, 34.559132, 36.963783>,  <37.558041, 34.584423, 36.882603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.333607, 34.559132, 36.963783>,  <36.959553, 34.516979, 37.099083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.333607, 34.559132, 36.963783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327614, 0.106236, 0.938820,
		0.134869, -0.988741, 0.064820,
		0.935136, 0.105382, -0.338253,
		37.614147, 34.590744, 36.862309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.489693, 34.074898, 37.490311>,  <36.959553, 34.516979, 37.099083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.489693, 34.074898, 37.490311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.691761, 34.378139, 37.325348>,  <37.813000, 34.560085, 37.226372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.691761, 34.378139, 37.325348>,  <37.489693, 34.074898, 37.490311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.691761, 34.378139, 37.325348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310518, 0.286197, 0.906460,
		0.805224, -0.585974, -0.090829,
		0.505167, 0.758107, -0.412408,
		37.843311, 34.605572, 37.201626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.118500, 33.998550, 37.680489>,  <37.489693, 34.074898, 37.490311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.118500, 33.998550, 37.680489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.115631, 34.392281, 37.609997>,  <38.113911, 34.628517, 37.567703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.115631, 34.392281, 37.609997>,  <38.118500, 33.998550, 37.680489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.115631, 34.392281, 37.609997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240215, 0.172768, 0.955221,
		0.970693, -0.035478, -0.237689,
		-0.007176, 0.984323, -0.176227,
		38.113480, 34.687576, 37.557129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.662346, 34.233753, 38.028595>,  <38.118500, 33.998550, 37.680489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.662346, 34.233753, 38.028595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.449890, 34.564968, 37.956772>,  <38.322418, 34.763699, 37.913677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.449890, 34.564968, 37.956772>,  <38.662346, 34.233753, 38.028595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.449890, 34.564968, 37.956772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211329, 0.334694, 0.918325,
		0.820506, 0.449813, -0.352758,
		-0.531140, 0.828039, -0.179560,
		38.290546, 34.813381, 37.902905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.104279, 34.762028, 38.223835>,  <38.662346, 34.233753, 38.028595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.104279, 34.762028, 38.223835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.728878, 34.900009, 38.217911>,  <38.503635, 34.982796, 38.214355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.728878, 34.900009, 38.217911>,  <39.104279, 34.762028, 38.223835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.728878, 34.900009, 38.217911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099618, 0.311607, 0.944975,
		0.330585, 0.885387, -0.326807,
		-0.938504, 0.344950, -0.014812,
		38.447327, 35.003494, 38.213467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.182888, 35.459320, 38.364075>,  <39.104279, 34.762028, 38.223835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.182888, 35.459320, 38.364075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.810238, 35.353348, 38.463577>,  <38.586647, 35.289764, 38.523281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.810238, 35.353348, 38.463577>,  <39.182888, 35.459320, 38.364075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.810238, 35.353348, 38.463577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060805, 0.561227, 0.825425,
		-0.358288, 0.784116, -0.506746,
		-0.931629, -0.264928, 0.248759,
		38.530750, 35.273869, 38.538204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.005497, 36.005779, 38.610851>,  <39.182888, 35.459320, 38.364075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.005497, 36.005779, 38.610851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.771671, 35.721737, 38.767841>,  <38.631374, 35.551311, 38.862034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.771671, 35.721737, 38.767841>,  <39.005497, 36.005779, 38.610851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.771671, 35.721737, 38.767841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211084, 0.333965, 0.918646,
		-0.783406, 0.619855, -0.045334,
		-0.584567, -0.710104, 0.392472,
		38.596302, 35.508705, 38.885582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.656872, 36.296444, 39.205769>,  <39.005497, 36.005779, 38.610851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.656872, 36.296444, 39.205769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.611462, 35.906429, 39.282093>,  <38.584213, 35.672421, 39.327888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.611462, 35.906429, 39.282093>,  <38.656872, 36.296444, 39.205769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.611462, 35.906429, 39.282093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130106, 0.175808, 0.975789,
		-0.984979, 0.135606, 0.106900,
		-0.113529, -0.975040, 0.190811,
		38.577404, 35.613918, 39.339336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.267883, 36.227898, 39.827721>,  <38.656872, 36.296444, 39.205769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.267883, 36.227898, 39.827721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.461800, 35.878342, 39.813328>,  <38.578152, 35.668610, 39.804691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.461800, 35.878342, 39.813328>,  <38.267883, 36.227898, 39.827721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.461800, 35.878342, 39.813328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222156, 0.083246, 0.971451,
		-0.845945, -0.478945, 0.234496,
		0.484793, -0.873889, -0.035979,
		38.607239, 35.616177, 39.802532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.073479, 35.941620, 40.462669>,  <38.267883, 36.227898, 39.827721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.073479, 35.941620, 40.462669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.394867, 35.735039, 40.344204>,  <38.587700, 35.611092, 40.273125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.394867, 35.735039, 40.344204>,  <38.073479, 35.941620, 40.462669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.394867, 35.735039, 40.344204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314721, -0.053816, 0.947658,
		-0.505355, -0.854626, 0.119297,
		0.803472, -0.516448, -0.296164,
		38.635910, 35.580105, 40.255356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.142311, 35.347389, 40.877987>,  <38.073479, 35.941620, 40.462669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.142311, 35.347389, 40.877987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.509903, 35.375290, 40.722755>,  <38.730457, 35.392033, 40.629616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.509903, 35.375290, 40.722755>,  <38.142311, 35.347389, 40.877987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.509903, 35.375290, 40.722755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382480, 0.081420, 0.920369,
		0.095811, -0.994235, 0.048138,
		0.918983, 0.069769, -0.388076,
		38.785599, 35.396217, 40.606335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.755432, 34.657825, 41.156387>,  <38.142311, 35.347389, 40.877987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.755432, 34.657825, 41.156387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.508354, 34.655106, 41.470943>,  <37.360107, 34.653473, 41.659676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.508354, 34.655106, 41.470943>,  <37.755432, 34.657825, 41.156387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.508354, 34.655106, 41.470943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.719196, -0.399628, -0.568379,
		0.318129, -0.916652, 0.241956,
		-0.617698, -0.006805, 0.786386,
		37.323044, 34.653065, 41.706860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.481163, 33.977623, 41.240444>,  <37.755432, 34.657825, 41.156387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.481163, 33.977623, 41.240444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.228691, 34.236843, 41.410919>,  <37.077206, 34.392376, 41.513203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.228691, 34.236843, 41.410919>,  <37.481163, 33.977623, 41.240444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.228691, 34.236843, 41.410919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.712601, -0.267530, -0.648558,
		-0.306284, -0.713058, 0.630665,
		-0.631181, 0.648055, 0.426186,
		37.039337, 34.431259, 41.538776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.866806, 33.566132, 41.524570>,  <37.481163, 33.977623, 41.240444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.866806, 33.566132, 41.524570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.751266, 33.944199, 41.463619>,  <36.681942, 34.171040, 41.427048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.751266, 33.944199, 41.463619>,  <36.866806, 33.566132, 41.524570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.751266, 33.944199, 41.463619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.719924, -0.319359, -0.616214,
		-0.631091, -0.068290, 0.772697,
		-0.288849, 0.945170, -0.152381,
		36.664612, 34.227749, 41.417904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.180500, 33.545784, 41.571976>,  <36.866806, 33.566132, 41.524570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.180500, 33.545784, 41.571976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.244358, 33.891293, 41.380806>,  <36.282673, 34.098598, 41.266106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.244358, 33.891293, 41.380806>,  <36.180500, 33.545784, 41.571976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.244358, 33.891293, 41.380806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.777961, -0.187941, -0.599546,
		-0.607693, 0.467518, 0.641978,
		0.159644, 0.863774, -0.477922,
		36.292252, 34.150425, 41.237431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.525635, 33.809563, 41.387928>,  <36.180500, 33.545784, 41.571976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.525635, 33.809563, 41.387928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.769463, 34.028614, 41.158657>,  <35.915760, 34.160046, 41.021095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.769463, 34.028614, 41.158657>,  <35.525635, 33.809563, 41.387928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.769463, 34.028614, 41.158657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.679055, -0.012369, -0.733983,
		-0.409038, 0.836632, 0.364328,
		0.609567, 0.547626, -0.573179,
		35.952332, 34.192902, 40.986702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.037632, 34.198082, 41.126583>,  <35.525635, 33.809563, 41.387928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.037632, 34.198082, 41.126583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.356152, 34.246235, 40.889462>,  <35.547264, 34.275127, 40.747189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.356152, 34.246235, 40.889462>,  <35.037632, 34.198082, 41.126583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.356152, 34.246235, 40.889462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594724, -0.023262, -0.803593,
		-0.110530, 0.992454, 0.053072,
		0.796296, 0.120385, -0.592807,
		35.595039, 34.282349, 40.711620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.816029, 34.689266, 40.763485>,  <35.037632, 34.198082, 41.126583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.816029, 34.689266, 40.763485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.111885, 34.511909, 40.560966>,  <35.289398, 34.405495, 40.439457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.111885, 34.511909, 40.560966>,  <34.816029, 34.689266, 40.763485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.111885, 34.511909, 40.560966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585118, -0.051977, -0.809281,
		0.332512, 0.894820, -0.297880,
		0.739644, -0.443390, -0.506292,
		35.333778, 34.378891, 40.409081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.929089, 35.113224, 40.119614>,  <34.816029, 34.689266, 40.763485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.929089, 35.113224, 40.119614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.077343, 34.751457, 40.035088>,  <35.166294, 34.534397, 39.984371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.077343, 34.751457, 40.035088>,  <34.929089, 35.113224, 40.119614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.077343, 34.751457, 40.035088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624974, -0.074559, -0.777077,
		0.687049, 0.420077, -0.592874,
		0.370636, -0.904420, -0.211311,
		35.188534, 34.480129, 39.971695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.951626, 35.058430, 39.319065>,  <34.929089, 35.113224, 40.119614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.951626, 35.058430, 39.319065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.977242, 34.680737, 39.448261>,  <34.992611, 34.454121, 39.525780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.977242, 34.680737, 39.448261>,  <34.951626, 35.058430, 39.319065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.977242, 34.680737, 39.448261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637777, -0.287656, -0.714489,
		0.767554, -0.160243, -0.620631,
		0.064036, -0.944233, 0.322991,
		34.996452, 34.397465, 39.545158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.923309, 34.687244, 38.691265>,  <34.951626, 35.058430, 39.319065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.923309, 34.687244, 38.691265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.833012, 34.406372, 38.961369>,  <34.778831, 34.237846, 39.123432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.833012, 34.406372, 38.961369>,  <34.923309, 34.687244, 38.691265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.833012, 34.406372, 38.961369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.721898, -0.344857, -0.599947,
		0.654142, -0.622905, -0.429056,
		-0.225747, -0.702185, 0.675259,
		34.765289, 34.195717, 39.163948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.667229, 34.255329, 38.323048>,  <34.923309, 34.687244, 38.691265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.667229, 34.255329, 38.323048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.518547, 34.135639, 38.674568>,  <34.429337, 34.063828, 38.885483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.518547, 34.135639, 38.674568>,  <34.667229, 34.255329, 38.323048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.518547, 34.135639, 38.674568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.806733, -0.364298, -0.465262,
		0.459365, -0.881902, -0.105981,
		-0.371707, -0.299223, 0.878805,
		34.407036, 34.045872, 38.938210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.459377, 33.507141, 38.181393>,  <34.667229, 34.255329, 38.323048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.459377, 33.507141, 38.181393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.268776, 33.648174, 38.503544>,  <34.154415, 33.732796, 38.696835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.268776, 33.648174, 38.503544>,  <34.459377, 33.507141, 38.181393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.268776, 33.648174, 38.503544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.872954, -0.298500, -0.385809,
		0.104373, -0.886895, 0.450027,
		-0.476505, 0.352585, 0.805374,
		34.125824, 33.753948, 38.745155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.063236, 33.071991, 38.553741>,  <34.459377, 33.507141, 38.181393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.063236, 33.071991, 38.553741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.878223, 33.413769, 38.648384>,  <33.767216, 33.618835, 38.705170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.878223, 33.413769, 38.648384>,  <34.063236, 33.071991, 38.553741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.878223, 33.413769, 38.648384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.877635, -0.403399, -0.258894,
		-0.125765, -0.327400, 0.936479,
		-0.462536, 0.854447, 0.236604,
		33.739464, 33.670101, 38.719364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.199741, 32.783333, 39.255230>,  <34.063236, 33.071991, 38.553741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.199741, 32.783333, 39.255230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.265480, 32.459091, 39.030407>,  <34.304924, 32.264545, 38.895515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.265480, 32.459091, 39.030407>,  <34.199741, 32.783333, 39.255230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.265480, 32.459091, 39.030407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436828, 0.451071, -0.778278,
		0.884404, 0.373430, -0.279963,
		0.164350, -0.810608, -0.562053,
		34.314785, 32.215908, 38.861790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.424351, 32.519489, 39.316444>,  <34.199741, 32.783333, 39.255230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.424351, 32.519489, 39.316444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.037525, 32.605400, 39.261806>,  <32.805431, 32.656948, 39.229023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.037525, 32.605400, 39.261806>,  <33.424351, 32.519489, 39.316444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.037525, 32.605400, 39.261806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214511, 0.398805, -0.891594,
		-0.137022, -0.891529, -0.431742,
		-0.967062, 0.214782, -0.136598,
		32.747406, 32.669834, 39.220825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.449707, 31.927790, 38.889114>,  <33.424351, 32.519489, 39.316444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.449707, 31.927790, 38.889114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.529835, 31.542961, 38.815044>,  <33.577911, 31.312063, 38.770603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.529835, 31.542961, 38.815044>,  <33.449707, 31.927790, 38.889114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.529835, 31.542961, 38.815044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616530, -0.023100, 0.786992,
		-0.761421, -0.271814, 0.588519,
		0.200321, -0.962072, -0.185170,
		33.589931, 31.254339, 38.759495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.519077, 31.554110, 39.480213>,  <33.449707, 31.927790, 38.889114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.519077, 31.554110, 39.480213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.725281, 31.324364, 39.225857>,  <33.849003, 31.186516, 39.073242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.725281, 31.324364, 39.225857>,  <33.519077, 31.554110, 39.480213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.725281, 31.324364, 39.225857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706662, -0.134760, 0.694600,
		-0.484646, -0.807431, 0.336412,
		0.515507, -0.574364, -0.635891,
		33.879932, 31.152054, 39.035088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.652866, 30.834930, 39.769676>,  <33.519077, 31.554110, 39.480213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.652866, 30.834930, 39.769676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.922459, 31.009348, 39.531139>,  <34.084213, 31.113998, 39.388020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.922459, 31.009348, 39.531139>,  <33.652866, 30.834930, 39.769676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.922459, 31.009348, 39.531139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669984, -0.020679, 0.742087,
		0.311252, -0.899687, -0.306080,
		0.673976, 0.436045, -0.596340,
		34.124653, 31.140162, 39.352238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.235638, 30.481413, 39.792850>,  <33.652866, 30.834930, 39.769676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.235638, 30.481413, 39.792850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.366146, 30.836653, 39.663345>,  <34.444450, 31.049797, 39.585640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.366146, 30.836653, 39.663345>,  <34.235638, 30.481413, 39.792850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.366146, 30.836653, 39.663345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648568, 0.038854, 0.760165,
		0.687682, -0.458005, -0.563316,
		0.326272, 0.888101, -0.323766,
		34.464027, 31.103083, 39.566216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.877514, 30.397293, 39.547356>,  <34.235638, 30.481413, 39.792850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.877514, 30.397293, 39.547356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.854496, 30.776344, 39.673012>,  <34.840683, 31.003775, 39.748405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.854496, 30.776344, 39.673012>,  <34.877514, 30.397293, 39.547356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.854496, 30.776344, 39.673012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.751679, -0.165954, 0.638309,
		0.657014, 0.272868, -0.702763,
		-0.057547, 0.947630, 0.314143,
		34.837231, 31.060633, 39.767254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.561588, 30.693947, 39.708336>,  <34.877514, 30.397293, 39.547356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.561588, 30.693947, 39.708336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.333874, 30.938236, 39.928490>,  <35.197243, 31.084810, 40.060581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.333874, 30.938236, 39.928490>,  <35.561588, 30.693947, 39.708336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.333874, 30.938236, 39.928490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616054, -0.126422, 0.777492,
		0.544415, 0.781686, -0.304269,
		-0.569289, 0.610724, 0.550387,
		35.163086, 31.121454, 40.093605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.021873, 30.850552, 40.090672>,  <35.561588, 30.693947, 39.708336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.021873, 30.850552, 40.090672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.687222, 30.997507, 40.253185>,  <35.486431, 31.085680, 40.350693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.687222, 30.997507, 40.253185>,  <36.021873, 30.850552, 40.090672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.687222, 30.997507, 40.253185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403181, -0.089067, 0.910776,
		0.370795, 0.925793, -0.073607,
		-0.836634, 0.367388, 0.406288,
		35.436230, 31.107723, 40.375072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.220524, 31.381638, 40.560909>,  <36.021873, 30.850552, 40.090672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.220524, 31.381638, 40.560909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.855721, 31.271830, 40.682812>,  <35.636837, 31.205946, 40.755955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.855721, 31.271830, 40.682812>,  <36.220524, 31.381638, 40.560909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.855721, 31.271830, 40.682812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332516, -0.059812, 0.941199,
		-0.240149, 0.959720, 0.145831,
		-0.912010, -0.274519, 0.304759,
		35.582119, 31.189474, 40.774239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.110596, 31.800461, 41.066181>,  <36.220524, 31.381638, 40.560909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.110596, 31.800461, 41.066181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.883495, 31.475843, 41.121391>,  <35.747234, 31.281073, 41.154518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.883495, 31.475843, 41.121391>,  <36.110596, 31.800461, 41.066181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.883495, 31.475843, 41.121391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358236, -0.092611, 0.929026,
		-0.741163, 0.576905, 0.343304,
		-0.567754, -0.811544, 0.138029,
		35.713169, 31.232380, 41.162800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.743877, 31.892584, 41.662594>,  <36.110596, 31.800461, 41.066181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.743877, 31.892584, 41.662594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.747398, 31.494375, 41.624950>,  <35.749512, 31.255449, 41.602364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.747398, 31.494375, 41.624950>,  <35.743877, 31.892584, 41.662594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.747398, 31.494375, 41.624950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204311, -0.090333, 0.974729,
		-0.978866, -0.027803, 0.202601,
		0.008799, -0.995523, -0.094105,
		35.750038, 31.195719, 41.596718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.260448, 31.631897, 42.140068>,  <35.743877, 31.892584, 41.662594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.260448, 31.631897, 42.140068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.530418, 31.347815, 42.059978>,  <35.692398, 31.177364, 42.011925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.530418, 31.347815, 42.059978>,  <35.260448, 31.631897, 42.140068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.530418, 31.347815, 42.059978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236459, -0.048868, 0.970412,
		-0.698976, -0.702296, 0.134952,
		0.674922, -0.710206, -0.200222,
		35.732895, 31.134752, 41.999912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.345703, 31.179499, 42.758572>,  <35.260448, 31.631897, 42.140068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.345703, 31.179499, 42.758572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.666370, 31.059549, 42.551727>,  <35.858772, 30.987579, 42.427620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.666370, 31.059549, 42.551727>,  <35.345703, 31.179499, 42.758572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.666370, 31.059549, 42.551727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429324, -0.313095, 0.847144,
		-0.415941, -0.901136, -0.122255,
		0.801670, -0.299875, -0.517108,
		35.906872, 30.969587, 42.396595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.557583, 30.630308, 43.130466>,  <35.345703, 31.179499, 42.758572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.557583, 30.630308, 43.130466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.873203, 30.712116, 42.898750>,  <36.062576, 30.761202, 42.759720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.873203, 30.712116, 42.898750>,  <35.557583, 30.630308, 43.130466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.873203, 30.712116, 42.898750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613532, -0.310479, 0.726072,
		-0.031360, -0.928318, -0.370463,
		0.789047, 0.204521, -0.579289,
		36.109917, 30.773472, 42.724964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.979702, 30.102348, 43.317619>,  <35.557583, 30.630308, 43.130466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.979702, 30.102348, 43.317619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.212212, 30.371729, 43.134933>,  <36.351719, 30.533358, 43.025322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.212212, 30.371729, 43.134933>,  <35.979702, 30.102348, 43.317619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.212212, 30.371729, 43.134933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.735161, -0.194054, 0.649524,
		0.348796, -0.713307, -0.607893,
		0.581274, 0.673451, -0.456710,
		36.386593, 30.573765, 42.997921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.577496, 29.701962, 43.069176>,  <35.979702, 30.102348, 43.317619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.577496, 29.701962, 43.069176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.692944, 30.082954, 43.108112>,  <36.762215, 30.311550, 43.131474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.692944, 30.082954, 43.108112>,  <36.577496, 29.701962, 43.069176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.692944, 30.082954, 43.108112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.738019, -0.286092, 0.611130,
		0.609939, -0.104548, -0.785522,
		0.288624, 0.952482, 0.097341,
		36.779530, 30.368698, 43.137314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.239388, 29.701630, 43.071194>,  <36.577496, 29.701962, 43.069176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.239388, 29.701630, 43.071194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.192043, 30.060574, 43.241249>,  <37.163635, 30.275940, 43.343281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.192043, 30.060574, 43.241249>,  <37.239388, 29.701630, 43.071194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.192043, 30.060574, 43.241249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.773088, -0.185413, 0.606595,
		0.623158, 0.400464, -0.671790,
		-0.118361, 0.897357, 0.425136,
		37.156536, 30.329781, 43.368790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.903450, 30.045900, 43.098198>,  <37.239388, 29.701630, 43.071194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.903450, 30.045900, 43.098198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.698448, 30.227133, 43.389965>,  <37.575447, 30.335873, 43.565025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.698448, 30.227133, 43.389965>,  <37.903450, 30.045900, 43.098198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.698448, 30.227133, 43.389965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.852074, 0.163151, 0.497345,
		0.106333, 0.876412, -0.469676,
		-0.512507, 0.453083, 0.729419,
		37.544697, 30.363058, 43.608791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.216564, 30.586000, 43.171135>,  <37.903450, 30.045900, 43.098198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.216564, 30.586000, 43.171135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.006901, 30.558044, 43.510635>,  <37.881104, 30.541271, 43.714336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.006901, 30.558044, 43.510635>,  <38.216564, 30.586000, 43.171135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.006901, 30.558044, 43.510635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.850082, 0.017001, 0.526376,
		-0.051218, 0.997410, 0.050501,
		-0.524154, -0.069890, 0.848751,
		37.849655, 30.537077, 43.765259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.509872, 31.128880, 43.645863>,  <38.216564, 30.586000, 43.171135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.509872, 31.128880, 43.645863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.299923, 30.877829, 43.875851>,  <38.173954, 30.727198, 44.013844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.299923, 30.877829, 43.875851>,  <38.509872, 31.128880, 43.645863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.299923, 30.877829, 43.875851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.736853, 0.003100, 0.676046,
		-0.426088, 0.778507, 0.460842,
		-0.524878, -0.627628, 0.574966,
		38.142460, 30.689541, 44.048340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.631603, 31.373661, 44.372398>,  <38.509872, 31.128880, 43.645863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.631603, 31.373661, 44.372398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.516792, 30.990969, 44.391499>,  <38.447906, 30.761353, 44.402958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.516792, 30.990969, 44.391499>,  <38.631603, 31.373661, 44.372398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.516792, 30.990969, 44.391499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635483, -0.152873, 0.756830,
		-0.716783, 0.247576, 0.651865,
		-0.287025, -0.956732, 0.047753,
		38.430683, 30.703949, 44.405823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.354122, 31.203291, 45.084652>,  <38.631603, 31.373661, 44.372398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.354122, 31.203291, 45.084652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.479351, 30.866488, 44.908924>,  <38.554489, 30.664406, 44.803486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.479351, 30.866488, 44.908924>,  <38.354122, 31.203291, 45.084652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.479351, 30.866488, 44.908924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482470, -0.257439, 0.837227,
		-0.818052, -0.474073, 0.325647,
		0.313072, -0.842010, -0.439324,
		38.573273, 30.613884, 44.777126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.341652, 30.768665, 45.659737>,  <38.354122, 31.203291, 45.084652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.341652, 30.768665, 45.659737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.543667, 30.556240, 45.387585>,  <38.664875, 30.428785, 45.224293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.543667, 30.556240, 45.387585>,  <38.341652, 30.768665, 45.659737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.543667, 30.556240, 45.387585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576349, -0.379279, 0.723858,
		-0.642466, -0.757708, 0.114528,
		0.505034, -0.531062, -0.680378,
		38.695179, 30.396921, 45.183472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.418491, 30.026869, 45.916069>,  <38.341652, 30.768665, 45.659737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.418491, 30.026869, 45.916069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.712326, 30.105417, 45.656277>,  <38.888626, 30.152546, 45.500401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.712326, 30.105417, 45.656277>,  <38.418491, 30.026869, 45.916069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.712326, 30.105417, 45.656277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676274, -0.289664, 0.677310,
		-0.055126, -0.936767, -0.345584,
		0.734585, 0.196372, -0.649479,
		38.932701, 30.164330, 45.461433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.920708, 29.372410, 45.952206>,  <38.418491, 30.026869, 45.916069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.920708, 29.372410, 45.952206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.099003, 29.684273, 45.776276>,  <39.205978, 29.871391, 45.670715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.099003, 29.684273, 45.776276>,  <38.920708, 29.372410, 45.952206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.099003, 29.684273, 45.776276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.745332, -0.051117, 0.664730,
		0.495781, -0.624114, -0.603890,
		0.445736, 0.779660, -0.439829,
		39.232723, 29.918171, 45.644325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.568783, 29.183968, 45.951397>,  <38.920708, 29.372410, 45.952206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.568783, 29.183968, 45.951397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.597118, 29.580980, 45.911678>,  <39.614120, 29.819189, 45.887848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.597118, 29.580980, 45.911678>,  <39.568783, 29.183968, 45.951397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.597118, 29.580980, 45.911678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.793289, 0.004286, 0.608830,
		0.604710, -0.121898, -0.787062,
		0.070842, 0.992533, -0.099292,
		39.618370, 29.878740, 45.881889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.278103, 29.289282, 45.812260>,  <39.568783, 29.183968, 45.951397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.278103, 29.289282, 45.812260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.165218, 29.657084, 45.921707>,  <40.097488, 29.877766, 45.987377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.165218, 29.657084, 45.921707>,  <40.278103, 29.289282, 45.812260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.165218, 29.657084, 45.921707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.840909, 0.099811, 0.531892,
		0.461767, 0.380194, -0.801389,
		-0.282210, 0.919506, 0.273619,
		40.080555, 29.932936, 46.003792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.015575, 29.666182, 45.898674>,  <40.278103, 29.289282, 45.812260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.015575, 29.666182, 45.898674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.725502, 29.874422, 46.078930>,  <40.551456, 29.999367, 46.187084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.725502, 29.874422, 46.078930>,  <41.015575, 29.666182, 45.898674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.725502, 29.874422, 46.078930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631324, 0.241489, 0.736962,
		0.274838, 0.818937, -0.503792,
		-0.725186, 0.520601, 0.450644,
		40.507946, 30.030603, 46.214123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.465084, 29.935715, 45.337742>,  <41.015575, 29.666182, 45.898674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.465084, 29.935715, 45.337742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.768444, 29.760870, 45.144348>,  <41.950462, 29.655962, 45.028313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.768444, 29.760870, 45.144348>,  <41.465084, 29.935715, 45.337742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.768444, 29.760870, 45.144348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501350, 0.082792, -0.861274,
		0.416503, 0.895587, -0.156357,
		0.758401, -0.437114, -0.483486,
		41.995964, 29.629736, 44.999302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.483101, 30.293264, 44.728352>,  <41.465084, 29.935715, 45.337742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.483101, 30.293264, 44.728352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.680332, 29.952177, 44.659370>,  <41.798672, 29.747524, 44.617981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.680332, 29.952177, 44.659370>,  <41.483101, 30.293264, 44.728352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.680332, 29.952177, 44.659370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528527, -0.136152, -0.837927,
		0.691036, 0.504314, -0.517820,
		0.493080, -0.852719, -0.172458,
		41.828255, 29.696362, 44.607632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.879169, 30.395451, 44.137646>,  <41.483101, 30.293264, 44.728352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.879169, 30.395451, 44.137646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.825878, 30.001173, 44.178944>,  <41.793903, 29.764606, 44.203724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.825878, 30.001173, 44.178944>,  <41.879169, 30.395451, 44.137646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.825878, 30.001173, 44.178944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490671, -0.024908, -0.870989,
		0.861099, -0.166701, -0.480333,
		-0.133230, -0.985693, 0.103244,
		41.785908, 29.705465, 44.209915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.088127, 30.080177, 43.543953>,  <41.879169, 30.395451, 44.137646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.088127, 30.080177, 43.543953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.844532, 29.807747, 43.706566>,  <41.698376, 29.644289, 43.804134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.844532, 29.807747, 43.706566>,  <42.088127, 30.080177, 43.543953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.844532, 29.807747, 43.706566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434675, -0.142148, -0.889298,
		0.663468, -0.718282, -0.209480,
		-0.608989, -0.681076, 0.406530,
		41.661835, 29.603424, 43.828526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.054783, 29.785261, 43.026798>,  <42.088127, 30.080177, 43.543953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.054783, 29.785261, 43.026798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.747978, 29.655855, 43.248440>,  <41.563896, 29.578211, 43.381424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.747978, 29.655855, 43.248440>,  <42.054783, 29.785261, 43.026798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.747978, 29.655855, 43.248440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562039, -0.077827, -0.823441,
		0.309521, -0.943017, -0.122134,
		-0.767014, -0.323516, 0.554101,
		41.517876, 29.558800, 43.414669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <70.000000, 0.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 70.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 70.000000, 70.000000>,  <0.000000, 70.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 70.000000, 70.000000>,  <70.000000, 0.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 70.000000, 70.000000>,  <70.000000, 70.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 70.000000>,  <0.000000, 70.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 70.000000>,  <70.000000, 0.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 70.000000, 0.000000>,  <0.000000, 70.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 70.000000, 0.000000>,  <70.000000, 0.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 0.000000, 70.000000>,  <70.000000, 0.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 70.000000, 0.000000>,  <0.000000, 70.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
