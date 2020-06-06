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
	location <25.469, 94.9851, 44.8844>
	look_at <25.469, 29.3977, 32.8955>
	direction <0, -65.5874, -11.9889>
	angle 67.0682
}


# declare cpy_camera_pos = <25.469, 94.9851, 44.8844>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 28
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <-1, -1.16351, -0.803887>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <1, 1.16351, 0.803887>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<4.519156, 15.406464, 15.195518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.310316, 15.109557, 15.027493>,  <4.185012, 14.931414, 14.926678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.310316, 15.109557, 15.027493>,  <4.519156, 15.406464, 15.195518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.310316, 15.109557, 15.027493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199316, 0.372693, -0.906296,
		0.829267, -0.556903, -0.046638,
		-0.522100, -0.742266, -0.420061,
		4.153686, 14.886877, 14.901474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.888364, 15.132114, 14.534947>,  <4.519156, 15.406464, 15.195518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.888364, 15.132114, 14.534947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.496084, 15.060072, 14.504514>,  <4.260716, 15.016847, 14.486254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.496084, 15.060072, 14.504514>,  <4.888364, 15.132114, 14.534947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.496084, 15.060072, 14.504514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016248, 0.462874, -0.886275,
		0.194839, -0.867934, -0.456867,
		-0.980700, -0.180104, -0.076084,
		4.201874, 15.006041, 14.481688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.655804, 14.673981, 14.002821>,  <4.888364, 15.132114, 14.534947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.655804, 14.673981, 14.002821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.389411, 14.971654, 14.023438>,  <4.229575, 15.150258, 14.035808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.389411, 14.971654, 14.023438>,  <4.655804, 14.673981, 14.002821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.389411, 14.971654, 14.023438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416536, 0.428303, -0.801907,
		-0.618841, -0.512588, -0.595222,
		-0.665983, 0.744184, 0.051540,
		4.189616, 15.194909, 14.038899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.738837, 14.815784, 13.273919>,  <4.655804, 14.673981, 14.002821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.738837, 14.815784, 13.273919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.062587, 15.038732, 13.347947>,  <5.256837, 15.172500, 13.392365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.062587, 15.038732, 13.347947>,  <4.738837, 14.815784, 13.273919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.062587, 15.038732, 13.347947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448355, 0.789957, -0.418264,
		-0.379325, 0.255556, 0.889272,
		0.809376, 0.557368, 0.185071,
		5.305400, 15.205942, 13.403468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.544362, 15.532019, 13.413307>,  <4.738837, 14.815784, 13.273919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.544362, 15.532019, 13.413307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.917126, 15.552512, 13.269687>,  <5.140784, 15.564809, 13.183515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.917126, 15.552512, 13.269687>,  <4.544362, 15.532019, 13.413307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.917126, 15.552512, 13.269687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250071, 0.807799, -0.533784,
		0.262693, 0.587228, 0.765608,
		0.931910, 0.051235, -0.359052,
		5.196699, 15.567883, 13.161971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.839966, 16.254335, 13.615947>,  <4.544362, 15.532019, 13.413307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.839966, 16.254335, 13.615947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.016210, 16.114889, 13.285050>,  <5.121956, 16.031221, 13.086513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.016210, 16.114889, 13.285050>,  <4.839966, 16.254335, 13.615947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.016210, 16.114889, 13.285050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344346, 0.785387, -0.514386,
		0.829029, 0.511502, 0.226004,
		0.440610, -0.348617, -0.827242,
		5.148393, 16.010303, 13.036878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.120583, 16.821903, 13.345092>,  <4.839966, 16.254335, 13.615947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.120583, 16.821903, 13.345092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.098407, 16.559425, 13.044070>,  <5.085102, 16.401939, 12.863458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.098407, 16.559425, 13.044070>,  <5.120583, 16.821903, 13.345092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.098407, 16.559425, 13.044070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306355, 0.728537, -0.612683,
		0.950302, 0.196582, -0.241418,
		-0.055440, -0.656193, -0.752554,
		5.081775, 16.362568, 12.818304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.491288, 17.188641, 12.858747>,  <5.120583, 16.821903, 13.345092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.491288, 17.188641, 12.858747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.318346, 16.922230, 12.615609>,  <5.214580, 16.762383, 12.469727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.318346, 16.922230, 12.615609>,  <5.491288, 17.188641, 12.858747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.318346, 16.922230, 12.615609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130866, 0.713320, -0.688512,
		0.892156, -0.218135, -0.395568,
		-0.432355, -0.666027, -0.607846,
		5.188639, 16.722422, 12.433255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.811614, 17.214998, 12.230947>,  <5.491288, 17.188641, 12.858747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.811614, 17.214998, 12.230947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.442704, 17.079700, 12.156114>,  <5.221358, 16.998522, 12.111214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.442704, 17.079700, 12.156114>,  <5.811614, 17.214998, 12.230947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.442704, 17.079700, 12.156114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124139, 0.717554, -0.685350,
		0.366057, -0.608858, -0.703772,
		-0.922275, -0.338242, -0.187083,
		5.166021, 16.978228, 12.099989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.744878, 17.233723, 11.579812>,  <5.811614, 17.214998, 12.230947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.744878, 17.233723, 11.579812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.365028, 17.242664, 11.704849>,  <5.137118, 17.248030, 11.779871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.365028, 17.242664, 11.704849>,  <5.744878, 17.233723, 11.579812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.365028, 17.242664, 11.704849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186737, 0.760684, -0.621682,
		-0.251680, -0.648737, -0.718190,
		-0.949624, 0.022352, 0.312593,
		5.080141, 17.249371, 11.798627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.384206, 17.224712, 10.890302>,  <5.744878, 17.233723, 11.579812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.384206, 17.224712, 10.890302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.104130, 17.337276, 11.152764>,  <4.936084, 17.404814, 11.310242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.104130, 17.337276, 11.152764>,  <5.384206, 17.224712, 10.890302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.104130, 17.337276, 11.152764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296408, 0.721520, -0.625740,
		-0.649519, -0.632628, -0.421790,
		-0.700191, 0.281408, 0.656157,
		4.894073, 17.421700, 11.349611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.784527, 17.290300, 10.491667>,  <5.384206, 17.224712, 10.890302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.784527, 17.290300, 10.491667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.717446, 17.495699, 10.828285>,  <4.677198, 17.618938, 11.030256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.717446, 17.495699, 10.828285>,  <4.784527, 17.290300, 10.491667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.717446, 17.495699, 10.828285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393353, 0.747887, -0.534733,
		-0.903963, -0.420700, 0.076562,
		-0.167702, 0.513495, 0.841546,
		4.667136, 17.649748, 11.080749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.108587, 17.584620, 10.435203>,  <4.784527, 17.290300, 10.491667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.108587, 17.584620, 10.435203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.309011, 17.820210, 10.688830>,  <4.429266, 17.961563, 10.841007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.309011, 17.820210, 10.688830>,  <4.108587, 17.584620, 10.435203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.309011, 17.820210, 10.688830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308344, 0.806096, -0.505107,
		-0.808617, 0.057579, 0.585511,
		0.501062, 0.588977, 0.634069,
		4.459330, 17.996902, 10.879051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.667421, 18.080906, 10.578758>,  <4.108587, 17.584620, 10.435203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.667421, 18.080906, 10.578758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.021191, 18.238617, 10.678629>,  <4.233453, 18.333242, 10.738551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.021191, 18.238617, 10.678629>,  <3.667421, 18.080906, 10.578758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.021191, 18.238617, 10.678629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177668, 0.779181, -0.601092,
		-0.431539, 0.487262, 0.759177,
		0.884425, 0.394276, 0.249677,
		4.286518, 18.356899, 10.753531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.542370, 18.798281, 10.682796>,  <3.667421, 18.080906, 10.578758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.542370, 18.798281, 10.682796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.940122, 18.793941, 10.640678>,  <4.178774, 18.791338, 10.615408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.940122, 18.793941, 10.640678>,  <3.542370, 18.798281, 10.682796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.940122, 18.793941, 10.640678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060831, 0.755505, -0.652312,
		0.086627, 0.655053, 0.750601,
		0.994382, -0.010848, -0.105295,
		4.238437, 18.790688, 10.609090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.695600, 19.411264, 10.938137>,  <3.542370, 18.798281, 10.682796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.695600, 19.411264, 10.938137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.957789, 19.256117, 10.678935>,  <4.115103, 19.163029, 10.523414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.957789, 19.256117, 10.678935>,  <3.695600, 19.411264, 10.938137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.957789, 19.256117, 10.678935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131951, 0.786023, -0.603952,
		0.743602, 0.481379, 0.464037,
		0.655473, -0.387869, -0.648006,
		4.154431, 19.139755, 10.484533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.987040, 19.989729, 10.761474>,  <3.695600, 19.411264, 10.938137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.987040, 19.989729, 10.761474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.103703, 19.737524, 10.473754>,  <4.173700, 19.586201, 10.301122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.103703, 19.737524, 10.473754>,  <3.987040, 19.989729, 10.761474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.103703, 19.737524, 10.473754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230077, 0.776160, -0.587061,
		0.928440, 0.005726, 0.371439,
		0.291658, -0.630510, -0.719300,
		4.191200, 19.548370, 10.257964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.457263, 20.329861, 10.442614>,  <3.987040, 19.989729, 10.761474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.457263, 20.329861, 10.442614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.399847, 20.054741, 10.157987>,  <4.365396, 19.889669, 9.987210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.399847, 20.054741, 10.157987>,  <4.457263, 20.329861, 10.442614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.399847, 20.054741, 10.157987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457673, 0.591370, -0.663941,
		0.877457, -0.420969, 0.229901,
		-0.143542, -0.687799, -0.711568,
		4.356784, 19.848402, 9.944516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.096303, 20.165194, 10.027123>,  <4.457263, 20.329861, 10.442614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.096303, 20.165194, 10.027123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.800400, 20.069584, 9.775529>,  <4.622858, 20.012218, 9.624573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.800400, 20.069584, 9.775529>,  <5.096303, 20.165194, 10.027123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.800400, 20.069584, 9.775529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490439, 0.448455, -0.747234,
		0.460683, -0.861251, -0.214518,
		-0.739757, -0.239030, -0.628987,
		4.578472, 19.997877, 9.586833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.448460, 19.969383, 9.402469>,  <5.096303, 20.165194, 10.027123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.448460, 19.969383, 9.402469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.065443, 20.030073, 9.304415>,  <4.835633, 20.066486, 9.245583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.065443, 20.030073, 9.304415>,  <5.448460, 19.969383, 9.402469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.065443, 20.030073, 9.304415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287895, 0.458669, -0.840678,
		-0.015116, -0.875558, -0.482876,
		-0.957543, 0.151726, -0.245136,
		4.778180, 20.075590, 9.230874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.455476, 19.854004, 8.754142>,  <5.448460, 19.969383, 9.402469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.455476, 19.854004, 8.754142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.121799, 20.070805, 8.794854>,  <4.921594, 20.200886, 8.819282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.121799, 20.070805, 8.794854>,  <5.455476, 19.854004, 8.754142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.121799, 20.070805, 8.794854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099610, 0.329612, -0.938847,
		-0.542405, -0.773039, -0.328948,
		-0.834191, 0.542002, 0.101781,
		4.871542, 20.233406, 8.825388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.143035, 19.857763, 8.136558>,  <5.455476, 19.854004, 8.754142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.143035, 19.857763, 8.136558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.957798, 20.179071, 8.286386>,  <4.846656, 20.371857, 8.376284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.957798, 20.179071, 8.286386>,  <5.143035, 19.857763, 8.136558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.957798, 20.179071, 8.286386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070553, 0.454689, -0.887852,
		-0.883497, -0.384730, -0.267236,
		-0.463093, 0.803269, 0.374573,
		4.818870, 20.420052, 8.398758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.652517, 20.103952, 7.645472>,  <5.143035, 19.857763, 8.136558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.652517, 20.103952, 7.645472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.708268, 20.419273, 7.885189>,  <4.741718, 20.608467, 8.029018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.708268, 20.419273, 7.885189>,  <4.652517, 20.103952, 7.645472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.708268, 20.419273, 7.885189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180829, 0.574762, -0.798091,
		-0.973589, 0.219605, -0.062439,
		0.139378, 0.788303, 0.599293,
		4.750081, 20.655764, 8.064977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.197097, 20.678087, 7.498257>,  <4.652517, 20.103952, 7.645472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.197097, 20.678087, 7.498257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.530467, 20.836575, 7.652355>,  <4.730488, 20.931667, 7.744814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.530467, 20.836575, 7.652355>,  <4.197097, 20.678087, 7.498257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.530467, 20.836575, 7.652355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105983, 0.569573, -0.815079,
		-0.542376, 0.720136, 0.432703,
		0.833424, 0.396221, 0.385245,
		4.780494, 20.955441, 7.767929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.215007, 21.358265, 7.260160>,  <4.197097, 20.678087, 7.498257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.215007, 21.358265, 7.260160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.586348, 21.339128, 7.407604>,  <4.809153, 21.327646, 7.496070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.586348, 21.339128, 7.407604>,  <4.215007, 21.358265, 7.260160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.586348, 21.339128, 7.407604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290229, 0.712862, -0.638432,
		-0.232225, 0.699671, 0.675671,
		0.928352, -0.047839, 0.368610,
		4.864854, 21.324778, 7.518187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.431732, 21.951759, 7.531079>,  <4.215007, 21.358265, 7.260160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.431732, 21.951759, 7.531079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.733639, 21.739157, 7.377285>,  <4.914783, 21.611595, 7.285008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.733639, 21.739157, 7.377285>,  <4.431732, 21.951759, 7.531079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.733639, 21.739157, 7.377285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104638, 0.676154, -0.729292,
		0.647594, 0.510213, 0.565954,
		0.754767, -0.531505, -0.384485,
		4.960069, 21.579704, 7.261939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.816454, 22.417896, 7.219461>,  <4.431732, 21.951759, 7.531079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.816454, 22.417896, 7.219461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.955056, 22.090099, 7.036872>,  <5.038218, 21.893421, 6.927319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.955056, 22.090099, 7.036872>,  <4.816454, 22.417896, 7.219461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.955056, 22.090099, 7.036872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396572, 0.568969, -0.720420,
		0.850097, 0.068605, 0.522138,
		0.346505, -0.819492, -0.456472,
		5.059008, 21.844252, 6.899930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.611615, 22.311295, 7.094761>,  <4.816454, 22.417896, 7.219461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.611615, 22.311295, 7.094761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.356665, 22.177126, 6.817273>,  <5.203695, 22.096624, 6.650780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.356665, 22.177126, 6.817273>,  <5.611615, 22.311295, 7.094761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.356665, 22.177126, 6.817273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320244, 0.703546, -0.634403,
		0.700845, -0.626517, -0.341017,
		-0.637385, -0.335410, -0.693715,
		5.165453, 22.076500, 6.609157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.840772, 22.827862, 7.531703>,  <5.611615, 22.311295, 7.094761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.840772, 22.827862, 7.531703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.033586, 22.733553, 7.869236>,  <6.149274, 22.676968, 8.071755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.033586, 22.733553, 7.869236>,  <5.840772, 22.827862, 7.531703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.033586, 22.733553, 7.869236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637152, 0.755419, -0.152900,
		-0.601398, 0.611353, 0.514362,
		0.482035, -0.235773, 0.843832,
		6.178196, 22.662821, 8.122386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.085249, 23.461039, 7.929157>,  <5.840772, 22.827862, 7.531703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.085249, 23.461039, 7.929157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.322899, 23.157003, 8.034443>,  <6.465490, 22.974583, 8.097614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.322899, 23.157003, 8.034443>,  <6.085249, 23.461039, 7.929157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.322899, 23.157003, 8.034443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.798874, 0.595772, -0.082799,
		-0.093881, 0.259467, 0.961178,
		0.594126, -0.760087, 0.263214,
		6.501137, 22.928978, 8.113407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.606298, 23.707100, 8.442489>,  <6.085249, 23.461039, 7.929157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.606298, 23.707100, 8.442489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.752172, 23.403423, 8.226848>,  <6.839695, 23.221216, 8.097463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.752172, 23.403423, 8.226848>,  <6.606298, 23.707100, 8.442489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.752172, 23.403423, 8.226848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.797851, 0.553271, -0.239427,
		0.480041, -0.342809, 0.807492,
		0.364684, -0.759193, -0.539103,
		6.861577, 23.175665, 8.065117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.253070, 23.424007, 8.743130>,  <6.606298, 23.707100, 8.442489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.253070, 23.424007, 8.743130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.215366, 23.391775, 8.346217>,  <7.192744, 23.372437, 8.108069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.215366, 23.391775, 8.346217>,  <7.253070, 23.424007, 8.743130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.215366, 23.391775, 8.346217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.748482, 0.651458, -0.124004,
		0.656422, -0.754394, -0.001092,
		-0.094260, -0.080581, -0.992281,
		7.187088, 23.367601, 8.048532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.872290, 23.150196, 8.391496>,  <7.253070, 23.424007, 8.743130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.872290, 23.150196, 8.391496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.692267, 23.427685, 8.166570>,  <7.584254, 23.594177, 8.031614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.692267, 23.427685, 8.166570>,  <7.872290, 23.150196, 8.391496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.692267, 23.427685, 8.166570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.873493, 0.472883, -0.115721,
		0.185632, -0.543260, -0.818785,
		-0.450056, 0.693722, -0.562316,
		7.557250, 23.635801, 7.997875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.280375, 23.122496, 7.778757>,  <7.872290, 23.150196, 8.391496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.280375, 23.122496, 7.778757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.133554, 23.491703, 7.824903>,  <8.045463, 23.713228, 7.852590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.133554, 23.491703, 7.824903>,  <8.280375, 23.122496, 7.778757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.133554, 23.491703, 7.824903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.929419, 0.368996, 0.004796,
		-0.038142, 0.108981, -0.993312,
		-0.367051, 0.923020, 0.115364,
		8.023439, 23.768608, 7.859511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.873981, 23.426395, 8.110887>,  <8.280375, 23.122496, 7.778757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.873981, 23.426395, 8.110887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.537220, 23.563284, 8.277779>,  <8.335163, 23.645418, 8.377914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.537220, 23.563284, 8.277779>,  <8.873981, 23.426395, 8.110887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.537220, 23.563284, 8.277779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399454, 0.124613, -0.908244,
		-0.362815, -0.931319, 0.031791,
		-0.841904, 0.342224, 0.417231,
		8.284649, 23.665951, 8.402947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.090438, 22.656921, 7.910684>,  <8.873981, 23.426395, 8.110887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.090438, 22.656921, 7.910684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.715396, 22.592157, 7.787601>,  <8.490371, 22.553299, 7.713752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.715396, 22.592157, 7.787601>,  <9.090438, 22.656921, 7.910684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.715396, 22.592157, 7.787601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080975, -0.758959, 0.646083,
		-0.338144, 0.630687, 0.698493,
		-0.937604, -0.161909, -0.307707,
		8.434114, 22.543585, 7.695290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.634247, 22.680433, 8.502008>,  <9.090438, 22.656921, 7.910684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.634247, 22.680433, 8.502008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.435813, 22.472504, 8.223820>,  <8.316752, 22.347746, 8.056907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.435813, 22.472504, 8.223820>,  <8.634247, 22.680433, 8.502008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.435813, 22.472504, 8.223820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096220, -0.763136, 0.639034,
		-0.862926, 0.383934, 0.328563,
		-0.496085, -0.519825, -0.695473,
		8.286987, 22.316557, 8.015178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.100410, 22.434748, 8.796683>,  <8.634247, 22.680433, 8.502008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.100410, 22.434748, 8.796683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.111562, 22.201347, 8.472030>,  <8.118253, 22.061308, 8.277237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.111562, 22.201347, 8.472030>,  <8.100410, 22.434748, 8.796683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.111562, 22.201347, 8.472030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107454, -0.808995, 0.577911,
		-0.993819, 0.071101, -0.085253,
		0.027879, -0.583499, -0.811635,
		8.119925, 22.026297, 8.228539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.532733, 21.910521, 8.794499>,  <8.100410, 22.434748, 8.796683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.532733, 21.910521, 8.794499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.806998, 21.744591, 8.555238>,  <7.971557, 21.645033, 8.411681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.806998, 21.744591, 8.555238>,  <7.532733, 21.910521, 8.794499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.806998, 21.744591, 8.555238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074794, -0.857530, 0.508968,
		-0.724066, -0.304243, -0.619003,
		0.685663, -0.414824, -0.598152,
		8.012696, 21.620144, 8.375792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.265172, 21.303379, 8.564826>,  <7.532733, 21.910521, 8.794499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.265172, 21.303379, 8.564826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.660973, 21.261642, 8.524831>,  <7.898454, 21.236601, 8.500834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.660973, 21.261642, 8.524831>,  <7.265172, 21.303379, 8.564826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.660973, 21.261642, 8.524831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013275, -0.754577, 0.656077,
		-0.143906, -0.647863, -0.748041,
		0.989502, -0.104343, -0.099988,
		7.957824, 21.230339, 8.494835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.259128, 20.660601, 8.411798>,  <7.265172, 21.303379, 8.564826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.259128, 20.660601, 8.411798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.635183, 20.753119, 8.511913>,  <7.860816, 20.808630, 8.571982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.635183, 20.753119, 8.511913>,  <7.259128, 20.660601, 8.411798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.635183, 20.753119, 8.511913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118310, -0.910255, 0.396786,
		0.319599, -0.343423, -0.883129,
		0.940138, 0.231295, 0.250286,
		7.917225, 20.822508, 8.586999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.659681, 20.035778, 8.262786>,  <7.259128, 20.660601, 8.411798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.659681, 20.035778, 8.262786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.871540, 20.244757, 8.530077>,  <7.998654, 20.370144, 8.690452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.871540, 20.244757, 8.530077>,  <7.659681, 20.035778, 8.262786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.871540, 20.244757, 8.530077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298819, -0.852221, 0.429450,
		0.793841, -0.027777, -0.607491,
		0.529645, 0.522444, 0.668227,
		8.030434, 20.401489, 8.730545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.339815, 19.630173, 8.331465>,  <7.659681, 20.035778, 8.262786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.339815, 19.630173, 8.331465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.331155, 19.871428, 8.650402>,  <8.325958, 20.016180, 8.841764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.331155, 19.871428, 8.650402>,  <8.339815, 19.630173, 8.331465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.331155, 19.871428, 8.650402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160830, -0.785042, 0.598200,
		0.986745, 0.141189, -0.080005,
		-0.021652, 0.603138, 0.797343,
		8.324659, 20.052368, 8.889605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.853157, 19.387045, 8.780176>,  <8.339815, 19.630173, 8.331465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.853157, 19.387045, 8.780176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.621838, 19.595612, 9.031157>,  <8.483046, 19.720753, 9.181745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.621838, 19.595612, 9.031157>,  <8.853157, 19.387045, 8.780176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.621838, 19.595612, 9.031157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087698, -0.724911, 0.683237,
		0.811097, 0.450142, 0.373488,
		-0.578299, 0.521418, 0.627450,
		8.448348, 19.752037, 9.219392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.178899, 19.295366, 9.297888>,  <8.853157, 19.387045, 8.780176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.178899, 19.295366, 9.297888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.825792, 19.420004, 9.438534>,  <8.613929, 19.494787, 9.522922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.825792, 19.420004, 9.438534>,  <9.178899, 19.295366, 9.297888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.825792, 19.420004, 9.438534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030014, -0.709484, 0.704083,
		0.468854, 0.632093, 0.616956,
		-0.882766, 0.311595, 0.351616,
		8.560963, 19.513483, 9.544019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.189597, 19.210546, 9.976957>,  <9.178899, 19.295366, 9.297888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.189597, 19.210546, 9.976957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.798430, 19.239948, 9.898701>,  <8.563730, 19.257589, 9.851747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.798430, 19.239948, 9.898701>,  <9.189597, 19.210546, 9.976957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.798430, 19.239948, 9.898701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199234, -0.610609, 0.766461,
		-0.063124, 0.788513, 0.611770,
		-0.977917, 0.073503, -0.195643,
		8.505055, 19.261999, 9.840008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.924896, 19.263702, 10.627649>,  <9.189597, 19.210546, 9.976957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.924896, 19.263702, 10.627649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.633462, 19.134342, 10.386129>,  <8.458601, 19.056726, 10.241218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.633462, 19.134342, 10.386129>,  <8.924896, 19.263702, 10.627649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.633462, 19.134342, 10.386129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229360, -0.715437, 0.659958,
		-0.645412, 0.619323, 0.447081,
		-0.728586, -0.323402, -0.603800,
		8.414886, 19.037321, 10.204989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.359354, 19.101719, 11.030375>,  <8.924896, 19.263702, 10.627649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.359354, 19.101719, 11.030375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.296021, 18.899788, 10.690945>,  <8.258020, 18.778629, 10.487287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.296021, 18.899788, 10.690945>,  <8.359354, 19.101719, 11.030375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.296021, 18.899788, 10.690945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210435, -0.822418, 0.528532,
		-0.964701, 0.262254, 0.023982,
		-0.158333, -0.504828, -0.848575,
		8.248521, 18.748339, 10.436373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.691591, 18.738977, 11.102865>,  <8.359354, 19.101719, 11.030375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.691591, 18.738977, 11.102865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.881154, 18.528481, 10.820453>,  <7.994892, 18.402184, 10.651005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.881154, 18.528481, 10.820453>,  <7.691591, 18.738977, 11.102865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.881154, 18.528481, 10.820453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118962, -0.832697, 0.540800,
		-0.872502, -0.172298, -0.457224,
		0.473908, -0.526241, -0.706033,
		8.023327, 18.370607, 10.608643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.164255, 18.448450, 10.721431>,  <7.691591, 18.738977, 11.102865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.164255, 18.448450, 10.721431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.466722, 18.201942, 10.633412>,  <7.648203, 18.054037, 10.580602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.466722, 18.201942, 10.633412>,  <7.164255, 18.448450, 10.721431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.466722, 18.201942, 10.633412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470219, -0.745580, 0.472233,
		-0.455084, -0.253619, -0.853567,
		0.756170, -0.616269, -0.220045,
		7.693573, 18.017061, 10.567399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.895256, 17.780294, 10.577692>,  <7.164255, 18.448450, 10.721431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.895256, 17.780294, 10.577692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.279304, 17.701557, 10.657109>,  <7.509733, 17.654316, 10.704760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.279304, 17.701557, 10.657109>,  <6.895256, 17.780294, 10.577692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.279304, 17.701557, 10.657109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262405, -0.879530, 0.396951,
		0.096489, -0.433220, -0.896108,
		0.960122, -0.196842, 0.198544,
		7.567340, 17.642504, 10.716673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.944673, 17.042326, 10.555422>,  <6.895256, 17.780294, 10.577692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.944673, 17.042326, 10.555422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.290077, 17.143839, 10.729752>,  <7.497320, 17.204746, 10.834350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.290077, 17.143839, 10.729752>,  <6.944673, 17.042326, 10.555422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.290077, 17.143839, 10.729752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062446, -0.803712, 0.591732,
		0.500449, -0.538183, -0.678167,
		0.863511, 0.253784, 0.435825,
		7.549130, 17.219975, 10.860498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.156949, 16.437639, 10.623151>,  <6.944673, 17.042326, 10.555422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.156949, 16.437639, 10.623151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.392200, 16.661633, 10.856568>,  <7.533350, 16.796028, 10.996618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.392200, 16.661633, 10.856568>,  <7.156949, 16.437639, 10.623151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.392200, 16.661633, 10.856568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028862, -0.735593, 0.676809,
		0.808253, -0.381208, -0.448784,
		0.588127, 0.559985, 0.583543,
		7.568638, 16.829628, 11.031631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.684100, 15.993521, 10.728969>,  <7.156949, 16.437639, 10.623151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.684100, 15.993521, 10.728969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.641763, 16.254742, 11.028920>,  <7.616360, 16.411474, 11.208891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.641763, 16.254742, 11.028920>,  <7.684100, 15.993521, 10.728969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.641763, 16.254742, 11.028920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277754, -0.704683, 0.652897,
		0.954804, 0.277387, -0.106801,
		-0.105844, 0.653052, 0.749880,
		7.610010, 16.450657, 11.253884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.305231, 15.889584, 11.127998>,  <7.684100, 15.993521, 10.728969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.305231, 15.889584, 11.127998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.026374, 16.049015, 11.366368>,  <7.859060, 16.144674, 11.509391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.026374, 16.049015, 11.366368>,  <8.305231, 15.889584, 11.127998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.026374, 16.049015, 11.366368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179171, -0.707979, 0.683128,
		0.694183, 0.583010, 0.422148,
		-0.697142, 0.398579, 0.595925,
		7.817231, 16.168589, 11.545146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.496561, 15.562179, 11.796923>,  <8.305231, 15.889584, 11.127998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.496561, 15.562179, 11.796923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.135780, 15.714554, 11.878279>,  <7.919312, 15.805979, 11.927093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.135780, 15.714554, 11.878279>,  <8.496561, 15.562179, 11.796923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.135780, 15.714554, 11.878279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206082, -0.793599, 0.572478,
		0.379489, 0.474433, 0.794293,
		-0.901952, 0.380939, 0.203390,
		7.865195, 15.828835, 11.939296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.070942, 15.741343, 12.165646>,  <8.496561, 15.562179, 11.796923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.070942, 15.741343, 12.165646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.148854, 15.350691, 12.129300>,  <9.195601, 15.116300, 12.107492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.148854, 15.350691, 12.129300>,  <9.070942, 15.741343, 12.165646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.148854, 15.350691, 12.129300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576217, 0.038969, 0.816367,
		-0.793747, -0.211370, 0.570340,
		0.194781, -0.976629, -0.090864,
		9.207289, 15.057702, 12.102041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.075444, 15.274462, 12.899424>,  <9.070942, 15.741343, 12.165646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.075444, 15.274462, 12.899424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.315461, 15.197691, 12.588782>,  <9.459472, 15.151628, 12.402397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.315461, 15.197691, 12.588782>,  <9.075444, 15.274462, 12.899424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.315461, 15.197691, 12.588782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.794630, 0.031038, 0.606300,
		-0.092260, -0.980919, 0.171134,
		0.600043, -0.191925, -0.776604,
		9.495474, 15.140113, 12.355802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.478335, 14.820458, 13.108113>,  <9.075444, 15.274462, 12.899424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.478335, 14.820458, 13.108113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.725000, 14.910856, 12.806477>,  <9.872999, 14.965096, 12.625495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.725000, 14.910856, 12.806477>,  <9.478335, 14.820458, 13.108113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.725000, 14.910856, 12.806477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.785899, -0.121096, 0.606382,
		0.045721, -0.966573, -0.252285,
		0.616663, 0.225995, -0.754091,
		9.909999, 14.978655, 12.580249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.004980, 14.320518, 12.800784>,  <9.478335, 14.820458, 13.108113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.004980, 14.320518, 12.800784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.185878, 14.673620, 12.851728>,  <10.294416, 14.885481, 12.882295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.185878, 14.673620, 12.851728>,  <10.004980, 14.320518, 12.800784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.185878, 14.673620, 12.851728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511570, -0.373711, 0.773716,
		0.730597, -0.284755, -0.620599,
		0.452244, 0.882754, 0.127360,
		10.321551, 14.938446, 12.889936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.732860, 14.101937, 12.955137>,  <10.004980, 14.320518, 12.800784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.732860, 14.101937, 12.955137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.612481, 14.448907, 13.113633>,  <10.540254, 14.657088, 13.208731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.612481, 14.448907, 13.113633>,  <10.732860, 14.101937, 12.955137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.612481, 14.448907, 13.113633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602334, -0.149234, 0.784170,
		0.739340, 0.474662, -0.477568,
		-0.300947, 0.867424, 0.396240,
		10.522197, 14.709134, 13.232505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.243251, 14.748287, 13.176699>,  <10.732860, 14.101937, 12.955137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.243251, 14.748287, 13.176699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.925076, 14.712440, 13.416447>,  <10.734170, 14.690931, 13.560296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.925076, 14.712440, 13.416447>,  <11.243251, 14.748287, 13.176699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.925076, 14.712440, 13.416447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604947, -0.176630, 0.776428,
		0.036284, 0.980189, 0.194713,
		-0.795439, -0.089619, 0.599371,
		10.686444, 14.685554, 13.596258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.364784, 15.149536, 13.709563>,  <11.243251, 14.748287, 13.176699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.364784, 15.149536, 13.709563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.117799, 14.857761, 13.827316>,  <10.969607, 14.682696, 13.897968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.117799, 14.857761, 13.827316>,  <11.364784, 15.149536, 13.709563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.117799, 14.857761, 13.827316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639143, -0.247102, 0.728311,
		-0.458513, 0.637859, 0.618791,
		-0.617464, -0.729436, 0.294383,
		10.932560, 14.638930, 13.915631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.172636, 15.419412, 14.391574>,  <11.364784, 15.149536, 13.709563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.172636, 15.419412, 14.391574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.183442, 15.032266, 14.291569>,  <11.189926, 14.799978, 14.231565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.183442, 15.032266, 14.291569>,  <11.172636, 15.419412, 14.391574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.183442, 15.032266, 14.291569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541739, -0.196018, 0.817371,
		-0.840112, -0.157523, 0.519035,
		0.027015, -0.967865, -0.250014,
		11.191546, 14.741906, 14.216564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.736998, 14.911707, 14.694679>,  <11.172636, 15.419412, 14.391574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.736998, 14.911707, 14.694679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.102366, 14.773583, 14.608498>,  <11.321588, 14.690709, 14.556788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.102366, 14.773583, 14.608498>,  <10.736998, 14.911707, 14.694679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.102366, 14.773583, 14.608498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197584, -0.086603, 0.976453,
		-0.355837, -0.934485, -0.010877,
		0.913422, -0.345309, -0.215455,
		11.376393, 14.669991, 14.543861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.023408, 14.291368, 15.038549>,  <10.736998, 14.911707, 14.694679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.023408, 14.291368, 15.038549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.377989, 14.460994, 14.964395>,  <11.590737, 14.562770, 14.919902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.377989, 14.460994, 14.964395>,  <11.023408, 14.291368, 15.038549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.377989, 14.460994, 14.964395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167037, 0.080418, 0.982666,
		0.431625, -0.902053, 0.000451,
		0.886453, 0.424067, -0.185387,
		11.643925, 14.588214, 14.908778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.544022, 13.953164, 15.408980>,  <11.023408, 14.291368, 15.038549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.544022, 13.953164, 15.408980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.673306, 14.328074, 15.356749>,  <11.750877, 14.553020, 15.325410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.673306, 14.328074, 15.356749>,  <11.544022, 13.953164, 15.408980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.673306, 14.328074, 15.356749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047972, 0.154036, 0.986900,
		0.945110, -0.312714, 0.094749,
		0.323212, 0.937274, -0.130579,
		11.770270, 14.609256, 15.317575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.863457, 14.065325, 15.910721>,  <11.544022, 13.953164, 15.408980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.863457, 14.065325, 15.910721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.839315, 14.446095, 15.790589>,  <11.824831, 14.674557, 15.718511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.839315, 14.446095, 15.790589>,  <11.863457, 14.065325, 15.910721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.839315, 14.446095, 15.790589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038377, 0.298441, 0.953656,
		0.997439, 0.069081, 0.018520,
		-0.060352, 0.951925, -0.300328,
		11.821210, 14.731672, 15.700491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.403243, 14.378803, 16.342257>,  <11.863457, 14.065325, 15.910721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.403243, 14.378803, 16.342257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.175203, 14.679615, 16.209930>,  <12.038380, 14.860102, 16.130535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.175203, 14.679615, 16.209930>,  <12.403243, 14.378803, 16.342257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.175203, 14.679615, 16.209930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114672, 0.471556, 0.874349,
		0.813533, 0.460531, -0.355071,
		-0.570100, 0.752028, -0.330816,
		12.004173, 14.905224, 16.110685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.668907, 15.024712, 16.628212>,  <12.403243, 14.378803, 16.342257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.668907, 15.024712, 16.628212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.301837, 15.151357, 16.532187>,  <12.081595, 15.227344, 16.474571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.301837, 15.151357, 16.532187>,  <12.668907, 15.024712, 16.628212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.301837, 15.151357, 16.532187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041642, 0.524221, 0.850563,
		0.395144, 0.790537, -0.467881,
		-0.917675, 0.316612, -0.240062,
		12.026534, 15.246340, 16.460167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.609488, 15.756471, 16.826056>,  <12.668907, 15.024712, 16.628212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.609488, 15.756471, 16.826056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.234873, 15.617805, 16.805189>,  <12.010104, 15.534606, 16.792669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.234873, 15.617805, 16.805189>,  <12.609488, 15.756471, 16.826056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.234873, 15.617805, 16.805189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233276, 0.505174, 0.830892,
		-0.261686, 0.790332, -0.553982,
		-0.936538, -0.346664, -0.052168,
		11.953912, 15.513806, 16.789539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.192191, 16.314178, 16.997997>,  <12.609488, 15.756471, 16.826056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.192191, 16.314178, 16.997997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.963212, 15.992324, 17.061075>,  <11.825825, 15.799212, 17.098921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.963212, 15.992324, 17.061075>,  <12.192191, 16.314178, 16.997997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.963212, 15.992324, 17.061075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288554, 0.377715, 0.879811,
		-0.767490, 0.458143, -0.448402,
		-0.572447, -0.804634, 0.157694,
		11.791478, 15.750934, 17.108383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.614873, 16.533360, 17.420387>,  <12.192191, 16.314178, 16.997997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.614873, 16.533360, 17.420387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.574690, 16.136969, 17.455870>,  <11.550580, 15.899134, 17.477160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.574690, 16.136969, 17.455870>,  <11.614873, 16.533360, 17.420387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.574690, 16.136969, 17.455870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269063, 0.112895, 0.956483,
		-0.957869, 0.072217, -0.277977,
		-0.100457, -0.990979, 0.088708,
		11.544553, 15.839675, 17.482483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.035062, 16.389780, 17.727064>,  <11.614873, 16.533360, 17.420387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.035062, 16.389780, 17.727064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.206859, 16.034098, 17.790121>,  <11.309937, 15.820688, 17.827955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.206859, 16.034098, 17.790121>,  <11.035062, 16.389780, 17.727064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.206859, 16.034098, 17.790121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296657, 0.025952, 0.954631,
		-0.852955, -0.456771, -0.252644,
		0.429491, -0.889206, 0.157640,
		11.335706, 15.767336, 17.837414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.497252, 15.934219, 17.989101>,  <11.035062, 16.389780, 17.727064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.497252, 15.934219, 17.989101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.857142, 15.797953, 18.098234>,  <11.073077, 15.716192, 18.163713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.857142, 15.797953, 18.098234>,  <10.497252, 15.934219, 17.989101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.857142, 15.797953, 18.098234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270452, 0.055463, 0.961135,
		-0.342559, -0.938547, -0.042233,
		0.899727, -0.340667, 0.272831,
		11.127061, 15.695752, 18.180084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.413619, 15.314591, 18.535469>,  <10.497252, 15.934219, 17.989101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.413619, 15.314591, 18.535469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.772494, 15.486599, 18.575747>,  <10.987820, 15.589804, 18.599913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.772494, 15.486599, 18.575747>,  <10.413619, 15.314591, 18.535469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.772494, 15.486599, 18.575747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115600, 0.008606, 0.993259,
		0.426252, -0.902779, 0.057432,
		0.897187, 0.430018, 0.100693,
		11.041651, 15.615604, 18.605955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.423657, 15.301669, 19.143963>,  <10.413619, 15.314591, 18.535469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.423657, 15.301669, 19.143963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.766964, 15.502631, 19.102070>,  <10.972948, 15.623208, 19.076935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.766964, 15.502631, 19.102070>,  <10.423657, 15.301669, 19.143963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.766964, 15.502631, 19.102070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036416, 0.143942, 0.988916,
		0.511912, -0.852567, 0.105245,
		0.858266, 0.502405, -0.104732,
		11.024444, 15.653353, 19.070650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.952883, 15.038068, 19.677530>,  <10.423657, 15.301669, 19.143963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.952883, 15.038068, 19.677530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.995982, 15.427606, 19.597515>,  <11.021842, 15.661328, 19.549505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.995982, 15.427606, 19.597515>,  <10.952883, 15.038068, 19.677530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.995982, 15.427606, 19.597515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019817, 0.203275, 0.978921,
		0.993981, -0.101514, 0.041201,
		0.107750, 0.973845, -0.200040,
		11.028307, 15.719759, 19.537502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.509871, 15.323697, 20.158682>,  <10.952883, 15.038068, 19.677530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.509871, 15.323697, 20.158682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.278570, 15.629488, 20.044699>,  <11.139790, 15.812963, 19.976309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.278570, 15.629488, 20.044699>,  <11.509871, 15.323697, 20.158682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.278570, 15.629488, 20.044699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119686, 0.266007, 0.956512,
		0.807032, 0.587211, -0.062322,
		-0.578252, 0.764476, -0.284957,
		11.105095, 15.858831, 19.959211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.542814, 15.824184, 20.688656>,  <11.509871, 15.323697, 20.158682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.542814, 15.824184, 20.688656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.227191, 15.979549, 20.498278>,  <11.037817, 16.072769, 20.384050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.227191, 15.979549, 20.498278>,  <11.542814, 15.824184, 20.688656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.227191, 15.979549, 20.498278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305030, 0.424779, 0.852361,
		0.533238, 0.817740, -0.216699,
		-0.789059, 0.388412, -0.475943,
		10.990473, 16.096073, 20.355495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.619188, 16.453514, 20.883656>,  <11.542814, 15.824184, 20.688656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.619188, 16.453514, 20.883656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.247396, 16.381004, 20.755152>,  <11.024322, 16.337498, 20.678049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.247396, 16.381004, 20.755152>,  <11.619188, 16.453514, 20.883656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.247396, 16.381004, 20.755152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368871, 0.452466, 0.811917,
		-0.001823, 0.873163, -0.487425,
		-0.929479, -0.181277, -0.321259,
		10.968553, 16.326622, 20.658773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.276293, 17.092777, 20.890961>,  <11.619188, 16.453514, 20.883656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.276293, 17.092777, 20.890961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.993633, 16.812248, 20.928476>,  <10.824038, 16.643932, 20.950985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.993633, 16.812248, 20.928476>,  <11.276293, 17.092777, 20.890961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.993633, 16.812248, 20.928476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262359, 0.382811, 0.885790,
		-0.657126, 0.601336, -0.454511,
		-0.706650, -0.701320, 0.093789,
		10.781638, 16.601852, 20.956614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.680316, 17.377991, 20.894341>,  <11.276293, 17.092777, 20.890961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.680316, 17.377991, 20.894341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.583256, 17.037716, 21.080870>,  <10.525020, 16.833551, 21.192787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.583256, 17.037716, 21.080870>,  <10.680316, 17.377991, 20.894341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.583256, 17.037716, 21.080870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128942, 0.504703, 0.853609,
		-0.961506, 0.147000, -0.232155,
		-0.242650, -0.850685, 0.466321,
		10.510461, 16.782511, 21.220766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.104519, 17.537876, 21.314713>,  <10.680316, 17.377991, 20.894341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.104519, 17.537876, 21.314713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.242011, 17.196381, 21.471161>,  <10.324507, 16.991484, 21.565031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.242011, 17.196381, 21.471161>,  <10.104519, 17.537876, 21.314713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.242011, 17.196381, 21.471161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035980, 0.404221, 0.913953,
		-0.938379, -0.328226, 0.108226,
		0.343731, -0.853740, 0.391122,
		10.345130, 16.940258, 21.588497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.692494, 17.375137, 21.926241>,  <10.104519, 17.537876, 21.314713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.692494, 17.375137, 21.926241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.011415, 17.146769, 22.004580>,  <10.202768, 17.009747, 22.051582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.011415, 17.146769, 22.004580>,  <9.692494, 17.375137, 21.926241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.011415, 17.146769, 22.004580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009571, 0.312477, 0.949877,
		-0.603505, -0.759213, 0.243674,
		0.797302, -0.570923, 0.195848,
		10.250607, 16.975492, 22.063334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.536530, 16.967228, 22.508806>,  <9.692494, 17.375137, 21.926241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.536530, 16.967228, 22.508806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.934305, 17.004318, 22.488829>,  <10.172971, 17.026573, 22.476841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.934305, 17.004318, 22.488829>,  <9.536530, 16.967228, 22.508806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.934305, 17.004318, 22.488829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033343, 0.172663, 0.984416,
		0.099903, -0.980607, 0.168611,
		0.994438, 0.092724, -0.049946,
		10.232636, 17.032137, 22.473845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.826931, 16.821665, 23.230700>,  <9.536530, 16.967228, 22.508806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.826931, 16.821665, 23.230700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.138594, 16.983801, 23.039444>,  <10.325591, 17.081083, 22.924690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.138594, 16.983801, 23.039444>,  <9.826931, 16.821665, 23.230700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.138594, 16.983801, 23.039444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478829, 0.107381, 0.871316,
		0.404523, -0.907837, -0.110423,
		0.779156, 0.405342, -0.478137,
		10.372340, 17.105404, 22.896004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.404178, 16.412409, 23.381849>,  <9.826931, 16.821665, 23.230700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.404178, 16.412409, 23.381849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.549501, 16.767454, 23.268604>,  <10.636696, 16.980480, 23.200657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.549501, 16.767454, 23.268604>,  <10.404178, 16.412409, 23.381849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.549501, 16.767454, 23.268604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479840, 0.082207, 0.873496,
		0.798599, -0.453198, -0.396045,
		0.363309, 0.887611, -0.283112,
		10.658494, 17.033737, 23.183670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.121705, 16.466455, 23.583452>,  <10.404178, 16.412409, 23.381849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.121705, 16.466455, 23.583452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.026204, 16.853016, 23.545370>,  <10.968904, 17.084953, 23.522520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.026204, 16.853016, 23.545370>,  <11.121705, 16.466455, 23.583452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.026204, 16.853016, 23.545370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148430, 0.133207, 0.979910,
		0.959669, 0.219825, -0.175247,
		-0.238753, 0.966402, -0.095206,
		10.954578, 17.142937, 23.516808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.599775, 16.929852, 23.979635>,  <11.121705, 16.466455, 23.583452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.599775, 16.929852, 23.979635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.260442, 17.139330, 23.948469>,  <11.056842, 17.265017, 23.929770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.260442, 17.139330, 23.948469>,  <11.599775, 16.929852, 23.979635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.260442, 17.139330, 23.948469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020802, 0.114078, 0.993254,
		0.529053, 0.844232, -0.085882,
		-0.848334, 0.523697, -0.077915,
		11.005941, 17.296438, 23.925095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.752370, 17.530436, 24.298803>,  <11.599775, 16.929852, 23.979635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.752370, 17.530436, 24.298803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.353194, 17.528952, 24.273180>,  <11.113688, 17.528061, 24.257807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.353194, 17.528952, 24.273180>,  <11.752370, 17.530436, 24.298803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.353194, 17.528952, 24.273180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063827, 0.159637, 0.985110,
		0.006569, 0.987169, -0.159545,
		-0.997939, -0.003712, -0.064057,
		11.053812, 17.527838, 24.253963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.468493, 18.162790, 24.414898>,  <11.752370, 17.530436, 24.298803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.468493, 18.162790, 24.414898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.180622, 17.916357, 24.542965>,  <11.007899, 17.768497, 24.619804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.180622, 17.916357, 24.542965>,  <11.468493, 18.162790, 24.414898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.180622, 17.916357, 24.542965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220444, 0.234515, 0.946788,
		-0.658384, 0.751960, -0.032964,
		-0.719677, -0.616083, 0.320166,
		10.964719, 17.731531, 24.639015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.945727, 18.513945, 24.847839>,  <11.468493, 18.162790, 24.414898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.945727, 18.513945, 24.847839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.971547, 18.135798, 24.975660>,  <10.987039, 17.908909, 25.052353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.971547, 18.135798, 24.975660>,  <10.945727, 18.513945, 24.847839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.971547, 18.135798, 24.975660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268267, 0.324872, 0.906913,
		-0.961180, 0.027186, 0.274581,
		0.064548, -0.945367, 0.319554,
		10.990911, 17.852188, 25.071526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.553321, 18.547045, 25.494165>,  <10.945727, 18.513945, 24.847839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.553321, 18.547045, 25.494165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.783892, 18.220375, 25.483046>,  <10.922235, 18.024374, 25.476374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.783892, 18.220375, 25.483046>,  <10.553321, 18.547045, 25.494165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.783892, 18.220375, 25.483046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409414, 0.259199, 0.874755,
		-0.707185, -0.515614, 0.483768,
		0.576428, -0.816675, -0.027798,
		10.956820, 17.975372, 25.474707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.380112, 18.018944, 26.001165>,  <10.553321, 18.547045, 25.494165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.380112, 18.018944, 26.001165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.706794, 17.819542, 26.117430>,  <10.902803, 17.699900, 26.187187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.706794, 17.819542, 26.117430>,  <10.380112, 18.018944, 26.001165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.706794, 17.819542, 26.117430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065846, 0.419898, 0.905179,
		-0.573285, -0.758404, 0.310109,
		0.816706, -0.498507, 0.290659,
		10.951805, 17.669991, 26.204628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.397474, 17.923510, 26.803770>,  <10.380112, 18.018944, 26.001165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.397474, 17.923510, 26.803770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.765100, 17.784781, 26.728905>,  <10.985677, 17.701544, 26.683985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.765100, 17.784781, 26.728905>,  <10.397474, 17.923510, 26.803770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.765100, 17.784781, 26.728905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251726, 0.151196, 0.955915,
		-0.303236, -0.925664, 0.226264,
		0.919066, -0.346824, -0.187165,
		11.040820, 17.680733, 26.672754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.684284, 17.375227, 27.326916>,  <10.397474, 17.923510, 26.803770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.684284, 17.375227, 27.326916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.992703, 17.570221, 27.163042>,  <11.177755, 17.687218, 27.064718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.992703, 17.570221, 27.163042>,  <10.684284, 17.375227, 27.326916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.992703, 17.570221, 27.163042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423515, 0.087854, 0.901619,
		0.475520, -0.868699, -0.138718,
		0.771049, 0.487487, -0.409683,
		11.224018, 17.716467, 27.040136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.397283, 17.157665, 27.617838>,  <10.684284, 17.375227, 27.326916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.397283, 17.157665, 27.617838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.502336, 17.510212, 27.460756>,  <11.565367, 17.721741, 27.366508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.502336, 17.510212, 27.460756>,  <11.397283, 17.157665, 27.617838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.502336, 17.510212, 27.460756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547191, 0.199173, 0.812965,
		0.794737, -0.428393, -0.429967,
		0.262631, 0.881368, -0.392703,
		11.581125, 17.774622, 27.342945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.118726, 17.135931, 27.590815>,  <11.397283, 17.157665, 27.617838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.118726, 17.135931, 27.590815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.998145, 17.516266, 27.619205>,  <11.925797, 17.744467, 27.636240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.998145, 17.516266, 27.619205>,  <12.118726, 17.135931, 27.590815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.998145, 17.516266, 27.619205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675111, 0.160284, 0.720094,
		0.673315, 0.264989, -0.690237,
		-0.301451, 0.950836, 0.070976,
		11.907710, 17.801517, 27.640499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.793248, 17.453596, 27.669996>,  <12.118726, 17.135931, 27.590815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.793248, 17.453596, 27.669996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.519576, 17.723272, 27.781252>,  <12.355372, 17.885078, 27.848005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.519576, 17.723272, 27.781252>,  <12.793248, 17.453596, 27.669996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.519576, 17.723272, 27.781252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458180, 0.100624, 0.883146,
		0.567422, 0.731669, -0.377746,
		-0.684181, 0.674192, 0.278140,
		12.314322, 17.925529, 27.864695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.212694, 17.857924, 28.014235>,  <12.793248, 17.453596, 27.669996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.212694, 17.857924, 28.014235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.856827, 18.010008, 28.115374>,  <12.643307, 18.101257, 28.176056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.856827, 18.010008, 28.115374>,  <13.212694, 17.857924, 28.014235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.856827, 18.010008, 28.115374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392995, 0.355672, 0.847969,
		0.232475, 0.853779, -0.465851,
		-0.889669, 0.380209, 0.252846,
		12.589926, 18.124071, 28.191227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.343704, 18.530830, 27.981228>,  <13.212694, 17.857924, 28.014235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.343704, 18.530830, 27.981228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.044936, 18.428480, 28.226711>,  <12.865675, 18.367071, 28.374001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.044936, 18.428480, 28.226711>,  <13.343704, 18.530830, 27.981228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.044936, 18.428480, 28.226711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550725, 0.279115, 0.786636,
		-0.372575, 0.925539, -0.067561,
		-0.746920, -0.255874, 0.613709,
		12.820860, 18.351719, 28.410824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.186313, 19.090946, 28.430195>,  <13.343704, 18.530830, 27.981228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.186313, 19.090946, 28.430195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.055659, 18.764406, 28.620724>,  <12.977267, 18.568481, 28.735041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.055659, 18.764406, 28.620724>,  <13.186313, 19.090946, 28.430195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.055659, 18.764406, 28.620724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466580, 0.299007, 0.832405,
		-0.821957, 0.494134, 0.283227,
		-0.326633, -0.816349, 0.476324,
		12.957669, 18.519501, 28.763620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.995540, 19.323294, 29.117275>,  <13.186313, 19.090946, 28.430195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.995540, 19.323294, 29.117275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.020084, 18.926813, 29.164183>,  <13.034811, 18.688925, 29.192327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.020084, 18.926813, 29.164183>,  <12.995540, 19.323294, 29.117275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.020084, 18.926813, 29.164183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419757, 0.132224, 0.897954,
		-0.905560, -0.005876, 0.424177,
		0.061363, -0.991203, 0.117270,
		13.038493, 18.629452, 29.199364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.648893, 19.173380, 29.714245>,  <12.995540, 19.323294, 29.117275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.648893, 19.173380, 29.714245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.896594, 18.863503, 29.663057>,  <13.045215, 18.677576, 29.632345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.896594, 18.863503, 29.663057>,  <12.648893, 19.173380, 29.714245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.896594, 18.863503, 29.663057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359155, 0.134539, 0.923530,
		-0.698237, -0.617858, 0.361548,
		0.619252, -0.774694, -0.127967,
		13.082370, 18.631094, 29.624668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.432743, 18.660795, 30.141594>,  <12.648893, 19.173380, 29.714245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.432743, 18.660795, 30.141594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.823103, 18.643522, 30.056030>,  <13.057319, 18.633160, 30.004692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.823103, 18.643522, 30.056030>,  <12.432743, 18.660795, 30.141594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.823103, 18.643522, 30.056030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208264, -0.108437, 0.972043,
		-0.065164, -0.993165, -0.096832,
		0.975900, -0.043176, -0.213907,
		13.115872, 18.630568, 29.991858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.698524, 18.085325, 30.363108>,  <12.432743, 18.660795, 30.141594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.698524, 18.085325, 30.363108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.006917, 18.339708, 30.349583>,  <13.191953, 18.492338, 30.341467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.006917, 18.339708, 30.349583>,  <12.698524, 18.085325, 30.363108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.006917, 18.339708, 30.349583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214697, -0.209561, 0.953934,
		0.599578, -0.742724, -0.298106,
		0.770981, 0.635960, -0.033812,
		13.238212, 18.530497, 30.339439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.162346, 17.698509, 30.509472>,  <12.698524, 18.085325, 30.363108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.162346, 17.698509, 30.509472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.228964, 18.082602, 30.599113>,  <13.268934, 18.313057, 30.652899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.228964, 18.082602, 30.599113>,  <13.162346, 17.698509, 30.509472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.228964, 18.082602, 30.599113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356993, -0.270580, 0.894060,
		0.919140, -0.068897, -0.387858,
		0.166545, 0.960229, 0.224105,
		13.278927, 18.370670, 30.666346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.877605, 17.996086, 30.714027>,  <13.162346, 17.698509, 30.509472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.877605, 17.996086, 30.714027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.570590, 18.138952, 30.926939>,  <13.386381, 18.224672, 31.054686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.570590, 18.138952, 30.926939>,  <13.877605, 17.996086, 30.714027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.570590, 18.138952, 30.926939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444277, -0.302164, 0.843395,
		0.462065, 0.883816, 0.073242,
		-0.767538, 0.357163, 0.532279,
		13.340329, 18.246101, 31.086622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.075265, 18.331976, 31.408882>,  <13.877605, 17.996086, 30.714027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.075265, 18.331976, 31.408882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.691472, 18.227816, 31.451937>,  <13.461197, 18.165319, 31.477770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.691472, 18.227816, 31.451937>,  <14.075265, 18.331976, 31.408882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.691472, 18.227816, 31.451937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191735, -0.323458, 0.926613,
		-0.206476, 0.909706, 0.360281,
		-0.959482, -0.260402, 0.107636,
		13.403627, 18.149694, 31.484228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.726757, 18.591347, 32.051163>,  <14.075265, 18.331976, 31.408882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.726757, 18.591347, 32.051163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.527499, 18.264891, 31.934017>,  <13.407945, 18.069017, 31.863731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.527499, 18.264891, 31.934017>,  <13.726757, 18.591347, 32.051163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.527499, 18.264891, 31.934017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013428, -0.330446, 0.943729,
		-0.866990, 0.474046, 0.153651,
		-0.498144, -0.816141, -0.292859,
		13.378056, 18.020048, 31.846159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.415997, 18.834774, 31.842768>,  <13.726757, 18.591347, 32.051163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.415997, 18.834774, 31.842768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.195601, 19.003536, 31.554766>,  <14.063365, 19.104794, 31.381964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.195601, 19.003536, 31.554766>,  <14.415997, 18.834774, 31.842768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.195601, 19.003536, 31.554766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377098, 0.895550, 0.236196,
		0.744453, -0.141371, -0.652536,
		-0.550987, 0.421907, -0.720006,
		14.030305, 19.130108, 31.338764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.694427, 19.079782, 31.182507>,  <14.415997, 18.834774, 31.842768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.694427, 19.079782, 31.182507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.380981, 19.278902, 31.331177>,  <14.192914, 19.398375, 31.420380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.380981, 19.278902, 31.331177>,  <14.694427, 19.079782, 31.182507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.380981, 19.278902, 31.331177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594533, 0.774457, 0.216213,
		-0.180215, 0.390401, -0.902834,
		-0.783616, 0.497799, 0.371675,
		14.145897, 19.428242, 31.442678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.205901, 18.552059, 31.073534>,  <14.694427, 19.079782, 31.182507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.205901, 18.552059, 31.073534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.227138, 18.207253, 31.275171>,  <15.239880, 18.000368, 31.396152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.227138, 18.207253, 31.275171>,  <15.205901, 18.552059, 31.073534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.227138, 18.207253, 31.275171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304383, -0.466811, -0.830324,
		0.951069, 0.197518, 0.237600,
		0.053090, -0.862017, 0.504091,
		15.243065, 17.948647, 31.426399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.797477, 18.062946, 30.873016>,  <15.205901, 18.552059, 31.073534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.797477, 18.062946, 30.873016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.477128, 17.853703, 30.989609>,  <15.284919, 17.728155, 31.059565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.477128, 17.853703, 30.989609>,  <15.797477, 18.062946, 30.873016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.477128, 17.853703, 30.989609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080820, -0.576711, -0.812941,
		0.593359, -0.627503, 0.504149,
		-0.800871, -0.523111, 0.291482,
		15.236867, 17.696770, 31.077053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.914910, 17.317875, 30.915762>,  <15.797477, 18.062946, 30.873016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.914910, 17.317875, 30.915762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.534499, 17.385698, 30.812382>,  <15.306252, 17.426392, 30.750355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.534499, 17.385698, 30.812382>,  <15.914910, 17.317875, 30.915762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.534499, 17.385698, 30.812382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117606, -0.574755, -0.809831,
		-0.285857, -0.800567, 0.526667,
		-0.951028, 0.169556, -0.258449,
		15.249190, 17.436565, 30.734846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.695086, 16.698444, 30.629383>,  <15.914910, 17.317875, 30.915762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.695086, 16.698444, 30.629383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.430769, 16.965588, 30.492378>,  <15.272179, 17.125874, 30.410175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.430769, 16.965588, 30.492378>,  <15.695086, 16.698444, 30.629383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.430769, 16.965588, 30.492378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040103, -0.487105, -0.872422,
		-0.749495, -0.562756, 0.348660,
		-0.660794, 0.667858, -0.342515,
		15.232531, 17.165945, 30.389624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.012404, 16.378338, 30.438709>,  <15.695086, 16.698444, 30.629383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.012404, 16.378338, 30.438709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.109954, 16.703018, 30.226419>,  <15.168484, 16.897827, 30.099047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.109954, 16.703018, 30.226419>,  <15.012404, 16.378338, 30.438709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.109954, 16.703018, 30.226419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041068, -0.555399, -0.830570,
		-0.968937, 0.180759, -0.168782,
		0.243874, 0.811701, -0.530723,
		15.183116, 16.946529, 30.067204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.652485, 16.278515, 29.830790>,  <15.012404, 16.378338, 30.438709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.652485, 16.278515, 29.830790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.914584, 16.560005, 29.720936>,  <15.071844, 16.728899, 29.655024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.914584, 16.560005, 29.720936>,  <14.652485, 16.278515, 29.830790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.914584, 16.560005, 29.720936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009393, -0.371114, -0.928540,
		-0.755355, 0.605844, -0.249782,
		0.655248, 0.703724, -0.274632,
		15.111158, 16.771122, 29.638546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.345836, 16.587635, 29.254606>,  <14.652485, 16.278515, 29.830790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.345836, 16.587635, 29.254606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.727806, 16.700869, 29.218874>,  <14.956988, 16.768808, 29.197435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.727806, 16.700869, 29.218874>,  <14.345836, 16.587635, 29.254606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.727806, 16.700869, 29.218874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040190, -0.174866, -0.983772,
		-0.294111, 0.943019, -0.155607,
		0.954926, 0.283085, -0.089330,
		15.014284, 16.785793, 29.192076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.379900, 16.901041, 28.621960>,  <14.345836, 16.587635, 29.254606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.379900, 16.901041, 28.621960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.774595, 16.877180, 28.682343>,  <15.011413, 16.862864, 28.718573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.774595, 16.877180, 28.682343>,  <14.379900, 16.901041, 28.621960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.774595, 16.877180, 28.682343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144010, -0.107357, -0.983736,
		0.074890, 0.992429, -0.097342,
		0.986738, -0.059654, 0.150959,
		15.070617, 16.859283, 28.727631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.666046, 17.445084, 28.261665>,  <14.379900, 16.901041, 28.621960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.666046, 17.445084, 28.261665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.919233, 17.139328, 28.310751>,  <15.071145, 16.955873, 28.340202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.919233, 17.139328, 28.310751>,  <14.666046, 17.445084, 28.261665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.919233, 17.139328, 28.310751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003105, -0.156001, -0.987752,
		0.774173, 0.625595, -0.096370,
		0.632967, -0.764391, 0.122714,
		15.109123, 16.910011, 28.347565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.928499, 17.424833, 27.663954>,  <14.666046, 17.445084, 28.261665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.928499, 17.424833, 27.663954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.094180, 17.083321, 27.790123>,  <15.193588, 16.878412, 27.865824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.094180, 17.083321, 27.790123>,  <14.928499, 17.424833, 27.663954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.094180, 17.083321, 27.790123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129904, -0.287547, -0.948916,
		0.900867, 0.434017, -0.008193,
		0.414201, -0.853783, 0.315423,
		15.218440, 16.827187, 27.884750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.588101, 17.281208, 27.362511>,  <14.928499, 17.424833, 27.663954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.588101, 17.281208, 27.362511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.439610, 16.919271, 27.445889>,  <15.350514, 16.702108, 27.495914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.439610, 16.919271, 27.445889>,  <15.588101, 17.281208, 27.362511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.439610, 16.919271, 27.445889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244046, -0.311671, -0.918315,
		0.895897, -0.290035, 0.336524,
		-0.371229, -0.904843, 0.208443,
		15.328241, 16.647820, 27.508421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.043741, 16.853882, 27.059402>,  <15.588101, 17.281208, 27.362511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.043741, 16.853882, 27.059402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.700350, 16.651592, 27.093481>,  <15.494315, 16.530218, 27.113928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.700350, 16.651592, 27.093481>,  <16.043741, 16.853882, 27.059402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.700350, 16.651592, 27.093481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170393, -0.437952, -0.882703,
		0.483717, -0.743264, 0.462144,
		-0.858478, -0.505725, 0.085197,
		15.442806, 16.499874, 27.119040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.134842, 16.116562, 26.809250>,  <16.043741, 16.853882, 27.059402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.134842, 16.116562, 26.809250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.744051, 16.201765, 26.804441>,  <15.509577, 16.252888, 26.801556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.744051, 16.201765, 26.804441>,  <16.134842, 16.116562, 26.809250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.744051, 16.201765, 26.804441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082110, -0.427413, -0.900320,
		-0.196915, -0.878604, 0.435062,
		-0.976976, 0.213009, -0.012022,
		15.450958, 16.265669, 26.800835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.776713, 15.432264, 26.722818>,  <16.134842, 16.116562, 26.809250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.776713, 15.432264, 26.722818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.515399, 15.709199, 26.600254>,  <15.358610, 15.875360, 26.526716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.515399, 15.709199, 26.600254>,  <15.776713, 15.432264, 26.722818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.515399, 15.709199, 26.600254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123994, -0.497084, -0.858798,
		-0.746889, -0.523047, 0.410583,
		-0.653286, 0.692336, -0.306412,
		15.319413, 15.916900, 26.508331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.342527, 15.046675, 26.325788>,  <15.776713, 15.432264, 26.722818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.342527, 15.046675, 26.325788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.246542, 15.420542, 26.220860>,  <15.188951, 15.644862, 26.157902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.246542, 15.420542, 26.220860>,  <15.342527, 15.046675, 26.325788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.246542, 15.420542, 26.220860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492896, -0.350101, -0.796545,
		-0.836344, -0.061844, 0.544705,
		-0.239963, 0.934668, -0.262322,
		15.174553, 15.700942, 26.142162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.720942, 15.019903, 26.117924>,  <15.342527, 15.046675, 26.325788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.720942, 15.019903, 26.117924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.823406, 15.362842, 25.939335>,  <14.884886, 15.568604, 25.832182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.823406, 15.362842, 25.939335>,  <14.720942, 15.019903, 26.117924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.823406, 15.362842, 25.939335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468109, -0.294084, -0.833300,
		-0.845727, 0.422458, 0.325999,
		0.256163, 0.857347, -0.446471,
		14.900255, 15.620046, 25.805393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.140841, 15.317275, 25.862080>,  <14.720942, 15.019903, 26.117924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.140841, 15.317275, 25.862080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.429588, 15.489457, 25.645334>,  <14.602837, 15.592766, 25.515287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.429588, 15.489457, 25.645334>,  <14.140841, 15.317275, 25.862080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.429588, 15.489457, 25.645334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462041, -0.283136, -0.840448,
		-0.515196, 0.857055, -0.005499,
		0.721867, 0.430454, -0.541864,
		14.646149, 15.618593, 25.482775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.765455, 15.688734, 25.365072>,  <14.140841, 15.317275, 25.862080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.765455, 15.688734, 25.365072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.135105, 15.648042, 25.217752>,  <14.356895, 15.623626, 25.129360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.135105, 15.648042, 25.217752>,  <13.765455, 15.688734, 25.365072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.135105, 15.648042, 25.217752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380986, -0.172049, -0.908432,
		0.029051, 0.979821, -0.197753,
		0.924124, -0.101731, -0.368300,
		14.412342, 15.617522, 25.107262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.663794, 15.821763, 24.732538>,  <13.765455, 15.688734, 25.365072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.663794, 15.821763, 24.732538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.022180, 15.644150, 24.736128>,  <14.237211, 15.537581, 24.738281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.022180, 15.644150, 24.736128>,  <13.663794, 15.821763, 24.732538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.022180, 15.644150, 24.736128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121183, -0.263864, -0.956917,
		0.427271, 0.856277, -0.290222,
		0.895965, -0.444033, 0.008975,
		14.290969, 15.510940, 24.738821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.999919, 16.196354, 24.192022>,  <13.663794, 15.821763, 24.732538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.999919, 16.196354, 24.192022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.136977, 15.826510, 24.258587>,  <14.219212, 15.604605, 24.298525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.136977, 15.826510, 24.258587>,  <13.999919, 16.196354, 24.192022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.136977, 15.826510, 24.258587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263103, -0.264488, -0.927805,
		0.901871, 0.274125, -0.333893,
		0.342645, -0.924609, 0.166411,
		14.239771, 15.549128, 24.308510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.217042, 16.000990, 23.558228>,  <13.999919, 16.196354, 24.192022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.217042, 16.000990, 23.558228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.202513, 15.638070, 23.725794>,  <14.193795, 15.420319, 23.826334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.202513, 15.638070, 23.725794>,  <14.217042, 16.000990, 23.558228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.202513, 15.638070, 23.725794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069731, -0.420470, -0.904623,
		0.996904, -0.003647, 0.078540,
		-0.036323, -0.907299, 0.418914,
		14.191616, 15.365880, 23.851467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.746592, 15.557099, 23.268494>,  <14.217042, 16.000990, 23.558228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.746592, 15.557099, 23.268494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.477221, 15.305090, 23.423189>,  <14.315599, 15.153884, 23.516006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.477221, 15.305090, 23.423189>,  <14.746592, 15.557099, 23.268494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.477221, 15.305090, 23.423189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036558, -0.550890, -0.833777,
		0.738351, -0.547348, 0.394015,
		-0.673425, -0.630025, 0.386740,
		14.275194, 15.116082, 23.539211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.887532, 15.004477, 22.915306>,  <14.746592, 15.557099, 23.268494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.887532, 15.004477, 22.915306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.521174, 14.919204, 23.051359>,  <14.301360, 14.868040, 23.132992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.521174, 14.919204, 23.051359>,  <14.887532, 15.004477, 22.915306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.521174, 14.919204, 23.051359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203492, -0.483813, -0.851185,
		0.346018, -0.848810, 0.399741,
		-0.915894, -0.213182, 0.340135,
		14.246407, 14.855249, 23.153400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.772115, 14.290210, 22.843744>,  <14.887532, 15.004477, 22.915306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.772115, 14.290210, 22.843744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.398782, 14.430929, 22.872396>,  <14.174782, 14.515361, 22.889587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.398782, 14.430929, 22.872396>,  <14.772115, 14.290210, 22.843744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.398782, 14.430929, 22.872396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285747, -0.607133, -0.741444,
		-0.217350, -0.712480, 0.667181,
		-0.933331, 0.351798, 0.071629,
		14.118782, 14.536469, 22.893885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.247799, 13.689447, 22.653589>,  <14.772115, 14.290210, 22.843744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.247799, 13.689447, 22.653589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.037840, 14.027624, 22.614168>,  <13.911864, 14.230530, 22.590515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.037840, 14.027624, 22.614168>,  <14.247799, 13.689447, 22.653589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.037840, 14.027624, 22.614168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509029, -0.404594, -0.759732,
		-0.682183, -0.348614, 0.642724,
		-0.524896, 0.845442, -0.098552,
		13.880371, 14.281257, 22.584602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.574856, 13.485280, 22.539106>,  <14.247799, 13.689447, 22.653589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.574856, 13.485280, 22.539106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.628841, 13.855526, 22.397673>,  <13.661233, 14.077673, 22.312813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.628841, 13.855526, 22.397673>,  <13.574856, 13.485280, 22.539106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.628841, 13.855526, 22.397673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289464, -0.304452, -0.907480,
		-0.947626, 0.224828, 0.226842,
		0.134964, 0.925614, -0.353586,
		13.669331, 14.133210, 22.291597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.997556, 13.583005, 22.157629>,  <13.574856, 13.485280, 22.539106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.997556, 13.583005, 22.157629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.262676, 13.846359, 22.014956>,  <13.421748, 14.004372, 21.929352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.262676, 13.846359, 22.014956>,  <12.997556, 13.583005, 22.157629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.262676, 13.846359, 22.014956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223115, -0.281059, -0.933395,
		-0.714783, 0.698237, -0.039391,
		0.662801, 0.658385, -0.356683,
		13.461516, 14.043875, 21.907951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.639719, 13.871025, 21.580063>,  <12.997556, 13.583005, 22.157629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.639719, 13.871025, 21.580063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.017031, 13.985822, 21.513300>,  <13.243418, 14.054700, 21.473242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.017031, 13.985822, 21.513300>,  <12.639719, 13.871025, 21.580063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.017031, 13.985822, 21.513300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162929, -0.037875, -0.985911,
		-0.289269, 0.957184, 0.011033,
		0.943280, 0.286991, -0.166909,
		13.300014, 14.071919, 21.463228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.629906, 14.406618, 20.988077>,  <12.639719, 13.871025, 21.580063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.629906, 14.406618, 20.988077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.982376, 14.220459, 21.021381>,  <13.193858, 14.108764, 21.041363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.982376, 14.220459, 21.021381>,  <12.629906, 14.406618, 20.988077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.982376, 14.220459, 21.021381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107144, 0.025052, -0.993928,
		0.460487, 0.884746, 0.071940,
		0.881176, -0.465399, 0.083259,
		13.246729, 14.080839, 21.046360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.007882, 14.802534, 20.459122>,  <12.629906, 14.406618, 20.988077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.007882, 14.802534, 20.459122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.187143, 14.451631, 20.527912>,  <13.294700, 14.241089, 20.569187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.187143, 14.451631, 20.527912>,  <13.007882, 14.802534, 20.459122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.187143, 14.451631, 20.527912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182251, -0.098678, -0.978288,
		0.875182, 0.469765, 0.115659,
		0.448153, -0.877259, 0.171976,
		13.321589, 14.188453, 20.579504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.659945, 14.806856, 20.068069>,  <13.007882, 14.802534, 20.459122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.659945, 14.806856, 20.068069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.606101, 14.415176, 20.128798>,  <13.573794, 14.180168, 20.165234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.606101, 14.415176, 20.128798>,  <13.659945, 14.806856, 20.068069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.606101, 14.415176, 20.128798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271201, -0.183769, -0.944817,
		0.953064, -0.086008, 0.290297,
		-0.134610, -0.979200, 0.151818,
		13.565718, 14.121416, 20.174343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.200838, 14.510356, 19.720589>,  <13.659945, 14.806856, 20.068069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.200838, 14.510356, 19.720589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.953525, 14.204618, 19.793804>,  <13.805137, 14.021176, 19.837734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.953525, 14.204618, 19.793804>,  <14.200838, 14.510356, 19.720589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.953525, 14.204618, 19.793804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177783, -0.362861, -0.914727,
		0.765584, -0.533020, 0.360238,
		-0.618284, -0.764344, 0.183039,
		13.768040, 13.975315, 19.848715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.464675, 13.817007, 19.378016>,  <14.200838, 14.510356, 19.720589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.464675, 13.817007, 19.378016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.074079, 13.749364, 19.431484>,  <13.839721, 13.708778, 19.463566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.074079, 13.749364, 19.431484>,  <14.464675, 13.817007, 19.378016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.074079, 13.749364, 19.431484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027236, -0.518354, -0.854733,
		0.213831, -0.838279, 0.501562,
		-0.976491, -0.169108, 0.133672,
		13.781132, 13.698631, 19.471586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.321193, 12.973576, 19.423891>,  <14.464675, 13.817007, 19.378016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.321193, 12.973576, 19.423891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.006848, 13.188497, 19.301430>,  <13.818242, 13.317450, 19.227953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.006848, 13.188497, 19.301430>,  <14.321193, 12.973576, 19.423891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.006848, 13.188497, 19.301430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017978, -0.514711, -0.857175,
		-0.618143, -0.668115, 0.414150,
		-0.785860, 0.537303, -0.306154,
		13.771091, 13.349688, 19.209583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.825979, 12.561404, 18.982100>,  <14.321193, 12.973576, 19.423891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.825979, 12.561404, 18.982100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.682096, 12.915181, 18.863192>,  <13.595765, 13.127447, 18.791847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.682096, 12.915181, 18.863192>,  <13.825979, 12.561404, 18.982100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.682096, 12.915181, 18.863192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087856, -0.285074, -0.954471,
		-0.928919, -0.369449, 0.024840,
		-0.359710, 0.884444, -0.297269,
		13.574183, 13.180514, 18.774012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.282032, 12.436379, 18.420691>,  <13.825979, 12.561404, 18.982100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.282032, 12.436379, 18.420691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.380596, 12.822629, 18.387585>,  <13.439734, 13.054379, 18.367722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.380596, 12.822629, 18.387585>,  <13.282032, 12.436379, 18.420691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.380596, 12.822629, 18.387585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039444, -0.075337, -0.996378,
		-0.968363, 0.248782, 0.019524,
		0.246410, 0.965625, -0.082767,
		13.454519, 13.112316, 18.362755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.889067, 12.613514, 17.894381>,  <13.282032, 12.436379, 18.420691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.889067, 12.613514, 17.894381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.130068, 12.930655, 17.930988>,  <13.274669, 13.120940, 17.952953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.130068, 12.930655, 17.930988>,  <12.889067, 12.613514, 17.894381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.130068, 12.930655, 17.930988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051676, 0.153180, -0.986846,
		-0.796443, 0.589848, 0.133263,
		0.602502, 0.792853, 0.091518,
		13.310819, 13.168511, 17.958445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.553660, 13.129655, 17.504145>,  <12.889067, 12.613514, 17.894381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.553660, 13.129655, 17.504145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.948326, 13.188090, 17.532850>,  <13.185125, 13.223151, 17.550074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.948326, 13.188090, 17.532850>,  <12.553660, 13.129655, 17.504145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.948326, 13.188090, 17.532850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083935, -0.078929, -0.993340,
		-0.139451, 0.986118, -0.090138,
		0.986665, 0.146088, 0.071763,
		13.244326, 13.231916, 17.554379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.748746, 13.636086, 16.911356>,  <12.553660, 13.129655, 17.504145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.748746, 13.636086, 16.911356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.104574, 13.477572, 17.002239>,  <13.318071, 13.382464, 17.056770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.104574, 13.477572, 17.002239>,  <12.748746, 13.636086, 16.911356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.104574, 13.477572, 17.002239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240382, -0.016853, -0.970532,
		0.388434, 0.917974, 0.080267,
		0.889570, -0.396282, 0.227211,
		13.371446, 13.358687, 17.070402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.234950, 14.048130, 16.477869>,  <12.748746, 13.636086, 16.911356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.234950, 14.048130, 16.477869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.395874, 13.696416, 16.579853>,  <13.492429, 13.485388, 16.641043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.395874, 13.696416, 16.579853>,  <13.234950, 14.048130, 16.477869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.395874, 13.696416, 16.579853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314227, -0.128952, -0.940549,
		0.859888, 0.458508, 0.224416,
		0.402310, -0.879285, 0.254960,
		13.516567, 13.432631, 16.656342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.911236, 13.953300, 16.144831>,  <13.234950, 14.048130, 16.477869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.911236, 13.953300, 16.144831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.824705, 13.570505, 16.222160>,  <13.772786, 13.340828, 16.268559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.824705, 13.570505, 16.222160>,  <13.911236, 13.953300, 16.144831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.824705, 13.570505, 16.222160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006099, -0.196683, -0.980448,
		0.976302, -0.213277, 0.036711,
		-0.216328, -0.956989, 0.193323,
		13.759807, 13.283408, 16.280157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.303571, 13.604759, 15.777352>,  <13.911236, 13.953300, 16.144831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.303571, 13.604759, 15.777352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.013399, 13.335775, 15.836073>,  <13.839296, 13.174385, 15.871305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.013399, 13.335775, 15.836073>,  <14.303571, 13.604759, 15.777352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.013399, 13.335775, 15.836073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067944, -0.142279, -0.987492,
		0.684936, -0.726329, 0.057524,
		-0.725428, -0.672460, 0.146801,
		13.795771, 13.134037, 15.880114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.476640, 13.421725, 16.436260>,  <14.303571, 13.604759, 15.777352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.476640, 13.421725, 16.436260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.807234, 13.418968, 16.211094>,  <15.005590, 13.417314, 16.075994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.807234, 13.418968, 16.211094>,  <14.476640, 13.421725, 16.436260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.807234, 13.418968, 16.211094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550758, 0.216953, 0.805976,
		0.116568, -0.976158, 0.183106,
		0.826485, -0.006896, -0.562916,
		15.055180, 13.416901, 16.042219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.913857, 12.829183, 16.637682>,  <14.476640, 13.421725, 16.436260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.913857, 12.829183, 16.637682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.092675, 13.162973, 16.508814>,  <15.199966, 13.363248, 16.431492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.092675, 13.162973, 16.508814>,  <14.913857, 12.829183, 16.637682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.092675, 13.162973, 16.508814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361113, 0.161152, 0.918492,
		0.818380, -0.526950, -0.229299,
		0.447047, 0.834478, -0.322172,
		15.226789, 13.413317, 16.412163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.430091, 12.911942, 17.067749>,  <14.913857, 12.829183, 16.637682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.430091, 12.911942, 17.067749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.516818, 13.267459, 16.906235>,  <15.568854, 13.480768, 16.809326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.516818, 13.267459, 16.906235>,  <15.430091, 12.911942, 17.067749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.516818, 13.267459, 16.906235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578960, 0.215957, 0.786237,
		0.786000, -0.404244, -0.467751,
		0.216818, 0.888791, -0.403784,
		15.581863, 13.534096, 16.785099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.109467, 12.997312, 17.104143>,  <15.430091, 12.911942, 17.067749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.109467, 12.997312, 17.104143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.954280, 13.365876, 17.095346>,  <15.861168, 13.587015, 17.090069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.954280, 13.365876, 17.095346>,  <16.109467, 12.997312, 17.104143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.954280, 13.365876, 17.095346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560825, 0.254939, 0.787706,
		0.731409, 0.293269, -0.615658,
		-0.387965, 0.921412, -0.021992,
		15.837891, 13.642300, 17.088749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.625893, 13.362039, 17.196621>,  <16.109467, 12.997312, 17.104143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.625893, 13.362039, 17.196621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.330175, 13.602188, 17.318602>,  <16.152744, 13.746278, 17.391790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.330175, 13.602188, 17.318602>,  <16.625893, 13.362039, 17.196621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.330175, 13.602188, 17.318602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584649, 0.347588, 0.733054,
		0.334109, 0.720233, -0.607977,
		-0.739295, 0.600373, 0.304951,
		16.108387, 13.782300, 17.410088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.902859, 14.040762, 17.408894>,  <16.625893, 13.362039, 17.196621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.902859, 14.040762, 17.408894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.554501, 13.990792, 17.599024>,  <16.345486, 13.960811, 17.713102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.554501, 13.990792, 17.599024>,  <16.902859, 14.040762, 17.408894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.554501, 13.990792, 17.599024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328509, 0.571386, 0.752064,
		-0.365547, 0.811118, -0.456578,
		-0.870895, -0.124925, 0.475328,
		16.293232, 13.953315, 17.741623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.773081, 14.693091, 17.558363>,  <16.902859, 14.040762, 17.408894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.773081, 14.693091, 17.558363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.565411, 14.463620, 17.811771>,  <16.440809, 14.325937, 17.963818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.565411, 14.463620, 17.811771>,  <16.773081, 14.693091, 17.558363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.565411, 14.463620, 17.811771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281150, 0.585359, 0.760467,
		-0.807102, 0.572929, -0.142613,
		-0.519173, -0.573679, 0.633523,
		16.409658, 14.291516, 18.001829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.562668, 15.179263, 17.965223>,  <16.773081, 14.693091, 17.558363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.562668, 15.179263, 17.965223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.492636, 14.844110, 18.172028>,  <16.450617, 14.643019, 18.296110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.492636, 14.844110, 18.172028>,  <16.562668, 15.179263, 17.965223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.492636, 14.844110, 18.172028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325883, 0.446206, 0.833487,
		-0.929057, 0.314411, 0.194931,
		-0.175078, -0.837882, 0.517012,
		16.440113, 14.592746, 18.327131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.193726, 15.402523, 18.480478>,  <16.562668, 15.179263, 17.965223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.193726, 15.402523, 18.480478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.342884, 15.052315, 18.603384>,  <16.432379, 14.842190, 18.677128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.342884, 15.052315, 18.603384>,  <16.193726, 15.402523, 18.480478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.342884, 15.052315, 18.603384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250447, 0.413830, 0.875226,
		-0.893434, -0.249415, 0.373587,
		0.372896, -0.875521, 0.307265,
		16.454754, 14.789659, 18.695564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.844154, 15.309962, 19.146248>,  <16.193726, 15.402523, 18.480478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.844154, 15.309962, 19.146248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.182833, 15.097156, 19.143038>,  <16.386040, 14.969471, 19.141111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.182833, 15.097156, 19.143038>,  <15.844154, 15.309962, 19.146248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.182833, 15.097156, 19.143038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277455, 0.428593, 0.859841,
		-0.454011, -0.730250, 0.510499,
		0.846696, -0.532017, -0.008026,
		16.436842, 14.937551, 19.140631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.813591, 15.062326, 19.779232>,  <15.844154, 15.309962, 19.146248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.813591, 15.062326, 19.779232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.197805, 15.000577, 19.686680>,  <16.428335, 14.963528, 19.631147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.197805, 15.000577, 19.686680>,  <15.813591, 15.062326, 19.779232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.197805, 15.000577, 19.686680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262191, 0.224768, 0.938475,
		-0.092869, -0.962106, 0.256373,
		0.960537, -0.154374, -0.231382,
		16.485966, 14.954265, 19.617266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.165140, 14.540546, 20.268871>,  <15.813591, 15.062326, 19.779232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.165140, 14.540546, 20.268871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.463207, 14.763068, 20.121765>,  <16.642048, 14.896582, 20.033501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.463207, 14.763068, 20.121765>,  <16.165140, 14.540546, 20.268871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.463207, 14.763068, 20.121765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278559, 0.241411, 0.929583,
		0.605915, -0.795139, 0.024928,
		0.745166, 0.556305, -0.367768,
		16.686756, 14.929959, 20.011435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.817032, 14.267705, 20.481335>,  <16.165140, 14.540546, 20.268871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.817032, 14.267705, 20.481335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.891037, 14.647383, 20.379513>,  <16.935440, 14.875190, 20.318419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.891037, 14.647383, 20.379513>,  <16.817032, 14.267705, 20.481335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.891037, 14.647383, 20.379513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426515, 0.155806, 0.890960,
		0.885356, -0.273410, -0.376021,
		0.185011, 0.949195, -0.254557,
		16.946541, 14.932141, 20.303146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.539440, 14.418830, 20.735939>,  <16.817032, 14.267705, 20.481335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.539440, 14.418830, 20.735939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.329201, 14.756332, 20.692451>,  <17.203056, 14.958834, 20.666359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.329201, 14.756332, 20.692451>,  <17.539440, 14.418830, 20.735939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.329201, 14.756332, 20.692451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326165, 0.317888, 0.890260,
		0.785723, 0.432460, -0.442286,
		-0.525600, 0.843757, -0.108718,
		17.171520, 15.009459, 20.659836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.042524, 14.953392, 20.838062>,  <17.539440, 14.418830, 20.735939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.042524, 14.953392, 20.838062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.682213, 15.113013, 20.906599>,  <17.466026, 15.208786, 20.947721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.682213, 15.113013, 20.906599>,  <18.042524, 14.953392, 20.838062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.682213, 15.113013, 20.906599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327987, 0.366508, 0.870687,
		0.284651, 0.840494, -0.461026,
		-0.900777, 0.399052, 0.171344,
		17.411980, 15.232729, 20.958002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.206659, 15.656628, 21.166039>,  <18.042524, 14.953392, 20.838062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.206659, 15.656628, 21.166039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.821589, 15.581775, 21.244251>,  <17.590546, 15.536863, 21.291180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.821589, 15.581775, 21.244251>,  <18.206659, 15.656628, 21.166039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.821589, 15.581775, 21.244251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136676, 0.287444, 0.947996,
		-0.233605, 0.939339, -0.251140,
		-0.962678, -0.187132, 0.195533,
		17.532785, 15.525636, 21.302912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.983467, 16.287285, 21.650766>,  <18.206659, 15.656628, 21.166039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.983467, 16.287285, 21.650766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.676611, 16.032478, 21.680975>,  <17.492496, 15.879594, 21.699100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.676611, 16.032478, 21.680975>,  <17.983467, 16.287285, 21.650766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.676611, 16.032478, 21.680975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130502, 0.270247, 0.953906,
		-0.628064, 0.721925, -0.290449,
		-0.767141, -0.637018, 0.075520,
		17.446468, 15.841373, 21.703630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.461538, 16.703510, 21.964777>,  <17.983467, 16.287285, 21.650766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.461538, 16.703510, 21.964777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.383795, 16.314779, 22.018110>,  <17.337149, 16.081541, 22.050110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.383795, 16.314779, 22.018110>,  <17.461538, 16.703510, 21.964777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.383795, 16.314779, 22.018110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222128, 0.175999, 0.959001,
		-0.955450, 0.156773, -0.250077,
		-0.194359, -0.971827, 0.133335,
		17.325487, 16.023232, 22.058111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.782394, 16.496422, 22.025425>,  <17.461538, 16.703510, 21.964777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.782394, 16.496422, 22.025425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.039692, 16.273111, 22.235022>,  <17.194071, 16.139126, 22.360781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.039692, 16.273111, 22.235022>,  <16.782394, 16.496422, 22.025425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.039692, 16.273111, 22.235022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325689, 0.419862, 0.847138,
		-0.692940, -0.715574, 0.088249,
		0.643242, -0.558274, 0.523994,
		17.232664, 16.105629, 22.392220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.312212, 16.371153, 22.597738>,  <16.782394, 16.496422, 22.025425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.312212, 16.371153, 22.597738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.672258, 16.251846, 22.724751>,  <16.888287, 16.180262, 22.800957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.672258, 16.251846, 22.724751>,  <16.312212, 16.371153, 22.597738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.672258, 16.251846, 22.724751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208705, 0.344549, 0.915275,
		-0.382402, -0.890124, 0.247885,
		0.900117, -0.298268, 0.317530,
		16.942293, 16.162365, 22.820009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.219160, 15.971388, 23.188679>,  <16.312212, 16.371153, 22.597738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.219160, 15.971388, 23.188679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.601591, 16.084181, 23.220678>,  <16.831051, 16.151857, 23.239878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.601591, 16.084181, 23.220678>,  <16.219160, 15.971388, 23.188679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.601591, 16.084181, 23.220678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132252, 0.171443, 0.976277,
		0.261580, -0.943977, 0.201206,
		0.956078, 0.281984, 0.079997,
		16.888414, 16.168776, 23.244677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.423521, 15.752269, 23.839195>,  <16.219160, 15.971388, 23.188679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.423521, 15.752269, 23.839195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.679342, 16.040735, 23.732693>,  <16.832834, 16.213816, 23.668791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.679342, 16.040735, 23.732693>,  <16.423521, 15.752269, 23.839195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.679342, 16.040735, 23.732693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002180, 0.344646, 0.938730,
		0.768744, -0.600948, 0.218848,
		0.639553, 0.721166, -0.266255,
		16.871208, 16.257086, 23.652817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.929432, 15.817193, 24.293430>,  <16.423521, 15.752269, 23.839195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.929432, 15.817193, 24.293430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.989491, 16.179703, 24.135380>,  <17.025526, 16.397209, 24.040550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.989491, 16.179703, 24.135380>,  <16.929432, 15.817193, 24.293430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.989491, 16.179703, 24.135380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148960, 0.415829, 0.897160,
		0.977378, -0.075846, 0.197433,
		0.150144, 0.906275, -0.395124,
		17.034534, 16.451586, 24.016842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.357140, 16.176142, 24.736593>,  <16.929432, 15.817193, 24.293430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.357140, 16.176142, 24.736593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.186972, 16.468239, 24.522766>,  <17.084871, 16.643497, 24.394470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.186972, 16.468239, 24.522766>,  <17.357140, 16.176142, 24.736593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.186972, 16.468239, 24.522766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143630, 0.528718, 0.836557,
		0.893525, 0.432670, -0.120043,
		-0.425422, 0.730242, -0.534567,
		17.059345, 16.687311, 24.362396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.551481, 16.810488, 25.094723>,  <17.357140, 16.176142, 24.736593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.551481, 16.810488, 25.094723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.254211, 16.950235, 24.866467>,  <17.075850, 17.034084, 24.729513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.254211, 16.950235, 24.866467>,  <17.551481, 16.810488, 25.094723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.254211, 16.950235, 24.866467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151503, 0.742839, 0.652103,
		0.651720, 0.571080, -0.499129,
		-0.743175, 0.349369, -0.570643,
		17.031260, 17.055046, 24.695274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.600189, 17.462029, 25.152359>,  <17.551481, 16.810488, 25.094723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.600189, 17.462029, 25.152359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.221758, 17.388258, 25.045837>,  <16.994699, 17.343996, 24.981924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.221758, 17.388258, 25.045837>,  <17.600189, 17.462029, 25.152359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.221758, 17.388258, 25.045837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321957, 0.626029, 0.710233,
		0.035728, 0.757677, -0.651652,
		-0.946080, -0.184429, -0.266306,
		16.937935, 17.332930, 24.965946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.334364, 18.179764, 24.974014>,  <17.600189, 17.462029, 25.152359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.334364, 18.179764, 24.974014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.049200, 17.938099, 25.116423>,  <16.878101, 17.793100, 25.201868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.049200, 17.938099, 25.116423>,  <17.334364, 18.179764, 24.974014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.049200, 17.938099, 25.116423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245332, 0.690482, 0.680475,
		-0.656943, 0.397773, -0.640471,
		-0.712908, -0.604161, 0.356022,
		16.835327, 17.756851, 25.223228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.723219, 18.537914, 25.026476>,  <17.334364, 18.179764, 24.974014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.723219, 18.537914, 25.026476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.647722, 18.234859, 25.276394>,  <16.602425, 18.053026, 25.426344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.647722, 18.234859, 25.276394>,  <16.723219, 18.537914, 25.026476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.647722, 18.234859, 25.276394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283818, 0.651162, 0.703872,
		-0.940119, -0.044478, -0.337931,
		-0.188741, -0.757635, 0.624793,
		16.591101, 18.007568, 25.463831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.058620, 18.630854, 25.152885>,  <16.723219, 18.537914, 25.026476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.058620, 18.630854, 25.152885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.183411, 18.401077, 25.455589>,  <16.258286, 18.263210, 25.637213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.183411, 18.401077, 25.455589>,  <16.058620, 18.630854, 25.152885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.183411, 18.401077, 25.455589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487511, 0.586874, 0.646461,
		-0.815478, -0.570609, -0.096957,
		0.311975, -0.574443, 0.756761,
		16.277002, 18.228745, 25.682617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.457454, 18.543409, 25.554407>,  <16.058620, 18.630854, 25.152885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.457454, 18.543409, 25.554407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.744656, 18.442442, 25.813869>,  <15.916977, 18.381861, 25.969547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.744656, 18.442442, 25.813869>,  <15.457454, 18.543409, 25.554407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.744656, 18.442442, 25.813869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449714, 0.543054, 0.709119,
		-0.531250, -0.800860, 0.276399,
		0.718005, -0.252419, 0.648656,
		15.960057, 18.366716, 26.008467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.146399, 18.332129, 26.165052>,  <15.457454, 18.543409, 25.554407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.146399, 18.332129, 26.165052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.520111, 18.448490, 26.247507>,  <15.744339, 18.518307, 26.296980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.520111, 18.448490, 26.247507>,  <15.146399, 18.332129, 26.165052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.520111, 18.448490, 26.247507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348138, 0.619589, 0.703498,
		0.076932, -0.729029, 0.680145,
		0.934281, 0.290906, 0.206137,
		15.800395, 18.535763, 26.309347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.235648, 18.180326, 26.852365>,  <15.146399, 18.332129, 26.165052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.235648, 18.180326, 26.852365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.477660, 18.485985, 26.762903>,  <15.622868, 18.669380, 26.709227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.477660, 18.485985, 26.762903>,  <15.235648, 18.180326, 26.852365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.477660, 18.485985, 26.762903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415898, 0.542847, 0.729620,
		0.678947, -0.348423, 0.646245,
		0.605029, 0.764146, -0.223656,
		15.659169, 18.715229, 26.695807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.501836, 18.343613, 27.537846>,  <15.235648, 18.180326, 26.852365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.501836, 18.343613, 27.537846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.551465, 18.645174, 27.279779>,  <15.581243, 18.826111, 27.124941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.551465, 18.645174, 27.279779>,  <15.501836, 18.343613, 27.537846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.551465, 18.645174, 27.279779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191619, 0.656154, 0.729894,
		0.973595, 0.033066, 0.225873,
		0.124073, 0.753903, -0.645164,
		15.588687, 18.871346, 27.086229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.923488, 18.876280, 27.936441>,  <15.501836, 18.343613, 27.537846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.923488, 18.876280, 27.936441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.739803, 19.061178, 27.633007>,  <15.629593, 19.172117, 27.450947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.739803, 19.061178, 27.633007>,  <15.923488, 18.876280, 27.936441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.739803, 19.061178, 27.633007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316827, 0.712567, 0.625993,
		0.829906, 0.527805, -0.180768,
		-0.459212, 0.462244, -0.758588,
		15.602039, 19.199852, 27.405430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.102806, 19.574503, 27.758989>,  <15.923488, 18.876280, 27.936441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.102806, 19.574503, 27.758989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.709000, 19.528778, 27.705830>,  <15.472716, 19.501343, 27.673935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.709000, 19.528778, 27.705830>,  <16.102806, 19.574503, 27.758989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.709000, 19.528778, 27.705830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171733, 0.781048, 0.600393,
		0.035168, 0.613919, -0.788585,
		-0.984515, -0.114312, -0.132898,
		15.413645, 19.494484, 27.665960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.773030, 20.227755, 27.387718>,  <16.102806, 19.574503, 27.758989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.773030, 20.227755, 27.387718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.506113, 20.060917, 27.634539>,  <15.345963, 19.960814, 27.782631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.506113, 20.060917, 27.634539>,  <15.773030, 20.227755, 27.387718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.506113, 20.060917, 27.634539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160513, 0.889550, 0.427711,
		-0.727293, 0.186364, -0.660540,
		-0.667294, -0.417096, 0.617049,
		15.305925, 19.935787, 27.819653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.345724, 20.743570, 27.565718>,  <15.773030, 20.227755, 27.387718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.345724, 20.743570, 27.565718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.254158, 20.468473, 27.841286>,  <15.199218, 20.303415, 28.006626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.254158, 20.468473, 27.841286>,  <15.345724, 20.743570, 27.565718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.254158, 20.468473, 27.841286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184978, 0.725549, 0.662844,
		-0.955709, 0.024301, -0.293307,
		-0.228916, -0.687742, 0.688918,
		15.185483, 20.262152, 28.047962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.707212, 20.953358, 27.776794>,  <15.345724, 20.743570, 27.565718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.707212, 20.953358, 27.776794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.918382, 20.750355, 28.049187>,  <15.045083, 20.628553, 28.212622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.918382, 20.750355, 28.049187>,  <14.707212, 20.953358, 27.776794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.918382, 20.750355, 28.049187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319662, 0.624122, 0.712943,
		-0.786839, -0.594062, 0.167258,
		0.527922, -0.507505, 0.680983,
		15.076758, 20.598103, 28.253481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.365690, 21.447409, 27.413567>,  <14.707212, 20.953358, 27.776794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.365690, 21.447409, 27.413567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.363108, 21.839611, 27.335009>,  <14.361558, 22.074932, 27.287874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.363108, 21.839611, 27.335009>,  <14.365690, 21.447409, 27.413567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.363108, 21.839611, 27.335009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095222, -0.194904, -0.976189,
		-0.995435, -0.025003, -0.092108,
		-0.006456, 0.980504, -0.196395,
		14.361171, 22.133762, 27.276091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.915185, 21.517628, 26.822628>,  <14.365690, 21.447409, 27.413567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.915185, 21.517628, 26.822628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.167274, 21.827877, 26.836657>,  <14.318527, 22.014027, 26.845074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.167274, 21.827877, 26.836657>,  <13.915185, 21.517628, 26.822628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.167274, 21.827877, 26.836657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262575, -0.170405, -0.949746,
		-0.730667, 0.607760, -0.311052,
		0.630222, 0.775622, 0.035073,
		14.356340, 22.060564, 26.847179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.754198, 21.795902, 26.290508>,  <13.915185, 21.517628, 26.822628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.754198, 21.795902, 26.290508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.111562, 21.943953, 26.392353>,  <14.325980, 22.032784, 26.453459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.111562, 21.943953, 26.392353>,  <13.754198, 21.795902, 26.290508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.111562, 21.943953, 26.392353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306470, -0.087744, -0.947828,
		-0.328477, 0.924828, -0.191825,
		0.893409, 0.370128, 0.254610,
		14.379584, 22.054991, 26.468737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.950198, 22.185640, 25.679621>,  <13.754198, 21.795902, 26.290508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.950198, 22.185640, 25.679621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.283766, 22.111107, 25.887413>,  <14.483907, 22.066387, 26.012089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.283766, 22.111107, 25.887413>,  <13.950198, 22.185640, 25.679621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.283766, 22.111107, 25.887413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494617, -0.165202, -0.853265,
		0.244813, 0.968497, -0.045600,
		0.833919, -0.186335, 0.519479,
		14.533941, 22.055206, 26.043257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.503701, 22.621273, 25.351671>,  <13.950198, 22.185640, 25.679621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.503701, 22.621273, 25.351671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.674095, 22.316284, 25.546473>,  <14.776332, 22.133291, 25.663353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.674095, 22.316284, 25.546473>,  <14.503701, 22.621273, 25.351671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.674095, 22.316284, 25.546473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635884, -0.130582, -0.760658,
		0.643575, 0.633706, 0.429218,
		0.425985, -0.762473, 0.487002,
		14.801890, 22.087542, 25.692574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.162160, 22.530025, 25.038469>,  <14.503701, 22.621273, 25.351671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.162160, 22.530025, 25.038469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.153719, 22.194481, 25.256042>,  <15.148654, 21.993155, 25.386587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.153719, 22.194481, 25.256042>,  <15.162160, 22.530025, 25.038469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.153719, 22.194481, 25.256042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525576, -0.472121, -0.707723,
		0.850485, 0.270943, 0.450849,
		-0.021103, -0.838863, 0.543934,
		15.147388, 21.942822, 25.419222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.863939, 22.350018, 25.212608>,  <15.162160, 22.530025, 25.038469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.863939, 22.350018, 25.212608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.645110, 22.015879, 25.234173>,  <15.513812, 21.815395, 25.247110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.645110, 22.015879, 25.234173>,  <15.863939, 22.350018, 25.212608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.645110, 22.015879, 25.234173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634935, -0.456067, -0.623587,
		0.545498, -0.306919, 0.779893,
		-0.547074, -0.835347, 0.053910,
		15.480988, 21.765274, 25.250345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.312157, 21.747700, 25.394609>,  <15.863939, 22.350018, 25.212608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.312157, 21.747700, 25.394609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.997027, 21.575447, 25.218477>,  <15.807949, 21.472095, 25.112799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.997027, 21.575447, 25.218477>,  <16.312157, 21.747700, 25.394609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.997027, 21.575447, 25.218477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599570, -0.372697, -0.708247,
		0.140883, -0.821982, 0.551813,
		-0.787825, -0.430630, -0.440329,
		15.760680, 21.446259, 25.086378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.533628, 21.141624, 25.329004>,  <16.312157, 21.747700, 25.394609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.533628, 21.141624, 25.329004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.235939, 21.169659, 25.063307>,  <16.057325, 21.186480, 24.903889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.235939, 21.169659, 25.063307>,  <16.533628, 21.141624, 25.329004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.235939, 21.169659, 25.063307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605291, -0.349712, -0.715069,
		-0.282410, -0.934232, 0.217842,
		-0.744222, 0.070085, -0.664245,
		16.012672, 21.190685, 24.864033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.625824, 20.582649, 24.914301>,  <16.533628, 21.141624, 25.329004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.625824, 20.582649, 24.914301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.342402, 20.751469, 24.688089>,  <16.172348, 20.852760, 24.552362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.342402, 20.751469, 24.688089>,  <16.625824, 20.582649, 24.914301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.342402, 20.751469, 24.688089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398783, -0.421687, -0.814342,
		-0.582168, -0.802530, 0.130483,
		-0.708556, 0.422050, -0.565528,
		16.129835, 20.878084, 24.518431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.215006, 20.038157, 24.652191>,  <16.625824, 20.582649, 24.914301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.215006, 20.038157, 24.652191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.196760, 20.357487, 24.411991>,  <16.185814, 20.549084, 24.267872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.196760, 20.357487, 24.411991>,  <16.215006, 20.038157, 24.652191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.196760, 20.357487, 24.411991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406515, -0.534267, -0.741151,
		-0.912505, -0.277918, -0.300161,
		-0.045613, 0.798324, -0.600499,
		16.183077, 20.596983, 24.231842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.016388, 19.771471, 24.019245>,  <16.215006, 20.038157, 24.652191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.016388, 19.771471, 24.019245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.123404, 20.141184, 23.910341>,  <16.187613, 20.363012, 23.844999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.123404, 20.141184, 23.910341>,  <16.016388, 19.771471, 24.019245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.123404, 20.141184, 23.910341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356162, -0.357410, -0.863369,
		-0.895305, 0.134018, -0.424816,
		0.267540, 0.924282, -0.272258,
		16.203665, 20.418468, 23.828663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.761953, 19.872133, 23.312059>,  <16.016388, 19.771471, 24.019245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.761953, 19.872133, 23.312059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.068808, 20.118080, 23.385204>,  <16.252920, 20.265648, 23.429090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.068808, 20.118080, 23.385204>,  <15.761953, 19.872133, 23.312059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.068808, 20.118080, 23.385204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402115, -0.238825, -0.883892,
		-0.499805, 0.751598, -0.430459,
		0.767137, 0.614868, 0.182863,
		16.298948, 20.302540, 23.440063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.724040, 20.283669, 22.706554>,  <15.761953, 19.872133, 23.312059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.724040, 20.283669, 22.706554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.098063, 20.304266, 22.846849>,  <16.322475, 20.316626, 22.931026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.098063, 20.304266, 22.846849>,  <15.724040, 20.283669, 22.706554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.098063, 20.304266, 22.846849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345732, -0.351144, -0.870154,
		0.078352, 0.934904, -0.346142,
		0.935056, 0.051494, 0.350739,
		16.378580, 20.319714, 22.952072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.143871, 20.517792, 22.196295>,  <15.724040, 20.283669, 22.706554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.143871, 20.517792, 22.196295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.444326, 20.385601, 22.424883>,  <16.624599, 20.306286, 22.562037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.444326, 20.385601, 22.424883>,  <16.143871, 20.517792, 22.196295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.444326, 20.385601, 22.424883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411876, -0.441905, -0.796918,
		0.515899, 0.833969, -0.195815,
		0.751136, -0.330478, 0.571471,
		16.669668, 20.286457, 22.596325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.679869, 20.401012, 21.733133>,  <16.143871, 20.517792, 22.196295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.679869, 20.401012, 21.733133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.815289, 20.182175, 22.039354>,  <16.896542, 20.050873, 22.223087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.815289, 20.182175, 22.039354>,  <16.679869, 20.401012, 21.733133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.815289, 20.182175, 22.039354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492498, -0.590224, -0.639595,
		0.801767, 0.593568, 0.069623,
		0.338550, -0.547095, 0.765553,
		16.916853, 20.018045, 22.269020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.393490, 20.242569, 21.481100>,  <16.679869, 20.401012, 21.733133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.393490, 20.242569, 21.481100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.284258, 19.990040, 21.771441>,  <17.218719, 19.838522, 21.945644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.284258, 19.990040, 21.771441>,  <17.393490, 20.242569, 21.481100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.284258, 19.990040, 21.771441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299520, -0.772823, -0.559494,
		0.914175, 0.064620, 0.400136,
		-0.273080, -0.631324, 0.725850,
		17.202333, 19.800642, 21.989195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.821943, 19.655104, 21.372757>,  <17.393490, 20.242569, 21.481100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.821943, 19.655104, 21.372757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.505054, 19.524988, 21.579281>,  <17.314922, 19.446918, 21.703196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.505054, 19.524988, 21.579281>,  <17.821943, 19.655104, 21.372757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.505054, 19.524988, 21.579281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048821, -0.877153, -0.477722,
		0.608279, -0.353255, 0.710779,
		-0.792220, -0.325290, 0.516308,
		17.267389, 19.427401, 21.734173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.984600, 19.078775, 21.725569>,  <17.821943, 19.655104, 21.372757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.984600, 19.078775, 21.725569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.590021, 19.087378, 21.660509>,  <17.353273, 19.092539, 21.621473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.590021, 19.087378, 21.660509>,  <17.984600, 19.078775, 21.725569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.590021, 19.087378, 21.660509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048666, -0.908404, -0.415252,
		-0.156683, -0.417540, 0.895048,
		-0.986449, 0.021505, -0.162651,
		17.294086, 19.093828, 21.611713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.725700, 18.373756, 21.744461>,  <17.984600, 19.078775, 21.725569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.725700, 18.373756, 21.744461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.395264, 18.533398, 21.585320>,  <17.197001, 18.629183, 21.489834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.395264, 18.533398, 21.585320>,  <17.725700, 18.373756, 21.744461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.395264, 18.533398, 21.585320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117719, -0.812637, -0.570756,
		-0.551100, -0.424663, 0.718296,
		-0.826094, 0.399101, -0.397853,
		17.147436, 18.653128, 21.465963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.199089, 17.847315, 21.797573>,  <17.725700, 18.373756, 21.744461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.199089, 17.847315, 21.797573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.083769, 18.093437, 21.504103>,  <17.014578, 18.241110, 21.328020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.083769, 18.093437, 21.504103>,  <17.199089, 17.847315, 21.797573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.083769, 18.093437, 21.504103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177569, -0.718566, -0.672408,
		-0.940932, -0.324133, 0.097902,
		-0.288299, 0.615306, -0.733678,
		16.997280, 18.278028, 21.283998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.793913, 17.432089, 21.305395>,  <17.199089, 17.847315, 21.797573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.793913, 17.432089, 21.305395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.884178, 17.744848, 21.072945>,  <16.938337, 17.932505, 20.933474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.884178, 17.744848, 21.072945>,  <16.793913, 17.432089, 21.305395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.884178, 17.744848, 21.072945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067130, -0.607578, -0.791418,
		-0.971890, 0.139583, -0.189597,
		0.225663, 0.781899, -0.581128,
		16.951878, 17.979418, 20.898605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.386232, 17.303799, 20.685795>,  <16.793913, 17.432089, 21.305395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.386232, 17.303799, 20.685795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.674017, 17.566399, 20.595121>,  <16.846687, 17.723959, 20.540718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.674017, 17.566399, 20.595121>,  <16.386232, 17.303799, 20.685795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.674017, 17.566399, 20.595121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129092, -0.447095, -0.885122,
		-0.682429, 0.607549, -0.406417,
		0.719462, 0.656498, -0.226681,
		16.889856, 17.763348, 20.527117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.224831, 17.510365, 20.004419>,  <16.386232, 17.303799, 20.685795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.224831, 17.510365, 20.004419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.602127, 17.639021, 20.037504>,  <16.828505, 17.716215, 20.057354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.602127, 17.639021, 20.037504>,  <16.224831, 17.510365, 20.004419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.602127, 17.639021, 20.037504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201887, -0.357580, -0.911799,
		-0.263697, 0.876746, -0.402220,
		0.943242, 0.321641, 0.082711,
		16.885099, 17.735514, 20.062317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.383877, 17.830462, 19.332163>,  <16.224831, 17.510365, 20.004419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.383877, 17.830462, 19.332163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.736917, 17.738310, 19.496086>,  <16.948742, 17.683020, 19.594440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.736917, 17.738310, 19.496086>,  <16.383877, 17.830462, 19.332163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.736917, 17.738310, 19.496086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325809, -0.328675, -0.886465,
		0.338917, 0.915914, -0.215029,
		0.882601, -0.230379, 0.409807,
		17.001698, 17.669195, 19.619028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.806511, 18.009165, 18.859488>,  <16.383877, 17.830462, 19.332163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.806511, 18.009165, 18.859488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.008686, 17.761702, 19.100086>,  <17.129992, 17.613224, 19.244446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.008686, 17.761702, 19.100086>,  <16.806511, 18.009165, 18.859488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.008686, 17.761702, 19.100086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458548, -0.397929, -0.794598,
		0.730937, 0.677434, 0.082555,
		0.505436, -0.618657, 0.601497,
		17.160316, 17.576105, 19.280535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.435249, 18.194691, 18.898012>,  <16.806511, 18.009165, 18.859488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.435249, 18.194691, 18.898012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.447206, 17.806356, 18.993164>,  <17.454380, 17.573357, 19.050255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.447206, 17.806356, 18.993164>,  <17.435249, 18.194691, 18.898012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.447206, 17.806356, 18.993164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470704, -0.196275, -0.860183,
		0.881785, 0.137685, 0.451108,
		0.029893, -0.970834, 0.237881,
		17.456175, 17.515106, 19.064528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.077885, 18.003593, 18.647585>,  <17.435249, 18.194691, 18.898012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.077885, 18.003593, 18.647585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.840178, 17.683386, 18.678606>,  <17.697554, 17.491261, 18.697220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.840178, 17.683386, 18.678606>,  <18.077885, 18.003593, 18.647585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.840178, 17.683386, 18.678606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430402, -0.397999, -0.810155,
		0.679412, -0.448070, 0.581063,
		-0.594268, -0.800519, 0.077555,
		17.661898, 17.443230, 18.701872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.542818, 17.446537, 18.380484>,  <18.077885, 18.003593, 18.647585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.542818, 17.446537, 18.380484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.217947, 17.213387, 18.370481>,  <18.023024, 17.073496, 18.364481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.217947, 17.213387, 18.370481>,  <18.542818, 17.446537, 18.380484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.217947, 17.213387, 18.370481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251377, -0.310950, -0.916580,
		0.526476, -0.750711, 0.399068,
		-0.812177, -0.582874, -0.025004,
		17.974295, 17.038525, 18.362980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.755928, 16.915842, 17.967844>,  <18.542818, 17.446537, 18.380484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.755928, 16.915842, 17.967844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.357941, 16.923962, 17.928595>,  <18.119148, 16.928833, 17.905045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.357941, 16.923962, 17.928595>,  <18.755928, 16.915842, 17.967844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.357941, 16.923962, 17.928595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099125, 0.056133, -0.993490,
		-0.014661, -0.998217, -0.057863,
		-0.994967, 0.020302, -0.098125,
		18.059450, 16.930052, 17.899157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.593288, 16.432997, 17.460976>,  <18.755928, 16.915842, 17.967844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.593288, 16.432997, 17.460976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.276546, 16.676605, 17.479130>,  <18.086502, 16.822771, 17.490023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.276546, 16.676605, 17.479130>,  <18.593288, 16.432997, 17.460976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.276546, 16.676605, 17.479130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008525, 0.063283, -0.997959,
		-0.610652, -0.790624, -0.044918,
		-0.791853, 0.609023, 0.045384,
		18.038990, 16.859312, 17.492744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.076662, 16.217735, 17.075163>,  <18.593288, 16.432997, 17.460976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.076662, 16.217735, 17.075163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.974245, 16.604284, 17.065651>,  <17.912794, 16.836214, 17.059944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.974245, 16.604284, 17.065651>,  <18.076662, 16.217735, 17.075163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.974245, 16.604284, 17.065651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018541, -0.029504, -0.999393,
		-0.966487, -0.255448, 0.025471,
		-0.256045, 0.966372, -0.023779,
		17.897432, 16.894196, 17.058517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.731710, 16.317965, 16.457541>,  <18.076662, 16.217735, 17.075163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.731710, 16.317965, 16.457541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.819897, 16.692854, 16.565620>,  <17.872808, 16.917788, 16.630468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.819897, 16.692854, 16.565620>,  <17.731710, 16.317965, 16.457541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.819897, 16.692854, 16.565620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055580, 0.288635, -0.955825,
		-0.973810, 0.195710, 0.115725,
		0.220467, 0.937223, 0.270198,
		17.886036, 16.974020, 16.646679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.245071, 16.782625, 16.119612>,  <17.731710, 16.317965, 16.457541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.245071, 16.782625, 16.119612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.561716, 17.020041, 16.177660>,  <17.751703, 17.162491, 16.212488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.561716, 17.020041, 16.177660>,  <17.245071, 16.782625, 16.119612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.561716, 17.020041, 16.177660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019849, 0.212398, -0.976982,
		-0.610700, 0.776272, 0.156356,
		0.791613, 0.593539, 0.145119,
		17.799200, 17.198103, 16.221195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.208803, 17.239166, 15.637737>,  <17.245071, 16.782625, 16.119612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.208803, 17.239166, 15.637737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.581564, 17.331564, 15.749597>,  <17.805220, 17.387003, 15.816712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.581564, 17.331564, 15.749597>,  <17.208803, 17.239166, 15.637737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.581564, 17.331564, 15.749597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226887, 0.230291, -0.946302,
		-0.282992, 0.945308, 0.162198,
		0.931900, 0.230995, 0.279649,
		17.861134, 17.400862, 15.833491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.334076, 17.822550, 15.301520>,  <17.208803, 17.239166, 15.637737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.334076, 17.822550, 15.301520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.709049, 17.723253, 15.399166>,  <17.934034, 17.663675, 15.457753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.709049, 17.723253, 15.399166>,  <17.334076, 17.822550, 15.301520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.709049, 17.723253, 15.399166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314103, 0.300568, -0.900555,
		0.150181, 0.920888, 0.359736,
		0.937435, -0.248241, 0.244114,
		17.990280, 17.648781, 15.472401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.715513, 18.334108, 15.011665>,  <17.334076, 17.822550, 15.301520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.715513, 18.334108, 15.011665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.999252, 18.062420, 15.087018>,  <18.169495, 17.899406, 15.132230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.999252, 18.062420, 15.087018>,  <17.715513, 18.334108, 15.011665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.999252, 18.062420, 15.087018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586428, 0.420415, -0.692353,
		0.391061, 0.601591, 0.696534,
		0.709347, -0.679219, 0.188382,
		18.212057, 17.858654, 15.143533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.232620, 18.801973, 14.990239>,  <17.715513, 18.334108, 15.011665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.232620, 18.801973, 14.990239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.360125, 18.428692, 14.923881>,  <18.436626, 18.204723, 14.884066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.360125, 18.428692, 14.923881>,  <18.232620, 18.801973, 14.990239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.360125, 18.428692, 14.923881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586563, 0.331703, -0.738862,
		0.744538, 0.138211, 0.653116,
		0.318759, -0.933205, -0.165896,
		18.455751, 18.148731, 14.874112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.968952, 18.896626, 14.920660>,  <18.232620, 18.801973, 14.990239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.968952, 18.896626, 14.920660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.874334, 18.541979, 14.761683>,  <18.817564, 18.329191, 14.666296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.874334, 18.541979, 14.761683>,  <18.968952, 18.896626, 14.920660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.874334, 18.541979, 14.761683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522198, 0.228943, -0.821519,
		0.819363, -0.401870, 0.408833,
		-0.236545, -0.886614, -0.397443,
		18.803371, 18.275995, 14.642449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.602070, 18.552061, 14.588902>,  <18.968952, 18.896626, 14.920660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.602070, 18.552061, 14.588902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.281187, 18.380920, 14.422334>,  <19.088657, 18.278236, 14.322392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.281187, 18.380920, 14.422334>,  <19.602070, 18.552061, 14.588902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.281187, 18.380920, 14.422334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410424, 0.111359, -0.905070,
		0.433608, -0.896963, 0.086268,
		-0.802207, -0.427852, -0.416421,
		19.040525, 18.252565, 14.297407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.847601, 17.997372, 14.234789>,  <19.602070, 18.552061, 14.588902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.847601, 17.997372, 14.234789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.522829, 18.162104, 14.069299>,  <19.327967, 18.260942, 13.970005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.522829, 18.162104, 14.069299>,  <19.847601, 17.997372, 14.234789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.522829, 18.162104, 14.069299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530901, 0.226246, -0.816674,
		-0.242728, -0.882728, -0.402337,
		-0.811928, 0.411831, -0.413725,
		19.279251, 18.285652, 13.945181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.627106, 17.611570, 13.665904>,  <19.847601, 17.997372, 14.234789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.627106, 17.611570, 13.665904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.531639, 17.998129, 13.627722>,  <19.474360, 18.230064, 13.604813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.531639, 17.998129, 13.627722>,  <19.627106, 17.611570, 13.665904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.531639, 17.998129, 13.627722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362310, -0.002584, -0.932054,
		-0.900983, -0.257035, -0.349519,
		-0.238667, 0.966399, -0.095455,
		19.460039, 18.288048, 13.599086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.046530, 17.665442, 13.152177>,  <19.627106, 17.611570, 13.665904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.046530, 17.665442, 13.152177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.334711, 17.932007, 13.228951>,  <19.507620, 18.091946, 13.275015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.334711, 17.932007, 13.228951>,  <19.046530, 17.665442, 13.152177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.334711, 17.932007, 13.228951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513627, -0.326785, -0.793347,
		-0.465976, 0.670152, -0.577722,
		0.720454, 0.666414, 0.191933,
		19.550848, 18.131931, 13.286530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.026058, 18.269468, 12.609458>,  <19.046530, 17.665442, 13.152177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.026058, 18.269468, 12.609458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.387087, 18.177547, 12.755094>,  <19.603704, 18.122395, 12.842475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.387087, 18.177547, 12.755094>,  <19.026058, 18.269468, 12.609458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.387087, 18.177547, 12.755094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267554, -0.363166, -0.892483,
		0.337318, 0.902941, -0.266298,
		0.902569, -0.229801, 0.364088,
		19.657858, 18.108606, 12.864320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.438009, 18.439764, 12.093270>,  <19.026058, 18.269468, 12.609458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.438009, 18.439764, 12.093270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.681271, 18.198891, 12.300159>,  <19.827229, 18.054367, 12.424294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.681271, 18.198891, 12.300159>,  <19.438009, 18.439764, 12.093270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.681271, 18.198891, 12.300159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396136, -0.334414, -0.855127,
		0.687912, 0.724941, 0.035172,
		0.608155, -0.602185, 0.517223,
		19.863718, 18.018234, 12.455326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.029806, 18.473179, 11.623835>,  <19.438009, 18.439764, 12.093270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.029806, 18.473179, 11.623835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.034353, 18.166376, 11.880449>,  <20.037083, 17.982294, 12.034418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.034353, 18.166376, 11.880449>,  <20.029806, 18.473179, 11.623835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.034353, 18.166376, 11.880449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667502, -0.471877, -0.575998,
		0.744522, 0.434775, 0.506615,
		0.011369, -0.767009, 0.641536,
		20.037764, 17.936274, 12.072910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.215143, 18.178593, 10.856661>,  <20.029806, 18.473179, 11.623835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.215143, 18.178593, 10.856661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.488157, 17.969524, 11.061000>,  <20.651966, 17.844084, 11.183603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.488157, 17.969524, 11.061000>,  <20.215143, 18.178593, 10.856661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.488157, 17.969524, 11.061000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605113, 0.012152, -0.796047,
		0.409861, 0.852449, 0.324567,
		0.682533, -0.522668, 0.510848,
		20.692917, 17.812723, 11.214254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.962036, 18.400047, 10.821019>,  <20.215143, 18.178593, 10.856661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.962036, 18.400047, 10.821019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.956163, 18.003313, 10.871683>,  <20.952641, 17.765272, 10.902081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.956163, 18.003313, 10.871683>,  <20.962036, 18.400047, 10.821019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.956163, 18.003313, 10.871683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486997, -0.117726, -0.865433,
		0.873280, 0.048976, 0.484750,
		-0.014682, -0.991838, 0.126659,
		20.951759, 17.705761, 10.909680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.484409, 18.856310, 10.395222>,  <20.962036, 18.400047, 10.821019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.484409, 18.856310, 10.395222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.480022, 18.483366, 10.250676>,  <21.477390, 18.259600, 10.163949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.480022, 18.483366, 10.250676>,  <21.484409, 18.856310, 10.395222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.480022, 18.483366, 10.250676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644185, 0.269815, -0.715699,
		0.764791, -0.240634, 0.597654,
		-0.010966, -0.932360, -0.361364,
		21.476732, 18.203657, 10.142267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.221621, 18.607973, 10.346052>,  <21.484409, 18.856310, 10.395222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.221621, 18.607973, 10.346052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.003607, 18.410803, 10.074770>,  <21.872799, 18.292501, 9.912001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.003607, 18.410803, 10.074770>,  <22.221621, 18.607973, 10.346052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.003607, 18.410803, 10.074770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681001, 0.211572, -0.701053,
		0.489056, -0.843956, 0.220368,
		-0.545034, -0.492925, -0.678206,
		21.840097, 18.262926, 9.871308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.755484, 18.203552, 10.087495>,  <22.221621, 18.607973, 10.346052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.755484, 18.203552, 10.087495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.450382, 18.260527, 9.835173>,  <22.267321, 18.294712, 9.683779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.450382, 18.260527, 9.835173>,  <22.755484, 18.203552, 10.087495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.450382, 18.260527, 9.835173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645523, 0.226236, -0.729464,
		0.038807, -0.963602, -0.264510,
		-0.762754, 0.142439, -0.630806,
		22.221556, 18.303259, 9.645931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.863314, 17.826124, 9.465251>,  <22.755484, 18.203552, 10.087495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.863314, 17.826124, 9.465251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.601700, 18.107365, 9.353617>,  <22.444731, 18.276108, 9.286636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.601700, 18.107365, 9.353617>,  <22.863314, 17.826124, 9.465251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.601700, 18.107365, 9.353617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582265, 0.232387, -0.779079,
		-0.482915, -0.672046, -0.561380,
		-0.654034, 0.703100, -0.279086,
		22.405489, 18.318295, 9.269891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.810289, 17.782148, 8.607750>,  <22.863314, 17.826124, 9.465251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.810289, 17.782148, 8.607750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.679245, 18.141775, 8.723922>,  <22.600618, 18.357552, 8.793625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.679245, 18.141775, 8.723922>,  <22.810289, 17.782148, 8.607750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.679245, 18.141775, 8.723922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587974, 0.434626, -0.682193,
		-0.739565, -0.052729, -0.671016,
		-0.327612, 0.899066, 0.290431,
		22.580961, 18.411495, 8.811051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.715389, 18.076147, 8.022541>,  <22.810289, 17.782148, 8.607750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.715389, 18.076147, 8.022541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.694185, 18.389269, 8.270543>,  <22.681463, 18.577143, 8.419344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.694185, 18.389269, 8.270543>,  <22.715389, 18.076147, 8.022541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.694185, 18.389269, 8.270543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419132, 0.580982, -0.697702,
		-0.906376, 0.222880, -0.358896,
		-0.053008, 0.782805, 0.620005,
		22.678284, 18.624111, 8.456545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.504629, 18.534096, 7.580299>,  <22.715389, 18.076147, 8.022541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.504629, 18.534096, 7.580299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.664610, 18.734781, 7.887107>,  <22.760597, 18.855192, 8.071193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.664610, 18.734781, 7.887107>,  <22.504629, 18.534096, 7.580299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.664610, 18.734781, 7.887107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618877, 0.469445, -0.629772,
		-0.676040, 0.726570, -0.122745,
		0.399951, 0.501715, 0.767021,
		22.784595, 18.885296, 8.117213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.310259, 19.169678, 7.513674>,  <22.504629, 18.534096, 7.580299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.310259, 19.169678, 7.513674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.652283, 19.158604, 7.720790>,  <22.857496, 19.151958, 7.845060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.652283, 19.158604, 7.720790>,  <22.310259, 19.169678, 7.513674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.652283, 19.158604, 7.720790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411731, 0.643260, -0.645519,
		-0.315203, 0.765147, 0.561424,
		0.855058, -0.027686, 0.517792,
		22.908800, 19.150297, 7.876128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.504192, 19.893700, 7.470033>,  <22.310259, 19.169678, 7.513674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.504192, 19.893700, 7.470033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.831938, 19.687546, 7.570448>,  <23.028585, 19.563852, 7.630698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.831938, 19.687546, 7.570448>,  <22.504192, 19.893700, 7.470033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.831938, 19.687546, 7.570448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552088, 0.591456, -0.587689,
		0.154408, 0.620126, 0.769156,
		0.819364, -0.515386, 0.251039,
		23.077747, 19.532930, 7.645760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.012346, 20.482344, 7.530807>,  <22.504192, 19.893700, 7.470033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.012346, 20.482344, 7.530807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.184004, 20.121954, 7.505264>,  <23.286999, 19.905720, 7.489938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.184004, 20.121954, 7.505264>,  <23.012346, 20.482344, 7.530807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.184004, 20.121954, 7.505264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712904, 0.381280, -0.588552,
		0.554619, 0.207050, 0.805933,
		0.429145, -0.900975, -0.063858,
		23.312748, 19.851662, 7.486106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.695639, 20.575850, 7.643575>,  <23.012346, 20.482344, 7.530807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.695639, 20.575850, 7.643575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.715462, 20.223337, 7.455580>,  <23.727356, 20.011829, 7.342782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.715462, 20.223337, 7.455580>,  <23.695639, 20.575850, 7.643575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.715462, 20.223337, 7.455580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697249, 0.367451, -0.615487,
		0.715114, -0.297196, 0.632682,
		0.049559, -0.881280, -0.469989,
		23.730330, 19.958954, 7.314583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.361874, 20.492855, 7.489732>,  <23.695639, 20.575850, 7.643575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.361874, 20.492855, 7.489732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.208979, 20.236179, 7.223761>,  <24.117241, 20.082174, 7.064178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.208979, 20.236179, 7.223761>,  <24.361874, 20.492855, 7.489732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.208979, 20.236179, 7.223761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687979, 0.282769, -0.668376,
		0.616910, -0.712935, 0.333384,
		-0.382238, -0.641689, -0.664928,
		24.094307, 20.043673, 7.024282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.998678, 20.121546, 7.116270>,  <24.361874, 20.492855, 7.489732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.998678, 20.121546, 7.116270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.672359, 20.055244, 6.894639>,  <24.476568, 20.015463, 6.761660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.672359, 20.055244, 6.894639>,  <24.998678, 20.121546, 7.116270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.672359, 20.055244, 6.894639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507570, 0.254028, -0.823312,
		0.277222, -0.952887, -0.123100,
		-0.815794, -0.165758, -0.554079,
		24.427620, 20.005518, 6.728415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.148201, 19.559887, 6.512744>,  <24.998678, 20.121546, 7.116270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.148201, 19.559887, 6.512744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.826057, 19.734436, 6.352257>,  <24.632772, 19.839167, 6.255964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.826057, 19.734436, 6.352257>,  <25.148201, 19.559887, 6.512744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.826057, 19.734436, 6.352257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513845, 0.176424, -0.839546,
		-0.295572, -0.882299, -0.366313,
		-0.805357, 0.436375, -0.401219,
		24.584450, 19.865349, 6.231891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.940441, 19.224693, 5.869999>,  <25.148201, 19.559887, 6.512744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.940441, 19.224693, 5.869999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.778618, 19.590420, 5.862396>,  <24.681524, 19.809856, 5.857835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.778618, 19.590420, 5.862396>,  <24.940441, 19.224693, 5.869999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.778618, 19.590420, 5.862396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407953, 0.161827, -0.898547,
		-0.818480, -0.371267, -0.438466,
		-0.404556, 0.914316, -0.019007,
		24.657251, 19.864714, 5.856694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.664642, 19.258102, 5.198762>,  <24.940441, 19.224693, 5.869999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.664642, 19.258102, 5.198762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.664530, 19.645411, 5.298725>,  <24.664463, 19.877796, 5.358702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.664530, 19.645411, 5.298725>,  <24.664642, 19.258102, 5.198762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.664530, 19.645411, 5.298725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343713, 0.234774, -0.909254,
		-0.939075, 0.085642, -0.332873,
		-0.000279, 0.968270, 0.249907,
		24.664446, 19.935892, 5.373697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.403061, 19.587532, 4.642206>,  <24.664642, 19.258102, 5.198762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.403061, 19.587532, 4.642206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.646036, 19.818615, 4.860297>,  <24.791821, 19.957264, 4.991152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.646036, 19.818615, 4.860297>,  <24.403061, 19.587532, 4.642206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.646036, 19.818615, 4.860297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485346, 0.273450, -0.830461,
		-0.628856, 0.769077, -0.114284,
		0.607437, 0.577707, 0.545229,
		24.828268, 19.991926, 5.023866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.347086, 20.233631, 4.321218>,  <24.403061, 19.587532, 4.642206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.347086, 20.233631, 4.321218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.686712, 20.248756, 4.531990>,  <24.890488, 20.257832, 4.658453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.686712, 20.248756, 4.531990>,  <24.347086, 20.233631, 4.321218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.686712, 20.248756, 4.531990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508067, 0.214850, -0.834091,
		-0.144750, 0.975915, 0.163211,
		0.849067, 0.037813, 0.526930,
		24.941433, 20.260099, 4.690069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.679462, 20.907059, 4.155809>,  <24.347086, 20.233631, 4.321218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.679462, 20.907059, 4.155809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.958603, 20.659153, 4.299418>,  <25.126087, 20.510410, 4.385584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.958603, 20.659153, 4.299418>,  <24.679462, 20.907059, 4.155809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.958603, 20.659153, 4.299418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564506, 0.167406, -0.808275,
		0.440836, 0.766726, 0.466685,
		0.697851, -0.619763, 0.359023,
		25.167959, 20.473225, 4.407125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.275904, 21.199968, 4.026681>,  <24.679462, 20.907059, 4.155809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.275904, 21.199968, 4.026681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.376337, 20.816963, 4.083430>,  <25.436598, 20.587160, 4.117480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.376337, 20.816963, 4.083430>,  <25.275904, 21.199968, 4.026681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.376337, 20.816963, 4.083430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616271, 0.045106, -0.786242,
		0.746437, 0.284844, 0.601412,
		0.251083, -0.957512, 0.141872,
		25.451662, 20.529709, 4.125992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.969126, 21.186182, 3.831540>,  <25.275904, 21.199968, 4.026681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.969126, 21.186182, 3.831540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.860365, 20.801744, 3.851002>,  <25.795109, 20.571081, 3.862679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.860365, 20.801744, 3.851002>,  <25.969126, 21.186182, 3.831540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.860365, 20.801744, 3.851002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516207, -0.188337, -0.835499,
		0.812157, -0.202059, 0.547333,
		-0.271903, -0.961094, 0.048655,
		25.778793, 20.513416, 3.865599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.526712, 20.719975, 4.049395>,  <25.969126, 21.186182, 3.831540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.526712, 20.719975, 4.049395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.261513, 20.544680, 3.806617>,  <26.102394, 20.439503, 3.660950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.261513, 20.544680, 3.806617>,  <26.526712, 20.719975, 4.049395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.261513, 20.544680, 3.806617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716533, -0.136653, -0.684037,
		0.216831, -0.888411, 0.404612,
		-0.662997, -0.438238, -0.606945,
		26.062614, 20.413208, 3.624533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.715181, 19.982313, 3.872556>,  <26.526712, 20.719975, 4.049395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.715181, 19.982313, 3.872556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.513166, 20.205189, 3.608895>,  <26.391958, 20.338913, 3.450698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.513166, 20.205189, 3.608895>,  <26.715181, 19.982313, 3.872556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.513166, 20.205189, 3.608895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.763735, -0.067255, -0.642017,
		-0.402055, -0.827659, -0.391576,
		-0.505036, 0.557187, -0.659152,
		26.361656, 20.372345, 3.411149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.087824, 19.419949, 4.153649>,  <26.715181, 19.982313, 3.872556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.087824, 19.419949, 4.153649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.227472, 19.604258, 4.480035>,  <27.311262, 19.714844, 4.675867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.227472, 19.604258, 4.480035>,  <27.087824, 19.419949, 4.153649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.227472, 19.604258, 4.480035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.922017, -0.324394, -0.211314,
		0.167326, 0.826109, -0.538095,
		0.349123, 0.460774, 0.815966,
		27.332209, 19.742491, 4.724825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.713326, 19.851213, 3.978494>,  <27.087824, 19.419949, 4.153649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.713326, 19.851213, 3.978494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.743654, 19.753052, 4.365075>,  <27.761852, 19.694155, 4.597023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.743654, 19.753052, 4.365075>,  <27.713326, 19.851213, 3.978494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.743654, 19.753052, 4.365075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.922155, -0.351453, -0.161589,
		0.379316, 0.903470, 0.199651,
		0.075823, -0.245402, 0.966451,
		27.766401, 19.679432, 4.655010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.381960, 20.063486, 4.222916>,  <27.713326, 19.851213, 3.978494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.381960, 20.063486, 4.222916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.244720, 19.780041, 4.469542>,  <28.162376, 19.609974, 4.617517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.244720, 19.780041, 4.469542>,  <28.381960, 20.063486, 4.222916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.244720, 19.780041, 4.469542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.933681, -0.328974, 0.141478,
		0.102581, 0.624216, 0.774488,
		-0.343100, -0.708612, 0.616565,
		28.141790, 19.567457, 4.654511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.707003, 20.135540, 4.891349>,  <28.381960, 20.063486, 4.222916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.707003, 20.135540, 4.891349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.614468, 19.787067, 4.718132>,  <28.558947, 19.577984, 4.614202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.614468, 19.787067, 4.718132>,  <28.707003, 20.135540, 4.891349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.614468, 19.787067, 4.718132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.955924, -0.286271, 0.065246,
		-0.180809, -0.398862, 0.899009,
		-0.231337, -0.871182, -0.433042,
		28.545067, 19.525713, 4.588220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.620228, 20.847034, 5.294954>,  <28.707003, 20.135540, 4.891349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.620228, 20.847034, 5.294954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.625675, 21.182499, 5.512748>,  <28.628942, 21.383778, 5.643425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.625675, 21.182499, 5.512748>,  <28.620228, 20.847034, 5.294954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.625675, 21.182499, 5.512748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554601, 0.459433, -0.693786,
		-0.832005, -0.292524, 0.471378,
		0.013617, 0.838660, 0.544484,
		28.629761, 21.434097, 5.676094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.919626, 21.017464, 5.220804>,  <28.620228, 20.847034, 5.294954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.919626, 21.017464, 5.220804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.167593, 21.324898, 5.284022>,  <28.316374, 21.509357, 5.321953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.167593, 21.324898, 5.284022>,  <27.919626, 21.017464, 5.220804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.167593, 21.324898, 5.284022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371628, 0.464979, -0.803546,
		-0.691082, 0.439399, 0.573877,
		0.619918, 0.768585, 0.158046,
		28.353569, 21.555473, 5.331436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.981150, 20.281433, 5.510377>,  <27.919626, 21.017464, 5.220804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.981150, 20.281433, 5.510377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.128017, 19.910719, 5.542011>,  <28.216137, 19.688290, 5.560992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.128017, 19.910719, 5.542011>,  <27.981150, 20.281433, 5.510377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.128017, 19.910719, 5.542011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562209, -0.153387, 0.812646,
		-0.741019, -0.342839, -0.577367,
		0.367167, -0.926787, 0.079085,
		28.238167, 19.632683, 5.565737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.344082, 19.866838, 5.460419>,  <27.981150, 20.281433, 5.510377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.344082, 19.866838, 5.460419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.648594, 19.706861, 5.664576>,  <27.831301, 19.610874, 5.787070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.648594, 19.706861, 5.664576>,  <27.344082, 19.866838, 5.460419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.648594, 19.706861, 5.664576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607752, -0.165714, 0.776644,
		-0.226043, -0.901431, -0.369226,
		0.761276, -0.399953, 0.510388,
		27.876978, 19.586878, 5.817693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.129951, 19.317444, 5.758576>,  <27.344082, 19.866838, 5.460419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.129951, 19.317444, 5.758576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.445139, 19.407181, 5.987931>,  <27.634253, 19.461023, 6.125545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.445139, 19.407181, 5.987931>,  <27.129951, 19.317444, 5.758576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.445139, 19.407181, 5.987931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538493, -0.200445, 0.818442,
		0.298544, -0.953673, -0.037138,
		0.787970, 0.224342, 0.573388,
		27.681530, 19.474483, 6.159948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.052780, 18.849056, 6.212718>,  <27.129951, 19.317444, 5.758576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.052780, 18.849056, 6.212718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.319363, 19.089308, 6.389390>,  <27.479311, 19.233459, 6.495393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.319363, 19.089308, 6.389390>,  <27.052780, 18.849056, 6.212718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.319363, 19.089308, 6.389390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327005, -0.296905, 0.897171,
		0.670005, -0.742355, -0.001464,
		0.666454, 0.600630, 0.441681,
		27.519299, 19.269497, 6.521894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.345015, 18.351254, 6.624505>,  <27.052780, 18.849056, 6.212718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.345015, 18.351254, 6.624505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.423704, 18.718925, 6.760978>,  <27.470917, 18.939529, 6.842862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.423704, 18.718925, 6.760978>,  <27.345015, 18.351254, 6.624505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.423704, 18.718925, 6.760978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252499, -0.288749, 0.923509,
		0.947388, -0.267823, 0.175289,
		0.196722, 0.919182, 0.341182,
		27.482721, 18.994680, 6.863332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.958611, 18.273287, 7.132118>,  <27.345015, 18.351254, 6.624505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.958611, 18.273287, 7.132118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.745771, 18.605627, 7.197303>,  <27.618069, 18.805031, 7.236414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.745771, 18.605627, 7.197303>,  <27.958611, 18.273287, 7.132118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.745771, 18.605627, 7.197303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114451, -0.261288, 0.958452,
		0.838911, 0.491339, 0.234123,
		-0.532098, 0.830852, 0.162963,
		27.586142, 18.854883, 7.246192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.094990, 18.234243, 7.799183>,  <27.958611, 18.273287, 7.132118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.094990, 18.234243, 7.799183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.802746, 18.505140, 7.764424>,  <27.627399, 18.667679, 7.743569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.802746, 18.505140, 7.764424>,  <28.094990, 18.234243, 7.799183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.802746, 18.505140, 7.764424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358742, -0.272461, 0.892787,
		0.580956, 0.683454, 0.442018,
		-0.730612, 0.677241, -0.086896,
		27.583563, 18.708313, 7.738356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.008894, 18.674034, 8.495412>,  <28.094990, 18.234243, 7.799183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.008894, 18.674034, 8.495412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.644056, 18.724491, 8.339374>,  <27.425154, 18.754765, 8.245750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.644056, 18.724491, 8.339374>,  <28.008894, 18.674034, 8.495412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.644056, 18.724491, 8.339374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408483, -0.198296, 0.890966,
		0.035033, 0.971991, 0.232391,
		-0.912093, 0.126141, -0.390095,
		27.370428, 18.762333, 8.222345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.693850, 18.872744, 9.035659>,  <28.008894, 18.674034, 8.495412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.693850, 18.872744, 9.035659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.401930, 18.770844, 8.781888>,  <27.226778, 18.709703, 8.629625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.401930, 18.770844, 8.781888>,  <27.693850, 18.872744, 9.035659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.401930, 18.770844, 8.781888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621465, -0.139532, 0.770916,
		-0.284914, 0.956887, -0.056487,
		-0.729798, -0.254750, -0.634427,
		27.182991, 18.694418, 8.591560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.073036, 19.259430, 9.172232>,  <27.693850, 18.872744, 9.035659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.073036, 19.259430, 9.172232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.963402, 18.916082, 8.998760>,  <26.897621, 18.710073, 8.894677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.963402, 18.916082, 8.998760>,  <27.073036, 19.259430, 9.172232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.963402, 18.916082, 8.998760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.636866, -0.175893, 0.750642,
		-0.720609, 0.481938, -0.498456,
		-0.274088, -0.858369, -0.433679,
		26.881176, 18.658571, 8.868656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.414932, 19.154377, 9.443411>,  <27.073036, 19.259430, 9.172232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.414932, 19.154377, 9.443411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.469343, 18.802254, 9.261617>,  <26.501989, 18.590981, 9.152540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.469343, 18.802254, 9.261617>,  <26.414932, 19.154377, 9.443411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.469343, 18.802254, 9.261617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.653472, -0.424528, 0.626698,
		-0.744628, 0.211745, -0.633004,
		0.136027, -0.880307, -0.454485,
		26.510151, 18.538162, 9.125272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.704811, 18.893135, 9.337132>,  <26.414932, 19.154377, 9.443411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.704811, 18.893135, 9.337132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.946045, 18.574354, 9.350707>,  <26.090786, 18.383085, 9.358852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.946045, 18.574354, 9.350707>,  <25.704811, 18.893135, 9.337132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.946045, 18.574354, 9.350707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.673689, -0.486101, 0.556641,
		-0.427119, -0.358567, -0.830060,
		0.603086, -0.796954, 0.033939,
		26.126970, 18.335268, 9.360888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.264681, 18.351524, 9.191597>,  <25.704811, 18.893135, 9.337132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.264681, 18.351524, 9.191597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.579027, 18.212006, 9.395854>,  <25.767635, 18.128294, 9.518408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.579027, 18.212006, 9.395854>,  <25.264681, 18.351524, 9.191597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.579027, 18.212006, 9.395854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618345, -0.453964, 0.641534,
		0.008048, -0.819912, -0.572432,
		0.785865, -0.348798, 0.510642,
		25.814787, 18.107367, 9.549047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.137127, 17.661364, 9.272080>,  <25.264681, 18.351524, 9.191597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.137127, 17.661364, 9.272080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.424915, 17.745762, 9.536758>,  <25.597589, 17.796400, 9.695565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.424915, 17.745762, 9.536758>,  <25.137127, 17.661364, 9.272080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.424915, 17.745762, 9.536758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468230, -0.556302, 0.686504,
		0.512951, -0.803747, -0.301450,
		0.719473, 0.210995, 0.661694,
		25.640757, 17.809061, 9.735267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.350340, 17.025755, 9.411583>,  <25.137127, 17.661364, 9.272080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.350340, 17.025755, 9.411583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.451233, 17.287849, 9.696412>,  <25.511768, 17.445107, 9.867310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.451233, 17.287849, 9.696412>,  <25.350340, 17.025755, 9.411583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.451233, 17.287849, 9.696412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442298, -0.576433, 0.687094,
		0.860669, -0.488255, 0.144415,
		0.252231, 0.655235, 0.712072,
		25.526903, 17.484421, 9.910034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.782961, 16.643219, 9.921972>,  <25.350340, 17.025755, 9.411583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.782961, 16.643219, 9.921972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.654024, 16.975246, 10.103998>,  <25.576662, 17.174463, 10.213214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.654024, 16.975246, 10.103998>,  <25.782961, 16.643219, 9.921972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.654024, 16.975246, 10.103998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284286, -0.543418, 0.789859,
		0.902927, 0.125237, 0.411143,
		-0.322342, 0.830068, 0.455064,
		25.557322, 17.224266, 10.240518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.059246, 16.729273, 10.639707>,  <25.782961, 16.643219, 9.921972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.059246, 16.729273, 10.639707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.728817, 16.954573, 10.647177>,  <25.530560, 17.089752, 10.651659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.728817, 16.954573, 10.647177>,  <26.059246, 16.729273, 10.639707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.728817, 16.954573, 10.647177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289409, -0.452422, 0.843538,
		0.483573, 0.691421, 0.536744,
		-0.826075, 0.563251, 0.018676,
		25.480995, 17.123549, 10.652780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.913557, 16.553043, 11.264885>,  <26.059246, 16.729273, 10.639707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.913557, 16.553043, 11.264885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.586451, 16.750641, 11.146746>,  <25.390186, 16.869200, 11.075862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.586451, 16.750641, 11.146746>,  <25.913557, 16.553043, 11.264885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.586451, 16.750641, 11.146746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544405, -0.497376, 0.675456,
		0.186771, 0.713154, 0.675669,
		-0.817765, 0.493993, -0.295349,
		25.341122, 16.898838, 11.058141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.104326, 16.594782, 12.083934>,  <25.913557, 16.553043, 11.264885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.104326, 16.594782, 12.083934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.192476, 16.928282, 12.286436>,  <26.245367, 17.128382, 12.407937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.192476, 16.928282, 12.286436>,  <26.104326, 16.594782, 12.083934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.192476, 16.928282, 12.286436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625756, 0.277292, -0.729067,
		-0.748241, 0.477459, -0.460616,
		0.220375, 0.833751, 0.506255,
		26.258589, 17.178408, 12.438313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.692921, 16.314884, 12.628875>,  <26.104326, 16.594782, 12.083934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.692921, 16.314884, 12.628875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.631027, 15.921750, 12.669055>,  <25.593891, 15.685869, 12.693163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.631027, 15.921750, 12.669055>,  <25.692921, 16.314884, 12.628875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.631027, 15.921750, 12.669055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080244, 0.113841, 0.990253,
		-0.984692, 0.145164, -0.096481,
		-0.154733, -0.982837, 0.100449,
		25.584608, 15.626899, 12.699190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.292318, 16.286407, 13.239121>,  <25.692921, 16.314884, 12.628875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.292318, 16.286407, 13.239121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.426834, 15.915319, 13.174318>,  <25.507544, 15.692667, 13.135436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.426834, 15.915319, 13.174318>,  <25.292318, 16.286407, 13.239121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.426834, 15.915319, 13.174318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222585, -0.245452, 0.943509,
		-0.915076, -0.281233, -0.289040,
		0.336291, -0.927718, -0.162009,
		25.527721, 15.637004, 13.125715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.844114, 15.880946, 13.689208>,  <25.292318, 16.286407, 13.239121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.844114, 15.880946, 13.689208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.179020, 15.680699, 13.601237>,  <25.379963, 15.560551, 13.548454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.179020, 15.680699, 13.601237>,  <24.844114, 15.880946, 13.689208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.179020, 15.680699, 13.601237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051740, -0.327872, 0.943304,
		-0.544344, -0.801175, -0.248614,
		0.837265, -0.500619, -0.219928,
		25.430199, 15.530514, 13.535259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.876547, 15.339412, 14.196800>,  <24.844114, 15.880946, 13.689208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.876547, 15.339412, 14.196800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.245382, 15.381390, 14.047809>,  <25.466684, 15.406576, 13.958414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.245382, 15.381390, 14.047809>,  <24.876547, 15.339412, 14.196800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.245382, 15.381390, 14.047809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386900, -0.269474, 0.881869,
		-0.007826, -0.957273, -0.289082,
		0.922089, 0.104945, -0.372478,
		25.522009, 15.412873, 13.936066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.349903, 14.822805, 14.543372>,  <24.876547, 15.339412, 14.196800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.349903, 14.822805, 14.543372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.576115, 15.125882, 14.413094>,  <25.711842, 15.307728, 14.334927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.576115, 15.125882, 14.413094>,  <25.349903, 14.822805, 14.543372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.576115, 15.125882, 14.413094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555593, -0.058159, 0.829418,
		0.609501, -0.650016, -0.453859,
		0.565531, 0.757692, -0.325696,
		25.745773, 15.353189, 14.315385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.996672, 14.610676, 14.482629>,  <25.349903, 14.822805, 14.543372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.996672, 14.610676, 14.482629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.008425, 14.992005, 14.602836>,  <26.015476, 15.220803, 14.674959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.008425, 14.992005, 14.602836>,  <25.996672, 14.610676, 14.482629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.008425, 14.992005, 14.602836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.779212, -0.210153, 0.590478,
		0.626071, 0.216816, -0.749016,
		0.029383, 0.953324, 0.300517,
		26.017241, 15.278003, 14.692990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.445145, 14.838245, 15.024697>,  <25.996672, 14.610676, 14.482629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.445145, 14.838245, 15.024697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.799971, 15.014259, 15.080528>,  <27.012867, 15.119867, 15.114027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.799971, 15.014259, 15.080528>,  <26.445145, 14.838245, 15.024697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.799971, 15.014259, 15.080528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338666, 0.825774, -0.451003,
		-0.313716, 0.352800, 0.881541,
		0.887067, 0.440035, 0.139577,
		27.066092, 15.146270, 15.122401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<12.868937, 20.305672, 21.767923> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.607428, 20.035269, 21.903921>,  <12.450522, 19.873028, 21.985519>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.607428, 20.035269, 21.903921>,  <12.868937, 20.305672, 21.767923>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.607428, 20.035269, 21.903921> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093761, -0.373483, -0.922886,
		0.750859, -0.635237, 0.180790,
		-0.653773, -0.676007, 0.339993,
		12.411296, 19.832466, 22.005919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.095845, 19.764297, 21.433928>,  <12.868937, 20.305672, 21.767923>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.095845, 19.764297, 21.433928> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.715095, 19.714190, 21.545813>,  <12.486644, 19.684124, 21.612944>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.715095, 19.714190, 21.545813>,  <13.095845, 19.764297, 21.433928>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.715095, 19.714190, 21.545813> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183099, -0.499441, -0.846778,
		0.245777, -0.857243, 0.452469,
		-0.951876, -0.125272, 0.279711,
		12.429532, 19.676607, 21.629726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.941242, 19.092356, 21.405704>,  <13.095845, 19.764297, 21.433928>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.941242, 19.092356, 21.405704> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.576113, 19.255430, 21.415030>,  <12.357035, 19.353275, 21.420624>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.576113, 19.255430, 21.415030>,  <12.941242, 19.092356, 21.405704>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.576113, 19.255430, 21.415030> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234636, -0.476922, -0.847048,
		-0.334213, -0.778676, 0.531004,
		-0.912824, 0.407688, 0.023312,
		12.302265, 19.377737, 21.422024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.437809, 18.554287, 21.321413>,  <12.941242, 19.092356, 21.405704>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.437809, 18.554287, 21.321413> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.264853, 18.893576, 21.199064>,  <12.161080, 19.097149, 21.125654>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.264853, 18.893576, 21.199064>,  <12.437809, 18.554287, 21.321413>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.264853, 18.893576, 21.199064> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237332, -0.434323, -0.868928,
		-0.869892, -0.303121, 0.389107,
		-0.432389, 0.848222, -0.305874,
		12.135137, 19.148043, 21.107302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.021574, 18.284025, 20.850168>,  <12.437809, 18.554287, 21.321413>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.021574, 18.284025, 20.850168> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.966738, 18.673141, 20.775461>,  <11.933836, 18.906612, 20.730637>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.966738, 18.673141, 20.775461>,  <12.021574, 18.284025, 20.850168>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.966738, 18.673141, 20.775461> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254482, -0.216805, -0.942462,
		-0.957311, -0.081675, 0.277280,
		-0.137092, 0.972792, -0.186765,
		11.925611, 18.964979, 20.719431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.385395, 18.353735, 20.531326>,  <12.021574, 18.284025, 20.850168>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.385395, 18.353735, 20.531326> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.594717, 18.684847, 20.450399>,  <11.720310, 18.883514, 20.401844>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.594717, 18.684847, 20.450399>,  <11.385395, 18.353735, 20.531326>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.594717, 18.684847, 20.450399> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176630, -0.126896, -0.976063,
		-0.833639, 0.546513, 0.079806,
		0.523305, 0.827780, -0.202316,
		11.751708, 18.933182, 20.389704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.892607, 18.778940, 20.071936>,  <11.385395, 18.353735, 20.531326>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.892607, 18.778940, 20.071936> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.287003, 18.826366, 20.025007>,  <11.523641, 18.854822, 19.996849>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.287003, 18.826366, 20.025007>,  <10.892607, 18.778940, 20.071936>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.287003, 18.826366, 20.025007> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088161, -0.226663, -0.969975,
		-0.141598, 0.966729, -0.213035,
		0.985990, 0.118566, -0.117323,
		11.582800, 18.861937, 19.989811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.006290, 18.813688, 19.337263>,  <10.892607, 18.778940, 20.071936>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.006290, 18.813688, 19.337263> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.389243, 18.779266, 19.447546>,  <11.619015, 18.758614, 19.513716>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.389243, 18.779266, 19.447546>,  <11.006290, 18.813688, 19.337263>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.389243, 18.779266, 19.447546> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211397, -0.441671, -0.871916,
		0.196803, 0.893041, -0.404657,
		0.957382, -0.086053, 0.275708,
		11.676457, 18.753450, 19.530258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.370460, 19.097006, 18.796312>,  <11.006290, 18.813688, 19.337263>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.370460, 19.097006, 18.796312> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.604267, 18.837973, 18.991854>,  <11.744552, 18.682552, 19.109179>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.604267, 18.837973, 18.991854>,  <11.370460, 19.097006, 18.796312>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.604267, 18.837973, 18.991854> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199897, -0.468990, -0.860284,
		0.786371, 0.600572, -0.144684,
		0.584518, -0.647581, 0.488854,
		11.779622, 18.643698, 19.138510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.749094, 18.935276, 18.322508>,  <11.370460, 19.097006, 18.796312>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.749094, 18.935276, 18.322508> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.847447, 18.650806, 18.585953>,  <11.906459, 18.480125, 18.744020>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.847447, 18.650806, 18.585953>,  <11.749094, 18.935276, 18.322508>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.847447, 18.650806, 18.585953> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547574, -0.458753, -0.699791,
		0.799815, 0.532707, 0.276621,
		0.245883, -0.711174, 0.658614,
		11.921212, 18.437454, 18.783537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.426563, 18.994175, 18.541248>,  <11.749094, 18.935276, 18.322508>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.426563, 18.994175, 18.541248> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.332175, 18.606472, 18.569118>,  <12.275542, 18.373850, 18.585840>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.332175, 18.606472, 18.569118>,  <12.426563, 18.994175, 18.541248>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.332175, 18.606472, 18.569118> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677801, -0.215544, -0.702941,
		0.696350, -0.118647, 0.707827,
		-0.235969, -0.969260, 0.069675,
		12.261384, 18.315695, 18.590021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.002664, 18.732542, 18.450039>,  <12.426563, 18.994175, 18.541248>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.002664, 18.732542, 18.450039> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.762424, 18.416830, 18.398943>,  <12.618280, 18.227404, 18.368284>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.762424, 18.416830, 18.398943>,  <13.002664, 18.732542, 18.450039>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.762424, 18.416830, 18.398943> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640096, -0.378907, -0.668361,
		0.479122, -0.483184, 0.732786,
		-0.600599, -0.789280, -0.127742,
		12.582245, 18.180046, 18.360620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.450075, 18.094728, 18.574303>,  <13.002664, 18.732542, 18.450039>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.450075, 18.094728, 18.574303> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.124402, 18.005363, 18.359941>,  <12.928998, 17.951744, 18.231325>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.124402, 18.005363, 18.359941>,  <13.450075, 18.094728, 18.574303>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.124402, 18.005363, 18.359941> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580533, -0.328180, -0.745171,
		-0.009390, -0.917814, 0.396899,
		-0.814182, -0.223415, -0.535903,
		12.880147, 17.938339, 18.199171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.636252, 17.413971, 18.242638>,  <13.450075, 18.094728, 18.574303>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.636252, 17.413971, 18.242638> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.318726, 17.568789, 18.054998>,  <13.128210, 17.661678, 17.942415>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.318726, 17.568789, 18.054998>,  <13.636252, 17.413971, 18.242638>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.318726, 17.568789, 18.054998> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402684, -0.243523, -0.882351,
		-0.455745, -0.889322, 0.037456,
		-0.793815, 0.387044, -0.469100,
		13.080581, 17.684900, 17.914268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.503734, 16.971642, 17.764084>,  <13.636252, 17.413971, 18.242638>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.503734, 16.971642, 17.764084> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.333387, 17.302790, 17.618059>,  <13.231179, 17.501478, 17.530445>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.333387, 17.302790, 17.618059>,  <13.503734, 16.971642, 17.764084>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.333387, 17.302790, 17.618059> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423720, -0.174015, -0.888921,
		-0.799437, -0.533245, -0.276678,
		-0.425866, 0.827870, -0.365061,
		13.205627, 17.551151, 17.508541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.191670, 16.779963, 17.213676>,  <13.503734, 16.971642, 17.764084>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.191670, 16.779963, 17.213676> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.249235, 17.171825, 17.157734>,  <13.283774, 17.406942, 17.124168>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.249235, 17.171825, 17.157734>,  <13.191670, 16.779963, 17.213676>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.249235, 17.171825, 17.157734> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500804, -0.193994, -0.843541,
		-0.853513, 0.051355, -0.518535,
		0.143913, 0.979658, -0.139858,
		13.292409, 17.465723, 17.115776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.065838, 16.919039, 16.528736>,  <13.191670, 16.779963, 17.213676>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.065838, 16.919039, 16.528736> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.295443, 17.226833, 16.640738>,  <13.433206, 17.411510, 16.707939>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.295443, 17.226833, 16.640738>,  <13.065838, 16.919039, 16.528736>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.295443, 17.226833, 16.640738> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579695, -0.140361, -0.802653,
		-0.578327, 0.623051, -0.526636,
		0.574013, 0.769485, 0.280005,
		13.467647, 17.457678, 16.724739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.176783, 17.405304, 15.902838>,  <13.065838, 16.919039, 16.528736>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.176783, 17.405304, 15.902838> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.476369, 17.480618, 16.156956>,  <13.656120, 17.525805, 16.309427>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.476369, 17.480618, 16.156956>,  <13.176783, 17.405304, 15.902838>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.476369, 17.480618, 16.156956> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627554, 0.106155, -0.771302,
		-0.212663, 0.976361, -0.038651,
		0.748966, 0.188283, 0.635295,
		13.701058, 17.537102, 16.347544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.582929, 17.947399, 15.633729>,  <13.176783, 17.405304, 15.902838>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.582929, 17.947399, 15.633729> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.842157, 17.792982, 15.896323>,  <13.997695, 17.700333, 16.053881>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.842157, 17.792982, 15.896323>,  <13.582929, 17.947399, 15.633729>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.842157, 17.792982, 15.896323> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705953, -0.018881, -0.708007,
		0.285716, 0.922288, 0.260291,
		0.648071, -0.386042, 0.656487,
		14.036579, 17.677170, 16.093269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.302899, 18.366940, 15.581668>,  <13.582929, 17.947399, 15.633729>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.302899, 18.366940, 15.581668> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.382081, 18.014500, 15.753470>,  <14.429590, 17.803036, 15.856552>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.382081, 18.014500, 15.753470>,  <14.302899, 18.366940, 15.581668>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.382081, 18.014500, 15.753470> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.754213, -0.142959, -0.640879,
		0.626080, 0.450804, 0.636238,
		0.197955, -0.881101, 0.429506,
		14.441467, 17.750170, 15.882322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.063659, 18.384594, 15.716539>,  <14.302899, 18.366940, 15.581668>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.063659, 18.384594, 15.716539> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.952824, 18.000326, 15.723865>,  <14.886322, 17.769766, 15.728259>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.952824, 18.000326, 15.723865>,  <15.063659, 18.384594, 15.716539>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.952824, 18.000326, 15.723865> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619995, -0.193321, -0.760416,
		0.734049, -0.199349, 0.649178,
		-0.277088, -0.960670, 0.018312,
		14.869698, 17.712126, 15.729358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.705194, 18.152138, 15.713831>,  <15.063659, 18.384594, 15.716539>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.705194, 18.152138, 15.713831> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.455791, 17.859148, 15.604487>,  <15.306150, 17.683355, 15.538881>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.455791, 17.859148, 15.604487>,  <15.705194, 18.152138, 15.713831>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.455791, 17.859148, 15.604487> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607352, -0.233624, -0.759305,
		0.492307, -0.639455, 0.590535,
		-0.623504, -0.732474, -0.273359,
		15.268740, 17.639406, 15.522480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.341124, 17.797844, 15.601687>,  <15.705194, 18.152138, 15.713831>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.341124, 17.797844, 15.601687> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.527670, 18.027472, 15.332482>,  <16.639597, 18.165249, 15.170959>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.527670, 18.027472, 15.332482>,  <16.341124, 17.797844, 15.601687>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.527670, 18.027472, 15.332482> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079361, 0.784903, 0.614515,
		0.881025, -0.233178, 0.411610,
		0.466366, 0.574069, -0.673014,
		16.667580, 18.199692, 15.130578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.939726, 18.145561, 15.973499>,  <16.341124, 17.797844, 15.601687>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.939726, 18.145561, 15.973499> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.828482, 18.378235, 15.667742>,  <16.761736, 18.517839, 15.484287>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.828482, 18.378235, 15.667742>,  <16.939726, 18.145561, 15.973499>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.828482, 18.378235, 15.667742> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029343, 0.790273, 0.612052,
		0.960101, 0.192648, -0.202715,
		-0.278111, 0.581683, -0.764395,
		16.745049, 18.552740, 15.438423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.140717, 18.811687, 16.187620>,  <16.939726, 18.145561, 15.973499>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.140717, 18.811687, 16.187620> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.901302, 18.902834, 15.880419>,  <16.757654, 18.957521, 15.696098>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.901302, 18.902834, 15.880419>,  <17.140717, 18.811687, 16.187620>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.901302, 18.902834, 15.880419> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157638, 0.906447, 0.391797,
		0.785432, 0.355572, -0.506621,
		-0.598537, 0.227867, -0.768004,
		16.721741, 18.971193, 15.650018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.351439, 19.474411, 15.845439>,  <17.140717, 18.811687, 16.187620>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.351439, 19.474411, 15.845439> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.962738, 19.395706, 15.793306>,  <16.729517, 19.348484, 15.762027>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.962738, 19.395706, 15.793306>,  <17.351439, 19.474411, 15.845439>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.962738, 19.395706, 15.793306> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234772, 0.862381, 0.448531,
		0.024142, 0.466459, -0.884213,
		-0.971750, -0.196760, -0.130331,
		16.671213, 19.336678, 15.754207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.073895, 20.133797, 15.733775>,  <17.351439, 19.474411, 15.845439>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.073895, 20.133797, 15.733775> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.760303, 19.906389, 15.833508>,  <16.572149, 19.769945, 15.893347>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.760303, 19.906389, 15.833508>,  <17.073895, 20.133797, 15.733775>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.760303, 19.906389, 15.833508> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334450, 0.725169, 0.601892,
		-0.522993, 0.388481, -0.758657,
		-0.783978, -0.568518, 0.249331,
		16.525110, 19.735834, 15.908307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.444006, 20.549198, 15.730288>,  <17.073895, 20.133797, 15.733775>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.444006, 20.549198, 15.730288> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.313494, 20.232666, 15.937107>,  <16.235186, 20.042747, 16.061199>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.313494, 20.232666, 15.937107>,  <16.444006, 20.549198, 15.730288>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.313494, 20.232666, 15.937107> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372423, 0.610357, 0.699118,
		-0.868816, 0.035549, -0.493858,
		-0.326282, -0.791328, 0.517049,
		16.215609, 19.995268, 16.092222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.733220, 20.758865, 15.871983>,  <16.444006, 20.549198, 15.730288>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.733220, 20.758865, 15.871983> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.850847, 20.470568, 16.123077>,  <15.921424, 20.297590, 16.273735>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.850847, 20.470568, 16.123077>,  <15.733220, 20.758865, 15.871983>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.850847, 20.470568, 16.123077> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410966, 0.497616, 0.763862,
		-0.862920, -0.482606, -0.149868,
		0.294068, -0.720742, 0.627738,
		15.939068, 20.254345, 16.311399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.194670, 20.711195, 16.284943>,  <15.733220, 20.758865, 15.871983>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.194670, 20.711195, 16.284943> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.481647, 20.550798, 16.512796>,  <15.653832, 20.454561, 16.649509>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.481647, 20.550798, 16.512796>,  <15.194670, 20.711195, 16.284943>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.481647, 20.550798, 16.512796> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443120, 0.368259, 0.817331,
		-0.537515, -0.838804, 0.086518,
		0.717442, -0.400990, 0.569636,
		15.696879, 20.430502, 16.683687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.885039, 20.463669, 16.890970>,  <15.194670, 20.711195, 16.284943>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.885039, 20.463669, 16.890970> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.262162, 20.453407, 17.023911>,  <15.488436, 20.447250, 17.103674>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.262162, 20.453407, 17.023911>,  <14.885039, 20.463669, 16.890970>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.262162, 20.453407, 17.023911> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320878, 0.200215, 0.925717,
		-0.090289, -0.979416, 0.180533,
		0.942807, -0.025653, 0.332351,
		15.545004, 20.445711, 17.123615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.979227, 19.959030, 17.384577>,  <14.885039, 20.463669, 16.890970>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.979227, 19.959030, 17.384577> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.285203, 20.206684, 17.455614>,  <15.468789, 20.355276, 17.498238>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.285203, 20.206684, 17.455614>,  <14.979227, 19.959030, 17.384577>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.285203, 20.206684, 17.455614> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179889, -0.059397, 0.981892,
		0.618470, -0.783037, 0.065940,
		0.764941, 0.619133, 0.177595,
		15.514686, 20.392424, 17.508892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.124358, 19.756102, 17.993439>,  <14.979227, 19.959030, 17.384577>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.124358, 19.756102, 17.993439> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.315381, 20.106468, 17.965990>,  <15.429995, 20.316689, 17.949520>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.315381, 20.106468, 17.965990>,  <15.124358, 19.756102, 17.993439>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.315381, 20.106468, 17.965990> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247809, 0.209218, 0.945948,
		0.842929, -0.434740, 0.316974,
		0.477558, 0.875916, -0.068624,
		15.458649, 20.369244, 17.945402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.560592, 19.800488, 18.540159>,  <15.124358, 19.756102, 17.993439>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.560592, 19.800488, 18.540159> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.485970, 20.174128, 18.418404>,  <15.441198, 20.398312, 18.345350>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.485970, 20.174128, 18.418404>,  <15.560592, 19.800488, 18.540159>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.485970, 20.174128, 18.418404> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245753, 0.255608, 0.935024,
		0.951212, 0.249235, 0.181874,
		-0.186552, 0.934102, -0.304388,
		15.430005, 20.454359, 18.327087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.726770, 20.148174, 19.130857>,  <15.560592, 19.800488, 18.540159>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.726770, 20.148174, 19.130857> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.510514, 20.407911, 18.916918>,  <15.380760, 20.563753, 18.788555>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.510514, 20.407911, 18.916918>,  <15.726770, 20.148174, 19.130857>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.510514, 20.407911, 18.916918> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367211, 0.389851, 0.844496,
		0.756878, 0.652970, 0.027677,
		-0.540641, 0.649343, -0.534847,
		15.348322, 20.602715, 18.756464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.937778, 20.795689, 19.420307>,  <15.726770, 20.148174, 19.130857>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.937778, 20.795689, 19.420307> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.572112, 20.793713, 19.258183>,  <15.352713, 20.792526, 19.160908>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.572112, 20.793713, 19.258183>,  <15.937778, 20.795689, 19.420307>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.572112, 20.793713, 19.258183> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350544, 0.511690, 0.784405,
		0.203516, 0.859156, -0.469502,
		-0.914166, -0.004942, -0.405309,
		15.297862, 20.792231, 19.136589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.671807, 21.496408, 19.505299>,  <15.937778, 20.795689, 19.420307>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.671807, 21.496408, 19.505299> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.377400, 21.233938, 19.438713>,  <15.200756, 21.076456, 19.398762>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.377400, 21.233938, 19.438713>,  <15.671807, 21.496408, 19.505299>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.377400, 21.233938, 19.438713> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466239, 0.313064, 0.827413,
		-0.490817, 0.686602, -0.536355,
		-0.736017, -0.656178, -0.166463,
		15.156595, 21.037085, 19.388775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.037463, 21.904320, 19.723774>,  <15.671807, 21.496408, 19.505299>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.037463, 21.904320, 19.723774> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.920127, 21.523623, 19.687685>,  <14.849726, 21.295204, 19.666033>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.920127, 21.523623, 19.687685>,  <15.037463, 21.904320, 19.723774>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.920127, 21.523623, 19.687685> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491418, 0.069163, 0.868173,
		-0.820036, 0.299006, -0.487991,
		-0.293340, -0.951741, -0.090221,
		14.832125, 21.238100, 19.660618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.373766, 22.014244, 19.857286>,  <15.037463, 21.904320, 19.723774>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.373766, 22.014244, 19.857286> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.424541, 21.620785, 19.908386>,  <14.455005, 21.384708, 19.939045>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.424541, 21.620785, 19.908386>,  <14.373766, 22.014244, 19.857286>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.424541, 21.620785, 19.908386> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220803, 0.097536, 0.970429,
		-0.967023, -0.151389, -0.204812,
		0.126936, -0.983650, 0.127747,
		14.462622, 21.325689, 19.946711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.799655, 21.825552, 20.135965>,  <14.373766, 22.014244, 19.857286>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.799655, 21.825552, 20.135965> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.083772, 21.566767, 20.246908>,  <14.254242, 21.411495, 20.313473>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.083772, 21.566767, 20.246908>,  <13.799655, 21.825552, 20.135965>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.083772, 21.566767, 20.246908> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402130, -0.049555, 0.914241,
		-0.577734, -0.760911, -0.295361,
		0.710292, -0.646961, 0.277355,
		14.296860, 21.372679, 20.330114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<13.392644, 21.273893, 20.543329> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.780850, 21.252523, 20.637346>,  <14.013774, 21.239702, 20.693756>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.780850, 21.252523, 20.637346>,  <13.392644, 21.273893, 20.543329>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.780850, 21.252523, 20.637346> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238819, -0.081093, 0.967672,
		-0.032632, -0.995274, -0.091460,
		0.970516, -0.053419, 0.235045,
		14.072005, 21.236496, 20.707859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.401300, 20.817760, 20.996510>,  <13.392644, 21.273893, 20.543329>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.401300, 20.817760, 20.996510> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.734267, 21.026995, 21.069681>,  <13.934048, 21.152534, 21.113585>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.734267, 21.026995, 21.069681>,  <13.401300, 20.817760, 20.996510>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.734267, 21.026995, 21.069681> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215557, 0.001538, 0.976490,
		0.510505, -0.852279, 0.114035,
		0.832417, 0.523084, 0.182930,
		13.983993, 21.183920, 21.124559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.638520, 20.415537, 21.547436>,  <13.401300, 20.817760, 20.996510>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.638520, 20.415537, 21.547436> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.840237, 20.760912, 21.542253>,  <13.961267, 20.968136, 21.539145>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.840237, 20.760912, 21.542253>,  <13.638520, 20.415537, 21.547436>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.840237, 20.760912, 21.542253> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300058, 0.189279, 0.934954,
		0.809725, -0.467602, 0.354533,
		0.504292, 0.863436, -0.012957,
		13.991524, 21.019943, 21.538366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.144082, 20.465021, 22.174261>,  <13.638520, 20.415537, 21.547436>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.144082, 20.465021, 22.174261> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.075217, 20.845926, 22.073421>,  <14.033898, 21.074471, 22.012918>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.075217, 20.845926, 22.073421>,  <14.144082, 20.465021, 22.174261>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.075217, 20.845926, 22.073421> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133040, 0.231098, 0.963791,
		0.976043, 0.199467, 0.086903,
		-0.172161, 0.952264, -0.252099,
		14.023569, 21.131605, 21.997791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.627803, 20.878321, 22.671423>,  <14.144082, 20.465021, 22.174261>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.627803, 20.878321, 22.671423> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.321346, 21.095411, 22.533743>,  <14.137472, 21.225666, 22.451134>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.321346, 21.095411, 22.533743>,  <14.627803, 20.878321, 22.671423>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.321346, 21.095411, 22.533743> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253418, 0.237060, 0.937860,
		0.590599, 0.805761, -0.044084,
		-0.766141, 0.542727, -0.344202,
		14.091504, 21.258230, 22.430483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.730356, 21.506449, 23.045494>,  <14.627803, 20.878321, 22.671423>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.730356, 21.506449, 23.045494> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.361652, 21.520586, 22.891035>,  <14.140430, 21.529068, 22.798359>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.361652, 21.520586, 22.891035>,  <14.730356, 21.506449, 23.045494>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.361652, 21.520586, 22.891035> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354076, 0.329257, 0.875340,
		0.158079, 0.943579, -0.290981,
		-0.921760, 0.035344, -0.386147,
		14.085124, 21.531189, 22.775190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.480142, 22.183384, 23.303885>,  <14.730356, 21.506449, 23.045494>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.480142, 22.183384, 23.303885> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.152261, 21.971783, 23.216030>,  <13.955532, 21.844822, 23.163317>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.152261, 21.971783, 23.216030>,  <14.480142, 22.183384, 23.303885>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.152261, 21.971783, 23.216030> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457551, 0.374060, 0.806676,
		-0.344578, 0.761730, -0.548665,
		-0.819703, -0.529005, -0.219637,
		13.906350, 21.813082, 23.150139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.916628, 22.662172, 23.291578>,  <14.480142, 22.183384, 23.303885>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.916628, 22.662172, 23.291578> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.741197, 22.306091, 23.340881>,  <13.635938, 22.092443, 23.370462>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.741197, 22.306091, 23.340881>,  <13.916628, 22.662172, 23.291578>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.741197, 22.306091, 23.340881> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358299, 0.298982, 0.884439,
		-0.824179, 0.343734, -0.450085,
		-0.438579, -0.890200, 0.123255,
		13.609623, 22.039032, 23.377857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.255999, 22.850758, 23.531282>,  <13.916628, 22.662172, 23.291578>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.255999, 22.850758, 23.531282> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.250442, 22.463598, 23.631668>,  <13.247108, 22.231302, 23.691898>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.250442, 22.463598, 23.631668>,  <13.255999, 22.850758, 23.531282>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.250442, 22.463598, 23.631668> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403237, 0.235096, 0.884381,
		-0.914990, -0.088911, -0.393558,
		-0.013893, -0.967897, 0.250963,
		13.246274, 22.173229, 23.706957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.546939, 22.716677, 23.717228>,  <13.255999, 22.850758, 23.531282>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.546939, 22.716677, 23.717228> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.803672, 22.483803, 23.916872>,  <12.957711, 22.344078, 24.036657>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.803672, 22.483803, 23.916872>,  <12.546939, 22.716677, 23.717228>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.803672, 22.483803, 23.916872> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394931, 0.306956, 0.865914,
		-0.657329, -0.752885, -0.032909,
		0.641832, -0.582187, 0.499108,
		12.996222, 22.309147, 24.066605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.146040, 22.375414, 24.297960>,  <12.546939, 22.716677, 23.717228>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.146040, 22.375414, 24.297960> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.530278, 22.347275, 24.405519>,  <12.760821, 22.330391, 24.470055>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.530278, 22.347275, 24.405519>,  <12.146040, 22.375414, 24.297960>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.530278, 22.347275, 24.405519> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214334, 0.428456, 0.877773,
		-0.176961, -0.900820, 0.396495,
		0.960596, -0.070349, 0.268897,
		12.818458, 22.326170, 24.486189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.134761, 22.045179, 24.963966>,  <12.146040, 22.375414, 24.297960>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.134761, 22.045179, 24.963966> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.474921, 22.251492, 24.922424>,  <12.679018, 22.375278, 24.897499>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.474921, 22.251492, 24.922424>,  <12.134761, 22.045179, 24.963966>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.474921, 22.251492, 24.922424> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230802, 0.543099, 0.807325,
		0.472806, -0.662582, 0.580896,
		0.850403, 0.515780, -0.103855,
		12.730042, 22.406225, 24.891268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.489265, 21.986666, 25.550997>,  <12.134761, 22.045179, 24.963966>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.489265, 21.986666, 25.550997> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.658943, 22.323566, 25.417927>,  <12.760750, 22.525707, 25.338085>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.658943, 22.323566, 25.417927>,  <12.489265, 21.986666, 25.550997>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.658943, 22.323566, 25.417927> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158315, 0.430679, 0.888511,
		0.891625, -0.324234, 0.316033,
		0.424194, 0.842252, -0.332673,
		12.786201, 22.576242, 25.318125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.941751, 22.234978, 26.050816>,  <12.489265, 21.986666, 25.550997>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.941751, 22.234978, 26.050816> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.890605, 22.575745, 25.847685>,  <12.859917, 22.780205, 25.725807>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.890605, 22.575745, 25.847685>,  <12.941751, 22.234978, 26.050816>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.890605, 22.575745, 25.847685> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307239, 0.452816, 0.836996,
		0.943003, 0.263048, 0.203842,
		-0.127867, 0.851917, -0.507826,
		12.852245, 22.831320, 25.695337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.279644, 22.770557, 26.480688>,  <12.941751, 22.234978, 26.050816>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.279644, 22.770557, 26.480688> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.024441, 22.957590, 26.235964>,  <12.871319, 23.069809, 26.089128>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.024441, 22.957590, 26.235964>,  <13.279644, 22.770557, 26.480688>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.024441, 22.957590, 26.235964> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360547, 0.520656, 0.773901,
		0.680404, 0.714343, -0.163598,
		-0.638009, 0.467581, -0.611811,
		12.833038, 23.097864, 26.052420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.371511, 23.424744, 26.639816>,  <13.279644, 22.770557, 26.480688>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.371511, 23.424744, 26.639816> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.024317, 23.448374, 26.442591>,  <12.816001, 23.462553, 26.324255>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.024317, 23.448374, 26.442591>,  <13.371511, 23.424744, 26.639816>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.024317, 23.448374, 26.442591> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391535, 0.529325, 0.752672,
		0.305458, 0.846360, -0.436314,
		-0.867984, 0.059078, -0.493066,
		12.763922, 23.466097, 26.294670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.164268, 24.074640, 26.553715>,  <13.371511, 23.424744, 26.639816>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.164268, 24.074640, 26.553715> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.799313, 23.911242, 26.543306>,  <12.580339, 23.813202, 26.537062>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.799313, 23.911242, 26.543306>,  <13.164268, 24.074640, 26.553715>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.799313, 23.911242, 26.543306> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262953, 0.536219, 0.802075,
		-0.313694, 0.738646, -0.596656,
		-0.912388, -0.408499, -0.026021,
		12.525597, 23.788692, 26.535500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.704464, 24.579874, 26.755466>,  <13.164268, 24.074640, 26.553715>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.704464, 24.579874, 26.755466> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.483668, 24.249498, 26.801310>,  <12.351191, 24.051273, 26.828815>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.483668, 24.249498, 26.801310>,  <12.704464, 24.579874, 26.755466>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.483668, 24.249498, 26.801310> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241279, 0.289772, 0.926184,
		-0.798180, 0.483591, -0.359232,
		-0.551990, -0.825937, 0.114610,
		12.318071, 24.001717, 26.835693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.135397, 24.809107, 26.894024>,  <12.704464, 24.579874, 26.755466>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.135397, 24.809107, 26.894024> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.129603, 24.431042, 27.024534>,  <12.126127, 24.204203, 27.102840>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.129603, 24.431042, 27.024534>,  <12.135397, 24.809107, 26.894024>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.129603, 24.431042, 27.024534> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389357, 0.305883, 0.868813,
		-0.920973, -0.114454, -0.372437,
		-0.014483, -0.945164, 0.326273,
		12.125258, 24.147491, 27.122416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.593848, 24.730995, 27.477007>,  <12.135397, 24.809107, 26.894024>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.593848, 24.730995, 27.477007> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.812799, 24.401522, 27.536232>,  <11.944169, 24.203836, 27.571768>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.812799, 24.401522, 27.536232>,  <11.593848, 24.730995, 27.477007>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.812799, 24.401522, 27.536232> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165400, 0.066957, 0.983951,
		-0.820380, -0.563081, -0.099587,
		0.547376, -0.823685, 0.148063,
		11.977012, 24.154417, 27.580650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.205998, 24.272814, 27.898346>,  <11.593848, 24.730995, 27.477007>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.205998, 24.272814, 27.898346> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.590281, 24.166729, 27.931095>,  <11.820851, 24.103079, 27.950745>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.590281, 24.166729, 27.931095>,  <11.205998, 24.272814, 27.898346>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.590281, 24.166729, 27.931095> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075429, 0.034406, 0.996557,
		-0.267116, -0.963576, 0.013049,
		0.960708, -0.265212, 0.081872,
		11.878494, 24.087166, 27.955656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.239318, 23.716650, 28.472427>,  <11.205998, 24.272814, 27.898346>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.239318, 23.716650, 28.472427> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.596379, 23.889076, 28.419731>,  <11.810616, 23.992531, 28.388113>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.596379, 23.889076, 28.419731>,  <11.239318, 23.716650, 28.472427>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.596379, 23.889076, 28.419731> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125594, 0.042832, 0.991157,
		0.432894, -0.901305, -0.015904,
		0.892653, 0.431063, -0.131740,
		11.864175, 24.018394, 28.380209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.847978, 23.369810, 28.774761>,  <11.239318, 23.716650, 28.472427>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.847978, 23.369810, 28.774761> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.813703, 23.768332, 28.772186>,  <11.793138, 24.007444, 28.770641>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.813703, 23.768332, 28.772186>,  <11.847978, 23.369810, 28.774761>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.813703, 23.768332, 28.772186> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049271, 0.002215, 0.998783,
		0.995103, 0.085901, 0.048899,
		-0.085688, 0.996301, -0.006437,
		11.787996, 24.067223, 28.770256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.588299, 22.994238, 29.405777>,  <11.847978, 23.369810, 28.774761>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.588299, 22.994238, 29.405777> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.445342, 22.697021, 29.632109>,  <11.359569, 22.518692, 29.767908>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.445342, 22.697021, 29.632109>,  <11.588299, 22.994238, 29.405777>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.445342, 22.697021, 29.632109> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076689, -0.627141, -0.775121,
		0.930801, -0.233629, 0.281118,
		-0.357391, -0.743042, 0.565827,
		11.338124, 22.474110, 29.801857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.083161, 22.382816, 29.319305>,  <11.588299, 22.994238, 29.405777>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.083161, 22.382816, 29.319305> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.713787, 22.258335, 29.409122>,  <11.492163, 22.183647, 29.463013>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.713787, 22.258335, 29.409122>,  <12.083161, 22.382816, 29.319305>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.713787, 22.258335, 29.409122> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015800, -0.553793, -0.832504,
		0.383427, -0.772312, 0.506476,
		-0.923436, -0.311202, 0.224542,
		11.436756, 22.164974, 29.476484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.159616, 21.676691, 29.169914>,  <12.083161, 22.382816, 29.319305>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.159616, 21.676691, 29.169914> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.766890, 21.752598, 29.172010>,  <11.531254, 21.798141, 29.173267>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.766890, 21.752598, 29.172010>,  <12.159616, 21.676691, 29.169914>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.766890, 21.752598, 29.172010> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121330, -0.606025, -0.786138,
		-0.146009, -0.772478, 0.618029,
		-0.981815, 0.189769, 0.005240,
		11.472345, 21.809528, 29.173582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.797953, 20.994694, 29.194212>,  <12.159616, 21.676691, 29.169914>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.797953, 20.994694, 29.194212> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.539339, 21.258167, 29.040260>,  <11.384171, 21.416252, 28.947889>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.539339, 21.258167, 29.040260>,  <11.797953, 20.994694, 29.194212>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.539339, 21.258167, 29.040260> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179963, -0.621948, -0.762099,
		-0.741357, -0.423457, 0.520648,
		-0.646532, 0.658684, -0.384879,
		11.345379, 21.455772, 28.924797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.288047, 20.610912, 28.818007>,  <11.797953, 20.994694, 29.194212>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.288047, 20.610912, 28.818007> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.264193, 20.980385, 28.666609>,  <11.249880, 21.202068, 28.575771>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.264193, 20.980385, 28.666609>,  <11.288047, 20.610912, 28.818007>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.264193, 20.980385, 28.666609> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065022, -0.381956, -0.921890,
		-0.996100, -0.030366, 0.082838,
		-0.059635, 0.923681, -0.378493,
		11.246303, 21.257488, 28.553061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.804926, 20.544750, 28.409140>,  <11.288047, 20.610912, 28.818007>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.804926, 20.544750, 28.409140> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.978016, 20.879707, 28.275562>,  <11.081870, 21.080683, 28.195415>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.978016, 20.879707, 28.275562>,  <10.804926, 20.544750, 28.409140>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.978016, 20.879707, 28.275562> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027916, -0.382691, -0.923454,
		-0.901093, 0.390280, -0.188977,
		0.432726, 0.837394, -0.333945,
		11.107834, 21.130926, 28.175379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.530158, 20.586201, 27.786879>,  <10.804926, 20.544750, 28.409140>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.530158, 20.586201, 27.786879> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.849180, 20.824450, 27.748638>,  <11.040593, 20.967400, 27.725695>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.849180, 20.824450, 27.748638>,  <10.530158, 20.586201, 27.786879>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.849180, 20.824450, 27.748638> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187715, -0.395651, -0.899012,
		-0.573296, 0.699066, -0.427361,
		0.797555, 0.595623, -0.095600,
		11.088447, 21.003136, 27.719957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.468731, 21.044798, 27.147995>,  <10.530158, 20.586201, 27.786879>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.468731, 21.044798, 27.147995> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.859995, 21.045521, 27.231134>,  <11.094753, 21.045954, 27.281017>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.859995, 21.045521, 27.231134>,  <10.468731, 21.044798, 27.147995>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.859995, 21.045521, 27.231134> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199114, -0.295078, -0.934496,
		0.059644, 0.955471, -0.288993,
		0.978160, 0.001806, 0.207848,
		11.153442, 21.046062, 27.293489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.830631, 21.312267, 26.607779>,  <10.468731, 21.044798, 27.147995>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.830631, 21.312267, 26.607779> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.119394, 21.096249, 26.780844>,  <11.292652, 20.966639, 26.884684>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.119394, 21.096249, 26.780844>,  <10.830631, 21.312267, 26.607779>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.119394, 21.096249, 26.780844> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304972, -0.312952, -0.899474,
		0.621160, 0.781288, -0.061224,
		0.721909, -0.540045, 0.432665,
		11.335967, 20.934235, 26.910643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.458567, 21.394905, 26.202141>,  <10.830631, 21.312267, 26.607779>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.458567, 21.394905, 26.202141> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.562716, 21.069588, 26.410278>,  <11.625205, 20.874397, 26.535160>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.562716, 21.069588, 26.410278>,  <11.458567, 21.394905, 26.202141>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.562716, 21.069588, 26.410278> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292498, -0.447163, -0.845275,
		0.920136, 0.372287, 0.121458,
		0.260373, -0.813295, 0.520344,
		11.640827, 20.825600, 26.566381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.045639, 21.228519, 26.002171>,  <11.458567, 21.394905, 26.202141>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.045639, 21.228519, 26.002171> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.902027, 20.886780, 26.152468>,  <11.815860, 20.681736, 26.242645>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.902027, 20.886780, 26.152468>,  <12.045639, 21.228519, 26.002171>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.902027, 20.886780, 26.152468> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310061, -0.488901, -0.815376,
		0.880318, -0.176241, 0.440431,
		-0.359030, -0.854351, 0.375743,
		11.794318, 20.630474, 26.265190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.623586, 20.816565, 26.022341>,  <12.045639, 21.228519, 26.002171>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.623586, 20.816565, 26.022341> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.287708, 20.599342, 26.021334>,  <12.086182, 20.469009, 26.020729>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.287708, 20.599342, 26.021334>,  <12.623586, 20.816565, 26.022341>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.287708, 20.599342, 26.021334> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292629, -0.448563, -0.844488,
		0.457473, -0.709848, 0.535569,
		-0.839694, -0.543054, -0.002517,
		12.035800, 20.436426, 26.020578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.858639, 20.222376, 25.710735>,  <12.623586, 20.816565, 26.022341>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.858639, 20.222376, 25.710735> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.461460, 20.185001, 25.681540>,  <12.223153, 20.162577, 25.664022>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.461460, 20.185001, 25.681540>,  <12.858639, 20.222376, 25.710735>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.461460, 20.185001, 25.681540> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109748, -0.491412, -0.863984,
		0.044859, -0.865901, 0.498200,
		-0.992947, -0.093434, -0.072987,
		12.163576, 20.156971, 25.659643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.816071, 19.590908, 25.503164>,  <12.858639, 20.222376, 25.710735>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.816071, 19.590908, 25.503164> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.482816, 19.781820, 25.391390>,  <12.282863, 19.896368, 25.324326>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.482816, 19.781820, 25.391390>,  <12.816071, 19.590908, 25.503164>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.482816, 19.781820, 25.391390> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075474, -0.402410, -0.912343,
		-0.547892, -0.781197, 0.299241,
		-0.833137, 0.477281, -0.279438,
		12.232875, 19.925005, 25.307558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.395823, 19.057966, 25.107470>,  <12.816071, 19.590908, 25.503164>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.395823, 19.057966, 25.107470> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.272388, 19.424227, 25.004433>,  <12.198327, 19.643984, 24.942610>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.272388, 19.424227, 25.004433>,  <12.395823, 19.057966, 25.107470>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.272388, 19.424227, 25.004433> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045419, -0.256315, -0.965526,
		-0.950111, -0.309649, 0.037507,
		-0.308588, 0.915653, -0.257592,
		12.179812, 19.698923, 24.927155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.925838, 19.008459, 24.519344>,  <12.395823, 19.057966, 25.107470>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.925838, 19.008459, 24.519344> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.030278, 19.392803, 24.482306>,  <12.092942, 19.623409, 24.460083>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.030278, 19.392803, 24.482306>,  <11.925838, 19.008459, 24.519344>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.030278, 19.392803, 24.482306> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139702, -0.132527, -0.981285,
		-0.955149, 0.243278, -0.168837,
		0.261100, 0.960860, -0.092596,
		12.108608, 19.681061, 24.454527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.608226, 19.218210, 23.923475>,  <11.925838, 19.008459, 24.519344>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.608226, 19.218210, 23.923475> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.855315, 19.526144, 23.987690>,  <12.003569, 19.710905, 24.026218>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.855315, 19.526144, 23.987690>,  <11.608226, 19.218210, 23.923475>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.855315, 19.526144, 23.987690> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012563, 0.194458, -0.980830,
		-0.786295, 0.607899, 0.110450,
		0.617724, 0.769834, 0.160538,
		12.040632, 19.757093, 24.035852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.343153, 19.703508, 23.536543>,  <11.608226, 19.218210, 23.923475>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.343153, 19.703508, 23.536543> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.726970, 19.806646, 23.581789>,  <11.957260, 19.868528, 23.608936>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.726970, 19.806646, 23.581789>,  <11.343153, 19.703508, 23.536543>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.726970, 19.806646, 23.581789> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085397, 0.116315, -0.989534,
		-0.268302, 0.959160, 0.089590,
		0.959542, 0.257843, 0.113116,
		12.014832, 19.883999, 23.615725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.401042, 20.383089, 23.287699>,  <11.343153, 19.703508, 23.536543>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.401042, 20.383089, 23.287699> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.729285, 20.155491, 23.266357>,  <11.926231, 20.018932, 23.253551>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.729285, 20.155491, 23.266357>,  <11.401042, 20.383089, 23.287699>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.729285, 20.155491, 23.266357> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053345, 0.016690, -0.998437,
		0.568995, 0.822172, -0.016657,
		0.820609, -0.568994, -0.053355,
		11.975468, 19.984793, 23.250351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.912218, 20.731417, 22.791616>,  <11.401042, 20.383089, 23.287699>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.912218, 20.731417, 22.791616> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.017350, 20.346054, 22.812649>,  <12.080430, 20.114836, 22.825268>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.017350, 20.346054, 22.812649>,  <11.912218, 20.731417, 22.791616>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.017350, 20.346054, 22.812649> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080369, -0.032445, -0.996237,
		0.961489, 0.266068, 0.068901,
		0.262831, -0.963408, 0.052579,
		12.096199, 20.057032, 22.828423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.367542, 20.664120, 22.293482>,  <11.912218, 20.731417, 22.791616>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.367542, 20.664120, 22.293482> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.263616, 20.284409, 22.364325>,  <12.201260, 20.056581, 22.406830>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.263616, 20.284409, 22.364325>,  <12.367542, 20.664120, 22.293482>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.263616, 20.284409, 22.364325> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067584, -0.200833, -0.977291,
		0.963290, -0.241946, 0.116336,
		-0.259816, -0.949278, 0.177109,
		12.185671, 19.999626, 22.417458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<23.324125, 18.368889, 1.008453> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.179579, 18.590235, 1.308640>,  <23.092852, 18.723042, 1.488752>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.179579, 18.590235, 1.308640>,  <23.324125, 18.368889, 1.008453>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.179579, 18.590235, 1.308640> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436945, -0.610515, 0.660568,
		0.823707, 0.566620, -0.021171,
		-0.361366, 0.553365, 0.750467,
		23.071169, 18.756245, 1.533780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.816109, 18.577677, 1.595187>,  <23.324125, 18.368889, 1.008453>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.816109, 18.577677, 1.595187> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.454865, 18.599625, 1.765540>,  <23.238117, 18.612793, 1.867752>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.454865, 18.599625, 1.765540>,  <23.816109, 18.577677, 1.595187>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.454865, 18.599625, 1.765540> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287095, -0.660380, 0.693884,
		0.319318, 0.748924, 0.580644,
		-0.903113, 0.054870, 0.425884,
		23.183931, 18.616085, 1.893305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.855915, 18.915648, 2.205647>,  <23.816109, 18.577677, 1.595187>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.855915, 18.915648, 2.205647> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.590027, 18.619459, 2.165951>,  <23.430494, 18.441746, 2.142133>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.590027, 18.619459, 2.165951>,  <23.855915, 18.915648, 2.205647>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.590027, 18.619459, 2.165951> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388194, -0.455827, 0.800954,
		-0.638319, 0.493886, 0.590444,
		-0.664721, -0.740471, -0.099240,
		23.390610, 18.397318, 2.136179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.517387, 18.908129, 2.696003>,  <23.855915, 18.915648, 2.205647>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.517387, 18.908129, 2.696003> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.491720, 18.526617, 2.578573>,  <23.476320, 18.297710, 2.508116>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.491720, 18.526617, 2.578573>,  <23.517387, 18.908129, 2.696003>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.491720, 18.526617, 2.578573> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216993, -0.300477, 0.928778,
		-0.974062, -0.004105, 0.226245,
		-0.064168, -0.953780, -0.293574,
		23.472469, 18.240482, 2.490501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.886538, 18.571041, 3.021149>,  <23.517387, 18.908129, 2.696003>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.886538, 18.571041, 3.021149> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.763590, 18.361839, 3.339140>,  <22.689821, 18.236319, 3.529935>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.763590, 18.361839, 3.339140>,  <22.886538, 18.571041, 3.021149>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.763590, 18.361839, 3.339140> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.946071, 0.257799, -0.196187,
		-0.102338, -0.812408, -0.574039,
		-0.307371, -0.523004, 0.794978,
		22.671379, 18.204939, 3.577634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.557236, 18.786901, 3.428745>,  <22.886538, 18.571041, 3.021149>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.557236, 18.786901, 3.428745> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.851109, 18.575310, 3.258839>,  <24.027431, 18.448355, 3.156895>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.851109, 18.575310, 3.258839>,  <23.557236, 18.786901, 3.428745>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.851109, 18.575310, 3.258839> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306922, -0.299211, 0.903477,
		-0.605014, -0.794138, -0.057470,
		0.734682, -0.528978, -0.424766,
		24.071512, 18.416616, 3.131409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.013765, 19.402216, 3.382342>,  <23.557236, 18.786901, 3.428745>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.013765, 19.402216, 3.382342> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.296459, 19.134741, 3.289919>,  <24.466076, 18.974257, 3.234465>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.296459, 19.134741, 3.289919>,  <24.013765, 19.402216, 3.382342>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.296459, 19.134741, 3.289919> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443189, 0.673015, -0.592144,
		0.551463, 0.316086, 0.771996,
		0.706733, -0.668686, -0.231057,
		24.508480, 18.934135, 3.220602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.645868, 19.620491, 3.583226>,  <24.013765, 19.402216, 3.382342>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.645868, 19.620491, 3.583226> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.663609, 19.389835, 3.256908>,  <24.674253, 19.251442, 3.061118>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.663609, 19.389835, 3.256908>,  <24.645868, 19.620491, 3.583226>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.663609, 19.389835, 3.256908> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327001, 0.779993, -0.533555,
		0.943983, -0.243102, 0.223155,
		0.044351, -0.576639, -0.815795,
		24.676914, 19.216845, 3.012170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.316423, 19.720112, 3.333200>,  <24.645868, 19.620491, 3.583226>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.316423, 19.720112, 3.333200> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.045448, 19.608110, 3.061119>,  <24.882864, 19.540909, 2.897870>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.045448, 19.608110, 3.061119>,  <25.316423, 19.720112, 3.333200>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.045448, 19.608110, 3.061119> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243968, 0.786846, -0.566881,
		0.693944, -0.549974, -0.464726,
		-0.677437, -0.280006, -0.680203,
		24.842216, 19.524109, 2.857058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.311493, 19.288235, 3.855277>,  <25.316423, 19.720112, 3.333200>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.311493, 19.288235, 3.855277> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.478443, 19.651711, 3.851663>,  <25.578613, 19.869795, 3.849495>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.478443, 19.651711, 3.851663>,  <25.311493, 19.288235, 3.855277>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.478443, 19.651711, 3.851663> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212200, 0.107124, 0.971337,
		0.883610, -0.403498, 0.237535,
		0.417378, 0.908688, -0.009034,
		25.603657, 19.924316, 3.848953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.824373, 19.309525, 4.388209>,  <25.311493, 19.288235, 3.855277>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.824373, 19.309525, 4.388209> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.711964, 19.684853, 4.307628>,  <25.644518, 19.910049, 4.259279>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.711964, 19.684853, 4.307628>,  <25.824373, 19.309525, 4.388209>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.711964, 19.684853, 4.307628> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119960, 0.173923, 0.977425,
		0.952174, 0.298847, 0.063684,
		-0.281025, 0.938318, -0.201455,
		25.627657, 19.966349, 4.247191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.169996, 19.750505, 4.880971>,  <25.824373, 19.309525, 4.388209>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.169996, 19.750505, 4.880971> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.874771, 19.987347, 4.751554>,  <25.697636, 20.129452, 4.673905>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.874771, 19.987347, 4.751554>,  <26.169996, 19.750505, 4.880971>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.874771, 19.987347, 4.751554> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303429, 0.137026, 0.942950,
		0.602655, 0.794129, 0.078527,
		-0.738064, 0.592101, -0.323541,
		25.653353, 20.164976, 4.654492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.040026, 20.200459, 5.415694>,  <26.169996, 19.750505, 4.880971>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.040026, 20.200459, 5.415694> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.711123, 20.255634, 5.194837>,  <25.513781, 20.288740, 5.062322>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.711123, 20.255634, 5.194837>,  <26.040026, 20.200459, 5.415694>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.711123, 20.255634, 5.194837> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556682, 0.006732, 0.830698,
		0.118302, 0.990418, 0.071252,
		-0.822259, 0.137938, -0.552145,
		25.464445, 20.297016, 5.029193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.561193, 20.817160, 5.707893>,  <26.040026, 20.200459, 5.415694>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.561193, 20.817160, 5.707893> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.328352, 20.559097, 5.509931>,  <25.188648, 20.404261, 5.391153>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.328352, 20.559097, 5.509931>,  <25.561193, 20.817160, 5.707893>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.328352, 20.559097, 5.509931> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657590, 0.015521, 0.753216,
		-0.478260, 0.763894, -0.433282,
		-0.582102, -0.645155, -0.494906,
		25.153721, 20.365551, 5.361459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.864328, 21.123621, 5.710757>,  <25.561193, 20.817160, 5.707893>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.864328, 21.123621, 5.710757> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.809689, 20.736195, 5.627604>,  <24.776905, 20.503738, 5.577711>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.809689, 20.736195, 5.627604>,  <24.864328, 21.123621, 5.710757>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.809689, 20.736195, 5.627604> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.775551, -0.026001, 0.630749,
		-0.616328, 0.247385, -0.747623,
		-0.136599, -0.968569, -0.207885,
		24.768709, 20.445623, 5.565238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.139303, 21.023167, 5.713234>,  <24.864328, 21.123621, 5.710757>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.139303, 21.023167, 5.713234> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.284676, 20.656797, 5.781351>,  <24.371899, 20.436975, 5.822221>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.284676, 20.656797, 5.781351>,  <24.139303, 21.023167, 5.713234>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.284676, 20.656797, 5.781351> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.781629, -0.200320, 0.590701,
		-0.506925, -0.347785, -0.788716,
		0.363433, -0.915924, 0.170292,
		24.393705, 20.382021, 5.832439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.559061, 20.544125, 5.878595>,  <24.139303, 21.023167, 5.713234>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.559061, 20.544125, 5.878595> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.881525, 20.337288, 5.993640>,  <24.075005, 20.213186, 6.062667>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.881525, 20.337288, 5.993640>,  <23.559061, 20.544125, 5.878595>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.881525, 20.337288, 5.993640> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516555, -0.377980, 0.768312,
		-0.288574, -0.767952, -0.571818,
		0.806162, -0.517089, 0.287614,
		24.123373, 20.182159, 6.079924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.315699, 19.890137, 6.049840>,  <23.559061, 20.544125, 5.878595>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.315699, 19.890137, 6.049840> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.674150, 19.909025, 6.226349>,  <23.889221, 19.920359, 6.332255>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.674150, 19.909025, 6.226349>,  <23.315699, 19.890137, 6.049840>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.674150, 19.909025, 6.226349> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385423, -0.410107, 0.826596,
		0.220001, -0.910814, -0.349310,
		0.896130, 0.047220, 0.441272,
		23.942989, 19.923191, 6.358731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.522694, 19.245966, 6.158033>,  <23.315699, 19.890137, 6.049840>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.522694, 19.245966, 6.158033> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.695835, 19.494799, 6.419001>,  <23.799719, 19.644098, 6.575582>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.695835, 19.494799, 6.419001>,  <23.522694, 19.245966, 6.158033>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.695835, 19.494799, 6.419001> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349445, -0.551354, 0.757560,
		0.830980, -0.555896, -0.021271,
		0.432853, 0.622084, 0.652419,
		23.825691, 19.681423, 6.614727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.771265, 18.816938, 6.758352>,  <23.522694, 19.245966, 6.158033>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.771265, 18.816938, 6.758352> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.755827, 19.178749, 6.928220>,  <23.746563, 19.395836, 7.030141>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.755827, 19.178749, 6.928220>,  <23.771265, 18.816938, 6.758352>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.755827, 19.178749, 6.928220> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458889, -0.393567, 0.796571,
		0.887655, -0.164131, 0.430267,
		-0.038597, 0.904525, 0.424670,
		23.744247, 19.450108, 7.055621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.979412, 18.736780, 7.501333>,  <23.771265, 18.816938, 6.758352>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.979412, 18.736780, 7.501333> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.794292, 19.091034, 7.486001>,  <23.683220, 19.303585, 7.476802>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.794292, 19.091034, 7.486001>,  <23.979412, 18.736780, 7.501333>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.794292, 19.091034, 7.486001> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390666, -0.164951, 0.905634,
		0.795737, 0.434102, 0.422326,
		-0.462800, 0.885634, -0.038331,
		23.655453, 19.356724, 7.474502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.185450, 18.995203, 8.134254>,  <23.979412, 18.736780, 7.501333>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.185450, 18.995203, 8.134254> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.842672, 19.153490, 8.002158>,  <23.637007, 19.248463, 7.922900>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.842672, 19.153490, 8.002158>,  <24.185450, 18.995203, 8.134254>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.842672, 19.153490, 8.002158> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447530, -0.253445, 0.857603,
		0.255669, 0.882709, 0.394282,
		-0.856942, 0.395716, -0.330241,
		23.585590, 19.272205, 7.903086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.889055, 19.231421, 8.701441>,  <24.185450, 18.995203, 8.134254>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.889055, 19.231421, 8.701441> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.587305, 19.207094, 8.439992>,  <23.406256, 19.192499, 8.283123>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.587305, 19.207094, 8.439992>,  <23.889055, 19.231421, 8.701441>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.587305, 19.207094, 8.439992> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631461, -0.204858, 0.747857,
		-0.179381, 0.976900, 0.116138,
		-0.754373, -0.060815, -0.653622,
		23.360992, 19.188850, 8.243905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.330635, 19.546835, 9.113013>,  <23.889055, 19.231421, 8.701441>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.330635, 19.546835, 9.113013> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.169041, 19.344072, 8.808423>,  <23.072084, 19.222416, 8.625669>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.169041, 19.344072, 8.808423>,  <23.330635, 19.546835, 9.113013>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.169041, 19.344072, 8.808423> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625281, -0.454577, 0.634337,
		-0.667698, 0.732397, -0.133316,
		-0.403984, -0.506906, -0.761474,
		23.047846, 19.192001, 8.579981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.608118, 19.608154, 9.336224>,  <23.330635, 19.546835, 9.113013>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.608118, 19.608154, 9.336224> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.627470, 19.316082, 9.063608>,  <22.639082, 19.140839, 8.900039>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.627470, 19.316082, 9.063608>,  <22.608118, 19.608154, 9.336224>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.627470, 19.316082, 9.063608> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.749002, -0.477938, 0.458880,
		-0.660799, 0.488274, -0.570030,
		0.048380, -0.730181, -0.681539,
		22.641985, 19.097029, 8.859146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.996361, 19.508581, 9.195895>,  <22.608118, 19.608154, 9.336224>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.996361, 19.508581, 9.195895> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.173584, 19.173754, 9.067513>,  <22.279919, 18.972857, 8.990484>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.173584, 19.173754, 9.067513>,  <21.996361, 19.508581, 9.195895>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.173584, 19.173754, 9.067513> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.758618, -0.540837, 0.363311,
		-0.477700, 0.082513, -0.874639,
		0.443060, -0.837070, -0.320954,
		22.306501, 18.922632, 8.971227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.465801, 19.096710, 8.904190>,  <21.996361, 19.508581, 9.195895>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.465801, 19.096710, 8.904190> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.750748, 18.832966, 9.000338>,  <21.921717, 18.674719, 9.058026>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.750748, 18.832966, 9.000338>,  <21.465801, 19.096710, 8.904190>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.750748, 18.832966, 9.000338> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.672975, -0.544629, 0.500483,
		-0.199086, -0.518290, -0.831709,
		0.712368, -0.659359, 0.240368,
		21.964458, 18.635159, 9.072448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.189991, 18.436243, 8.718515>,  <21.465801, 19.096710, 8.904190>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.189991, 18.436243, 8.718515> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.468712, 18.385969, 9.000982>,  <21.635944, 18.355804, 9.170463>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.468712, 18.385969, 9.000982>,  <21.189991, 18.436243, 8.718515>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.468712, 18.385969, 9.000982> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654343, -0.514627, 0.554071,
		0.293774, -0.848152, -0.440834,
		0.696801, -0.125685, 0.706166,
		21.677752, 18.348263, 9.212832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.070482, 17.659042, 9.023491>,  <21.189991, 18.436243, 8.718515>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.070482, 17.659042, 9.023491> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.314798, 17.844303, 9.280373>,  <21.461388, 17.955460, 9.434502>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.314798, 17.844303, 9.280373>,  <21.070482, 17.659042, 9.023491>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.314798, 17.844303, 9.280373> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405819, -0.513329, 0.756178,
		0.679887, -0.722484, -0.125581,
		0.610791, 0.463152, 0.642203,
		21.498035, 17.983250, 9.473034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.115377, 17.129442, 9.522323>,  <21.070482, 17.659042, 9.023491>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.115377, 17.129442, 9.522323> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.221279, 17.459867, 9.721329>,  <21.284821, 17.658123, 9.840733>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.221279, 17.459867, 9.721329>,  <21.115377, 17.129442, 9.522323>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.221279, 17.459867, 9.721329> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310543, -0.415403, 0.854987,
		0.912944, -0.380863, 0.146549,
		0.264756, 0.826065, 0.497514,
		21.300707, 17.707687, 9.870583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.816339, 17.009851, 9.810749>,  <21.115377, 17.129442, 9.522323>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.816339, 17.009851, 9.810749> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.080206, 17.268192, 9.657013>,  <22.238525, 17.423197, 9.564772>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.080206, 17.268192, 9.657013>,  <21.816339, 17.009851, 9.810749>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.080206, 17.268192, 9.657013> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711955, -0.373188, 0.594854,
		0.240758, -0.666036, -0.705997,
		0.659664, 0.645854, -0.384340,
		22.278105, 17.461948, 9.541711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.423819, 16.646830, 9.517560>,  <21.816339, 17.009851, 9.810749>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.423819, 16.646830, 9.517560> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.516775, 17.025547, 9.606620>,  <22.572550, 17.252777, 9.660056>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.516775, 17.025547, 9.606620>,  <22.423819, 16.646830, 9.517560>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.516775, 17.025547, 9.606620> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669572, -0.321772, 0.669430,
		0.705456, -0.006489, -0.708724,
		0.232392, 0.946795, 0.222651,
		22.586493, 17.309586, 9.673415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.178614, 16.842297, 9.382133>,  <22.423819, 16.646830, 9.517560>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.178614, 16.842297, 9.382133> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.983959, 17.008915, 9.689295>,  <22.867167, 17.108887, 9.873591>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.983959, 17.008915, 9.689295>,  <23.178614, 16.842297, 9.382133>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.983959, 17.008915, 9.689295> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608160, -0.469504, 0.640084,
		0.627159, 0.778495, -0.024850,
		-0.486635, 0.416547, 0.767903,
		22.837969, 17.133879, 9.919665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.589390, 17.348902, 9.725534>,  <23.178614, 16.842297, 9.382133>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.589390, 17.348902, 9.725534> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.318552, 17.135706, 9.928498>,  <23.156050, 17.007788, 10.050277>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.318552, 17.135706, 9.928498>,  <23.589390, 17.348902, 9.725534>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.318552, 17.135706, 9.928498> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734239, -0.443052, 0.514391,
		-0.049357, 0.720851, 0.691330,
		-0.677094, -0.532991, 0.507409,
		23.115423, 16.975809, 10.080721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.471716, 17.378447, 10.514240>,  <23.589390, 17.348902, 9.725534>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.471716, 17.378447, 10.514240> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.406803, 17.011679, 10.368407>,  <23.367855, 16.791618, 10.280908>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.406803, 17.011679, 10.368407>,  <23.471716, 17.378447, 10.514240>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.406803, 17.011679, 10.368407> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772840, -0.347831, 0.530784,
		-0.613500, -0.195627, 0.765080,
		-0.162283, -0.916921, -0.364583,
		23.358118, 16.736603, 10.259032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.224524, 17.346251, 10.703596>,  <23.471716, 17.378447, 10.514240>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.224524, 17.346251, 10.703596> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.586237, 17.234879, 10.833056>,  <24.803265, 17.168055, 10.910732>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.586237, 17.234879, 10.833056>,  <24.224524, 17.346251, 10.703596>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.586237, 17.234879, 10.833056> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419411, 0.721035, -0.551546,
		-0.079796, 0.634496, 0.768796,
		0.904283, -0.278430, 0.323651,
		24.857521, 17.151350, 10.930152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.557169, 17.945942, 10.899426>,  <24.224524, 17.346251, 10.703596>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.557169, 17.945942, 10.899426> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.848721, 17.683977, 10.819601>,  <25.023651, 17.526798, 10.771706>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.848721, 17.683977, 10.819601>,  <24.557169, 17.945942, 10.899426>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.848721, 17.683977, 10.819601> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465765, 0.687968, -0.556563,
		0.501792, 0.312718, 0.806481,
		0.728881, -0.654910, -0.199564,
		25.067385, 17.487505, 10.759732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.114143, 18.327892, 10.886106>,  <24.557169, 17.945942, 10.899426>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.114143, 18.327892, 10.886106> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.281061, 18.004515, 10.720077>,  <25.381212, 17.810488, 10.620459>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.281061, 18.004515, 10.720077>,  <25.114143, 18.327892, 10.886106>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.281061, 18.004515, 10.720077> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423957, 0.577175, -0.697946,
		0.803820, 0.115276, 0.583597,
		0.417294, -0.808443, -0.415073,
		25.406250, 17.761982, 10.595554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.928528, 18.330767, 10.871558>,  <25.114143, 18.327892, 10.886106>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.928528, 18.330767, 10.871558> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.786062, 18.101742, 10.576175>,  <25.700583, 17.964327, 10.398945>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.786062, 18.101742, 10.576175>,  <25.928528, 18.330767, 10.871558>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.786062, 18.101742, 10.576175> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633981, 0.432493, -0.641107,
		0.686451, -0.696507, 0.208956,
		-0.356164, -0.572563, -0.738458,
		25.679213, 17.929974, 10.354637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.581924, 17.979750, 10.633161>,  <25.928528, 18.330767, 10.871558>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.581924, 17.979750, 10.633161> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.296373, 17.935144, 10.356627>,  <26.125042, 17.908381, 10.190707>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.296373, 17.935144, 10.356627>,  <26.581924, 17.979750, 10.633161>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.296373, 17.935144, 10.356627> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666992, 0.192437, -0.719785,
		0.213307, -0.974952, -0.062995,
		-0.713878, -0.111518, -0.691333,
		26.082211, 17.901691, 10.149227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.935652, 17.675566, 10.105123>,  <26.581924, 17.979750, 10.633161>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.935652, 17.675566, 10.105123> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.588562, 17.789873, 9.942450>,  <26.380308, 17.858458, 9.844846>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.588562, 17.789873, 9.942450>,  <26.935652, 17.675566, 10.105123>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.588562, 17.789873, 9.942450> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482646, 0.288924, -0.826787,
		-0.118769, -0.913707, -0.388631,
		-0.867725, 0.285768, -0.406681,
		26.328245, 17.875603, 9.820445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.960201, 17.372158, 9.393680>,  <26.935652, 17.675566, 10.105123>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.960201, 17.372158, 9.393680> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.705526, 17.680399, 9.382342>,  <26.552721, 17.865343, 9.375540>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.705526, 17.680399, 9.382342>,  <26.960201, 17.372158, 9.393680>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.705526, 17.680399, 9.382342> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329789, 0.238886, -0.913330,
		-0.697042, -0.590854, -0.406231,
		-0.636688, 0.770601, -0.028343,
		26.514521, 17.911579, 9.373839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.791262, 17.369434, 8.739749>,  <26.960201, 17.372158, 9.393680>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.791262, 17.369434, 8.739749> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.712885, 17.739733, 8.869116>,  <26.665859, 17.961912, 8.946735>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.712885, 17.739733, 8.869116>,  <26.791262, 17.369434, 8.739749>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.712885, 17.739733, 8.869116> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181988, 0.358409, -0.915655,
		-0.963581, -0.120556, -0.238702,
		-0.195941, 0.925748, 0.323416,
		26.654102, 18.017458, 8.966141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.398647, 17.664869, 8.187791>,  <26.791262, 17.369434, 8.739749>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.398647, 17.664869, 8.187791> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.534168, 17.971870, 8.405472>,  <26.615480, 18.156071, 8.536080>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.534168, 17.971870, 8.405472>,  <26.398647, 17.664869, 8.187791>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.534168, 17.971870, 8.405472> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447805, 0.377154, -0.810695,
		-0.827457, 0.518361, -0.215910,
		0.338801, 0.767501, 0.544203,
		26.635809, 18.202120, 8.568732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.276600, 18.264465, 7.763377>,  <26.398647, 17.664869, 8.187791>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.276600, 18.264465, 7.763377> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.548504, 18.414505, 8.015481>,  <26.711645, 18.504528, 8.166743>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.548504, 18.414505, 8.015481>,  <26.276600, 18.264465, 7.763377>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.548504, 18.414505, 8.015481> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492640, 0.403108, -0.771239,
		-0.543354, 0.834748, 0.089227,
		0.679759, 0.375099, 0.630261,
		26.752432, 18.527035, 8.204559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.262665, 18.999136, 7.670721>,  <26.276600, 18.264465, 7.763377>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.262665, 18.999136, 7.670721> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.621647, 18.931057, 7.833501>,  <26.837036, 18.890209, 7.931169>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.621647, 18.931057, 7.833501>,  <26.262665, 18.999136, 7.670721>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.621647, 18.931057, 7.833501> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437174, 0.466109, -0.769169,
		-0.058771, 0.868202, 0.492718,
		0.897455, -0.170198, 0.406949,
		26.890882, 18.879997, 7.955585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.541758, 19.537802, 7.478570>,  <26.262665, 18.999136, 7.670721>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.541758, 19.537802, 7.478570> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.860605, 19.311470, 7.562890>,  <27.051914, 19.175671, 7.613481>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.860605, 19.311470, 7.562890>,  <26.541758, 19.537802, 7.478570>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.860605, 19.311470, 7.562890> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538378, 0.507939, -0.672419,
		0.273403, 0.649487, 0.709519,
		0.797120, -0.565831, 0.210798,
		27.099741, 19.141722, 7.626129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.113239, 19.982752, 7.589167>,  <26.541758, 19.537802, 7.478570>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.113239, 19.982752, 7.589167> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.240993, 19.620770, 7.476707>,  <27.317646, 19.403580, 7.409231>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.240993, 19.620770, 7.476707>,  <27.113239, 19.982752, 7.589167>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.240993, 19.620770, 7.476707> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602278, 0.422908, -0.677060,
		0.731611, 0.046913, 0.680107,
		0.319385, -0.904957, -0.281150,
		27.336809, 19.349281, 7.392362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.713310, 20.160006, 7.509645>,  <27.113239, 19.982752, 7.589167>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.713310, 20.160006, 7.509645> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.684931, 19.808908, 7.320105>,  <27.667902, 19.598249, 7.206381>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.684931, 19.808908, 7.320105>,  <27.713310, 20.160006, 7.509645>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.684931, 19.808908, 7.320105> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541313, 0.365130, -0.757404,
		0.837823, -0.310239, 0.449227,
		-0.070950, -0.877743, -0.473850,
		27.663647, 19.545586, 7.177950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.302588, 20.049078, 7.203730>,  <27.713310, 20.160006, 7.509645>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.302588, 20.049078, 7.203730> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.082613, 19.792837, 6.989366>,  <27.950628, 19.639091, 6.860747>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.082613, 19.792837, 6.989366>,  <28.302588, 20.049078, 7.203730>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.082613, 19.792837, 6.989366> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603286, 0.139067, -0.785307,
		0.577597, -0.755174, 0.309989,
		-0.549934, -0.640603, -0.535911,
		27.917633, 19.600657, 6.828592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.704762, 19.660398, 6.895540>,  <28.302588, 20.049078, 7.203730>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.704762, 19.660398, 6.895540> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.380848, 19.597151, 6.669532>,  <28.186499, 19.559202, 6.533927>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.380848, 19.597151, 6.669532>,  <28.704762, 19.660398, 6.895540>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.380848, 19.597151, 6.669532> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578051, -0.050003, -0.814467,
		0.100531, -0.986153, 0.131892,
		-0.809785, -0.158119, -0.565020,
		28.137913, 19.549715, 6.500026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.909529, 19.119993, 6.558259>,  <28.704762, 19.660398, 6.895540>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.909529, 19.119993, 6.558259> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.624020, 19.319521, 6.361603>,  <28.452715, 19.439238, 6.243610>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.624020, 19.319521, 6.361603>,  <28.909529, 19.119993, 6.558259>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.624020, 19.319521, 6.361603> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554964, -0.025406, -0.831486,
		-0.427252, -0.866333, -0.258693,
		-0.713771, 0.498820, -0.491639,
		28.409887, 19.469168, 6.214112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<15.283214, 21.673716, 17.897459> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.338732, 21.305611, 18.043804>,  <15.372043, 21.084747, 18.131611>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.338732, 21.305611, 18.043804>,  <15.283214, 21.673716, 17.897459>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.338732, 21.305611, 18.043804> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.735907, -0.151379, -0.659943,
		0.662704, 0.360837, 0.656217,
		0.138794, -0.920262, 0.365861,
		15.380370, 21.029531, 18.153563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.947324, 21.594004, 17.820005>,  <15.283214, 21.673716, 17.897459>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.947324, 21.594004, 17.820005> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.813737, 21.220020, 17.867863>,  <15.733584, 20.995630, 17.896576>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.813737, 21.220020, 17.867863>,  <15.947324, 21.594004, 17.820005>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.813737, 21.220020, 17.867863> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673939, -0.325593, -0.663170,
		0.658993, -0.140846, 0.738844,
		-0.333967, -0.934961, 0.119642,
		15.713547, 20.939531, 17.903755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.555122, 21.125757, 17.781874>,  <15.947324, 21.594004, 17.820005>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.555122, 21.125757, 17.781874> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.231564, 20.906689, 17.696321>,  <16.037428, 20.775248, 17.644991>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.231564, 20.906689, 17.696321>,  <16.555122, 21.125757, 17.781874>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.231564, 20.906689, 17.696321> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459190, -0.361278, -0.811556,
		0.367197, -0.754674, 0.543722,
		-0.808895, -0.547672, -0.213879,
		15.988895, 20.742388, 17.632158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.830130, 20.465155, 17.517525>,  <16.555122, 21.125757, 17.781874>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.830130, 20.465155, 17.517525> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.448400, 20.480978, 17.399067>,  <16.219362, 20.490473, 17.327993>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.448400, 20.480978, 17.399067>,  <16.830130, 20.465155, 17.517525>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.448400, 20.480978, 17.399067> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226552, -0.550386, -0.803586,
		-0.194782, -0.833973, 0.516284,
		-0.954324, 0.039559, -0.296143,
		16.162104, 20.492846, 17.310225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.667570, 19.864946, 17.357300>,  <16.830130, 20.465155, 17.517525>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.667570, 19.864946, 17.357300> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.369577, 20.030012, 17.147648>,  <16.190781, 20.129051, 17.021856>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.369577, 20.030012, 17.147648>,  <16.667570, 19.864946, 17.357300>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.369577, 20.030012, 17.147648> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151909, -0.660112, -0.735647,
		-0.649549, -0.627668, 0.429090,
		-0.744990, 0.412656, -0.524124,
		16.146082, 20.153811, 16.990410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.214096, 19.357969, 17.205523>,  <16.667570, 19.864946, 17.357300>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.214096, 19.357969, 17.205523> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.119350, 19.634655, 16.932634>,  <16.062504, 19.800667, 16.768902>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.119350, 19.634655, 16.932634>,  <16.214096, 19.357969, 17.205523>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.119350, 19.634655, 16.932634> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022626, -0.698086, -0.715656,
		-0.971280, -0.184948, 0.149699,
		-0.236861, 0.691715, -0.682222,
		16.048292, 19.842169, 16.727968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.694294, 19.055367, 16.771946>,  <16.214096, 19.357969, 17.205523>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.694294, 19.055367, 16.771946> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.870227, 19.353210, 16.571106>,  <15.975787, 19.531918, 16.450602>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.870227, 19.353210, 16.571106>,  <15.694294, 19.055367, 16.771946>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.870227, 19.353210, 16.571106> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179698, -0.620743, -0.763143,
		-0.879918, 0.245429, -0.406827,
		0.439833, 0.744609, -0.502100,
		16.002176, 19.576593, 16.420477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.455737, 19.002127, 16.132473>,  <15.694294, 19.055367, 16.771946>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.455737, 19.002127, 16.132473> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.792073, 19.213823, 16.087061>,  <15.993876, 19.340841, 16.059813>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.792073, 19.213823, 16.087061>,  <15.455737, 19.002127, 16.132473>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.792073, 19.213823, 16.087061> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269561, -0.591315, -0.760055,
		-0.469385, 0.608482, -0.639865,
		0.840841, 0.529241, -0.113532,
		16.044325, 19.372595, 16.053001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.444228, 19.113829, 15.430833>,  <15.455737, 19.002127, 16.132473>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.444228, 19.113829, 15.430833> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.823751, 19.182213, 15.537066>,  <16.051466, 19.223244, 15.600806>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.823751, 19.182213, 15.537066>,  <15.444228, 19.113829, 15.430833>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.823751, 19.182213, 15.537066> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315314, -0.561762, -0.764853,
		0.018434, 0.809441, -0.586911,
		0.948808, 0.170962, 0.265583,
		16.108395, 19.233501, 15.616741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.819923, 19.278610, 14.827283>,  <15.444228, 19.113829, 15.430833>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.819923, 19.278610, 14.827283> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.137161, 19.184679, 15.052088>,  <16.327503, 19.128321, 15.186971>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.137161, 19.184679, 15.052088>,  <15.819923, 19.278610, 14.827283>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.137161, 19.184679, 15.052088> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386318, -0.519436, -0.762197,
		0.470915, 0.821609, -0.321243,
		0.793094, -0.234828, 0.562012,
		16.375090, 19.114231, 15.220692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.430702, 19.330299, 14.439919>,  <15.819923, 19.278610, 14.827283>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.430702, 19.330299, 14.439919> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.476095, 19.066133, 14.736831>,  <16.503330, 18.907635, 14.914978>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.476095, 19.066133, 14.736831>,  <16.430702, 19.330299, 14.439919>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.476095, 19.066133, 14.736831> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374391, -0.663607, -0.647655,
		0.920301, 0.351399, 0.171946,
		0.113481, -0.660412, 0.742279,
		16.510139, 18.868010, 14.959515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.833006, 18.924013, 14.107323>,  <16.430702, 19.330299, 14.439919>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.833006, 18.924013, 14.107323> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.789143, 18.712482, 14.443969>,  <16.762825, 18.585564, 14.645956>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.789143, 18.712482, 14.443969>,  <16.833006, 18.924013, 14.107323>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.789143, 18.712482, 14.443969> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417978, -0.792752, -0.443665,
		0.901814, 0.303125, 0.307972,
		-0.109659, -0.528829, 0.841614,
		16.756245, 18.553833, 14.696453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.009998, 18.308001, 13.775467>,  <16.833006, 18.924013, 14.107323>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.009998, 18.308001, 13.775467> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.982563, 18.265789, 14.172286>,  <16.966103, 18.240461, 14.410378>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.982563, 18.265789, 14.172286>,  <17.009998, 18.308001, 13.775467>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.982563, 18.265789, 14.172286> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446017, -0.892724, -0.064128,
		0.892393, 0.438072, 0.108298,
		-0.068588, -0.105530, 0.992048,
		16.961987, 18.234129, 14.469900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.658522, 18.199490, 14.095481>,  <17.009998, 18.308001, 13.775467>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.658522, 18.199490, 14.095481> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.372730, 18.021336, 14.311316>,  <17.201256, 17.914444, 14.440818>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.372730, 18.021336, 14.311316>,  <17.658522, 18.199490, 14.095481>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.372730, 18.021336, 14.311316> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477089, -0.874245, -0.089895,
		0.511771, 0.193204, 0.837116,
		-0.714476, -0.445384, 0.539589,
		17.158388, 17.887720, 14.473193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.002428, 17.677067, 13.889111>,  <17.658522, 18.199490, 14.095481>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.002428, 17.677067, 13.889111> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.317171, 17.895103, 14.004855>,  <18.506018, 18.025925, 14.074302>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.317171, 17.895103, 14.004855>,  <18.002428, 17.677067, 13.889111>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.317171, 17.895103, 14.004855> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174880, -0.252713, 0.951605,
		0.591839, -0.799381, -0.103523,
		0.786857, 0.545093, 0.289361,
		18.553228, 18.058632, 14.091663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.474220, 17.190285, 13.985101>,  <18.002428, 17.677067, 13.889111>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.474220, 17.190285, 13.985101> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.564968, 17.527092, 14.180871>,  <18.619417, 17.729176, 14.298333>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.564968, 17.527092, 14.180871>,  <18.474220, 17.190285, 13.985101>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.564968, 17.527092, 14.180871> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006047, -0.503737, 0.863836,
		0.973906, -0.193020, -0.119375,
		0.226871, 0.842017, 0.489425,
		18.633030, 17.779697, 14.327699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.821218, 16.966265, 14.517369>,  <18.474220, 17.190285, 13.985101>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.821218, 16.966265, 14.517369> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.727400, 17.334406, 14.642550>,  <18.671108, 17.555290, 14.717659>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.727400, 17.334406, 14.642550>,  <18.821218, 16.966265, 14.517369>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.727400, 17.334406, 14.642550> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192374, -0.359510, 0.913096,
		0.952880, 0.153958, 0.261373,
		-0.234545, 0.920353, 0.312952,
		18.657036, 17.610512, 14.736436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.106184, 16.886791, 15.120238>,  <18.821218, 16.966265, 14.517369>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.106184, 16.886791, 15.120238> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.863142, 17.203621, 15.143688>,  <18.717318, 17.393719, 15.157758>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.863142, 17.203621, 15.143688>,  <19.106184, 16.886791, 15.120238>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.863142, 17.203621, 15.143688> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229395, -0.245677, 0.941818,
		0.760391, 0.558805, 0.330972,
		-0.607605, 0.792073, 0.058624,
		18.680861, 17.441242, 15.161275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.190361, 17.245077, 15.801144>,  <19.106184, 16.886791, 15.120238>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.190361, 17.245077, 15.801144> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.832287, 17.381968, 15.686935>,  <18.617441, 17.464102, 15.618411>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.832287, 17.381968, 15.686935>,  <19.190361, 17.245077, 15.801144>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.832287, 17.381968, 15.686935> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319925, -0.047388, 0.946257,
		0.310302, 0.938423, 0.151907,
		-0.895188, 0.342224, -0.285520,
		18.563730, 17.484634, 15.601279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.080854, 17.709398, 16.213369>,  <19.190361, 17.245077, 15.801144>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.080854, 17.709398, 16.213369> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.707121, 17.628902, 16.095713>,  <18.482880, 17.580605, 16.025118>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.707121, 17.628902, 16.095713>,  <19.080854, 17.709398, 16.213369>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.707121, 17.628902, 16.095713> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273411, -0.124683, 0.953782,
		-0.228613, 0.971574, 0.061475,
		-0.934335, -0.201240, -0.294143,
		18.426821, 17.568531, 16.007469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.652128, 18.093002, 16.575129>,  <19.080854, 17.709398, 16.213369>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.652128, 18.093002, 16.575129> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.397987, 17.809088, 16.453451>,  <18.245502, 17.638739, 16.380444>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.397987, 17.809088, 16.453451>,  <18.652128, 18.093002, 16.575129>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.397987, 17.809088, 16.453451> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237767, -0.194977, 0.951552,
		-0.734709, 0.676896, -0.044885,
		-0.635350, -0.709786, -0.304195,
		18.207382, 17.596151, 16.362192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.108850, 18.234016, 16.884903>,  <18.652128, 18.093002, 16.575129>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.108850, 18.234016, 16.884903> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.051456, 17.845997, 16.806505>,  <18.017019, 17.613184, 16.759466>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.051456, 17.845997, 16.806505>,  <18.108850, 18.234016, 16.884903>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.051456, 17.845997, 16.806505> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276987, -0.150765, 0.948972,
		-0.950100, 0.190451, -0.247059,
		-0.143485, -0.970051, -0.195994,
		18.008411, 17.554981, 16.747707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.426563, 18.086590, 17.136400>,  <18.108850, 18.234016, 16.884903>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.426563, 18.086590, 17.136400> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.607029, 17.729635, 17.132530>,  <17.715309, 17.515463, 17.130209>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.607029, 17.729635, 17.132530>,  <17.426563, 18.086590, 17.136400>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.607029, 17.729635, 17.132530> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291899, -0.157803, 0.943342,
		-0.843354, -0.422778, -0.331682,
		0.451165, -0.892388, -0.009675,
		17.742378, 17.461918, 17.129627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.031569, 17.706018, 17.631802>,  <17.426563, 18.086590, 17.136400>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.031569, 17.706018, 17.631802> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.341660, 17.457264, 17.587473>,  <17.527714, 17.308012, 17.560877>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.341660, 17.457264, 17.587473>,  <17.031569, 17.706018, 17.631802>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.341660, 17.457264, 17.587473> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227087, -0.438077, 0.869782,
		-0.589452, -0.649113, -0.480831,
		0.775227, -0.621885, -0.110820,
		17.574228, 17.270699, 17.554228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.768164, 17.005022, 17.813906>,  <17.031569, 17.706018, 17.631802>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.768164, 17.005022, 17.813906> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.166267, 17.012180, 17.852148>,  <17.405128, 17.016476, 17.875093>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.166267, 17.012180, 17.852148>,  <16.768164, 17.005022, 17.813906>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.166267, 17.012180, 17.852148> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077614, -0.446306, 0.891508,
		0.058624, -0.894702, -0.442801,
		0.995258, 0.017897, 0.095605,
		17.464846, 17.017550, 17.880829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.868639, 16.428995, 18.286139>,  <16.768164, 17.005022, 17.813906>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.868639, 16.428995, 18.286139> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.187656, 16.669725, 18.302788>,  <17.379066, 16.814163, 18.312778>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.187656, 16.669725, 18.302788>,  <16.868639, 16.428995, 18.286139>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.187656, 16.669725, 18.302788> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026763, -0.104228, 0.994193,
		0.602670, -0.791797, -0.099233,
		0.797542, 0.601826, 0.041624,
		17.426920, 16.850273, 18.315275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.181519, 16.185778, 18.800388>,  <16.868639, 16.428995, 18.286139>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.181519, 16.185778, 18.800388> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.329901, 16.555685, 18.766464>,  <17.418930, 16.777630, 18.746109>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.329901, 16.555685, 18.766464>,  <17.181519, 16.185778, 18.800388>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.329901, 16.555685, 18.766464> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113832, 0.135919, 0.984159,
		0.921647, -0.355426, 0.155688,
		0.370957, 0.924769, -0.084811,
		17.441187, 16.833117, 18.741020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.720758, 16.283545, 19.362097>,  <17.181519, 16.185778, 18.800388>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.720758, 16.283545, 19.362097> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.628603, 16.660288, 19.264263>,  <17.573309, 16.886333, 19.205563>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.628603, 16.660288, 19.264263>,  <17.720758, 16.283545, 19.362097>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.628603, 16.660288, 19.264263> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222048, 0.193830, 0.955575,
		0.947426, 0.274463, 0.164481,
		-0.230389, 0.941860, -0.244584,
		17.559486, 16.942846, 19.190887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.684898, 15.608598, 19.464241>,  <17.720758, 16.283545, 19.362097>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.684898, 15.608598, 19.464241> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.388876, 15.405629, 19.640806>,  <17.211264, 15.283848, 19.746744>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.388876, 15.405629, 19.640806>,  <17.684898, 15.608598, 19.464241>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.388876, 15.405629, 19.640806> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050827, -0.612253, -0.789026,
		0.670624, -0.606358, 0.427310,
		-0.740054, -0.507421, 0.441411,
		17.166861, 15.253403, 19.773230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.803915, 14.950694, 19.190508>,  <17.684898, 15.608598, 19.464241>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.803915, 14.950694, 19.190508> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.425562, 14.950392, 19.320314>,  <17.198551, 14.950211, 19.398197>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.425562, 14.950392, 19.320314>,  <17.803915, 14.950694, 19.190508>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.425562, 14.950392, 19.320314> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251736, -0.629352, -0.735218,
		0.204790, -0.777120, 0.595101,
		-0.945880, -0.000756, 0.324514,
		17.141798, 14.950165, 19.417669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.553019, 14.323940, 19.185493>,  <17.803915, 14.950694, 19.190508>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.553019, 14.323940, 19.185493> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.198257, 14.508520, 19.176870>,  <16.985401, 14.619268, 19.171698>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.198257, 14.508520, 19.176870>,  <17.553019, 14.323940, 19.185493>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.198257, 14.508520, 19.176870> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346430, -0.695256, -0.629767,
		-0.305593, -0.551075, 0.776485,
		-0.886904, 0.461450, -0.021557,
		16.932186, 14.646955, 19.170403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.000673, 13.743733, 19.194036>,  <17.553019, 14.323940, 19.185493>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.000673, 13.743733, 19.194036> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.842155, 14.063533, 19.013479>,  <16.747046, 14.255412, 18.905146>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.842155, 14.063533, 19.013479>,  <17.000673, 13.743733, 19.194036>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.842155, 14.063533, 19.013479> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396477, -0.592463, -0.701280,
		-0.828104, -0.098948, 0.551772,
		-0.396295, 0.799498, -0.451391,
		16.723267, 14.303382, 18.878061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.265549, 13.558703, 19.124575>,  <17.000673, 13.743733, 19.194036>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.265549, 13.558703, 19.124575> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.318995, 13.863121, 18.870659>,  <16.351063, 14.045772, 18.718309>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.318995, 13.863121, 18.870659>,  <16.265549, 13.558703, 19.124575>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.318995, 13.863121, 18.870659> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531396, -0.485649, -0.694092,
		-0.836519, 0.430068, 0.339524,
		0.133617, 0.761043, -0.634791,
		16.359079, 14.091434, 18.680222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.628941, 13.509816, 18.665937>,  <16.265549, 13.558703, 19.124575>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.628941, 13.509816, 18.665937> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.869802, 13.763272, 18.471653>,  <16.014318, 13.915346, 18.355083>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.869802, 13.763272, 18.471653>,  <15.628941, 13.509816, 18.665937>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.869802, 13.763272, 18.471653> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464542, -0.216711, -0.858625,
		-0.649318, 0.742655, 0.163860,
		0.602152, 0.633641, -0.485709,
		16.050447, 13.953364, 18.325941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.159314, 13.980091, 18.309399>,  <15.628941, 13.509816, 18.665937>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.159314, 13.980091, 18.309399> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.507246, 13.993367, 18.112505>,  <15.716005, 14.001333, 17.994368>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.507246, 13.993367, 18.112505>,  <15.159314, 13.980091, 18.309399>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.507246, 13.993367, 18.112505> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491771, -0.021534, -0.870458,
		-0.039491, 0.999217, -0.002409,
		0.869829, 0.033190, -0.492236,
		15.768194, 14.003325, 17.964834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.116028, 14.556908, 17.805023>,  <15.159314, 13.980091, 18.309399>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.116028, 14.556908, 17.805023> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.416532, 14.322004, 17.684532>,  <15.596834, 14.181063, 17.612238>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.416532, 14.322004, 17.684532>,  <15.116028, 14.556908, 17.805023>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.416532, 14.322004, 17.684532> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355485, 0.024507, -0.934361,
		0.556093, 0.809028, -0.190351,
		0.751259, -0.587258, -0.301225,
		15.641910, 14.145826, 17.594164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.341211, 14.792470, 17.092058>,  <15.116028, 14.556908, 17.805023>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.341211, 14.792470, 17.092058> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.491036, 14.421706, 17.082758>,  <15.580932, 14.199247, 17.077177>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.491036, 14.421706, 17.082758>,  <15.341211, 14.792470, 17.092058>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.491036, 14.421706, 17.082758> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461666, -0.164694, -0.871631,
		0.804094, 0.337215, -0.489611,
		0.374563, -0.926910, -0.023251,
		15.603405, 14.143633, 17.075783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.339738, 14.752961, 16.380888>,  <15.341211, 14.792470, 17.092058>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.339738, 14.752961, 16.380888> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.435403, 14.380865, 16.492208>,  <15.492802, 14.157607, 16.559002>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.435403, 14.380865, 16.492208>,  <15.339738, 14.752961, 16.380888>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.435403, 14.380865, 16.492208> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235330, -0.333608, -0.912867,
		0.942030, 0.152831, -0.298700,
		0.239163, -0.930241, 0.278303,
		15.507152, 14.101792, 16.575699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.015869, 14.401659, 16.080629>,  <15.339738, 14.752961, 16.380888>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.015869, 14.401659, 16.080629> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.730420, 14.133426, 16.161680>,  <15.559151, 13.972486, 16.210310>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.730420, 14.133426, 16.161680>,  <16.015869, 14.401659, 16.080629>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.730420, 14.133426, 16.161680> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204527, -0.077201, -0.975812,
		0.670007, -0.737805, -0.082060,
		-0.713624, -0.670584, 0.202626,
		15.516333, 13.932250, 16.222467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.034914, 13.710120, 15.755488>,  <16.015869, 14.401659, 16.080629>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.034914, 13.710120, 15.755488> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.646545, 13.762300, 15.835783>,  <15.413525, 13.793608, 15.883960>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.646545, 13.762300, 15.835783>,  <16.034914, 13.710120, 15.755488>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.646545, 13.762300, 15.835783> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223490, -0.193313, -0.955344,
		-0.085817, -0.972427, 0.216846,
		-0.970921, 0.130448, 0.200738,
		15.355269, 13.801435, 15.896005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<15.748011, 17.308510, 24.561378> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.125807, 17.356464, 24.683733>,  <16.352484, 17.385237, 24.757147>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.125807, 17.356464, 24.683733>,  <15.748011, 17.308510, 24.561378>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.125807, 17.356464, 24.683733> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315812, -0.587950, -0.744700,
		0.090567, 0.799964, -0.593174,
		0.944489, 0.119886, 0.305887,
		16.409153, 17.392429, 24.775499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.096682, 17.504694, 23.946236>,  <15.748011, 17.308510, 24.561378>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.096682, 17.504694, 23.946236> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.396055, 17.361155, 24.169331>,  <16.575680, 17.275030, 24.303188>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.396055, 17.361155, 24.169331>,  <16.096682, 17.504694, 23.946236>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.396055, 17.361155, 24.169331> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355927, -0.492268, -0.794347,
		0.559607, 0.793032, -0.240707,
		0.748435, -0.358848, 0.557739,
		16.620586, 17.253500, 24.336653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.768177, 17.711279, 23.655518>,  <16.096682, 17.504694, 23.946236>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.768177, 17.711279, 23.655518> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.801329, 17.372761, 23.866009>,  <16.821218, 17.169651, 23.992304>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.801329, 17.372761, 23.866009>,  <16.768177, 17.711279, 23.655518>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.801329, 17.372761, 23.866009> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499830, -0.421526, -0.756628,
		0.862149, 0.325733, 0.388068,
		0.082878, -0.846295, 0.526229,
		16.826193, 17.118872, 24.023878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.358194, 17.545444, 23.424620>,  <16.768177, 17.711279, 23.655518>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.358194, 17.545444, 23.424620> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.257900, 17.207333, 23.613356>,  <17.197723, 17.004465, 23.726597>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.257900, 17.207333, 23.613356>,  <17.358194, 17.545444, 23.424620>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.257900, 17.207333, 23.613356> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528527, -0.527884, -0.664829,
		0.811044, 0.082684, 0.579113,
		-0.250733, -0.845282, 0.471838,
		17.182680, 16.953749, 23.754908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.837090, 17.093969, 23.343884>,  <17.358194, 17.545444, 23.424620>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.837090, 17.093969, 23.343884> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.548481, 16.832087, 23.434008>,  <17.375315, 16.674957, 23.488083>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.548481, 16.832087, 23.434008>,  <17.837090, 17.093969, 23.343884>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.548481, 16.832087, 23.434008> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279372, -0.573028, -0.770448,
		0.633527, -0.492949, 0.596359,
		-0.721522, -0.654706, 0.225313,
		17.332024, 16.635675, 23.501602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.140442, 16.479828, 23.344751>,  <17.837090, 17.093969, 23.343884>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.140442, 16.479828, 23.344751> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.755465, 16.373953, 23.320599>,  <17.524479, 16.310429, 23.306107>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.755465, 16.373953, 23.320599>,  <18.140442, 16.479828, 23.344751>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.755465, 16.373953, 23.320599> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225527, -0.655660, -0.720588,
		0.151140, -0.707142, 0.690729,
		-0.962442, -0.264688, -0.060383,
		17.466732, 16.294546, 23.302485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.103159, 15.775066, 23.229639>,  <18.140442, 16.479828, 23.344751>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.103159, 15.775066, 23.229639> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.748760, 15.913039, 23.105680>,  <17.536121, 15.995823, 23.031305>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.748760, 15.913039, 23.105680>,  <18.103159, 15.775066, 23.229639>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.748760, 15.913039, 23.105680> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045683, -0.600132, -0.798595,
		-0.461438, -0.721709, 0.515956,
		-0.885995, 0.344932, -0.309894,
		17.482962, 16.016520, 23.012712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.771809, 15.112946, 22.965244>,  <18.103159, 15.775066, 23.229639>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.771809, 15.112946, 22.965244> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.614031, 15.434795, 22.787710>,  <17.519363, 15.627905, 22.681189>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.614031, 15.434795, 22.787710>,  <17.771809, 15.112946, 22.965244>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.614031, 15.434795, 22.787710> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046136, -0.465050, -0.884082,
		-0.917760, -0.369199, 0.146314,
		-0.394446, 0.804625, -0.443838,
		17.495697, 15.676183, 22.654558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.209503, 14.856244, 22.469007>,  <17.771809, 15.112946, 22.965244>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.209503, 14.856244, 22.469007> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.257797, 15.227235, 22.327469>,  <17.286774, 15.449829, 22.242546>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.257797, 15.227235, 22.327469>,  <17.209503, 14.856244, 22.469007>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.257797, 15.227235, 22.327469> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396312, -0.281781, -0.873805,
		-0.910143, 0.245733, 0.333550,
		0.120734, 0.927478, -0.353848,
		17.294018, 15.505478, 22.221315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.734900, 14.805721, 21.937609>,  <17.209503, 14.856244, 22.469007>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.734900, 14.805721, 21.937609> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.934292, 15.143572, 21.859510>,  <17.053928, 15.346282, 21.812651>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.934292, 15.143572, 21.859510>,  <16.734900, 14.805721, 21.937609>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.934292, 15.143572, 21.859510> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305289, -0.039758, -0.951429,
		-0.811365, 0.533878, 0.238037,
		0.498483, 0.844626, -0.195246,
		17.083838, 15.396960, 21.800938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.301004, 15.352616, 21.636953>,  <16.734900, 14.805721, 21.937609>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.301004, 15.352616, 21.636953> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.680241, 15.396435, 21.517536>,  <16.907782, 15.422726, 21.445887>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.680241, 15.396435, 21.517536>,  <16.301004, 15.352616, 21.636953>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.680241, 15.396435, 21.517536> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304226, 0.039091, -0.951797,
		-0.092596, 0.993212, 0.070389,
		0.948089, 0.109547, -0.298541,
		16.964668, 15.429299, 21.427975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.331116, 15.915862, 21.126896>,  <16.301004, 15.352616, 21.636953>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.331116, 15.915862, 21.126896> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.658010, 15.694494, 21.062590>,  <16.854149, 15.561673, 21.024006>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.658010, 15.694494, 21.062590>,  <16.331116, 15.915862, 21.126896>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.658010, 15.694494, 21.062590> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226227, -0.051502, -0.972712,
		0.530039, 0.831308, -0.167288,
		0.817239, -0.553420, -0.160767,
		16.903183, 15.528468, 21.014360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.638294, 16.172140, 20.538952>,  <16.331116, 15.915862, 21.126896>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.638294, 16.172140, 20.538952> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.787823, 15.803777, 20.583109>,  <16.877541, 15.582759, 20.609604>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.787823, 15.803777, 20.583109>,  <16.638294, 16.172140, 20.538952>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.787823, 15.803777, 20.583109> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013273, -0.124322, -0.992153,
		0.927406, 0.369423, -0.058698,
		0.373821, -0.920908, 0.110394,
		16.899969, 15.527504, 20.616226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.228043, 16.206812, 20.119190>,  <16.638294, 16.172140, 20.538952>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.228043, 16.206812, 20.119190> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.124933, 15.824841, 20.178061>,  <17.063066, 15.595657, 20.213383>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.124933, 15.824841, 20.178061>,  <17.228043, 16.206812, 20.119190>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.124933, 15.824841, 20.178061> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100431, -0.125015, -0.987059,
		0.960971, -0.269220, -0.063679,
		-0.257775, -0.954930, 0.147174,
		17.047600, 15.538362, 20.222212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.832092, 16.660288, 19.962379>,  <17.228043, 16.206812, 20.119190>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.832092, 16.660288, 19.962379> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.647112, 16.946695, 19.753208>,  <17.536123, 17.118540, 19.627707>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.647112, 16.946695, 19.753208>,  <17.832092, 16.660288, 19.962379>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.647112, 16.946695, 19.753208> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162450, 0.511374, 0.843864,
		0.871635, 0.475197, -0.120169,
		-0.462453, 0.716020, -0.522927,
		17.508375, 17.161501, 19.596331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.120287, 17.228277, 20.133144>,  <17.832092, 16.660288, 19.962379>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.120287, 17.228277, 20.133144> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.772602, 17.365580, 19.990797>,  <17.563992, 17.447962, 19.905388>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.772602, 17.365580, 19.990797>,  <18.120287, 17.228277, 20.133144>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.772602, 17.365580, 19.990797> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049634, 0.655531, 0.753535,
		0.491939, 0.672646, -0.552760,
		-0.869214, 0.343258, -0.355868,
		17.511839, 17.468557, 19.884037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.128916, 17.952112, 20.367908>,  <18.120287, 17.228277, 20.133144>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.128916, 17.952112, 20.367908> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.750330, 17.873171, 20.265724>,  <17.523178, 17.825806, 20.204414>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.750330, 17.873171, 20.265724>,  <18.128916, 17.952112, 20.367908>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.750330, 17.873171, 20.265724> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321114, 0.656654, 0.682416,
		0.033073, 0.727913, -0.684871,
		-0.946463, -0.197353, -0.255460,
		17.466391, 17.813965, 20.189087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.836689, 18.563229, 20.275772>,  <18.128916, 17.952112, 20.367908>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.836689, 18.563229, 20.275772> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.516565, 18.330109, 20.332130>,  <17.324492, 18.190237, 20.365946>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.516565, 18.330109, 20.332130>,  <17.836689, 18.563229, 20.275772>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.516565, 18.330109, 20.332130> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376913, 0.671753, 0.637719,
		-0.466308, 0.457267, -0.757274,
		-0.800308, -0.582800, 0.140894,
		17.276472, 18.155270, 20.374399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.273355, 18.987682, 20.212034>,  <17.836689, 18.563229, 20.275772>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.273355, 18.987682, 20.212034> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.165485, 18.672775, 20.433838>,  <17.100763, 18.483829, 20.566919>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.165485, 18.672775, 20.433838>,  <17.273355, 18.987682, 20.212034>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.165485, 18.672775, 20.433838> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450230, 0.612110, 0.650087,
		-0.851215, -0.074343, -0.519525,
		-0.269677, -0.787270, 0.554509,
		17.084581, 18.436594, 20.600191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.651745, 19.212605, 20.418077>,  <17.273355, 18.987682, 20.212034>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.651745, 19.212605, 20.418077> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.735231, 18.911997, 20.668407>,  <16.785324, 18.731632, 20.818605>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.735231, 18.911997, 20.668407>,  <16.651745, 19.212605, 20.418077>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.735231, 18.911997, 20.668407> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150017, 0.607743, 0.779836,
		-0.966401, -0.256651, 0.014107,
		0.208718, -0.751518, 0.625826,
		16.797848, 18.686541, 20.856155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.113340, 19.220943, 20.904953>,  <16.651745, 19.212605, 20.418077>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.113340, 19.220943, 20.904953> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.424604, 19.035234, 21.074148>,  <16.611362, 18.923809, 21.175665>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.424604, 19.035234, 21.074148>,  <16.113340, 19.220943, 20.904953>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.424604, 19.035234, 21.074148> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148725, 0.518111, 0.842284,
		-0.610203, -0.718341, 0.334125,
		0.778160, -0.464271, 0.422988,
		16.658052, 18.895952, 21.201044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.921756, 19.007059, 21.584539>,  <16.113340, 19.220943, 20.904953>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.921756, 19.007059, 21.584539> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.319605, 19.048033, 21.590654>,  <16.558313, 19.072617, 21.594322>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.319605, 19.048033, 21.590654>,  <15.921756, 19.007059, 21.584539>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.319605, 19.048033, 21.590654> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059616, 0.445556, 0.893267,
		0.084691, -0.889375, 0.449266,
		0.994622, 0.102435, 0.015287,
		16.617992, 19.078764, 21.595240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.112041, 18.981867, 22.261063>,  <15.921756, 19.007059, 21.584539>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.112041, 18.981867, 22.261063> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.451010, 19.124727, 22.103930>,  <16.654390, 19.210443, 22.009649>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.451010, 19.124727, 22.103930>,  <16.112041, 18.981867, 22.261063>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.451010, 19.124727, 22.103930> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091639, 0.630410, 0.770834,
		0.522951, -0.689221, 0.501494,
		0.847422, 0.357152, -0.392834,
		16.705236, 19.231873, 21.986080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.628178, 18.915405, 22.796183>,  <16.112041, 18.981867, 22.261063>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.628178, 18.915405, 22.796183> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.760057, 19.201212, 22.549358>,  <16.839186, 19.372696, 22.401264>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.760057, 19.201212, 22.549358>,  <16.628178, 18.915405, 22.796183>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.760057, 19.201212, 22.549358> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039501, 0.642595, 0.765187,
		0.943259, -0.276656, 0.183638,
		0.329699, 0.714516, -0.617062,
		16.858967, 19.415567, 22.364239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.239729, 19.190346, 23.204025>,  <16.628178, 18.915405, 22.796183>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.239729, 19.190346, 23.204025> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.144337, 19.459755, 22.924170>,  <17.087101, 19.621401, 22.756256>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.144337, 19.459755, 22.924170>,  <17.239729, 19.190346, 23.204025>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.144337, 19.459755, 22.924170> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075466, 0.705393, 0.704788,
		0.968211, 0.220876, -0.117393,
		-0.238479, 0.673524, -0.699638,
		17.072794, 19.661812, 22.714277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.524382, 19.833305, 23.431557>,  <17.239729, 19.190346, 23.204025>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.524382, 19.833305, 23.431557> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.246099, 19.931948, 23.161690>,  <17.079130, 19.991133, 22.999769>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.246099, 19.931948, 23.161690>,  <17.524382, 19.833305, 23.431557>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.246099, 19.931948, 23.161690> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258394, 0.790438, 0.555374,
		0.670243, 0.560708, -0.486191,
		-0.695706, 0.246606, -0.674669,
		17.037388, 20.005930, 22.959290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.549810, 20.520227, 23.444469>,  <17.524382, 19.833305, 23.431557>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.549810, 20.520227, 23.444469> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.188759, 20.425920, 23.300426>,  <16.972128, 20.369337, 23.214001>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.188759, 20.425920, 23.300426>,  <17.549810, 20.520227, 23.444469>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.188759, 20.425920, 23.300426> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412171, 0.714506, 0.565329,
		0.124014, 0.658707, -0.742109,
		-0.902627, -0.235767, -0.360108,
		16.917971, 20.355190, 23.192394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.250072, 21.144112, 23.510015>,  <17.549810, 20.520227, 23.444469>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.250072, 21.144112, 23.510015> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.950226, 20.880133, 23.489836>,  <16.770319, 20.721745, 23.477728>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.950226, 20.880133, 23.489836>,  <17.250072, 21.144112, 23.510015>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.950226, 20.880133, 23.489836> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547373, 0.575281, 0.607811,
		-0.372101, 0.483240, -0.792478,
		-0.749615, -0.659948, -0.050450,
		16.725342, 20.682148, 23.474701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<9.771608, 17.542830, 24.235800> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.171101, 17.562931, 24.234446>,  <10.410796, 17.574993, 24.233633>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.171101, 17.562931, 24.234446>,  <9.771608, 17.542830, 24.235800>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.171101, 17.562931, 24.234446> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003063, -0.127649, -0.991815,
		-0.050276, 0.990545, -0.127641,
		0.998731, 0.050256, -0.003384,
		10.470720, 17.578009, 24.233431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.937429, 18.083460, 23.783920>,  <9.771608, 17.542830, 24.235800>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.937429, 18.083460, 23.783920> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.258222, 17.847101, 23.818941>,  <10.450697, 17.705286, 23.839954>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.258222, 17.847101, 23.818941>,  <9.937429, 18.083460, 23.783920>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.258222, 17.847101, 23.818941> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104862, -0.005031, -0.994474,
		0.588073, 0.806731, 0.057928,
		0.801981, -0.590898, 0.087554,
		10.498816, 17.669832, 23.845207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.531289, 18.359718, 23.348322>,  <9.937429, 18.083460, 23.783920>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.531289, 18.359718, 23.348322> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.631320, 17.976933, 23.407217>,  <10.691339, 17.747261, 23.442554>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.631320, 17.976933, 23.407217>,  <10.531289, 18.359718, 23.348322>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.631320, 17.976933, 23.407217> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132465, -0.116823, -0.984279,
		0.959122, 0.265649, 0.097549,
		0.250077, -0.956966, 0.147237,
		10.706343, 17.689842, 23.451387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.962069, 18.250900, 22.762985>,  <10.531289, 18.359718, 23.348322>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.962069, 18.250900, 22.762985> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.868542, 17.888124, 22.903151>,  <10.812426, 17.670458, 22.987249>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.868542, 17.888124, 22.903151>,  <10.962069, 18.250900, 22.762985>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.868542, 17.888124, 22.903151> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160822, -0.391513, -0.906010,
		0.958888, -0.155486, 0.237398,
		-0.233816, -0.906941, 0.350411,
		10.798397, 17.616043, 23.008274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.402472, 17.689919, 22.424726>,  <10.962069, 18.250900, 22.762985>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.402472, 17.689919, 22.424726> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.066764, 17.508921, 22.545305>,  <10.865338, 17.400322, 22.617653>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.066764, 17.508921, 22.545305>,  <11.402472, 17.689919, 22.424726>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.066764, 17.508921, 22.545305> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049124, -0.489050, -0.870872,
		0.541488, -0.745706, 0.388217,
		-0.839272, -0.452496, 0.301447,
		10.814982, 17.373173, 22.635738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.498967, 16.989630, 22.231627>,  <11.402472, 17.689919, 22.424726>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.498967, 16.989630, 22.231627> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.107930, 16.983852, 22.315632>,  <10.873308, 16.980387, 22.366035>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.107930, 16.983852, 22.315632>,  <11.498967, 16.989630, 22.231627>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.107930, 16.983852, 22.315632> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156494, -0.617408, -0.770920,
		0.140800, -0.786511, 0.601312,
		-0.977591, -0.014444, 0.210015,
		10.814652, 16.979519, 22.378637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.310231, 16.270275, 22.116503>,  <11.498967, 16.989630, 22.231627>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.310231, 16.270275, 22.116503> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.975144, 16.488707, 22.118553>,  <10.774092, 16.619766, 22.119783>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.975144, 16.488707, 22.118553>,  <11.310231, 16.270275, 22.116503>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.975144, 16.488707, 22.118553> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362748, -0.549413, -0.752701,
		-0.408218, -0.632411, 0.658342,
		-0.837718, 0.546079, 0.005126,
		10.723829, 16.652531, 22.120090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.793791, 15.876726, 22.145033>,  <11.310231, 16.270275, 22.116503>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.793791, 15.876726, 22.145033> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.631371, 16.197811, 21.970320>,  <10.533920, 16.390461, 21.865492>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.631371, 16.197811, 21.970320>,  <10.793791, 15.876726, 22.145033>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.631371, 16.197811, 21.970320> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342700, -0.576829, -0.741501,
		-0.847161, -0.151399, 0.509309,
		-0.406048, 0.802711, -0.436783,
		10.509557, 16.438625, 21.839285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.233609, 15.618665, 21.679516>,  <10.793791, 15.876726, 22.145033>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.233609, 15.618665, 21.679516> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.328968, 15.982957, 21.544615>,  <10.386184, 16.201532, 21.463675>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.328968, 15.982957, 21.544615>,  <10.233609, 15.618665, 21.679516>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.328968, 15.982957, 21.544615> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068801, -0.330553, -0.941276,
		-0.968728, 0.247601, -0.016144,
		0.238397, 0.910730, -0.337251,
		10.400487, 16.256176, 21.443439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.863044, 15.724716, 21.038946>,  <10.233609, 15.618665, 21.679516>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.863044, 15.724716, 21.038946> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.179209, 15.968854, 21.018059>,  <10.368908, 16.115337, 21.005527>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.179209, 15.968854, 21.018059>,  <9.863044, 15.724716, 21.038946>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.179209, 15.968854, 21.018059> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124681, -0.243749, -0.961790,
		-0.599752, 0.753701, -0.268761,
		0.790413, 0.610345, -0.052217,
		10.416332, 16.151957, 21.002394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.749504, 16.140371, 20.460907>,  <9.863044, 15.724716, 21.038946>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.749504, 16.140371, 20.460907> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.144794, 16.164314, 20.517241>,  <10.381967, 16.178680, 20.551041>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.144794, 16.164314, 20.517241>,  <9.749504, 16.140371, 20.460907>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.144794, 16.164314, 20.517241> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147456, -0.126474, -0.980949,
		-0.040906, 0.990162, -0.133811,
		0.988222, 0.059858, 0.140832,
		10.441260, 16.182272, 20.559490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.849192, 16.632259, 20.012268>,  <9.749504, 16.140371, 20.460907>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.849192, 16.632259, 20.012268> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.192427, 16.437243, 20.076750>,  <10.398368, 16.320232, 20.115438>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.192427, 16.437243, 20.076750>,  <9.849192, 16.632259, 20.012268>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.192427, 16.437243, 20.076750> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225698, 0.076107, -0.971220,
		0.461244, 0.869775, 0.175344,
		0.858088, -0.487544, 0.161203,
		10.449853, 16.290979, 20.125111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.539002, 16.984709, 19.704336>,  <9.849192, 16.632259, 20.012268>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.539002, 16.984709, 19.704336> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.674652, 16.611679, 19.753819>,  <10.756042, 16.387861, 19.783508>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.674652, 16.611679, 19.753819>,  <10.539002, 16.984709, 19.704336>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.674652, 16.611679, 19.753819> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488092, 0.062008, -0.870587,
		0.804215, 0.355617, 0.476209,
		0.339124, -0.932573, 0.123706,
		10.776389, 16.331907, 19.790930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.204234, 17.024189, 19.442604>,  <10.539002, 16.984709, 19.704336>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.204234, 17.024189, 19.442604> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.123970, 16.633186, 19.468569>,  <11.075811, 16.398584, 19.484148>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.123970, 16.633186, 19.468569>,  <11.204234, 17.024189, 19.442604>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.123970, 16.633186, 19.468569> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439734, -0.149080, -0.885669,
		0.875425, -0.149176, 0.459758,
		-0.200661, -0.977508, 0.064911,
		11.063772, 16.339933, 19.488043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.821541, 17.389393, 19.561678>,  <11.204234, 17.024189, 19.442604>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.821541, 17.389393, 19.561678> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.904791, 17.693830, 19.315941>,  <11.954741, 17.876493, 19.168499>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.904791, 17.693830, 19.315941>,  <11.821541, 17.389393, 19.561678>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.904791, 17.693830, 19.315941> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055649, 0.617866, 0.784311,
		0.976518, -0.197422, 0.086239,
		0.208124, 0.761095, -0.614344,
		11.967228, 17.922159, 19.131638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.515576, 17.786545, 19.750235>,  <11.821541, 17.389393, 19.561678>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.515576, 17.786545, 19.750235> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.311652, 18.070713, 19.556166>,  <12.189298, 18.241215, 19.439724>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.311652, 18.070713, 19.556166>,  <12.515576, 17.786545, 19.750235>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.311652, 18.070713, 19.556166> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005170, 0.561427, 0.827510,
		0.860271, 0.424382, -0.282549,
		-0.509811, 0.710422, -0.485173,
		12.158709, 18.283840, 19.410614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.886073, 18.528318, 19.878811>,  <12.515576, 17.786545, 19.750235>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.886073, 18.528318, 19.878811> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.508706, 18.607590, 19.772459>,  <12.282286, 18.655151, 19.708649>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.508706, 18.607590, 19.772459>,  <12.886073, 18.528318, 19.878811>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.508706, 18.607590, 19.772459> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118069, 0.548496, 0.827775,
		0.309879, 0.812329, -0.494062,
		-0.943417, 0.198177, -0.265878,
		12.225681, 18.667042, 19.692696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.795558, 19.312487, 19.735584>,  <12.886073, 18.528318, 19.878811>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.795558, 19.312487, 19.735584> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.450341, 19.140232, 19.841192>,  <12.243211, 19.036879, 19.904558>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.450341, 19.140232, 19.841192>,  <12.795558, 19.312487, 19.735584>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.450341, 19.140232, 19.841192> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106394, 0.665928, 0.738390,
		-0.493799, 0.609172, -0.620542,
		-0.863043, -0.430639, 0.264022,
		12.191428, 19.011040, 19.920399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.490003, 19.909103, 19.938005>,  <12.795558, 19.312487, 19.735584>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.490003, 19.909103, 19.938005> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.264358, 19.613127, 20.084572>,  <12.128970, 19.435541, 20.172512>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.264358, 19.613127, 20.084572>,  <12.490003, 19.909103, 19.938005>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.264358, 19.613127, 20.084572> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151261, 0.528864, 0.835119,
		-0.811724, 0.415677, -0.410264,
		-0.564114, -0.739943, 0.366416,
		12.095123, 19.391144, 20.194496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.872918, 20.198332, 20.355961>,  <12.490003, 19.909103, 19.938005>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.872918, 20.198332, 20.355961> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.890621, 19.818228, 20.479280>,  <11.901243, 19.590166, 20.553272>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.890621, 19.818228, 20.479280>,  <11.872918, 20.198332, 20.355961>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.890621, 19.818228, 20.479280> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123310, 0.301046, 0.945604,
		-0.991381, -0.079866, -0.103852,
		0.044258, -0.950259, 0.308300,
		11.903898, 19.533150, 20.571770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.324369, 20.150843, 20.806520>,  <11.872918, 20.198332, 20.355961>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.324369, 20.150843, 20.806520> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.600429, 19.875492, 20.895813>,  <11.766064, 19.710281, 20.949389>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.600429, 19.875492, 20.895813>,  <11.324369, 20.150843, 20.806520>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.600429, 19.875492, 20.895813> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142582, 0.173082, 0.974532,
		-0.709484, -0.704400, 0.021301,
		0.690147, -0.688378, 0.223234,
		11.807473, 19.668980, 20.962784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.112801, 19.962831, 21.471767>,  <11.324369, 20.150843, 20.806520>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.112801, 19.962831, 21.471767> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.473450, 19.791214, 21.449867>,  <11.689839, 19.688244, 21.436728>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.473450, 19.791214, 21.449867>,  <11.112801, 19.962831, 21.471767>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.473450, 19.791214, 21.449867> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102701, 0.089406, 0.990686,
		-0.420153, -0.898848, 0.124674,
		0.901623, -0.429044, -0.054749,
		11.743937, 19.662500, 21.433443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.171363, 19.510416, 21.970150>,  <11.112801, 19.962831, 21.471767>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.171363, 19.510416, 21.970150> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.557043, 19.564306, 21.878790>,  <11.788451, 19.596640, 21.823973>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.557043, 19.564306, 21.878790>,  <11.171363, 19.510416, 21.970150>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.557043, 19.564306, 21.878790> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237316, -0.054085, 0.969926,
		0.118322, -0.989406, -0.084121,
		0.964200, 0.134727, -0.228402,
		11.846303, 19.604725, 21.810268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.532138, 18.996719, 22.227764>,  <11.171363, 19.510416, 21.970150>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.532138, 18.996719, 22.227764> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.816195, 19.275261, 22.186213>,  <11.986629, 19.442385, 22.161282>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.816195, 19.275261, 22.186213>,  <11.532138, 18.996719, 22.227764>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.816195, 19.275261, 22.186213> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185643, -0.042875, 0.981681,
		0.679142, -0.716418, -0.159720,
		0.710143, 0.696352, -0.103880,
		12.029238, 19.484167, 22.155048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.058015, 18.698153, 22.517694>,  <11.532138, 18.996719, 22.227764>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.058015, 18.698153, 22.517694> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.119460, 19.093397, 22.520191>,  <12.156327, 19.330544, 22.521688>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.119460, 19.093397, 22.520191>,  <12.058015, 18.698153, 22.517694>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.119460, 19.093397, 22.520191> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180182, -0.034220, 0.983038,
		0.971565, -0.149882, -0.183296,
		0.153612, 0.988111, 0.006241,
		12.165544, 19.389832, 22.522064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.685122, 18.860920, 22.897842>,  <12.058015, 18.698153, 22.517694>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.685122, 18.860920, 22.897842> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.505895, 19.218489, 22.902569>,  <12.398358, 19.433029, 22.905405>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.505895, 19.218489, 22.902569>,  <12.685122, 18.860920, 22.897842>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.505895, 19.218489, 22.902569> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002349, -0.014394, 0.999894,
		0.893996, 0.447993, 0.008549,
		-0.448068, 0.893921, 0.011816,
		12.371474, 19.486666, 22.906113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.169327, 19.465008, 23.155796>,  <12.685122, 18.860920, 22.897842>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.169327, 19.465008, 23.155796> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.828150, 19.666742, 23.209663>,  <12.623444, 19.787783, 23.241983>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.828150, 19.666742, 23.209663>,  <13.169327, 19.465008, 23.155796>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.828150, 19.666742, 23.209663> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145516, -0.018035, 0.989192,
		0.501313, 0.863319, -0.058006,
		-0.852942, 0.504335, 0.134668,
		12.572268, 19.818043, 23.250063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.317720, 20.080923, 23.652800>,  <13.169327, 19.465008, 23.155796>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.317720, 20.080923, 23.652800> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.919709, 20.042395, 23.662947>,  <12.680902, 20.019278, 23.669035>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.919709, 20.042395, 23.662947>,  <13.317720, 20.080923, 23.652800>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.919709, 20.042395, 23.662947> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009972, 0.349745, 0.936792,
		-0.099105, 0.931880, -0.348967,
		-0.995027, -0.096320, 0.025368,
		12.621202, 20.013498, 23.670557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.058163, 20.856251, 23.574915>,  <13.317720, 20.080923, 23.652800>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.058163, 20.856251, 23.574915> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.228106, 21.213247, 23.514311>,  <13.330071, 21.427444, 23.477949>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.228106, 21.213247, 23.514311>,  <13.058163, 20.856251, 23.574915>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.228106, 21.213247, 23.514311> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236112, -0.270822, -0.933224,
		-0.873927, 0.360713, -0.325789,
		0.424857, 0.892492, -0.151510,
		13.355562, 21.480995, 23.468859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.832293, 21.106981, 22.909901>,  <13.058163, 20.856251, 23.574915>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.832293, 21.106981, 22.909901> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.171165, 21.310699, 22.970440>,  <13.374488, 21.432930, 23.006763>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.171165, 21.310699, 22.970440>,  <12.832293, 21.106981, 22.909901>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.171165, 21.310699, 22.970440> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295315, -0.214572, -0.930993,
		-0.441674, 0.833414, -0.332183,
		0.847180, 0.509294, 0.151348,
		13.425319, 21.463488, 23.015844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.817579, 21.460157, 22.380064>,  <12.832293, 21.106981, 22.909901>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.817579, 21.460157, 22.380064> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.197845, 21.435352, 22.501646>,  <13.426005, 21.420469, 22.574594>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.197845, 21.435352, 22.501646>,  <12.817579, 21.460157, 22.380064>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.197845, 21.435352, 22.501646> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309713, 0.133984, -0.941343,
		0.017649, 0.989042, 0.146580,
		0.950666, -0.062011, 0.303954,
		13.483046, 21.416748, 22.592833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.115729, 21.868614, 21.883848>,  <12.817579, 21.460157, 22.380064>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.115729, 21.868614, 21.883848> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.436097, 21.711533, 22.064651>,  <13.628318, 21.617285, 22.173134>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.436097, 21.711533, 22.064651>,  <13.115729, 21.868614, 21.883848>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.436097, 21.711533, 22.064651> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508235, 0.046728, -0.859950,
		0.316583, 0.918478, 0.237011,
		0.800920, -0.392702, 0.452009,
		13.676373, 21.593721, 22.200254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.734609, 22.289236, 21.632700>,  <13.115729, 21.868614, 21.883848>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.734609, 22.289236, 21.632700> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.834736, 21.912870, 21.723930>,  <13.894813, 21.687050, 21.778667>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.834736, 21.912870, 21.723930>,  <13.734609, 22.289236, 21.632700>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.834736, 21.912870, 21.723930> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574826, -0.045120, -0.817031,
		0.779048, 0.335621, 0.529568,
		0.250318, -0.940916, 0.228074,
		13.909831, 21.630596, 21.792353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.524504, 22.219254, 21.648226>,  <13.734609, 22.289236, 21.632700>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.524504, 22.219254, 21.648226> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.346977, 21.865940, 21.587776>,  <14.240461, 21.653952, 21.551506>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.346977, 21.865940, 21.587776>,  <14.524504, 22.219254, 21.648226>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.346977, 21.865940, 21.587776> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497013, -0.102300, -0.861692,
		0.745659, -0.457542, 0.484405,
		-0.443815, -0.883284, -0.151123,
		14.213833, 21.600956, 21.542439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.089816, 21.816444, 21.359943>,  <14.524504, 22.219254, 21.648226>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.089816, 21.816444, 21.359943> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.750341, 21.619585, 21.282463>,  <14.546657, 21.501469, 21.235975>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.750341, 21.619585, 21.282463>,  <15.089816, 21.816444, 21.359943>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.750341, 21.619585, 21.282463> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357681, -0.264285, -0.895666,
		0.389610, -0.829423, 0.400328,
		-0.848686, -0.492150, -0.193701,
		14.495735, 21.471941, 21.224352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.333255, 21.185902, 21.060148>,  <15.089816, 21.816444, 21.359943>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.333255, 21.185902, 21.060148> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.947287, 21.225588, 20.962919>,  <14.715706, 21.249399, 20.904581>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.947287, 21.225588, 20.962919>,  <15.333255, 21.185902, 21.060148>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.947287, 21.225588, 20.962919> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197534, -0.335521, -0.921090,
		-0.172945, -0.936793, 0.304152,
		-0.964920, 0.099217, -0.243075,
		14.657810, 21.255354, 20.889997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.256630, 20.573671, 20.667137>,  <15.333255, 21.185902, 21.060148>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.256630, 20.573671, 20.667137> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.958664, 20.818409, 20.560743>,  <14.779884, 20.965252, 20.496908>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.958664, 20.818409, 20.560743>,  <15.256630, 20.573671, 20.667137>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.958664, 20.818409, 20.560743> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170415, -0.210953, -0.962527,
		-0.645027, -0.762328, 0.052874,
		-0.744915, 0.611845, -0.265982,
		14.735189, 21.001963, 20.480949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.722114, 20.071453, 20.161196>,  <15.256630, 20.573671, 20.667137>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.722114, 20.071453, 20.161196> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.651737, 20.455492, 20.074240>,  <14.609511, 20.685915, 20.022066>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.651737, 20.455492, 20.074240>,  <14.722114, 20.071453, 20.161196>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.651737, 20.455492, 20.074240> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136297, -0.194947, -0.971298,
		-0.974919, -0.200521, -0.096559,
		-0.175942, 0.960097, -0.217388,
		14.598954, 20.743521, 20.009024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.352838, 20.065298, 19.449574>,  <14.722114, 20.071453, 20.161196>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.352838, 20.065298, 19.449574> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.491268, 20.432901, 19.525101>,  <14.574327, 20.653463, 19.570417>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.491268, 20.432901, 19.525101>,  <14.352838, 20.065298, 19.449574>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.491268, 20.432901, 19.525101> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282605, 0.089795, -0.955024,
		-0.894631, 0.383872, -0.228641,
		0.346077, 0.919010, 0.188818,
		14.595091, 20.708605, 19.581745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.210448, 20.326342, 18.848919>,  <14.352838, 20.065298, 19.449574>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.210448, 20.326342, 18.848919> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.495430, 20.539236, 19.031845>,  <14.666419, 20.666973, 19.141600>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.495430, 20.539236, 19.031845>,  <14.210448, 20.326342, 18.848919>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.495430, 20.539236, 19.031845> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477785, 0.109376, -0.871641,
		-0.513937, 0.839501, -0.176368,
		0.712454, 0.532235, 0.457313,
		14.709167, 20.698906, 19.169039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.219864, 20.914013, 18.417496>,  <14.210448, 20.326342, 18.848919>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.219864, 20.914013, 18.417496> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.554971, 20.850252, 18.626392>,  <14.756035, 20.811996, 18.751730>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.554971, 20.850252, 18.626392>,  <14.219864, 20.914013, 18.417496>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.554971, 20.850252, 18.626392> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542125, 0.128678, -0.830387,
		0.065164, 0.978791, 0.194219,
		0.837767, -0.159403, 0.522243,
		14.806301, 20.802431, 18.783066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.646597, 21.468458, 18.162775>,  <14.219864, 20.914013, 18.417496>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.646597, 21.468458, 18.162775> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.880994, 21.202156, 18.347549>,  <15.021632, 21.042376, 18.458414>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.880994, 21.202156, 18.347549>,  <14.646597, 21.468458, 18.162775>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.880994, 21.202156, 18.347549> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647730, 0.042318, -0.760694,
		0.486887, 0.744970, 0.456027,
		0.585992, -0.665754, 0.461935,
		15.056791, 21.002430, 18.486130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<3.208537, 19.899639, 4.443548> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<3.439452, 19.816229, 4.759334>,  <3.578002, 19.766182, 4.948805>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<3.439452, 19.816229, 4.759334>,  <3.208537, 19.899639, 4.443548>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<3.439452, 19.816229, 4.759334> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.782113, -0.418991, 0.461243,
		0.234598, -0.883721, -0.404970,
		0.577290, -0.208526, 0.789464,
		3.612639, 19.753672, 4.996173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.943623, 19.188696, 4.569806>,  <3.208537, 19.899639, 4.443548>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.943623, 19.188696, 4.569806> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<3.140214, 19.372225, 4.865895>,  <3.258169, 19.482342, 5.043549>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<3.140214, 19.372225, 4.865895>,  <2.943623, 19.188696, 4.569806>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<3.140214, 19.372225, 4.865895> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585070, -0.455637, 0.670886,
		0.645091, -0.762809, 0.044507,
		0.491479, 0.458822, 0.740224,
		3.287658, 19.509871, 5.087963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.210587, 18.717770, 5.011178>,  <2.943623, 19.188696, 4.569806>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.210587, 18.717770, 5.011178> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<3.097378, 19.069088, 5.165316>,  <3.029452, 19.279879, 5.257798>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<3.097378, 19.069088, 5.165316>,  <3.210587, 18.717770, 5.011178>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<3.097378, 19.069088, 5.165316> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431566, -0.475421, 0.766633,
		0.856533, 0.050674, 0.513599,
		-0.283024, 0.878298, 0.385345,
		3.012470, 19.332577, 5.280919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.505241, 18.907082, 5.664093>,  <3.210587, 18.717770, 5.011178>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.505241, 18.907082, 5.664093> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<3.145686, 19.082300, 5.659718>,  <2.929953, 19.187431, 5.657092>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<3.145686, 19.082300, 5.659718>,  <3.505241, 18.907082, 5.664093>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<3.145686, 19.082300, 5.659718> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199027, -0.385914, 0.900810,
		0.390374, 0.811903, 0.434075,
		-0.898886, 0.438045, -0.010940,
		2.876020, 19.213715, 5.656435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.004577, 19.447887, 5.724443>,  <3.505241, 18.907082, 5.664093>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.004577, 19.447887, 5.724443> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.087492, 19.630613, 5.378414>,  <4.137240, 19.740250, 5.170797>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.087492, 19.630613, 5.378414>,  <4.004577, 19.447887, 5.724443>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.087492, 19.630613, 5.378414> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.946630, 0.129444, 0.295185,
		0.246824, -0.880092, -0.405604,
		0.207287, 0.456817, -0.865073,
		4.149678, 19.767658, 5.118892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.206405, 20.003891, 6.143645>,  <4.004577, 19.447887, 5.724443>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.206405, 20.003891, 6.143645> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.257707, 20.140011, 6.516257>,  <4.288487, 20.221682, 6.739824>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.257707, 20.140011, 6.516257>,  <4.206405, 20.003891, 6.143645>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.257707, 20.140011, 6.516257> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.850516, 0.445353, -0.279791,
		-0.510072, 0.828166, -0.232311,
		0.128253, 0.340298, 0.931530,
		4.296183, 20.242100, 6.795716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.187723, 20.794682, 6.209398>,  <4.206405, 20.003891, 6.143645>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.187723, 20.794682, 6.209398> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.406938, 20.606340, 6.485934>,  <4.538467, 20.493336, 6.651856>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.406938, 20.606340, 6.485934>,  <4.187723, 20.794682, 6.209398>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.406938, 20.606340, 6.485934> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.836409, 0.316995, -0.447140,
		-0.008614, 0.823293, 0.567552,
		0.548039, -0.470854, 0.691340,
		4.571350, 20.465084, 6.693336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.618602, 21.237726, 6.563678>,  <4.187723, 20.794682, 6.209398>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.618602, 21.237726, 6.563678> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.778785, 20.871956, 6.540150>,  <4.874895, 20.652494, 6.526034>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.778785, 20.871956, 6.540150>,  <4.618602, 21.237726, 6.563678>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.778785, 20.871956, 6.540150> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765117, 0.369012, -0.527661,
		0.504211, 0.166303, 0.847416,
		0.400459, -0.914425, -0.058819,
		4.898923, 20.597628, 6.522505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.326392, 21.281380, 6.825701>,  <4.618602, 21.237726, 6.563678>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.326392, 21.281380, 6.825701> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.285039, 20.988535, 6.556384>,  <5.260227, 20.812828, 6.394793>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.285039, 20.988535, 6.556384>,  <5.326392, 21.281380, 6.825701>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.285039, 20.988535, 6.556384> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.898641, 0.221395, -0.378719,
		0.426328, -0.644202, 0.635018,
		-0.103382, -0.732112, -0.673294,
		5.254025, 20.768902, 6.354395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.964360, 21.037888, 7.209955>,  <5.326392, 21.281380, 6.825701>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.964360, 21.037888, 7.209955> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.704165, 21.318495, 7.326394>,  <5.548047, 21.486858, 7.396257>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.704165, 21.318495, 7.326394>,  <5.964360, 21.037888, 7.209955>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.704165, 21.318495, 7.326394> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443258, -0.661866, 0.604529,
		0.616755, 0.264208, 0.741490,
		-0.650488, 0.701517, 0.291098,
		5.509018, 21.528950, 7.413723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.040086, 21.156185, 8.010419>,  <5.964360, 21.037888, 7.209955>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.040086, 21.156185, 8.010419> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.682736, 21.264082, 7.866686>,  <5.468327, 21.328821, 7.780446>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.682736, 21.264082, 7.866686>,  <6.040086, 21.156185, 8.010419>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.682736, 21.264082, 7.866686> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445123, -0.422381, 0.789595,
		0.061213, 0.865351, 0.497414,
		-0.893375, 0.269744, -0.359332,
		5.414724, 21.345005, 7.758886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.606609, 21.627497, 8.444501>,  <6.040086, 21.156185, 8.010419>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.606609, 21.627497, 8.444501> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.345325, 21.424849, 8.219414>,  <5.188554, 21.303259, 8.084361>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.345325, 21.424849, 8.219414>,  <5.606609, 21.627497, 8.444501>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.345325, 21.424849, 8.219414> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478051, -0.300388, 0.825369,
		-0.587182, 0.808148, -0.045973,
		-0.653211, -0.506620, -0.562718,
		5.149362, 21.272863, 8.050598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.999828, 21.643721, 8.814058>,  <5.606609, 21.627497, 8.444501>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.999828, 21.643721, 8.814058> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.923075, 21.329424, 8.578842>,  <4.877023, 21.140846, 8.437713>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.923075, 21.329424, 8.578842>,  <4.999828, 21.643721, 8.814058>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.923075, 21.329424, 8.578842> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392561, -0.487706, 0.779768,
		-0.899487, 0.380466, -0.214868,
		-0.191883, -0.785741, -0.588041,
		4.865510, 21.093702, 8.402430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.362729, 21.380219, 9.088457>,  <4.999828, 21.643721, 8.814058>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.362729, 21.380219, 9.088457> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.465499, 21.083710, 8.840423>,  <4.527162, 20.905804, 8.691602>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.465499, 21.083710, 8.840423>,  <4.362729, 21.380219, 9.088457>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.465499, 21.083710, 8.840423> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516732, -0.647575, 0.560031,
		-0.816687, 0.176532, -0.549417,
		0.256925, -0.741272, -0.620086,
		4.542577, 20.861328, 8.654397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.766936, 20.973679, 8.878386>,  <4.362729, 21.380219, 9.088457>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.766936, 20.973679, 8.878386> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.082120, 20.729038, 8.849925>,  <4.271231, 20.582254, 8.832849>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.082120, 20.729038, 8.849925>,  <3.766936, 20.973679, 8.878386>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.082120, 20.729038, 8.849925> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457000, -0.658361, 0.598091,
		-0.412636, -0.438756, -0.798264,
		0.787961, -0.611600, -0.071152,
		4.318509, 20.545559, 8.828579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.533924, 20.357695, 8.899699>,  <3.766936, 20.973679, 8.878386>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.533924, 20.357695, 8.899699> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<3.914686, 20.281546, 8.995727>,  <4.143144, 20.235857, 9.053343>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<3.914686, 20.281546, 8.995727>,  <3.533924, 20.357695, 8.899699>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<3.914686, 20.281546, 8.995727> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301376, -0.722935, 0.621722,
		0.055195, -0.664172, -0.745540,
		0.951907, -0.190372, 0.240068,
		4.200258, 20.224434, 9.067747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.557326, 19.557055, 8.883362>,  <3.533924, 20.357695, 8.899699>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.557326, 19.557055, 8.883362> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<3.873986, 19.696453, 9.084097>,  <4.063982, 19.780092, 9.204538>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<3.873986, 19.696453, 9.084097>,  <3.557326, 19.557055, 8.883362>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<3.873986, 19.696453, 9.084097> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122540, -0.714115, 0.689220,
		0.598561, -0.607115, -0.522623,
		0.791649, 0.348498, 0.501837,
		4.111481, 19.801003, 9.234648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.014213, 19.037333, 9.014161>,  <3.557326, 19.557055, 8.883362>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.014213, 19.037333, 9.014161> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.120756, 19.290808, 9.304676>,  <4.184681, 19.442892, 9.478985>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.120756, 19.290808, 9.304676>,  <4.014213, 19.037333, 9.014161>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.120756, 19.290808, 9.304676> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122357, -0.725183, 0.677597,
		0.956077, -0.269350, -0.115621,
		0.266357, 0.633688, 0.726288,
		4.200663, 19.480915, 9.522562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.535754, 18.629297, 9.343228>,  <4.014213, 19.037333, 9.014161>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.535754, 18.629297, 9.343228> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.465948, 18.927780, 9.600202>,  <4.424065, 19.106869, 9.754386>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.465948, 18.927780, 9.600202>,  <4.535754, 18.629297, 9.343228>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.465948, 18.927780, 9.600202> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172192, -0.619264, 0.766069,
		0.969481, 0.244313, -0.020420,
		-0.174515, 0.746206, 0.642434,
		4.413594, 19.151642, 9.792932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.163573, 18.769903, 9.733594>,  <4.535754, 18.629297, 9.343228>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.163573, 18.769903, 9.733594> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.848754, 18.878372, 9.955232>,  <4.659863, 18.943453, 10.088214>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.848754, 18.878372, 9.955232>,  <5.163573, 18.769903, 9.733594>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.848754, 18.878372, 9.955232> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338175, -0.561557, 0.755177,
		0.515939, 0.781741, 0.350269,
		-0.787048, 0.271173, 0.554094,
		4.612639, 18.959724, 10.121460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.456776, 18.834091, 10.351193>,  <5.163573, 18.769903, 9.733594>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.456776, 18.834091, 10.351193> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.072317, 18.810741, 10.459108>,  <4.841641, 18.796732, 10.523857>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.072317, 18.810741, 10.459108>,  <5.456776, 18.834091, 10.351193>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.072317, 18.810741, 10.459108> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256072, -0.553458, 0.792534,
		0.103052, 0.830829, 0.546904,
		-0.961149, -0.058374, 0.269788,
		4.783972, 18.793228, 10.540045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.416056, 18.918436, 11.086932>,  <5.456776, 18.834091, 10.351193>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.416056, 18.918436, 11.086932> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.067782, 18.746252, 10.991761>,  <4.858817, 18.642942, 10.934658>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.067782, 18.746252, 10.991761>,  <5.416056, 18.918436, 11.086932>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.067782, 18.746252, 10.991761> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135378, -0.674812, 0.725466,
		-0.472841, 0.599443, 0.645824,
		-0.870686, -0.430461, -0.237928,
		4.806576, 18.617113, 10.920382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.133688, 18.768135, 11.724292>,  <5.416056, 18.918436, 11.086932>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.133688, 18.768135, 11.724292> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.923303, 18.528297, 11.483011>,  <4.797071, 18.384396, 11.338243>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.923303, 18.528297, 11.483011>,  <5.133688, 18.768135, 11.724292>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.923303, 18.528297, 11.483011> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017837, -0.716846, 0.697003,
		-0.850321, 0.355839, 0.387729,
		-0.525963, -0.599592, -0.603202,
		4.765514, 18.348419, 11.302051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.460721, 18.428715, 12.130553>,  <5.133688, 18.768135, 11.724292>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.460721, 18.428715, 12.130553> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.534489, 18.191795, 11.816821>,  <4.578750, 18.049644, 11.628582>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.534489, 18.191795, 11.816821>,  <4.460721, 18.428715, 12.130553>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.534489, 18.191795, 11.816821> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008272, -0.797054, 0.603852,
		-0.982813, -0.117849, -0.142092,
		0.184419, -0.592298, -0.784329,
		4.589815, 18.014107, 11.581522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.010231, 17.873518, 12.153444>,  <4.460721, 18.428715, 12.130553>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.010231, 17.873518, 12.153444> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.325815, 17.735430, 11.950126>,  <4.515165, 17.652576, 11.828135>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.325815, 17.735430, 11.950126>,  <4.010231, 17.873518, 12.153444>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.325815, 17.735430, 11.950126> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087111, -0.881734, 0.463634,
		-0.608238, -0.321510, -0.725726,
		0.788961, -0.345219, -0.508297,
		4.562503, 17.631865, 11.797637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.851669, 17.198090, 12.135910>,  <4.010231, 17.873518, 12.153444>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.851669, 17.198090, 12.135910> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.233392, 17.207882, 12.016782>,  <4.462426, 17.213757, 11.945305>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.233392, 17.207882, 12.016782>,  <3.851669, 17.198090, 12.135910>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.233392, 17.207882, 12.016782> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159801, -0.883969, 0.439389,
		-0.252508, -0.466905, -0.847490,
		0.954308, 0.024480, -0.297821,
		4.519685, 17.215225, 11.927435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.999235, 16.451609, 11.966398>,  <3.851669, 17.198090, 12.135910>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.999235, 16.451609, 11.966398> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.358731, 16.622814, 12.004492>,  <4.574429, 16.725536, 12.027349>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.358731, 16.622814, 12.004492>,  <3.999235, 16.451609, 11.966398>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.358731, 16.622814, 12.004492> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341008, -0.818806, 0.461813,
		0.275640, -0.382574, -0.881850,
		0.898741, 0.428012, 0.095234,
		4.628354, 16.751217, 12.033062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.427337, 15.859683, 11.877340>,  <3.999235, 16.451609, 11.966398>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.427337, 15.859683, 11.877340> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.667691, 16.132942, 12.043350>,  <4.811904, 16.296898, 12.142956>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.667691, 16.132942, 12.043350>,  <4.427337, 15.859683, 11.877340>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.667691, 16.132942, 12.043350> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456002, -0.719402, 0.523950,
		0.656504, -0.125582, -0.743795,
		0.600886, 0.683147, 0.415025,
		4.847957, 16.337887, 12.167857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.127155, 15.654654, 11.733201>,  <4.427337, 15.859683, 11.877340>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.127155, 15.654654, 11.733201> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.110630, 15.867787, 12.071285>,  <5.100714, 15.995667, 12.274136>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.110630, 15.867787, 12.071285>,  <5.127155, 15.654654, 11.733201>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.110630, 15.867787, 12.071285> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443128, -0.748414, 0.493471,
		0.895506, 0.394924, -0.205194,
		-0.041313, 0.532833, 0.845211,
		5.098236, 16.027637, 12.324848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.712711, 15.573473, 11.969102>,  <5.127155, 15.654654, 11.733201>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.712711, 15.573473, 11.969102> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.538223, 15.706077, 12.303721>,  <5.433530, 15.785639, 12.504493>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.538223, 15.706077, 12.303721>,  <5.712711, 15.573473, 11.969102>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.538223, 15.706077, 12.303721> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438079, -0.733814, 0.519234,
		0.786002, 0.592975, 0.174877,
		-0.436220, 0.331509, 0.836549,
		5.407357, 15.805530, 12.554687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.332875, 15.594409, 12.525181>,  <5.712711, 15.573473, 11.969102>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.332875, 15.594409, 12.525181> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.991431, 15.574033, 12.732546>,  <5.786564, 15.561807, 12.856965>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.991431, 15.574033, 12.732546>,  <6.332875, 15.594409, 12.525181>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.991431, 15.574033, 12.732546> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346760, -0.798228, 0.492534,
		0.388722, 0.600198, 0.699041,
		-0.853612, -0.050941, 0.518413,
		5.735347, 15.558750, 12.888070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.677477, 16.172371, 12.219943>,  <6.332875, 15.594409, 12.525181>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.677477, 16.172371, 12.219943> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.061942, 16.092432, 12.143807>,  <7.292621, 16.044470, 12.098126>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.061942, 16.092432, 12.143807>,  <6.677477, 16.172371, 12.219943>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.061942, 16.092432, 12.143807> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124537, 0.929530, -0.347079,
		0.246288, 0.309895, 0.918318,
		0.961162, -0.199846, -0.190338,
		7.350290, 16.032478, 12.086706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.033662, 16.764467, 12.364749>,  <6.677477, 16.172371, 12.219943>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.033662, 16.764467, 12.364749> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.269355, 16.562979, 12.112062>,  <7.410771, 16.442085, 11.960449>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.269355, 16.562979, 12.112062>,  <7.033662, 16.764467, 12.364749>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.269355, 16.562979, 12.112062> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279739, 0.860696, -0.425380,
		0.757990, 0.073932, 0.648062,
		0.589234, -0.503723, -0.631718,
		7.446126, 16.411861, 11.922546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.503694, 17.269537, 12.260079>,  <7.033662, 16.764467, 12.364749>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.503694, 17.269537, 12.260079> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.557660, 17.016069, 11.955380>,  <7.590039, 16.863989, 11.772561>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.557660, 17.016069, 11.955380>,  <7.503694, 17.269537, 12.260079>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.557660, 17.016069, 11.955380> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368889, 0.745635, -0.554932,
		0.919629, -0.206132, 0.334352,
		0.134915, -0.633671, -0.761747,
		7.598134, 16.825968, 11.726856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.088061, 17.596445, 11.977779>,  <7.503694, 17.269537, 12.260079>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.088061, 17.596445, 11.977779> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.954557, 17.347839, 11.694280>,  <7.874455, 17.198677, 11.524179>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.954557, 17.347839, 11.694280>,  <8.088061, 17.596445, 11.977779>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.954557, 17.347839, 11.694280> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382885, 0.597668, -0.704409,
		0.861396, -0.506474, 0.038490,
		-0.333761, -0.621513, -0.708750,
		7.854429, 17.161386, 11.481655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.642193, 17.471287, 11.515467>,  <8.088061, 17.596445, 11.977779>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.642193, 17.471287, 11.515467> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.308987, 17.406252, 11.303939>,  <8.109063, 17.367231, 11.177022>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.308987, 17.406252, 11.303939>,  <8.642193, 17.471287, 11.515467>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.308987, 17.406252, 11.303939> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317999, 0.641459, -0.698145,
		0.452726, -0.749731, -0.482643,
		-0.833016, -0.162588, -0.528818,
		8.059082, 17.357475, 11.145293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.909440, 17.543917, 10.920903>,  <8.642193, 17.471287, 11.515467>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.909440, 17.543917, 10.920903> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.514984, 17.536270, 10.854980>,  <8.278311, 17.531683, 10.815427>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.514984, 17.536270, 10.854980>,  <8.909440, 17.543917, 10.920903>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.514984, 17.536270, 10.854980> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119893, 0.604524, -0.787512,
		0.114684, -0.796357, -0.593854,
		-0.986141, -0.019116, -0.164807,
		8.219142, 17.530535, 10.805538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.840033, 17.437372, 10.243505>,  <8.909440, 17.543917, 10.920903>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.840033, 17.437372, 10.243505> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.489653, 17.599926, 10.347476>,  <8.279425, 17.697458, 10.409858>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.489653, 17.599926, 10.347476>,  <8.840033, 17.437372, 10.243505>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.489653, 17.599926, 10.347476> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165096, 0.758825, -0.630022,
		-0.453269, -0.508956, -0.731786,
		-0.875951, 0.406385, 0.259925,
		8.226868, 17.721842, 10.425453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.570456, 17.670937, 9.642406>,  <8.840033, 17.437372, 10.243505>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.570456, 17.670937, 9.642406> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.382746, 17.903133, 9.908582>,  <8.270120, 18.042452, 10.068287>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.382746, 17.903133, 9.908582>,  <8.570456, 17.670937, 9.642406>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.382746, 17.903133, 9.908582> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032133, 0.764294, -0.644067,
		-0.882468, -0.280862, -0.377317,
		-0.469275, 0.580493, 0.665439,
		8.241963, 18.077282, 10.108213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.017746, 18.132933, 9.306153>,  <8.570456, 17.670937, 9.642406>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.017746, 18.132933, 9.306153> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.078548, 18.320515, 9.654171>,  <8.115029, 18.433064, 9.862982>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.078548, 18.320515, 9.654171>,  <8.017746, 18.132933, 9.306153>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.078548, 18.320515, 9.654171> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156115, 0.880615, -0.447376,
		-0.975973, -0.067823, 0.207069,
		0.152005, 0.468953, 0.870044,
		8.124150, 18.461201, 9.915184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.497273, 18.634468, 9.268538>,  <8.017746, 18.132933, 9.306153>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.497273, 18.634468, 9.268538> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.769380, 18.752720, 9.536819>,  <7.932644, 18.823671, 9.697786>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.769380, 18.752720, 9.536819>,  <7.497273, 18.634468, 9.268538>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.769380, 18.752720, 9.536819> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023462, 0.923365, -0.383205,
		-0.732589, 0.244946, 0.635071,
		0.680267, 0.295632, 0.670700,
		7.973460, 18.841410, 9.738029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.267363, 19.243484, 9.557504>,  <7.497273, 18.634468, 9.268538>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.267363, 19.243484, 9.557504> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.656741, 19.264204, 9.646698>,  <7.890368, 19.276636, 9.700214>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.656741, 19.264204, 9.646698>,  <7.267363, 19.243484, 9.557504>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.656741, 19.264204, 9.646698> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014950, 0.957600, -0.287713,
		-0.228435, 0.283406, 0.931396,
		0.973445, 0.051799, 0.222986,
		7.948774, 19.279743, 9.713593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.356316, 19.814054, 9.942153>,  <7.267363, 19.243484, 9.557504>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.356316, 19.814054, 9.942153> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.724630, 19.742113, 9.803699>,  <7.945618, 19.698948, 9.720628>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.724630, 19.742113, 9.803699>,  <7.356316, 19.814054, 9.942153>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.724630, 19.742113, 9.803699> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027193, 0.914799, -0.402993,
		0.389121, 0.361657, 0.847224,
		0.920785, -0.179852, -0.346133,
		8.000865, 19.688158, 9.699860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.644279, 20.434210, 9.985606>,  <7.356316, 19.814054, 9.942153>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.644279, 20.434210, 9.985606> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.880761, 20.218191, 9.745998>,  <8.022651, 20.088579, 9.602234>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.880761, 20.218191, 9.745998>,  <7.644279, 20.434210, 9.985606>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.880761, 20.218191, 9.745998> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132601, 0.797699, -0.588297,
		0.795546, 0.268374, 0.543215,
		0.591206, -0.540047, -0.599020,
		8.058123, 20.056177, 9.566293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.242809, 20.801287, 9.920416>,  <7.644279, 20.434210, 9.985606>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.242809, 20.801287, 9.920416> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.257326, 20.571138, 9.593580>,  <8.266036, 20.433050, 9.397479>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.257326, 20.571138, 9.593580>,  <8.242809, 20.801287, 9.920416>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.257326, 20.571138, 9.593580> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272360, 0.792370, -0.545866,
		0.961511, -0.202731, 0.185465,
		0.036293, -0.575369, -0.817088,
		8.268214, 20.398527, 9.348454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.881503, 20.910404, 9.550963>,  <8.242809, 20.801287, 9.920416>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.881503, 20.910404, 9.550963> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.615399, 20.754837, 9.296036>,  <8.455737, 20.661497, 9.143080>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.615399, 20.754837, 9.296036>,  <8.881503, 20.910404, 9.550963>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.615399, 20.754837, 9.296036> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235598, 0.700646, -0.673490,
		0.708472, -0.598192, -0.374478,
		-0.665253, -0.388923, -0.637321,
		8.415822, 20.638163, 9.104840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.090795, 21.195509, 8.933234>,  <8.881503, 20.910404, 9.550963>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.090795, 21.195509, 8.933234> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.748500, 21.043566, 8.792708>,  <8.543123, 20.952400, 8.708393>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.748500, 21.043566, 8.792708>,  <9.090795, 21.195509, 8.933234>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.748500, 21.043566, 8.792708> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009556, 0.667265, -0.744759,
		0.517322, -0.640675, -0.567373,
		-0.855737, -0.379858, -0.351314,
		8.491779, 20.929607, 8.687314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.191318, 21.054146, 8.171991>,  <9.090795, 21.195509, 8.933234>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.191318, 21.054146, 8.171991> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.809096, 21.111748, 8.274895>,  <8.579763, 21.146309, 8.336637>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.809096, 21.111748, 8.274895>,  <9.191318, 21.054146, 8.171991>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.809096, 21.111748, 8.274895> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079960, 0.713305, -0.696278,
		-0.283771, -0.685900, -0.670086,
		-0.955553, 0.144003, 0.257259,
		8.522430, 21.154949, 8.352073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.903001, 21.105154, 7.584101>,  <9.191318, 21.054146, 8.171991>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.903001, 21.105154, 7.584101> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.629409, 21.271069, 7.824142>,  <8.465254, 21.370617, 7.968167>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.629409, 21.271069, 7.824142>,  <8.903001, 21.105154, 7.584101>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.629409, 21.271069, 7.824142> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257107, 0.632772, -0.730408,
		-0.682691, -0.653875, -0.326160,
		-0.683981, 0.414784, 0.600104,
		8.424214, 21.395504, 8.004173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.293725, 21.247801, 7.221354>,  <8.903001, 21.105154, 7.584101>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.293725, 21.247801, 7.221354> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.238279, 21.491976, 7.533291>,  <8.205012, 21.638481, 7.720453>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.238279, 21.491976, 7.533291>,  <8.293725, 21.247801, 7.221354>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.238279, 21.491976, 7.533291> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321192, 0.717170, -0.618467,
		-0.936815, -0.336207, 0.096658,
		-0.138613, 0.610435, 0.779843,
		8.196695, 21.675106, 7.767244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.753165, 21.586086, 7.056884>,  <8.293725, 21.247801, 7.221354>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.753165, 21.586086, 7.056884> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.890044, 21.810371, 7.358481>,  <7.972171, 21.944942, 7.539439>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.890044, 21.810371, 7.358481>,  <7.753165, 21.586086, 7.056884>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.890044, 21.810371, 7.358481> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013463, 0.799429, -0.600610,
		-0.939532, 0.215678, 0.266014,
		0.342197, 0.560711, 0.753992,
		7.992703, 21.978584, 7.584679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.326681, 22.115320, 7.078774>,  <7.753165, 21.586086, 7.056884>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.326681, 22.115320, 7.078774> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.674027, 22.207041, 7.254666>,  <7.882435, 22.262074, 7.360201>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.674027, 22.207041, 7.254666>,  <7.326681, 22.115320, 7.078774>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.674027, 22.207041, 7.254666> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022478, 0.903973, -0.426999,
		-0.495414, 0.360907, 0.790133,
		0.868366, 0.229302, 0.439729,
		7.934537, 22.275831, 7.386584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<16.655840, 21.538212, 23.364204> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.507309, 21.196461, 23.509615>,  <16.418190, 20.991409, 23.596861>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.507309, 21.196461, 23.509615>,  <16.655840, 21.538212, 23.364204>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.507309, 21.196461, 23.509615> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542044, 0.517347, 0.662224,
		-0.753859, 0.048856, -0.655217,
		-0.371328, -0.854380, 0.363525,
		16.395910, 20.940147, 23.618673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.003628, 21.659382, 23.523846>,  <16.655840, 21.538212, 23.364204>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.003628, 21.659382, 23.523846> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.057116, 21.316828, 23.723333>,  <16.089209, 21.111296, 23.843025>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.057116, 21.316828, 23.723333>,  <16.003628, 21.659382, 23.523846>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.057116, 21.316828, 23.723333> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595528, 0.332804, 0.731155,
		-0.792127, -0.394770, -0.465501,
		0.133717, -0.856387, 0.498719,
		16.097231, 21.059912, 23.872950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.409222, 21.379311, 23.626348>,  <16.003628, 21.659382, 23.523846>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.409222, 21.379311, 23.626348> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.638209, 21.250607, 23.928011>,  <15.775601, 21.173384, 24.109009>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.638209, 21.250607, 23.928011>,  <15.409222, 21.379311, 23.626348>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.638209, 21.250607, 23.928011> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635376, 0.407274, 0.656069,
		-0.518245, -0.854750, 0.028712,
		0.572468, -0.321762, 0.754155,
		15.809950, 21.154078, 24.154257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.985975, 21.262161, 24.077869>,  <15.409222, 21.379311, 23.626348>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.985975, 21.262161, 24.077869> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.306433, 21.253441, 24.317101>,  <15.498707, 21.248209, 24.460638>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.306433, 21.253441, 24.317101>,  <14.985975, 21.262161, 24.077869>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.306433, 21.253441, 24.317101> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578443, 0.228173, 0.783161,
		-0.153537, -0.973377, 0.170190,
		0.801143, -0.021799, 0.598076,
		15.546776, 21.246901, 24.496523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.737313, 20.888271, 24.621178>,  <14.985975, 21.262161, 24.077869>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.737313, 20.888271, 24.621178> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.059110, 21.078938, 24.762930>,  <15.252188, 21.193336, 24.847980>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.059110, 21.078938, 24.762930>,  <14.737313, 20.888271, 24.621178>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.059110, 21.078938, 24.762930> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470068, 0.146224, 0.870434,
		0.363087, -0.866839, 0.341700,
		0.804491, 0.476665, 0.354381,
		15.300457, 21.221937, 24.869244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.821916, 20.622343, 25.301800>,  <14.737313, 20.888271, 24.621178>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.821916, 20.622343, 25.301800> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.006705, 20.976431, 25.280003>,  <15.117579, 21.188883, 25.266924>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.006705, 20.976431, 25.280003>,  <14.821916, 20.622343, 25.301800>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.006705, 20.976431, 25.280003> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429497, 0.277057, 0.859518,
		0.775959, -0.373669, 0.508191,
		0.461974, 0.885218, -0.054495,
		15.145297, 21.241997, 25.263655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.020443, 20.776205, 26.033792>,  <14.821916, 20.622343, 25.301800>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.020443, 20.776205, 26.033792> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.052259, 21.127298, 25.844793>,  <15.071349, 21.337954, 25.731394>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.052259, 21.127298, 25.844793>,  <15.020443, 20.776205, 26.033792>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.052259, 21.127298, 25.844793> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534117, 0.437745, 0.723256,
		0.841661, 0.194841, 0.503631,
		0.079542, 0.877734, -0.472500,
		15.076122, 21.390619, 25.703043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.233640, 21.248943, 26.511755>,  <15.020443, 20.776205, 26.033792>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.233640, 21.248943, 26.511755> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.109633, 21.507528, 26.232906>,  <15.035230, 21.662680, 26.065598>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.109633, 21.507528, 26.232906>,  <15.233640, 21.248943, 26.511755>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.109633, 21.507528, 26.232906> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507071, 0.507822, 0.696416,
		0.804220, 0.569390, 0.170369,
		-0.310015, 0.646461, -0.697122,
		15.016629, 21.701468, 26.023769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.588317, 21.850876, 26.713007>,  <15.233640, 21.248943, 26.511755>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.588317, 21.850876, 26.713007> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.256051, 21.930075, 26.504854>,  <15.056692, 21.977594, 26.379963>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.256051, 21.930075, 26.504854>,  <15.588317, 21.850876, 26.713007>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.256051, 21.930075, 26.504854> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346625, 0.547519, 0.761626,
		0.435716, 0.813032, -0.386174,
		-0.830664, 0.197995, -0.520380,
		15.006852, 21.989473, 26.348740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.523015, 22.457600, 26.888939>,  <15.588317, 21.850876, 26.713007>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.523015, 22.457600, 26.888939> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.160442, 22.336737, 26.770901>,  <14.942899, 22.264219, 26.700077>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.160442, 22.336737, 26.770901>,  <15.523015, 22.457600, 26.888939>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.160442, 22.336737, 26.770901> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412677, 0.484941, 0.771057,
		-0.089878, 0.820690, -0.564260,
		-0.906432, -0.302159, -0.295095,
		14.888513, 22.246090, 26.682373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.100546, 23.120173, 27.033754>,  <15.523015, 22.457600, 26.888939>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.100546, 23.120173, 27.033754> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.868434, 22.801035, 26.968363>,  <14.729167, 22.609552, 26.929129>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.868434, 22.801035, 26.968363>,  <15.100546, 23.120173, 27.033754>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.868434, 22.801035, 26.968363> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602925, 0.285902, 0.744810,
		-0.547502, 0.530762, -0.646942,
		-0.580279, -0.797842, -0.163478,
		14.694350, 22.561682, 26.919319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.335751, 23.410555, 26.992054>,  <15.100546, 23.120173, 27.033754>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.335751, 23.410555, 26.992054> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.378704, 23.023609, 27.083858>,  <14.404476, 22.791441, 27.138941>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.378704, 23.023609, 27.083858>,  <14.335751, 23.410555, 26.992054>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.378704, 23.023609, 27.083858> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613075, 0.117303, 0.781267,
		-0.782692, -0.224604, -0.580471,
		0.107384, -0.967364, 0.229511,
		14.410919, 22.733400, 27.152712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.054870, 23.311710, 27.697403>,  <14.335751, 23.410555, 26.992054>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.054870, 23.311710, 27.697403> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.310252, 23.619465, 27.705578>,  <14.463482, 23.804117, 27.710484>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.310252, 23.619465, 27.705578>,  <14.054870, 23.311710, 27.697403>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.310252, 23.619465, 27.705578> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.702342, 0.593271, -0.393376,
		-0.314784, 0.236798, 0.919150,
		0.638456, 0.769387, 0.020439,
		14.501789, 23.850281, 27.711710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.761673, 23.919327, 27.988585>,  <14.054870, 23.311710, 27.697403>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.761673, 23.919327, 27.988585> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.055346, 24.035027, 27.742882>,  <14.231549, 24.104446, 27.595459>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.055346, 24.035027, 27.742882>,  <13.761673, 23.919327, 27.988585>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.055346, 24.035027, 27.742882> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597910, 0.704091, -0.383093,
		0.321685, 0.648531, 0.689875,
		0.734182, 0.289248, -0.614258,
		14.275600, 24.121801, 27.558605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.183573, 24.380909, 28.299234>,  <13.761673, 23.919327, 27.988585>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.183573, 24.380909, 28.299234> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.803242, 24.263813, 28.339689>,  <12.575043, 24.193556, 28.363962>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.803242, 24.263813, 28.339689>,  <13.183573, 24.380909, 28.299234>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.803242, 24.263813, 28.339689> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010352, -0.356404, -0.934274,
		0.309545, -0.887288, 0.341910,
		-0.950828, -0.292740, 0.101138,
		12.517993, 24.175991, 28.370031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.088981, 23.658066, 27.974342>,  <13.183573, 24.380909, 28.299234>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.088981, 23.658066, 27.974342> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.710682, 23.787958, 27.978573>,  <12.483703, 23.865894, 27.981112>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.710682, 23.787958, 27.978573>,  <13.088981, 23.658066, 27.974342>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.710682, 23.787958, 27.978573> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127827, -0.341963, -0.930979,
		-0.298693, -0.881825, 0.364920,
		-0.945750, 0.324723, 0.010580,
		12.426958, 23.885378, 27.981747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.682017, 23.080656, 27.769302>,  <13.088981, 23.658066, 27.974342>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.682017, 23.080656, 27.769302> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.474529, 23.416811, 27.706467>,  <12.350037, 23.618504, 27.668766>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.474529, 23.416811, 27.706467>,  <12.682017, 23.080656, 27.769302>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.474529, 23.416811, 27.706467> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020924, -0.171207, -0.985013,
		-0.854688, -0.514233, 0.071224,
		-0.518720, 0.840388, -0.157088,
		12.318913, 23.668928, 27.659340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.103025, 22.874922, 27.436638>,  <12.682017, 23.080656, 27.769302>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.103025, 22.874922, 27.436638> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.111537, 23.264172, 27.344921>,  <12.116644, 23.497721, 27.289890>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.111537, 23.264172, 27.344921>,  <12.103025, 22.874922, 27.436638>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.111537, 23.264172, 27.344921> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067771, -0.227414, -0.971437,
		-0.997474, 0.036212, 0.061110,
		0.021280, 0.973124, -0.229294,
		12.117921, 23.556108, 27.276133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.524927, 22.971193, 26.931931>,  <12.103025, 22.874922, 27.436638>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.524927, 22.971193, 26.931931> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.774920, 23.282007, 26.901957>,  <11.924914, 23.468496, 26.883972>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.774920, 23.282007, 26.901957>,  <11.524927, 22.971193, 26.931931>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.774920, 23.282007, 26.901957> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185960, -0.241419, -0.952437,
		-0.758168, 0.581319, -0.295379,
		0.624980, 0.777036, -0.074934,
		11.962414, 23.515118, 26.879477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.403686, 23.197666, 26.278099>,  <11.524927, 22.971193, 26.931931>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.403686, 23.197666, 26.278099> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.757153, 23.344648, 26.394106>,  <11.969233, 23.432837, 26.463709>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.757153, 23.344648, 26.394106>,  <11.403686, 23.197666, 26.278099>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.757153, 23.344648, 26.394106> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394683, -0.251707, -0.883668,
		-0.251707, 0.895333, -0.367453,
		0.883668, 0.367453, 0.290016,
		12.022253, 23.454884, 26.481112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.595652, 23.648338, 25.787827>,  <11.403686, 23.197666, 26.278099>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.595652, 23.648338, 25.787827> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.952240, 23.564470, 25.948484>,  <12.166193, 23.514149, 26.044880>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.952240, 23.564470, 25.948484>,  <11.595652, 23.648338, 25.787827>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.952240, 23.564470, 25.948484> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354446, -0.229450, -0.906488,
		0.282222, 0.950469, -0.130231,
		0.891470, -0.209671, 0.401646,
		12.219681, 23.501570, 26.068977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.137767, 23.855639, 25.221420>,  <11.595652, 23.648338, 25.787827>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.137767, 23.855639, 25.221420> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.351881, 23.642422, 25.483517>,  <12.480350, 23.514492, 25.640774>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.351881, 23.642422, 25.483517>,  <12.137767, 23.855639, 25.221420>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.351881, 23.642422, 25.483517> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504858, -0.420020, -0.754123,
		0.677191, 0.734474, 0.044279,
		0.535285, -0.533040, 0.655239,
		12.512466, 23.482510, 25.680088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.777952, 23.879438, 24.943439>,  <12.137767, 23.855639, 25.221420>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.777952, 23.879438, 24.943439> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.796545, 23.576656, 25.204165>,  <12.807701, 23.394987, 25.360600>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.796545, 23.576656, 25.204165>,  <12.777952, 23.879438, 24.943439>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.796545, 23.576656, 25.204165> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637728, -0.479750, -0.602613,
		0.768858, 0.443691, 0.460431,
		0.046482, -0.756953, 0.651814,
		12.810490, 23.349571, 25.399708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.381187, 23.511364, 24.694027>,  <12.777952, 23.879438, 24.943439>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.381187, 23.511364, 24.694027> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.212335, 23.214096, 24.901684>,  <13.111023, 23.035736, 25.026278>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.212335, 23.214096, 24.901684>,  <13.381187, 23.511364, 24.694027>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.212335, 23.214096, 24.901684> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489208, -0.668871, -0.559720,
		0.763204, 0.017692, 0.645915,
		-0.422132, -0.743168, 0.519140,
		13.085695, 22.991146, 25.057426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.910540, 23.038027, 24.846260>,  <13.381187, 23.511364, 24.694027>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.910540, 23.038027, 24.846260> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.564094, 22.838373, 24.835604>,  <13.356226, 22.718582, 24.829210>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.564094, 22.838373, 24.835604>,  <13.910540, 23.038027, 24.846260>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.564094, 22.838373, 24.835604> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410650, -0.680163, -0.607244,
		0.284975, -0.536884, 0.794069,
		-0.866116, -0.499133, -0.026642,
		13.304259, 22.688633, 24.827612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.076414, 22.268841, 24.783928>,  <13.910540, 23.038027, 24.846260>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.076414, 22.268841, 24.783928> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.686139, 22.279060, 24.696861>,  <13.451974, 22.285192, 24.644621>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.686139, 22.279060, 24.696861>,  <14.076414, 22.268841, 24.783928>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.686139, 22.279060, 24.696861> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141389, -0.685482, -0.714230,
		-0.167455, -0.727642, 0.665204,
		-0.975689, 0.025549, -0.217667,
		13.393433, 22.286726, 24.631561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.873039, 21.592171, 24.722080>,  <14.076414, 22.268841, 24.783928>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.873039, 21.592171, 24.722080> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.606380, 21.813261, 24.522053>,  <13.446383, 21.945915, 24.402037>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.606380, 21.813261, 24.522053>,  <13.873039, 21.592171, 24.722080>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.606380, 21.813261, 24.522053> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021956, -0.685173, -0.728050,
		-0.745047, -0.474375, 0.468906,
		-0.666650, 0.552726, -0.500071,
		13.406384, 21.979078, 24.372032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.597612, 21.041468, 24.272804>,  <13.873039, 21.592171, 24.722080>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.597612, 21.041468, 24.272804> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.463652, 21.364233, 24.078184>,  <13.383275, 21.557892, 23.961412>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.463652, 21.364233, 24.078184>,  <13.597612, 21.041468, 24.272804>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.463652, 21.364233, 24.078184> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303266, -0.396585, -0.866458,
		-0.892115, -0.437733, -0.111892,
		-0.334902, 0.806914, -0.486550,
		13.363181, 21.606308, 23.932219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.069347, 20.540487, 24.279827>,  <13.597612, 21.041468, 24.272804>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.069347, 20.540487, 24.279827> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.736860, 20.350008, 24.165070>,  <12.537368, 20.235720, 24.096214>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.736860, 20.350008, 24.165070>,  <13.069347, 20.540487, 24.279827>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.736860, 20.350008, 24.165070> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468544, 0.322293, 0.822553,
		-0.299236, 0.818145, -0.491016,
		-0.831219, -0.476200, -0.286895,
		12.487494, 20.207148, 24.079000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.346858, 20.971010, 24.312376>,  <13.069347, 20.540487, 24.279827>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.346858, 20.971010, 24.312376> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.278391, 20.580404, 24.364719>,  <12.237310, 20.346041, 24.396126>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.278391, 20.580404, 24.364719>,  <12.346858, 20.971010, 24.312376>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.278391, 20.580404, 24.364719> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421246, 0.192602, 0.886260,
		-0.890648, 0.096576, -0.444319,
		-0.171169, -0.976513, 0.130858,
		12.227040, 20.287451, 24.403976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.697848, 20.873493, 24.564133>,  <12.346858, 20.971010, 24.312376>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.697848, 20.873493, 24.564133> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.813445, 20.510826, 24.687057>,  <11.882803, 20.293226, 24.760813>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.813445, 20.510826, 24.687057>,  <11.697848, 20.873493, 24.564133>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.813445, 20.510826, 24.687057> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389216, 0.182008, 0.902986,
		-0.874640, -0.380566, -0.300291,
		0.288991, -0.906666, 0.307314,
		11.900143, 20.238827, 24.779251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.095696, 20.509689, 24.941517>,  <11.697848, 20.873493, 24.564133>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.095696, 20.509689, 24.941517> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.422622, 20.311930, 25.059885>,  <11.618777, 20.193274, 25.130907>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.422622, 20.311930, 25.059885>,  <11.095696, 20.509689, 24.941517>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.422622, 20.311930, 25.059885> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255182, 0.149885, 0.955205,
		-0.516605, -0.856216, -0.003659,
		0.817314, -0.494397, 0.295922,
		11.667816, 20.163610, 25.148663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.914164, 20.014225, 25.442461>,  <11.095696, 20.509689, 24.941517>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.914164, 20.014225, 25.442461> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.307399, 20.041325, 25.510515>,  <11.543340, 20.057585, 25.551348>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.307399, 20.041325, 25.510515>,  <10.914164, 20.014225, 25.442461>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.307399, 20.041325, 25.510515> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165210, -0.072716, 0.983574,
		0.079008, -0.995049, -0.060293,
		0.983089, 0.067749, 0.170137,
		11.602325, 20.061649, 25.561556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.977680, 19.654293, 26.049337>,  <10.914164, 20.014225, 25.442461>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.977680, 19.654293, 26.049337> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.295926, 19.896082, 26.033293>,  <11.486874, 20.041155, 26.023666>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.295926, 19.896082, 26.033293>,  <10.977680, 19.654293, 26.049337>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.295926, 19.896082, 26.033293> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185019, 0.305502, 0.934043,
		0.576858, -0.735717, 0.354901,
		0.795615, 0.604474, -0.040110,
		11.534611, 20.077423, 26.021259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.207723, 19.605141, 26.705891>,  <10.977680, 19.654293, 26.049337>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.207723, 19.605141, 26.705891> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.399964, 19.923519, 26.558655>,  <11.515309, 20.114546, 26.470314>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.399964, 19.923519, 26.558655>,  <11.207723, 19.605141, 26.705891>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.399964, 19.923519, 26.558655> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048959, 0.443442, 0.894965,
		0.875570, -0.412102, 0.252089,
		0.480604, 0.795947, -0.368089,
		11.544146, 20.162304, 26.448229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.591243, 18.970947, 26.848539>,  <11.207723, 19.605141, 26.705891>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.591243, 18.970947, 26.848539> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.621523, 18.611874, 27.022177>,  <11.639691, 18.396429, 27.126358>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.621523, 18.611874, 27.022177>,  <11.591243, 18.970947, 26.848539>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.621523, 18.611874, 27.022177> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342542, -0.432259, -0.834157,
		0.936448, -0.085549, -0.340216,
		0.075700, -0.897682, 0.434092,
		11.644233, 18.342569, 27.152405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.082935, 18.452797, 26.449766>,  <11.591243, 18.970947, 26.848539>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.082935, 18.452797, 26.449766> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.838504, 18.203062, 26.644409>,  <11.691845, 18.053221, 26.761196>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.838504, 18.203062, 26.644409>,  <12.082935, 18.452797, 26.449766>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.838504, 18.203062, 26.644409> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268142, -0.415126, -0.869350,
		0.744771, -0.661721, 0.086263,
		-0.611077, -0.624336, 0.486609,
		11.655181, 18.015760, 26.790392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.312495, 17.858913, 26.073851>,  <12.082935, 18.452797, 26.449766>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.312495, 17.858913, 26.073851> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.934555, 17.875914, 26.203743>,  <11.707790, 17.886114, 26.281677>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.934555, 17.875914, 26.203743>,  <12.312495, 17.858913, 26.073851>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.934555, 17.875914, 26.203743> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305962, -0.468188, -0.828967,
		0.116803, -0.882606, 0.455372,
		-0.944851, 0.042501, 0.324730,
		11.651099, 17.888664, 26.301163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.082170, 17.385290, 25.683584>,  <12.312495, 17.858913, 26.073851>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.082170, 17.385290, 25.683584> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.728977, 17.551579, 25.770777>,  <11.517061, 17.651352, 25.823092>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.728977, 17.551579, 25.770777>,  <12.082170, 17.385290, 25.683584>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.728977, 17.551579, 25.770777> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402451, -0.431441, -0.807398,
		-0.241606, -0.800646, 0.548263,
		-0.882983, 0.415721, 0.217982,
		11.464082, 17.676294, 25.836172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.657697, 16.864815, 25.575943>,  <12.082170, 17.385290, 25.683584>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.657697, 16.864815, 25.575943> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.454573, 17.207161, 25.536705>,  <11.332699, 17.412569, 25.513163>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.454573, 17.207161, 25.536705>,  <11.657697, 16.864815, 25.575943>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.454573, 17.207161, 25.536705> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442973, -0.357084, -0.822354,
		-0.738854, -0.374145, 0.560456,
		-0.507810, 0.855866, -0.098097,
		11.302230, 17.463921, 25.507277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.084625, 16.593449, 25.270319>,  <11.657697, 16.864815, 25.575943>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.084625, 16.593449, 25.270319> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.055651, 16.989841, 25.225227>,  <11.038266, 17.227676, 25.198172>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.055651, 16.989841, 25.225227>,  <11.084625, 16.593449, 25.270319>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.055651, 16.989841, 25.225227> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415376, -0.132732, -0.899914,
		-0.906761, -0.018362, 0.421245,
		-0.072437, 0.990982, -0.112730,
		11.033919, 17.287136, 25.191408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.434194, 16.793173, 25.181566>,  <11.084625, 16.593449, 25.270319>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.434194, 16.793173, 25.181566> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.660957, 17.047337, 24.971855>,  <10.797015, 17.199835, 24.846029>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.660957, 17.047337, 24.971855>,  <10.434194, 16.793173, 25.181566>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<10.660957, 17.047337, 24.971855> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399900, -0.344135, -0.849501,
		-0.720204, 0.691249, 0.059007,
		0.566910, 0.635411, -0.524278,
		10.831030, 17.237959, 24.814571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<17.322023, 21.093159, 28.356018> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.404585, 20.730726, 28.503757>,  <17.454123, 20.513268, 28.592402>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.404585, 20.730726, 28.503757>,  <17.322023, 21.093159, 28.356018>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<17.404585, 20.730726, 28.503757> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.967233, 0.131904, -0.216939,
		0.147845, 0.402021, 0.903615,
		0.206404, -0.906080, 0.369347,
		17.466507, 20.458902, 28.614561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.939516, 20.788021, 27.894705>,  <17.322023, 21.093159, 28.356018>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.939516, 20.788021, 27.894705> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.250277, 20.634926, 27.694729>,  <18.436733, 20.543068, 27.574743>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.250277, 20.634926, 27.694729>,  <17.939516, 20.788021, 27.894705>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<18.250277, 20.634926, 27.694729> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623573, -0.357896, -0.695031,
		0.087088, 0.851717, -0.516714,
		0.776899, -0.382738, -0.499939,
		18.483347, 20.520105, 27.544746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.073580, 21.227356, 27.244318>,  <17.939516, 20.788021, 27.894705>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.073580, 21.227356, 27.244318> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.131382, 20.831665, 27.253712>,  <18.166063, 20.594252, 27.259348>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.131382, 20.831665, 27.253712>,  <18.073580, 21.227356, 27.244318>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<18.131382, 20.831665, 27.253712> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.875496, -0.138881, -0.462838,
		0.461112, 0.046325, -0.886132,
		0.144507, -0.989225, 0.023483,
		18.174734, 20.534897, 27.260757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.015829, 20.921715, 26.545801>,  <18.073580, 21.227356, 27.244318>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.015829, 20.921715, 26.545801> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.876326, 20.674253, 26.827406>,  <17.792624, 20.525778, 26.996368>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.876326, 20.674253, 26.827406>,  <18.015829, 20.921715, 26.545801>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<17.876326, 20.674253, 26.827406> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.936686, 0.204918, -0.283951,
		0.031401, -0.758472, -0.650949,
		-0.348761, -0.618651, 0.704015,
		17.771698, 20.488657, 27.038610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.610037, 20.412203, 26.245001>,  <18.015829, 20.921715, 26.545801>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.610037, 20.412203, 26.245001> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.475227, 20.501419, 26.610880>,  <17.394342, 20.554949, 26.830406>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.475227, 20.501419, 26.610880>,  <17.610037, 20.412203, 26.245001>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<17.475227, 20.501419, 26.610880> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.879783, 0.271344, -0.390326,
		-0.335256, -0.936283, 0.104778,
		-0.337024, 0.223041, 0.914695,
		17.374121, 20.568331, 26.885288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.997025, 20.088358, 26.344244>,  <17.610037, 20.412203, 26.245001>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.997025, 20.088358, 26.344244> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.991735, 20.417629, 26.571297>,  <16.988562, 20.615192, 26.707527>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.991735, 20.417629, 26.571297>,  <16.997025, 20.088358, 26.344244>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.991735, 20.417629, 26.571297> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.867435, 0.272932, -0.416010,
		-0.497374, -0.497883, 0.710445,
		-0.013221, 0.823177, 0.567630,
		16.987768, 20.664583, 26.741587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.668171, 19.385042, 26.395145>,  <16.997025, 20.088358, 26.344244>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.668171, 19.385042, 26.395145> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.364025, 19.163361, 26.530615>,  <16.181538, 19.030352, 26.611897>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.364025, 19.163361, 26.530615>,  <16.668171, 19.385042, 26.395145>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.364025, 19.163361, 26.530615> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358640, -0.793001, -0.492470,
		0.541499, -0.252995, 0.801731,
		-0.760366, -0.554205, 0.338676,
		16.135916, 18.997099, 26.632217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.959440, 18.832319, 26.790834>,  <16.668171, 19.385042, 26.395145>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.959440, 18.832319, 26.790834> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.598944, 18.719894, 26.658913>,  <16.382647, 18.652439, 26.579760>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.598944, 18.719894, 26.658913>,  <16.959440, 18.832319, 26.790834>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.598944, 18.719894, 26.658913> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398847, -0.835560, -0.377837,
		-0.169374, -0.472063, 0.865141,
		-0.901240, -0.281063, -0.329803,
		16.328571, 18.635576, 26.559971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.939564, 18.095047, 26.781128>,  <16.959440, 18.832319, 26.790834>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.939564, 18.095047, 26.781128> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.630508, 18.183434, 26.543068>,  <16.445076, 18.236465, 26.400232>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.630508, 18.183434, 26.543068>,  <16.939564, 18.095047, 26.781128>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.630508, 18.183434, 26.543068> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148539, -0.848527, -0.507876,
		-0.617223, -0.480808, 0.622783,
		-0.772639, 0.220965, -0.595150,
		16.398716, 18.249723, 26.364523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.652514, 17.471567, 26.688694>,  <16.939564, 18.095047, 26.781128>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.652514, 17.471567, 26.688694> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.542595, 17.706507, 26.384193>,  <16.476645, 17.847471, 26.201492>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.542595, 17.706507, 26.384193>,  <16.652514, 17.471567, 26.688694>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.542595, 17.706507, 26.384193> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199355, -0.739724, -0.642703,
		-0.940609, -0.328372, 0.086182,
		-0.274796, 0.587351, -0.761253,
		16.460155, 17.882711, 26.155817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.337404, 16.994137, 26.218010>,  <16.652514, 17.471567, 26.688694>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.337404, 16.994137, 26.218010> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.414124, 17.320259, 25.999474>,  <16.460155, 17.515932, 25.868351>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.414124, 17.320259, 25.999474>,  <16.337404, 16.994137, 26.218010>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.414124, 17.320259, 25.999474> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244671, -0.578823, -0.777882,
		-0.950447, 0.015523, -0.310500,
		0.191799, 0.815306, -0.546342,
		16.471663, 17.564850, 25.835571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.093737, 16.790117, 25.552204>,  <16.337404, 16.994137, 26.218010>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.093737, 16.790117, 25.552204> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.376951, 17.068871, 25.506529>,  <16.546881, 17.236122, 25.479124>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.376951, 17.068871, 25.506529>,  <16.093737, 16.790117, 25.552204>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.376951, 17.068871, 25.506529> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344836, -0.482305, -0.805277,
		-0.616255, 0.530791, -0.581800,
		0.708038, 0.696881, -0.114187,
		16.589363, 17.277935, 25.472273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.290094, 16.688805, 25.175846>,  <16.093737, 16.790117, 25.552204>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.290094, 16.688805, 25.175846> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.183012, 16.359238, 25.375645>,  <15.118762, 16.161497, 25.495523>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.183012, 16.359238, 25.375645>,  <15.290094, 16.688805, 25.175846>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.183012, 16.359238, 25.375645> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051826, 0.505353, 0.861355,
		-0.962106, 0.256477, -0.092586,
		-0.267707, -0.823916, 0.499495,
		15.102700, 16.112062, 25.525494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.908226, 16.938103, 25.686504>,  <15.290094, 16.688805, 25.175846>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.908226, 16.938103, 25.686504> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.953771, 16.562401, 25.816019>,  <14.981097, 16.336981, 25.893728>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.953771, 16.562401, 25.816019>,  <14.908226, 16.938103, 25.686504>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.953771, 16.562401, 25.816019> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048231, 0.330750, 0.942485,
		-0.992325, -0.091695, 0.082961,
		0.113861, -0.939253, 0.323789,
		14.987929, 16.280624, 25.913157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.401550, 16.808613, 26.227774>,  <14.908226, 16.938103, 25.686504>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.401550, 16.808613, 26.227774> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.676258, 16.525772, 26.295128>,  <14.841083, 16.356068, 26.335541>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.676258, 16.525772, 26.295128>,  <14.401550, 16.808613, 26.227774>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.676258, 16.525772, 26.295128> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113735, 0.124264, 0.985709,
		-0.717922, -0.696106, 0.004918,
		0.686769, -0.707103, 0.168384,
		14.882289, 16.313641, 26.345644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.158313, 16.277210, 26.825182>,  <14.401550, 16.808613, 26.227774>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.158313, 16.277210, 26.825182> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.557426, 16.294258, 26.804747>,  <14.796895, 16.304487, 26.792486>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.557426, 16.294258, 26.804747>,  <14.158313, 16.277210, 26.825182>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.557426, 16.294258, 26.804747> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045694, 0.119125, 0.991827,
		0.048353, -0.991964, 0.116914,
		0.997784, 0.042616, -0.051087,
		14.856762, 16.307043, 26.789421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.376256, 15.771062, 27.345560>,  <14.158313, 16.277210, 26.825182>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.376256, 15.771062, 27.345560> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.706991, 15.987499, 27.284166>,  <14.905432, 16.117361, 27.247330>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.706991, 15.987499, 27.284166>,  <14.376256, 15.771062, 27.345560>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.706991, 15.987499, 27.284166> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112608, 0.108100, 0.987742,
		0.551053, -0.833985, 0.028449,
		0.826838, 0.541094, -0.153483,
		14.955043, 16.149828, 27.238121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.914404, 15.502777, 27.853649>,  <14.376256, 15.771062, 27.345560>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.914404, 15.502777, 27.853649> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.045646, 15.869230, 27.761520>,  <15.124391, 16.089102, 27.706244>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.045646, 15.869230, 27.761520>,  <14.914404, 15.502777, 27.853649>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.045646, 15.869230, 27.761520> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179280, 0.178998, 0.967377,
		0.927474, -0.358692, -0.105514,
		0.328103, 0.916133, -0.230322,
		15.144076, 16.144070, 27.692423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.623338, 15.590880, 28.245852>,  <14.914404, 15.502777, 27.853649>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.623338, 15.590880, 28.245852> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.501065, 15.960608, 28.154470>,  <15.427702, 16.182446, 28.099642>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.501065, 15.960608, 28.154470>,  <15.623338, 15.590880, 28.245852>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.501065, 15.960608, 28.154470> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303140, 0.321933, 0.896920,
		0.902588, 0.204917, -0.378607,
		-0.305681, 0.924321, -0.228454,
		15.409361, 16.237906, 28.085934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.103245, 16.041544, 28.586458>,  <15.623338, 15.590880, 28.245852>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.103245, 16.041544, 28.586458> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.782006, 16.265614, 28.505226>,  <15.589263, 16.400055, 28.456488>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.782006, 16.265614, 28.505226>,  <16.103245, 16.041544, 28.586458>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.782006, 16.265614, 28.505226> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186181, 0.559670, 0.807531,
		0.566016, 0.610715, -0.553762,
		-0.803095, 0.560176, -0.203079,
		15.541078, 16.433666, 28.444302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.358448, 16.610865, 28.831245>,  <16.103245, 16.041544, 28.586458>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.358448, 16.610865, 28.831245> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.962937, 16.670164, 28.823854>,  <15.725631, 16.705744, 28.819420>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.962937, 16.670164, 28.823854>,  <16.358448, 16.610865, 28.831245>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.962937, 16.670164, 28.823854> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063388, 0.528318, 0.846677,
		0.135281, 0.836004, -0.531786,
		-0.988778, 0.148248, -0.018479,
		15.666304, 16.714638, 28.818312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.283056, 17.205696, 29.123631>,  <16.358448, 16.610865, 28.831245>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.283056, 17.205696, 29.123631> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.894400, 17.111168, 29.120457>,  <15.661205, 17.054451, 29.118553>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.894400, 17.111168, 29.120457>,  <16.283056, 17.205696, 29.123631>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.894400, 17.111168, 29.120457> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122919, 0.476158, 0.870727,
		-0.201993, 0.847010, -0.491704,
		-0.971643, -0.236321, -0.007933,
		15.602907, 17.040272, 29.118076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.855507, 17.689125, 29.118664>,  <16.283056, 17.205696, 29.123631>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.855507, 17.689125, 29.118664> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.640198, 17.405169, 29.300352>,  <15.511012, 17.234795, 29.409365>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.640198, 17.405169, 29.300352>,  <15.855507, 17.689125, 29.118664>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.640198, 17.405169, 29.300352> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253721, 0.650456, 0.715914,
		-0.803672, 0.270111, -0.530236,
		-0.538272, -0.709892, 0.454221,
		15.478716, 17.192202, 29.436619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.314050, 18.067345, 29.440952>,  <15.855507, 17.689125, 29.118664>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.314050, 18.067345, 29.440952> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.298903, 17.716454, 29.632381>,  <15.289814, 17.505919, 29.747240>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.298903, 17.716454, 29.632381>,  <15.314050, 18.067345, 29.440952>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.298903, 17.716454, 29.632381> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364686, 0.458018, 0.810693,
		-0.930360, -0.143831, -0.337257,
		-0.037867, -0.877230, 0.478575,
		15.287542, 17.453285, 29.775953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.664010, 18.001738, 29.537645>,  <15.314050, 18.067345, 29.440952>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.664010, 18.001738, 29.537645> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.864841, 17.802742, 29.820608>,  <14.985340, 17.683344, 29.990385>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.864841, 17.802742, 29.820608>,  <14.664010, 18.001738, 29.537645>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.864841, 17.802742, 29.820608> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453113, 0.545394, 0.705148,
		-0.736618, -0.674574, 0.048411,
		0.502078, -0.497489, 0.707406,
		15.015465, 17.653496, 30.032829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.232626, 17.879086, 30.062365>,  <14.664010, 18.001738, 29.537645>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.232626, 17.879086, 30.062365> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.585617, 17.851435, 30.248463>,  <14.797412, 17.834845, 30.360123>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.585617, 17.851435, 30.248463>,  <14.232626, 17.879086, 30.062365>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.585617, 17.851435, 30.248463> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352511, 0.557662, 0.751498,
		-0.311398, -0.827185, 0.467757,
		0.882478, -0.069126, 0.465247,
		14.850361, 17.830698, 30.388037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.801036, 17.563356, 29.534716>,  <14.232626, 17.879086, 30.062365>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.801036, 17.563356, 29.534716> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.570677, 17.887922, 29.574614>,  <13.432461, 18.082661, 29.598553>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.570677, 17.887922, 29.574614>,  <13.801036, 17.563356, 29.534716>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.570677, 17.887922, 29.574614> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644298, -0.375382, -0.666309,
		-0.503211, -0.447991, 0.738974,
		-0.575898, 0.811414, 0.099744,
		13.397907, 18.131346, 29.604536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.182668, 17.329788, 29.494753>,  <13.801036, 17.563356, 29.534716>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.182668, 17.329788, 29.494753> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.095326, 17.710997, 29.410778>,  <13.042922, 17.939722, 29.360394>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.095326, 17.710997, 29.410778>,  <13.182668, 17.329788, 29.494753>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.095326, 17.710997, 29.410778> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.680667, -0.302893, -0.667044,
		-0.699296, -0.002754, 0.714827,
		-0.218353, 0.953021, -0.209938,
		13.029820, 17.996902, 29.347797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.447984, 17.467060, 29.413809>,  <13.182668, 17.329788, 29.494753>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.447984, 17.467060, 29.413809> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.607537, 17.786659, 29.233812>,  <12.703269, 17.978418, 29.125814>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.607537, 17.786659, 29.233812>,  <12.447984, 17.467060, 29.413809>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.607537, 17.786659, 29.233812> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.650612, -0.099225, -0.752900,
		-0.646217, 0.593089, 0.480259,
		0.398883, 0.798999, -0.449992,
		12.727202, 18.026360, 29.098814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.850840, 17.890057, 29.191298>,  <12.447984, 17.467060, 29.413809>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.850840, 17.890057, 29.191298> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.141250, 18.042459, 28.962311>,  <12.315495, 18.133902, 28.824919>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.141250, 18.042459, 28.962311>,  <11.850840, 17.890057, 29.191298>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.141250, 18.042459, 28.962311> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604817, -0.042352, -0.795238,
		-0.327238, 0.923601, 0.199692,
		0.726025, 0.381009, -0.572468,
		12.359057, 18.156761, 28.790571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.558448, 18.461855, 28.825584>,  <11.850840, 17.890057, 29.191298>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.558448, 18.461855, 28.825584> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.883577, 18.389860, 28.603983>,  <12.078655, 18.346664, 28.471022>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.883577, 18.389860, 28.603983>,  <11.558448, 18.461855, 28.825584>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.883577, 18.389860, 28.603983> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545861, 0.096669, -0.832280,
		0.203353, 0.978908, -0.019672,
		0.812824, -0.179985, -0.554006,
		12.127424, 18.335865, 28.437780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.407978, 18.789980, 28.247307>,  <11.558448, 18.461855, 28.825584>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.407978, 18.789980, 28.247307> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.686361, 18.531536, 28.121967>,  <11.853391, 18.376471, 28.046764>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.686361, 18.531536, 28.121967>,  <11.407978, 18.789980, 28.247307>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.686361, 18.531536, 28.121967> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422138, -0.015122, -0.906406,
		0.580899, 0.763095, -0.283272,
		0.695957, -0.646109, -0.313347,
		11.895148, 18.337704, 28.027964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.585586, 19.032606, 27.574863>,  <11.407978, 18.789980, 28.247307>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.585586, 19.032606, 27.574863> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.692368, 18.648575, 27.608284>,  <11.756436, 18.418156, 27.628336>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.692368, 18.648575, 27.608284>,  <11.585586, 19.032606, 27.574863>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.692368, 18.648575, 27.608284> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336654, -0.174141, -0.925386,
		0.902995, 0.218907, -0.369702,
		0.266954, -0.960080, 0.083552,
		11.772454, 18.360550, 27.633350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.959339, 19.773958, 27.289339>,  <11.585586, 19.032606, 27.574863>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.959339, 19.773958, 27.289339> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.849535, 20.086592, 27.065277>,  <11.783652, 20.274172, 26.930840>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.849535, 20.086592, 27.065277>,  <11.959339, 19.773958, 27.289339>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.849535, 20.086592, 27.065277> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020287, 0.577694, 0.816001,
		0.961370, 0.235364, -0.142726,
		-0.274510, 0.781584, -0.560153,
		11.767182, 20.321068, 26.897232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.340441, 20.310633, 27.471928>,  <11.959339, 19.773958, 27.289339>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.340441, 20.310633, 27.471928> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.025463, 20.492500, 27.305456>,  <11.836476, 20.601622, 27.205572>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.025463, 20.492500, 27.305456>,  <12.340441, 20.310633, 27.471928>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.025463, 20.492500, 27.305456> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105657, 0.565637, 0.817858,
		0.607262, 0.687990, -0.397368,
		-0.787445, 0.454669, -0.416181,
		11.789229, 20.628901, 27.180601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.408678, 21.051760, 27.624159>,  <12.340441, 20.310633, 27.471928>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.408678, 21.051760, 27.624159> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.023299, 21.034452, 27.518408>,  <11.792071, 21.024069, 27.454956>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.023299, 21.034452, 27.518408>,  <12.408678, 21.051760, 27.624159>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.023299, 21.034452, 27.518408> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218839, 0.696344, 0.683531,
		0.154525, 0.716402, -0.680360,
		-0.963448, -0.043267, -0.264379,
		11.734265, 21.021473, 27.439095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.216865, 21.701956, 27.681229>,  <12.408678, 21.051760, 27.624159>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.216865, 21.701956, 27.681229> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.869207, 21.505413, 27.703699>,  <11.660613, 21.387487, 27.717180>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.869207, 21.505413, 27.703699>,  <12.216865, 21.701956, 27.681229>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.869207, 21.505413, 27.703699> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300876, 0.615487, 0.728457,
		-0.392508, 0.616232, -0.682785,
		-0.869144, -0.491359, 0.056174,
		11.608464, 21.358006, 27.720551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.751889, 22.171305, 27.676184>,  <12.216865, 21.701956, 27.681229>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.751889, 22.171305, 27.676184> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.566356, 21.857738, 27.841269>,  <11.455035, 21.669598, 27.940319>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.566356, 21.857738, 27.841269>,  <11.751889, 22.171305, 27.676184>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.566356, 21.857738, 27.841269> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376164, 0.596047, 0.709386,
		-0.802096, 0.173789, -0.571348,
		-0.463834, -0.783917, 0.412714,
		11.427206, 21.622564, 27.965082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.055330, 22.379375, 27.934395>,  <11.751889, 22.171305, 27.676184>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.055330, 22.379375, 27.934395> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.119593, 22.036661, 28.130400>,  <11.158150, 21.831034, 28.248003>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.119593, 22.036661, 28.130400>,  <11.055330, 22.379375, 27.934395>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.119593, 22.036661, 28.130400> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233820, 0.449290, 0.862245,
		-0.958915, -0.253099, -0.128152,
		0.160656, -0.856784, 0.490011,
		11.167789, 21.779625, 28.277403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.506977, 22.348728, 28.406620>,  <11.055330, 22.379375, 27.934395>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.506977, 22.348728, 28.406620> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.759432, 22.084055, 28.568531>,  <10.910905, 21.925251, 28.665678>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.759432, 22.084055, 28.568531>,  <10.506977, 22.348728, 28.406620>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<10.759432, 22.084055, 28.568531> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113942, 0.437092, 0.892170,
		-0.767257, -0.609203, 0.200471,
		0.631137, -0.661682, 0.404776,
		10.948772, 21.885550, 28.689964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.218776, 21.988237, 28.977921>,  <10.506977, 22.348728, 28.406620>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.218776, 21.988237, 28.977921> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.611874, 21.973274, 29.050379>,  <10.847733, 21.964296, 29.093855>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.611874, 21.973274, 29.050379>,  <10.218776, 21.988237, 28.977921>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<10.611874, 21.973274, 29.050379> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161409, 0.304877, 0.938615,
		-0.090338, -0.951657, 0.293578,
		0.982744, -0.037407, 0.181148,
		10.906697, 21.962053, 29.104723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.199945, 21.900814, 29.688427>,  <10.218776, 21.988237, 28.977921>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.199945, 21.900814, 29.688427> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.586159, 21.982441, 29.623802>,  <10.817886, 22.031418, 29.585028>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.586159, 21.982441, 29.623802>,  <10.199945, 21.900814, 29.688427>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<10.586159, 21.982441, 29.623802> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104420, 0.264878, 0.958612,
		0.238413, -0.942442, 0.234441,
		0.965534, 0.204065, -0.161560,
		10.875818, 22.043661, 29.575335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<14.421359, 16.611277, 15.111955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.679074, 16.888062, 15.242233>,  <14.833704, 17.054132, 15.320400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.679074, 16.888062, 15.242233>,  <14.421359, 16.611277, 15.111955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.679074, 16.888062, 15.242233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571209, 0.152216, 0.806567,
		0.508540, -0.705702, 0.493328,
		0.644288, 0.691965, 0.325695,
		14.872361, 17.095652, 15.339942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.547619, 16.485199, 15.853081>,  <14.421359, 16.611277, 15.111955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.547619, 16.485199, 15.853081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.642218, 16.872452, 15.820127>,  <14.698977, 17.104803, 15.800355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.642218, 16.872452, 15.820127>,  <14.547619, 16.485199, 15.853081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.642218, 16.872452, 15.820127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528683, 0.199358, 0.825076,
		0.815208, -0.151572, 0.558984,
		0.236496, 0.968134, -0.082384,
		14.713166, 17.162891, 15.795412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.742764, 16.689312, 16.547007>,  <14.547619, 16.485199, 15.853081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.742764, 16.689312, 16.547007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.659846, 17.026026, 16.347637>,  <14.610096, 17.228054, 16.228016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.659846, 17.026026, 16.347637>,  <14.742764, 16.689312, 16.547007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.659846, 17.026026, 16.347637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577180, 0.306127, 0.757066,
		0.789869, 0.444614, 0.422405,
		-0.207293, 0.841787, -0.498423,
		14.597658, 17.278563, 16.198111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.845602, 17.253305, 16.977705>,  <14.742764, 16.689312, 16.547007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.845602, 17.253305, 16.977705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.581117, 17.374670, 16.703264>,  <14.422425, 17.447489, 16.538599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.581117, 17.374670, 16.703264>,  <14.845602, 17.253305, 16.977705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.581117, 17.374670, 16.703264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588342, 0.357709, 0.725188,
		0.465457, 0.883168, -0.058012,
		-0.661214, 0.303413, -0.686103,
		14.382752, 17.465694, 16.497433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.639980, 17.958626, 17.147821>,  <14.845602, 17.253305, 16.977705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.639980, 17.958626, 17.147821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.355408, 17.815960, 16.905615>,  <14.184664, 17.730360, 16.760290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.355408, 17.815960, 16.905615>,  <14.639980, 17.958626, 17.147821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.355408, 17.815960, 16.905615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.702726, 0.353337, 0.617518,
		-0.006296, 0.864836, -0.502014,
		-0.711433, -0.356666, -0.605519,
		14.141978, 17.708960, 16.723959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.090853, 18.533136, 17.091728>,  <14.639980, 17.958626, 17.147821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.090853, 18.533136, 17.091728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.899244, 18.199886, 16.981138>,  <13.784279, 17.999935, 16.914783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.899244, 18.199886, 16.981138>,  <14.090853, 18.533136, 17.091728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.899244, 18.199886, 16.981138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.811668, 0.300450, 0.500925,
		-0.334266, 0.464361, -0.820143,
		-0.479022, -0.833126, -0.276477,
		13.755538, 17.949949, 16.898195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.451367, 18.774307, 17.059992>,  <14.090853, 18.533136, 17.091728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.451367, 18.774307, 17.059992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.416759, 18.376966, 17.090374>,  <13.395995, 18.138563, 17.108603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.416759, 18.376966, 17.090374>,  <13.451367, 18.774307, 17.059992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.416759, 18.376966, 17.090374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.813019, 0.114464, 0.570874,
		-0.575772, -0.012361, -0.817517,
		-0.086520, -0.993350, 0.075955,
		13.390803, 18.078960, 17.113161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.768887, 18.527987, 16.871048>,  <13.451367, 18.774307, 17.059992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.768887, 18.527987, 16.871048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.911065, 18.238403, 17.107536>,  <12.996372, 18.064653, 17.249430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.911065, 18.238403, 17.107536>,  <12.768887, 18.527987, 16.871048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.911065, 18.238403, 17.107536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.739110, 0.169499, 0.651910,
		-0.572166, -0.668697, -0.474836,
		0.355446, -0.723957, 0.591222,
		13.017699, 18.021215, 17.284903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.130320, 18.224218, 17.209303>,  <12.768887, 18.527987, 16.871048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.130320, 18.224218, 17.209303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.431247, 18.077303, 17.428070>,  <12.611803, 17.989153, 17.559330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.431247, 18.077303, 17.428070>,  <12.130320, 18.224218, 17.209303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.431247, 18.077303, 17.428070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561972, 0.075466, 0.823706,
		-0.343812, -0.927040, -0.149632,
		0.752317, -0.367289, 0.546917,
		12.656942, 17.967117, 17.592146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.843169, 17.706520, 17.476294>,  <12.130320, 18.224218, 17.209303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.843169, 17.706520, 17.476294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.159201, 17.783302, 17.709164>,  <12.348820, 17.829372, 17.848886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.159201, 17.783302, 17.709164>,  <11.843169, 17.706520, 17.476294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.159201, 17.783302, 17.709164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590060, -0.019263, 0.807130,
		0.166150, -0.981214, 0.098047,
		0.790078, 0.191958, 0.582175,
		12.396224, 17.840889, 17.883816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.781447, 17.207817, 18.001938>,  <11.843169, 17.706520, 17.476294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.781447, 17.207817, 18.001938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.012254, 17.505657, 18.136175>,  <12.150738, 17.684361, 18.216717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.012254, 17.505657, 18.136175>,  <11.781447, 17.207817, 18.001938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.012254, 17.505657, 18.136175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455271, -0.047897, 0.889064,
		0.678071, -0.665790, 0.311358,
		0.577016, 0.744600, 0.335592,
		12.185359, 17.729038, 18.236853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.735119, 17.126608, 18.715761>,  <11.781447, 17.207817, 18.001938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.735119, 17.126608, 18.715761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.905599, 17.487656, 18.691662>,  <12.007887, 17.704285, 18.677202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.905599, 17.487656, 18.691662>,  <11.735119, 17.126608, 18.715761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.905599, 17.487656, 18.691662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364103, 0.232126, 0.901968,
		0.828120, -0.362482, 0.427579,
		0.426199, 0.902621, -0.060248,
		12.033459, 17.758442, 18.673588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.987239, 16.509716, 19.106928>,  <11.735119, 17.126608, 18.715761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.987239, 16.509716, 19.106928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.714143, 16.219482, 19.072531>,  <11.550285, 16.045343, 19.051891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.714143, 16.219482, 19.072531>,  <11.987239, 16.509716, 19.106928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.714143, 16.219482, 19.072531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531698, -0.412647, -0.739608,
		0.501162, -0.550683, 0.667521,
		-0.682741, -0.725583, -0.085994,
		11.509320, 16.001808, 19.046732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.316067, 15.840102, 18.814070>,  <11.987239, 16.509716, 19.106928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.316067, 15.840102, 18.814070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.924256, 15.788317, 18.752399>,  <11.689170, 15.757245, 18.715397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.924256, 15.788317, 18.752399>,  <12.316067, 15.840102, 18.814070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.924256, 15.788317, 18.752399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201280, -0.614321, -0.762952,
		0.004063, -0.778363, 0.627801,
		-0.979525, -0.129464, -0.154173,
		11.630399, 15.749477, 18.706148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.180547, 15.081508, 18.574286>,  <12.316067, 15.840102, 18.814070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.180547, 15.081508, 18.574286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.843060, 15.259224, 18.453789>,  <11.640568, 15.365854, 18.381491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.843060, 15.259224, 18.453789>,  <12.180547, 15.081508, 18.574286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.843060, 15.259224, 18.453789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151090, -0.341944, -0.927494,
		-0.515086, -0.828057, 0.221376,
		-0.843717, 0.444292, -0.301242,
		11.589945, 15.392511, 18.363417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.968898, 14.686226, 18.083992>,  <12.180547, 15.081508, 18.574286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.968898, 14.686226, 18.083992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.741067, 15.003809, 17.998940>,  <11.604368, 15.194359, 17.947908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.741067, 15.003809, 17.998940>,  <11.968898, 14.686226, 18.083992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.741067, 15.003809, 17.998940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010074, -0.265417, -0.964081,
		-0.821876, -0.546977, 0.159174,
		-0.569578, 0.793958, -0.212630,
		11.570193, 15.241997, 17.935150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.633862, 14.516870, 17.590755>,  <11.968898, 14.686226, 18.083992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.633862, 14.516870, 17.590755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.571743, 14.909697, 17.547995>,  <11.534472, 15.145392, 17.522339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.571743, 14.909697, 17.547995>,  <11.633862, 14.516870, 17.590755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.571743, 14.909697, 17.547995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040274, -0.114418, -0.992616,
		-0.987047, -0.149844, 0.057321,
		-0.155296, 0.982067, -0.106901,
		11.525154, 15.204317, 17.515924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.015653, 14.573875, 17.103886>,  <11.633862, 14.516870, 17.590755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.015653, 14.573875, 17.103886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.220142, 14.917650, 17.105549>,  <11.342836, 15.123916, 17.106546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.220142, 14.917650, 17.105549>,  <11.015653, 14.573875, 17.103886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.220142, 14.917650, 17.105549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087232, -0.047071, -0.995075,
		-0.855009, 0.509069, -0.099034,
		0.511224, 0.859438, 0.004160,
		11.373509, 15.175482, 17.106796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.726962, 15.051463, 16.571413>,  <11.015653, 14.573875, 17.103886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.726962, 15.051463, 16.571413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.097287, 15.185079, 16.642168>,  <11.319483, 15.265247, 16.684620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.097287, 15.185079, 16.642168>,  <10.726962, 15.051463, 16.571413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.097287, 15.185079, 16.642168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153355, 0.095773, -0.983519,
		-0.345474, 0.937681, 0.037442,
		0.925813, 0.334038, 0.176885,
		11.375031, 15.285290, 16.695234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.806789, 15.521321, 16.105261>,  <10.726962, 15.051463, 16.571413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.806789, 15.521321, 16.105261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.185392, 15.461465, 16.219614>,  <11.412555, 15.425551, 16.288227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.185392, 15.461465, 16.219614>,  <10.806789, 15.521321, 16.105261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.185392, 15.461465, 16.219614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241377, -0.259637, -0.935054,
		0.214148, 0.954042, -0.209629,
		0.946508, -0.149640, 0.285885,
		11.469345, 15.416573, 16.305380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.212947, 15.872319, 15.661528>,  <10.806789, 15.521321, 16.105261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.212947, 15.872319, 15.661528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.458578, 15.581450, 15.784246>,  <11.605957, 15.406927, 15.857878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.458578, 15.581450, 15.784246>,  <11.212947, 15.872319, 15.661528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.458578, 15.581450, 15.784246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256285, -0.183935, -0.948940,
		0.746476, 0.661351, 0.073413,
		0.614079, -0.727175, 0.306797,
		11.642801, 15.363297, 15.876286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.699990, 15.960529, 15.224009>,  <11.212947, 15.872319, 15.661528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.699990, 15.960529, 15.224009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.732710, 15.594962, 15.383036>,  <11.752341, 15.375622, 15.478452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.732710, 15.594962, 15.383036>,  <11.699990, 15.960529, 15.224009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.732710, 15.594962, 15.383036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261665, -0.365218, -0.893391,
		0.961686, 0.177108, 0.209266,
		0.081799, -0.913919, 0.397568,
		11.757250, 15.320786, 15.502306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.299499, 15.755213, 14.977802>,  <11.699990, 15.960529, 15.224009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.299499, 15.755213, 14.977802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.141999, 15.402903, 15.083022>,  <12.047500, 15.191516, 15.146154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.141999, 15.402903, 15.083022>,  <12.299499, 15.755213, 14.977802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.141999, 15.402903, 15.083022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329739, -0.402459, -0.853990,
		0.858041, -0.249519, 0.448894,
		-0.393748, -0.880776, 0.263051,
		12.023875, 15.138670, 15.161938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.748582, 15.361922, 14.817411>,  <12.299499, 15.755213, 14.977802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.748582, 15.361922, 14.817411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.440768, 15.107133, 14.835664>,  <12.256080, 14.954260, 14.846615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.440768, 15.107133, 14.835664>,  <12.748582, 15.361922, 14.817411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.440768, 15.107133, 14.835664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396263, -0.532320, -0.748072,
		0.500792, -0.557585, 0.662047,
		-0.769535, -0.636973, 0.045631,
		12.209908, 14.916041, 14.849353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.978257, 14.550357, 14.898457>,  <12.748582, 15.361922, 14.817411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.978257, 14.550357, 14.898457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.628928, 14.609728, 14.712865>,  <12.419331, 14.645350, 14.601510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.628928, 14.609728, 14.712865>,  <12.978257, 14.550357, 14.898457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.628928, 14.609728, 14.712865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306857, -0.572120, -0.760604,
		-0.378345, -0.806628, 0.454100,
		-0.873324, 0.148427, -0.463978,
		12.366931, 14.654256, 14.573671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.548096, 13.910243, 14.786087>,  <12.978257, 14.550357, 14.898457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.548096, 13.910243, 14.786087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.505495, 14.176367, 14.490514>,  <12.479935, 14.336041, 14.313170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.505495, 14.176367, 14.490514>,  <12.548096, 13.910243, 14.786087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.505495, 14.176367, 14.490514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413557, -0.646190, -0.641412,
		-0.904228, -0.373902, -0.206323,
		-0.106501, 0.665309, -0.738932,
		12.473545, 14.375959, 14.268834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.770892, 13.323027, 15.244354>,  <12.548096, 13.910243, 14.786087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.770892, 13.323027, 15.244354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.085896, 13.081832, 15.193388>,  <13.274898, 12.937115, 15.162808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.085896, 13.081832, 15.193388>,  <12.770892, 13.323027, 15.244354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.085896, 13.081832, 15.193388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010782, -0.220191, 0.975397,
		-0.616209, -0.766760, -0.179904,
		0.787509, -0.602988, -0.127416,
		13.322148, 12.900935, 15.155163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.708792, 12.773437, 15.633316>,  <12.770892, 13.323027, 15.244354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.708792, 12.773437, 15.633316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.107427, 12.745019, 15.616511>,  <13.346608, 12.727968, 15.606428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.107427, 12.745019, 15.616511>,  <12.708792, 12.773437, 15.633316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.107427, 12.745019, 15.616511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014158, -0.354331, 0.935013,
		-0.081314, -0.932417, -0.352116,
		0.996588, -0.071045, -0.042013,
		13.406403, 12.723705, 15.603908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.991574, 12.158125, 16.018478>,  <12.708792, 12.773437, 15.633316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.991574, 12.158125, 16.018478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.265095, 12.449115, 15.995858>,  <13.429207, 12.623709, 15.982285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.265095, 12.449115, 15.995858>,  <12.991574, 12.158125, 16.018478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.265095, 12.449115, 15.995858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034650, 0.045043, 0.998384,
		0.728846, -0.684655, 0.005593,
		0.683800, 0.727474, -0.056553,
		13.470235, 12.667357, 15.978892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.529459, 12.041832, 16.519691>,  <12.991574, 12.158125, 16.018478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.529459, 12.041832, 16.519691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.617879, 12.421610, 16.430525>,  <13.670931, 12.649477, 16.377026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.617879, 12.421610, 16.430525>,  <13.529459, 12.041832, 16.519691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.617879, 12.421610, 16.430525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161946, 0.189663, 0.968402,
		0.961723, -0.250165, -0.111834,
		0.221049, 0.949445, -0.222917,
		13.684194, 12.706444, 16.363649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.013673, 12.176913, 17.047386>,  <13.529459, 12.041832, 16.519691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.013673, 12.176913, 17.047386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.851057, 12.520664, 16.923323>,  <13.753488, 12.726914, 16.848885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.851057, 12.520664, 16.923323>,  <14.013673, 12.176913, 17.047386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.851057, 12.520664, 16.923323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032710, 0.352949, 0.935071,
		0.913048, 0.369997, -0.171597,
		-0.406539, 0.859377, -0.310157,
		13.729095, 12.778478, 16.830276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.406348, 12.700508, 17.421047>,  <14.013673, 12.176913, 17.047386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.406348, 12.700508, 17.421047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.063964, 12.883840, 17.325327>,  <13.858533, 12.993838, 17.267895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.063964, 12.883840, 17.325327>,  <14.406348, 12.700508, 17.421047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.063964, 12.883840, 17.325327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081714, 0.337093, 0.937918,
		0.510542, 0.822376, -0.251087,
		-0.855961, 0.458329, -0.239300,
		13.807176, 13.021338, 17.253536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.544664, 13.426309, 17.549799>,  <14.406348, 12.700508, 17.421047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.544664, 13.426309, 17.549799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.151532, 13.352707, 17.555285>,  <13.915653, 13.308546, 17.558577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.151532, 13.352707, 17.555285>,  <14.544664, 13.426309, 17.549799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.151532, 13.352707, 17.555285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077472, 0.478973, 0.874404,
		-0.167463, 0.858328, -0.485005,
		-0.982830, -0.184005, 0.013714,
		13.856683, 13.297505, 17.559399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.272829, 14.056611, 17.798792>,  <14.544664, 13.426309, 17.549799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.272829, 14.056611, 17.798792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.994492, 13.776102, 17.860781>,  <13.827489, 13.607797, 17.897974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.994492, 13.776102, 17.860781>,  <14.272829, 14.056611, 17.798792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.994492, 13.776102, 17.860781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145849, 0.349265, 0.925604,
		-0.703227, 0.621474, -0.345314,
		-0.695845, -0.701273, 0.154971,
		13.785738, 13.565720, 17.907272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.789821, 14.384956, 18.257589>,  <14.272829, 14.056611, 17.798792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.789821, 14.384956, 18.257589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.691576, 13.997503, 18.272696>,  <13.632629, 13.765032, 18.281759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.691576, 13.997503, 18.272696>,  <13.789821, 14.384956, 18.257589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.691576, 13.997503, 18.272696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204978, 0.089976, 0.974622,
		-0.947449, 0.231636, -0.220647,
		-0.245611, -0.968633, 0.037767,
		13.617893, 13.706914, 18.284025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.073607, 14.319611, 18.632936>,  <13.789821, 14.384956, 18.257589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.073607, 14.319611, 18.632936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.258593, 13.968468, 18.682730>,  <13.369583, 13.757782, 18.712605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.258593, 13.968468, 18.682730>,  <13.073607, 14.319611, 18.632936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.258593, 13.968468, 18.682730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170055, 0.049971, 0.984167,
		-0.870178, -0.476308, -0.126174,
		0.462462, -0.877857, 0.124482,
		13.397331, 13.705111, 18.720074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.676046, 13.971113, 19.056469>,  <13.073607, 14.319611, 18.632936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.676046, 13.971113, 19.056469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.022473, 13.774149, 19.091015>,  <13.230330, 13.655971, 19.111742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.022473, 13.774149, 19.091015>,  <12.676046, 13.971113, 19.056469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.022473, 13.774149, 19.091015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055973, 0.076163, 0.995523,
		-0.496785, -0.867024, 0.038401,
		0.866067, -0.492411, 0.086367,
		13.282293, 13.626426, 19.116924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.490567, 13.434871, 19.547815>,  <12.676046, 13.971113, 19.056469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.490567, 13.434871, 19.547815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.882244, 13.515554, 19.538925>,  <13.117250, 13.563965, 19.533590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.882244, 13.515554, 19.538925>,  <12.490567, 13.434871, 19.547815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.882244, 13.515554, 19.538925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001796, 0.118132, 0.992996,
		0.202924, -0.972295, 0.116036,
		0.979193, 0.201711, -0.022225,
		13.176003, 13.576067, 19.532257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.695930, 13.132836, 20.089405>,  <12.490567, 13.434871, 19.547815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.695930, 13.132836, 20.089405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.011540, 13.354884, 19.984121>,  <13.200907, 13.488113, 19.920952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.011540, 13.354884, 19.984121>,  <12.695930, 13.132836, 20.089405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.011540, 13.354884, 19.984121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172926, 0.210432, 0.962193,
		0.589520, -0.804711, 0.070041,
		0.789026, 0.555120, -0.263210,
		13.248248, 13.521420, 19.905159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.359321, 12.881328, 20.498159>,  <12.695930, 13.132836, 20.089405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.359321, 12.881328, 20.498159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.390463, 13.266061, 20.393229>,  <13.409148, 13.496901, 20.330271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.390463, 13.266061, 20.393229>,  <13.359321, 12.881328, 20.498159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.390463, 13.266061, 20.393229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136704, 0.250340, 0.958458,
		0.987548, -0.110481, -0.111997,
		0.077854, 0.961834, -0.262326,
		13.413819, 13.554611, 20.314531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.983830, 13.139961, 20.809351>,  <13.359321, 12.881328, 20.498159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.983830, 13.139961, 20.809351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.786530, 13.479834, 20.734789>,  <13.668151, 13.683757, 20.690052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.786530, 13.479834, 20.734789>,  <13.983830, 13.139961, 20.809351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.786530, 13.479834, 20.734789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306292, 0.370207, 0.877002,
		0.814180, 0.375486, -0.442855,
		-0.493250, 0.849680, -0.186407,
		13.638556, 13.734737, 20.678867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.481623, 13.655394, 21.014307>,  <13.983830, 13.139961, 20.809351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.481623, 13.655394, 21.014307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.108209, 13.798672, 21.008554>,  <13.884160, 13.884639, 21.005104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.108209, 13.798672, 21.008554>,  <14.481623, 13.655394, 21.014307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.108209, 13.798672, 21.008554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132968, 0.383240, 0.914028,
		0.332911, 0.851366, -0.405397,
		-0.933536, 0.358195, -0.014380,
		13.828148, 13.906130, 21.004240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.618033, 14.323662, 21.246811>,  <14.481623, 13.655394, 21.014307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.618033, 14.323662, 21.246811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.233448, 14.233408, 21.309647>,  <14.002697, 14.179255, 21.347347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.233448, 14.233408, 21.309647>,  <14.618033, 14.323662, 21.246811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.233448, 14.233408, 21.309647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061735, 0.379597, 0.923090,
		-0.267910, 0.897215, -0.351039,
		-0.961464, -0.225634, 0.157088,
		13.945009, 14.165718, 21.356773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.227306, 14.977636, 21.438768>,  <14.618033, 14.323662, 21.246811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.227306, 14.977636, 21.438768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.001247, 14.683672, 21.588709>,  <13.865612, 14.507294, 21.678673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.001247, 14.683672, 21.588709>,  <14.227306, 14.977636, 21.438768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.001247, 14.683672, 21.588709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044741, 0.426400, 0.903427,
		-0.823776, 0.527341, -0.208098,
		-0.565147, -0.734911, 0.374852,
		13.831703, 14.463199, 21.701164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.880515, 15.326381, 21.875422>,  <14.227306, 14.977636, 21.438768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.880515, 15.326381, 21.875422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.778325, 14.963939, 22.010302>,  <13.717011, 14.746473, 22.091230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.778325, 14.963939, 22.010302>,  <13.880515, 15.326381, 21.875422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.778325, 14.963939, 22.010302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061365, 0.332876, 0.940972,
		-0.964866, 0.261087, -0.029438,
		-0.255475, -0.906106, 0.337202,
		13.701683, 14.692107, 22.111462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.294307, 15.440151, 22.451447>,  <13.880515, 15.326381, 21.875422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.294307, 15.440151, 22.451447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.459603, 15.077677, 22.487356>,  <13.558782, 14.860192, 22.508902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.459603, 15.077677, 22.487356>,  <13.294307, 15.440151, 22.451447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.459603, 15.077677, 22.487356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143201, 0.162030, 0.976340,
		-0.899292, -0.390608, 0.196724,
		0.413241, -0.906186, 0.089776,
		13.583576, 14.805821, 22.514290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.938371, 15.048573, 22.965445>,  <13.294307, 15.440151, 22.451447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.938371, 15.048573, 22.965445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.308747, 14.900799, 22.934076>,  <13.530973, 14.812134, 22.915257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.308747, 14.900799, 22.934076>,  <12.938371, 15.048573, 22.965445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.308747, 14.900799, 22.934076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191261, 0.279657, 0.940857,
		-0.325657, -0.886176, 0.329604,
		0.925941, -0.369437, -0.078419,
		13.586530, 14.789968, 22.910551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.043988, 14.639200, 23.571840>,  <12.938371, 15.048573, 22.965445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.043988, 14.639200, 23.571840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.414221, 14.712665, 23.439434>,  <13.636360, 14.756743, 23.359991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.414221, 14.712665, 23.439434>,  <13.043988, 14.639200, 23.571840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.414221, 14.712665, 23.439434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313814, 0.116773, 0.942277,
		0.211713, -0.976029, 0.050448,
		0.925580, 0.183661, -0.331013,
		13.691895, 14.767762, 23.340130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.494688, 14.261108, 24.035126>,  <13.043988, 14.639200, 23.571840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.494688, 14.261108, 24.035126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.721556, 14.544814, 23.867668>,  <13.857677, 14.715037, 23.767193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.721556, 14.544814, 23.867668>,  <13.494688, 14.261108, 24.035126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.721556, 14.544814, 23.867668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250803, 0.335429, 0.908066,
		0.784485, -0.620025, 0.012360,
		0.567170, 0.709264, -0.418644,
		13.891706, 14.757593, 23.742075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.074224, 14.245599, 24.443369>,  <13.494688, 14.261108, 24.035126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.074224, 14.245599, 24.443369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.135791, 14.593072, 24.255030>,  <14.172731, 14.801556, 24.142027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.135791, 14.593072, 24.255030>,  <14.074224, 14.245599, 24.443369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.135791, 14.593072, 24.255030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530108, 0.329542, 0.781273,
		0.833843, -0.369852, -0.409773,
		0.153918, 0.868683, -0.470848,
		14.181966, 14.853677, 24.113775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.816485, 14.366920, 24.459652>,  <14.074224, 14.245599, 24.443369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.816485, 14.366920, 24.459652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.643642, 14.726700, 24.433496>,  <14.539937, 14.942568, 24.417803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.643642, 14.726700, 24.433496>,  <14.816485, 14.366920, 24.459652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.643642, 14.726700, 24.433496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645868, 0.359255, 0.673640,
		0.629395, 0.248853, -0.736162,
		-0.432107, 0.899449, -0.065388,
		14.514010, 14.996534, 24.413879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.374954, 14.817275, 24.766640>,  <14.816485, 14.366920, 24.459652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.374954, 14.817275, 24.766640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.060335, 15.061210, 24.727770>,  <14.871564, 15.207570, 24.704449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.060335, 15.061210, 24.727770>,  <15.374954, 14.817275, 24.766640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.060335, 15.061210, 24.727770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384560, 0.606835, 0.695603,
		0.483173, 0.509756, -0.711823,
		-0.786548, 0.609836, -0.097175,
		14.824370, 15.244161, 24.698618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.655054, 15.468618, 24.773092>,  <15.374954, 14.817275, 24.766640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.655054, 15.468618, 24.773092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.271478, 15.517402, 24.875511>,  <15.041332, 15.546672, 24.936962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.271478, 15.517402, 24.875511>,  <15.655054, 15.468618, 24.773092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.271478, 15.517402, 24.875511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277730, 0.586674, 0.760710,
		-0.057441, 0.800587, -0.596456,
		-0.958940, 0.121958, 0.256047,
		14.983795, 15.553989, 24.952326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.629817, 16.149246, 24.748440>,  <15.655054, 15.468618, 24.773092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.629817, 16.149246, 24.748440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.346115, 15.999642, 24.987463>,  <15.175894, 15.909881, 25.130877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.346115, 15.999642, 24.987463>,  <15.629817, 16.149246, 24.748440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.346115, 15.999642, 24.987463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248767, 0.660338, 0.708568,
		-0.659601, 0.651208, -0.375306,
		-0.709254, -0.374009, 0.597559,
		15.133339, 15.887440, 25.166731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
