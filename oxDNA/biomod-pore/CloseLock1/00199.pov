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
	<24.603243, 35.273312, 35.415714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.443565, 35.161095, 35.066559>,  <24.347759, 35.093765, 34.857063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.443565, 35.161095, 35.066559>,  <24.603243, 35.273312, 35.415714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.443565, 35.161095, 35.066559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413163, 0.904939, -0.101889,
		0.818499, 0.319974, -0.477154,
		-0.399194, -0.280539, -0.872893,
		24.323807, 35.076935, 34.804691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.693642, 35.749012, 34.861176>,  <24.603243, 35.273312, 35.415714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.693642, 35.749012, 34.861176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.390524, 35.537388, 34.708416>,  <24.208652, 35.410412, 34.616760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.390524, 35.537388, 34.708416>,  <24.693642, 35.749012, 34.861176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.390524, 35.537388, 34.708416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354787, 0.825298, -0.439328,
		0.547608, -0.197429, -0.813110,
		-0.757794, -0.529060, -0.381894,
		24.163185, 35.378670, 34.593849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.455675, 35.707932, 34.900917>,  <24.693642, 35.749012, 34.861176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.455675, 35.707932, 34.900917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.189270, 35.929253, 35.101032>,  <25.029427, 36.062046, 35.221100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.189270, 35.929253, 35.101032>,  <25.455675, 35.707932, 34.900917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.189270, 35.929253, 35.101032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671918, 0.153713, 0.724499,
		0.323964, 0.818678, -0.474146,
		-0.666013, 0.553299, 0.500287,
		24.989466, 36.095242, 35.251118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.990810, 36.044289, 35.380684>,  <25.455675, 35.707932, 34.900917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.990810, 36.044289, 35.380684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.624184, 36.120590, 35.521263>,  <25.404207, 36.166370, 35.605610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.624184, 36.120590, 35.521263>,  <25.990810, 36.044289, 35.380684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.624184, 36.120590, 35.521263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389837, 0.230548, 0.891557,
		0.089041, 0.954181, -0.285676,
		-0.916569, 0.190753, 0.351447,
		25.349213, 36.177814, 35.626698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.522665, 36.130680, 34.798672>,  <25.990810, 36.044289, 35.380684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.522665, 36.130680, 34.798672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.738113, 36.466724, 34.773029>,  <26.867382, 36.668350, 34.757645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.738113, 36.466724, 34.773029>,  <26.522665, 36.130680, 34.798672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.738113, 36.466724, 34.773029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572894, -0.420966, -0.703264,
		-0.617804, 0.342065, -0.708033,
		0.538620, 0.840106, -0.064107,
		26.899700, 36.718758, 34.753796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.186396, 36.215221, 34.470963>,  <26.522665, 36.130680, 34.798672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.186396, 36.215221, 34.470963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.498425, 36.003742, 34.337124>,  <27.685642, 35.876854, 34.256821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.498425, 36.003742, 34.337124>,  <27.186396, 36.215221, 34.470963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.498425, 36.003742, 34.337124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140900, -0.372599, 0.917233,
		-0.609616, -0.762655, -0.216160,
		0.780074, -0.528703, -0.334601,
		27.732447, 35.845131, 34.236744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.339375, 35.524570, 34.814892>,  <27.186396, 36.215221, 34.470963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.339375, 35.524570, 34.814892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.703423, 35.611942, 34.674053>,  <27.921852, 35.664364, 34.589550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.703423, 35.611942, 34.674053>,  <27.339375, 35.524570, 34.814892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.703423, 35.611942, 34.674053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397309, -0.218920, 0.891190,
		0.117579, -0.950981, -0.286026,
		0.910121, 0.218426, -0.352092,
		27.976460, 35.677471, 34.568424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.864849, 34.935684, 34.973248>,  <27.339375, 35.524570, 34.814892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.864849, 34.935684, 34.973248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.057144, 35.280090, 34.906864>,  <28.172522, 35.486732, 34.867035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.057144, 35.280090, 34.906864>,  <27.864849, 34.935684, 34.973248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.057144, 35.280090, 34.906864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484458, -0.103047, 0.868724,
		0.730883, -0.498030, -0.466665,
		0.480739, 0.861015, -0.165959,
		28.201366, 35.538395, 34.857075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.600748, 34.680649, 35.044563>,  <27.864849, 34.935684, 34.973248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.600748, 34.680649, 35.044563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.605074, 35.080269, 35.061455>,  <28.607670, 35.320042, 35.071590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.605074, 35.080269, 35.061455>,  <28.600748, 34.680649, 35.044563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.605074, 35.080269, 35.061455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687802, -0.038090, 0.724898,
		0.725817, 0.021208, -0.687560,
		0.010816, 0.999049, 0.042233,
		28.608318, 35.379982, 35.074123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.337336, 34.880726, 35.087490>,  <28.600748, 34.680649, 35.044563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.337336, 34.880726, 35.087490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.114769, 35.175819, 35.240410>,  <28.981230, 35.352875, 35.332161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.114769, 35.175819, 35.240410>,  <29.337336, 34.880726, 35.087490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.114769, 35.175819, 35.240410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595665, 0.033383, 0.802539,
		0.579295, 0.674269, -0.458016,
		-0.556417, 0.737731, 0.382300,
		28.947844, 35.397141, 35.355099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.832680, 35.425323, 35.224346>,  <29.337336, 34.880726, 35.087490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.832680, 35.425323, 35.224346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.499380, 35.473904, 35.440105>,  <29.299400, 35.503052, 35.569561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.499380, 35.473904, 35.440105>,  <29.832680, 35.425323, 35.224346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.499380, 35.473904, 35.440105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552451, 0.222236, 0.803374,
		-0.022307, 0.967400, -0.252270,
		-0.833247, 0.121446, 0.539398,
		29.249407, 35.510338, 35.601925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.066164, 35.884090, 35.809944>,  <29.832680, 35.425323, 35.224346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.066164, 35.884090, 35.809944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.705593, 35.770199, 35.940395>,  <29.489250, 35.701866, 36.018665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.705593, 35.770199, 35.940395>,  <30.066164, 35.884090, 35.809944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.705593, 35.770199, 35.940395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217167, 0.354281, 0.909573,
		-0.374519, 0.890739, -0.257526,
		-0.901429, -0.284726, 0.326124,
		29.435163, 35.684780, 36.038231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.724390, 36.403862, 36.080662>,  <30.066164, 35.884090, 35.809944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.724390, 36.403862, 36.080662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.573576, 36.071087, 36.243500>,  <29.483088, 35.871422, 36.341202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.573576, 36.071087, 36.243500>,  <29.724390, 36.403862, 36.080662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.573576, 36.071087, 36.243500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120141, 0.391892, 0.912133,
		-0.918374, 0.392816, -0.047807,
		-0.377035, -0.831935, 0.407097,
		29.460464, 35.821507, 36.365627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.121847, 36.570259, 36.468864>,  <29.724390, 36.403862, 36.080662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.121847, 36.570259, 36.468864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.255239, 36.237572, 36.646420>,  <29.335276, 36.037960, 36.752953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.255239, 36.237572, 36.646420>,  <29.121847, 36.570259, 36.468864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.255239, 36.237572, 36.646420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095850, 0.498316, 0.861681,
		-0.937872, -0.244807, 0.245898,
		0.333480, -0.831716, 0.443892,
		29.355284, 35.988056, 36.779587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.905344, 36.627544, 37.171085>,  <29.121847, 36.570259, 36.468864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.905344, 36.627544, 37.171085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.165699, 36.324558, 37.191433>,  <29.321913, 36.142765, 37.203640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.165699, 36.324558, 37.191433>,  <28.905344, 36.627544, 37.171085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.165699, 36.324558, 37.191433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130556, 0.177686, 0.975389,
		-0.747863, -0.628228, 0.214546,
		0.650888, -0.757468, 0.050866,
		29.360966, 36.097317, 37.206692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.673428, 36.251598, 37.753242>,  <28.905344, 36.627544, 37.171085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.673428, 36.251598, 37.753242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.056358, 36.164951, 37.676720>,  <29.286118, 36.112961, 37.630806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.056358, 36.164951, 37.676720>,  <28.673428, 36.251598, 37.753242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.056358, 36.164951, 37.676720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232489, 0.184013, 0.955033,
		-0.171675, -0.958757, 0.226522,
		0.957328, -0.216619, -0.191311,
		29.343557, 36.099964, 37.619328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.768911, 36.008389, 38.360043>,  <28.673428, 36.251598, 37.753242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.768911, 36.008389, 38.360043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.127321, 36.058784, 38.189739>,  <29.342367, 36.089020, 38.087559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.127321, 36.058784, 38.189739>,  <28.768911, 36.008389, 38.360043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.127321, 36.058784, 38.189739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386372, 0.251220, 0.887471,
		0.218765, -0.959696, 0.176423,
		0.896024, 0.125983, -0.425758,
		29.396128, 36.096581, 38.062012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.291412, 35.595493, 38.635197>,  <28.768911, 36.008389, 38.360043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.291412, 35.595493, 38.635197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.482178, 35.920280, 38.500580>,  <29.596638, 36.115154, 38.419807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.482178, 35.920280, 38.500580>,  <29.291412, 35.595493, 38.635197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.482178, 35.920280, 38.500580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389474, 0.148029, 0.909064,
		0.787948, -0.564622, -0.245642,
		0.476915, 0.811967, -0.336545,
		29.625252, 36.163872, 38.399616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.851784, 35.664799, 39.027027>,  <29.291412, 35.595493, 38.635197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.851784, 35.664799, 39.027027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.884283, 36.029942, 38.866978>,  <29.903784, 36.249027, 38.770947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.884283, 36.029942, 38.866978>,  <29.851784, 35.664799, 39.027027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.884283, 36.029942, 38.866978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549086, 0.294042, 0.782332,
		0.831807, -0.283266, -0.477344,
		0.081249, 0.912852, -0.400124,
		29.908657, 36.303799, 38.746941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.663086, 35.856758, 39.058949>,  <29.851784, 35.664799, 39.027027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.663086, 35.856758, 39.058949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.439175, 36.186695, 39.027225>,  <30.304829, 36.384655, 39.008190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.439175, 36.186695, 39.027225>,  <30.663086, 35.856758, 39.058949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.439175, 36.186695, 39.027225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563956, 0.449346, 0.692850,
		0.607128, 0.343115, -0.716707,
		-0.559777, 0.824839, -0.079309,
		30.271242, 36.434147, 39.003433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.105394, 36.380501, 39.046234>,  <30.663086, 35.856758, 39.058949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.105394, 36.380501, 39.046234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.762041, 36.545994, 39.167564>,  <30.556028, 36.645290, 39.240360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.762041, 36.545994, 39.167564>,  <31.105394, 36.380501, 39.046234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.762041, 36.545994, 39.167564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503385, 0.565290, 0.653491,
		0.098906, 0.713633, -0.693502,
		-0.858383, 0.413733, 0.303322,
		30.504526, 36.670113, 39.258560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.156750, 37.097118, 39.018356>,  <31.105394, 36.380501, 39.046234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.156750, 37.097118, 39.018356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.855488, 37.035439, 39.274162>,  <30.674730, 36.998428, 39.427647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.855488, 37.035439, 39.274162>,  <31.156750, 37.097118, 39.018356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.855488, 37.035439, 39.274162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346999, 0.732774, 0.585350,
		-0.558881, 0.662770, -0.498385,
		-0.753156, -0.154202, 0.639513,
		30.629541, 36.989178, 39.466015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.919971, 37.738247, 39.047203>,  <31.156750, 37.097118, 39.018356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.919971, 37.738247, 39.047203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.795988, 37.520905, 39.359276>,  <30.721598, 37.390499, 39.546520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.795988, 37.520905, 39.359276>,  <30.919971, 37.738247, 39.047203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.795988, 37.520905, 39.359276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465538, 0.628754, 0.622851,
		-0.828975, 0.556264, 0.058065,
		-0.309960, -0.543359, 0.780183,
		30.702999, 37.357895, 39.593330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.104862, 38.214794, 39.607151>,  <30.919971, 37.738247, 39.047203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.104862, 38.214794, 39.607151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.952108, 37.908581, 39.814274>,  <30.860456, 37.724854, 39.938549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.952108, 37.908581, 39.814274>,  <31.104862, 38.214794, 39.607151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.952108, 37.908581, 39.814274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344214, 0.402154, 0.848403,
		-0.857717, 0.502232, 0.109929,
		-0.381887, -0.765530, 0.517810,
		30.837542, 37.678921, 39.969616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.606741, 38.480751, 40.061207>,  <31.104862, 38.214794, 39.607151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.606741, 38.480751, 40.061207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.791580, 38.146729, 40.180637>,  <30.902483, 37.946316, 40.252296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.791580, 38.146729, 40.180637>,  <30.606741, 38.480751, 40.061207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.791580, 38.146729, 40.180637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306006, 0.466140, 0.830105,
		-0.832363, -0.292222, 0.470934,
		0.462096, -0.835057, 0.298576,
		30.930208, 37.896210, 40.270210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.367338, 38.107986, 40.694969>,  <30.606741, 38.480751, 40.061207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.367338, 38.107986, 40.694969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.764091, 38.099655, 40.644794>,  <31.002144, 38.094658, 40.614689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.764091, 38.099655, 40.644794>,  <30.367338, 38.107986, 40.694969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.764091, 38.099655, 40.644794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118383, 0.511203, 0.851268,
		0.046393, -0.859208, 0.509519,
		0.991884, -0.020826, -0.125432,
		31.061657, 38.093407, 40.607166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.685875, 37.927612, 41.404217>,  <30.367338, 38.107986, 40.694969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.685875, 37.927612, 41.404217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.921692, 38.131573, 41.153637>,  <31.063181, 38.253948, 41.003288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.921692, 38.131573, 41.153637>,  <30.685875, 37.927612, 41.404217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.921692, 38.131573, 41.153637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381628, 0.507711, 0.772392,
		0.711900, -0.694429, 0.104724,
		0.589541, 0.509900, -0.626453,
		31.098555, 38.284542, 40.965702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.454943, 37.854675, 41.585884>,  <30.685875, 37.927612, 41.404217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.454943, 37.854675, 41.585884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.338074, 38.204834, 41.431839>,  <31.267952, 38.414928, 41.339413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.338074, 38.204834, 41.431839>,  <31.454943, 37.854675, 41.585884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.338074, 38.204834, 41.431839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277444, 0.462950, 0.841845,
		0.915238, 0.139117, -0.378136,
		-0.292173, 0.875399, -0.385112,
		31.250422, 38.467453, 41.316307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.953325, 38.335823, 41.737263>,  <31.454943, 37.854675, 41.585884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.953325, 38.335823, 41.737263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.642164, 38.577301, 41.667488>,  <31.455467, 38.722187, 41.625626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.642164, 38.577301, 41.667488>,  <31.953325, 38.335823, 41.737263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.642164, 38.577301, 41.667488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252813, 0.554797, 0.792645,
		0.575288, 0.572500, -0.584198,
		-0.777900, 0.603692, -0.174433,
		31.408794, 38.758408, 41.615158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.207306, 39.002922, 41.924992>,  <31.953325, 38.335823, 41.737263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.207306, 39.002922, 41.924992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.808273, 39.025635, 41.908974>,  <31.568853, 39.039265, 41.899361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.808273, 39.025635, 41.908974>,  <32.207306, 39.002922, 41.924992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.808273, 39.025635, 41.908974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014910, 0.737853, 0.674797,
		0.067869, 0.672569, -0.736916,
		-0.997583, 0.056785, -0.040049,
		31.508999, 39.042671, 41.896957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.810232, 39.643353, 41.793915>,  <32.207306, 39.002922, 41.924992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.810232, 39.643353, 41.793915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.567730, 39.420933, 42.021339>,  <31.422228, 39.287479, 42.157795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.567730, 39.420933, 42.021339>,  <31.810232, 39.643353, 41.793915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.567730, 39.420933, 42.021339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007910, 0.710680, 0.703471,
		-0.795231, 0.430980, -0.426455,
		-0.606255, -0.556049, 0.568564,
		31.385853, 39.254120, 42.191910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.298697, 40.070499, 41.911526>,  <31.810232, 39.643353, 41.793915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.298697, 40.070499, 41.911526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.315998, 39.781155, 42.187172>,  <31.326380, 39.607548, 42.352558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.315998, 39.781155, 42.187172>,  <31.298697, 40.070499, 41.911526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.315998, 39.781155, 42.187172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058783, 0.690407, 0.721029,
		-0.997333, 0.009321, 0.072384,
		0.043254, -0.723362, 0.689114,
		31.328974, 39.564148, 42.393906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.853312, 40.665489, 42.043331>,  <31.298697, 40.070499, 41.911526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.853312, 40.665489, 42.043331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.230267, 40.796898, 42.018101>,  <31.456440, 40.875744, 42.002964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.230267, 40.796898, 42.018101>,  <30.853312, 40.665489, 42.043331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.230267, 40.796898, 42.018101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045237, -0.061663, -0.997071,
		-0.331451, 0.942481, -0.043249,
		0.942387, 0.328524, -0.063073,
		31.512983, 40.895454, 41.999180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.939722, 41.143490, 41.564583>,  <30.853312, 40.665489, 42.043331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.939722, 41.143490, 41.564583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.285461, 40.944157, 41.591610>,  <31.492905, 40.824558, 41.607826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.285461, 40.944157, 41.591610>,  <30.939722, 41.143490, 41.564583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.285461, 40.944157, 41.591610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081835, 0.006813, -0.996623,
		0.496188, 0.866960, 0.046670,
		0.864350, -0.498332, 0.067568,
		31.544765, 40.794659, 41.611881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.516600, 41.515434, 41.126072>,  <30.939722, 41.143490, 41.564583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.516600, 41.515434, 41.126072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.547548, 41.118496, 41.164577>,  <31.566118, 40.880333, 41.187679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.547548, 41.118496, 41.164577>,  <31.516600, 41.515434, 41.126072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.547548, 41.118496, 41.164577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066237, -0.101456, -0.992633,
		0.994799, 0.070427, -0.073580,
		0.077373, -0.992344, 0.096263,
		31.570761, 40.820793, 41.193455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.896276, 41.306442, 40.580814>,  <31.516600, 41.515434, 41.126072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.896276, 41.306442, 40.580814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.697809, 40.981262, 40.702747>,  <31.578730, 40.786152, 40.775909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.697809, 40.981262, 40.702747>,  <31.896276, 41.306442, 40.580814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.697809, 40.981262, 40.702747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009719, -0.356280, -0.934329,
		0.868173, -0.460621, 0.184675,
		-0.496167, -0.812953, 0.304836,
		31.548960, 40.737377, 40.794197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.234566, 40.720867, 40.246674>,  <31.896276, 41.306442, 40.580814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.234566, 40.720867, 40.246674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.857494, 40.624580, 40.339111>,  <31.631250, 40.566807, 40.394573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.857494, 40.624580, 40.339111>,  <32.234566, 40.720867, 40.246674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.857494, 40.624580, 40.339111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151120, -0.309484, -0.938820,
		0.297513, -0.919931, 0.255367,
		-0.942682, -0.240720, 0.231095,
		31.574690, 40.552364, 40.408440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.131699, 40.022865, 39.986431>,  <32.234566, 40.720867, 40.246674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.131699, 40.022865, 39.986431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.765455, 40.173023, 40.044033>,  <31.545710, 40.263119, 40.078594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.765455, 40.173023, 40.044033>,  <32.131699, 40.022865, 39.986431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.765455, 40.173023, 40.044033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277885, -0.331975, -0.901428,
		-0.290587, -0.865373, 0.408277,
		-0.915608, 0.375397, 0.144007,
		31.490772, 40.285645, 40.087234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.697510, 39.536583, 39.761303>,  <32.131699, 40.022865, 39.986431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.697510, 39.536583, 39.761303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.470175, 39.865696, 39.759247>,  <31.333773, 40.063164, 39.758011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.470175, 39.865696, 39.759247>,  <31.697510, 39.536583, 39.761303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.470175, 39.865696, 39.759247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359513, -0.253949, -0.897920,
		-0.740096, -0.508473, 0.440129,
		-0.568338, 0.822779, -0.005145,
		31.299673, 40.112530, 39.757702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.092730, 39.362404, 39.316250>,  <31.697510, 39.536583, 39.761303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.092730, 39.362404, 39.316250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.022724, 39.755619, 39.338200>,  <30.980721, 39.991547, 39.351372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.022724, 39.755619, 39.338200>,  <31.092730, 39.362404, 39.316250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.022724, 39.755619, 39.338200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467306, -0.033878, -0.883446,
		-0.866600, -0.180262, 0.465307,
		-0.175015, 0.983035, 0.054879,
		30.970219, 40.050529, 39.354664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.380938, 39.410633, 39.166557>,  <31.092730, 39.362404, 39.316250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.380938, 39.410633, 39.166557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.571159, 39.758171, 39.111481>,  <30.685293, 39.966694, 39.078434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.571159, 39.758171, 39.111481>,  <30.380938, 39.410633, 39.166557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.571159, 39.758171, 39.111481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156896, -0.070240, -0.985114,
		-0.865581, 0.490079, 0.102915,
		0.475555, 0.868843, -0.137689,
		30.713825, 40.018826, 39.070175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.896646, 39.946369, 38.932484>,  <30.380938, 39.410633, 39.166557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.896646, 39.946369, 38.932484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.264872, 40.054081, 38.819309>,  <30.485806, 40.118710, 38.751404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.264872, 40.054081, 38.819309>,  <29.896646, 39.946369, 38.932484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.264872, 40.054081, 38.819309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244519, -0.167587, -0.955052,
		-0.304596, 0.948368, -0.088430,
		0.920561, 0.269282, -0.282941,
		30.541040, 40.134865, 38.734428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.764938, 40.256977, 38.380245>,  <29.896646, 39.946369, 38.932484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.764938, 40.256977, 38.380245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.158260, 40.188801, 38.354755>,  <30.394253, 40.147896, 38.339462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.158260, 40.188801, 38.354755>,  <29.764938, 40.256977, 38.380245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.158260, 40.188801, 38.354755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071212, -0.038175, -0.996730,
		0.167452, 0.984628, -0.049675,
		0.983305, -0.170442, -0.063725,
		30.453251, 40.137669, 38.335636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.959702, 40.551437, 37.754517>,  <29.764938, 40.256977, 38.380245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.959702, 40.551437, 37.754517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.247116, 40.282719, 37.826504>,  <30.419565, 40.121487, 37.869698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.247116, 40.282719, 37.826504>,  <29.959702, 40.551437, 37.754517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.247116, 40.282719, 37.826504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098151, -0.158232, -0.982512,
		0.688528, 0.723636, -0.047758,
		0.718537, -0.671799, 0.179972,
		30.462677, 40.081181, 37.880497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.446011, 40.651260, 37.195072>,  <29.959702, 40.551437, 37.754517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.446011, 40.651260, 37.195072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.549812, 40.298645, 37.352829>,  <30.612093, 40.087074, 37.447483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.549812, 40.298645, 37.352829>,  <30.446011, 40.651260, 37.195072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.549812, 40.298645, 37.352829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024044, -0.402359, -0.915166,
		0.965442, 0.246974, -0.083219,
		0.259506, -0.881539, 0.394393,
		30.627665, 40.034184, 37.471146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.949228, 40.316612, 36.770123>,  <30.446011, 40.651260, 37.195072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.949228, 40.316612, 36.770123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.905640, 39.973248, 36.970623>,  <30.879486, 39.767227, 37.090923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.905640, 39.973248, 36.970623>,  <30.949228, 40.316612, 36.770123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.905640, 39.973248, 36.970623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083329, -0.494592, -0.865122,
		0.990546, -0.136041, -0.017635,
		-0.108970, -0.858412, 0.501252,
		30.872948, 39.715725, 37.120998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.464943, 39.795273, 36.593849>,  <30.949228, 40.316612, 36.770123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.464943, 39.795273, 36.593849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.150814, 39.590263, 36.732750>,  <30.962336, 39.467258, 36.816090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.150814, 39.590263, 36.732750>,  <31.464943, 39.795273, 36.593849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.150814, 39.590263, 36.732750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046867, -0.510082, -0.858848,
		0.617309, -0.690748, 0.376559,
		-0.785323, -0.512526, 0.347251,
		30.915216, 39.436504, 36.836926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.651302, 39.108540, 36.665379>,  <31.464943, 39.795273, 36.593849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.651302, 39.108540, 36.665379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.252279, 39.083717, 36.652527>,  <31.012865, 39.068825, 36.644814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.252279, 39.083717, 36.652527>,  <31.651302, 39.108540, 36.665379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.252279, 39.083717, 36.652527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069712, -0.851983, -0.518907,
		0.004824, -0.519879, 0.854226,
		-0.997556, -0.062053, -0.032132,
		30.953012, 39.065102, 36.642887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.486444, 38.394455, 36.834152>,  <31.651302, 39.108540, 36.665379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.486444, 38.394455, 36.834152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.178682, 38.549412, 36.631001>,  <30.994024, 38.642387, 36.509109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.178682, 38.549412, 36.631001>,  <31.486444, 38.394455, 36.834152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.178682, 38.549412, 36.631001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017191, -0.782249, -0.622728,
		-0.638526, -0.487863, 0.595209,
		-0.769408, 0.387396, -0.507874,
		30.947861, 38.665630, 36.478638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.113998, 37.840893, 36.679455>,  <31.486444, 38.394455, 36.834152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.113998, 37.840893, 36.679455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.968906, 38.095184, 36.406906>,  <30.881851, 38.247761, 36.243378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.968906, 38.095184, 36.406906>,  <31.113998, 37.840893, 36.679455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.968906, 38.095184, 36.406906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042373, -0.741667, -0.669428,
		-0.930930, -0.213951, 0.295963,
		-0.362731, 0.635732, -0.681375,
		30.860086, 38.285904, 36.202496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.682638, 37.393383, 36.261364>,  <31.113998, 37.840893, 36.679455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.682638, 37.393383, 36.261364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.707727, 37.717106, 36.027756>,  <30.722780, 37.911339, 35.887589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.707727, 37.717106, 36.027756>,  <30.682638, 37.393383, 36.261364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.707727, 37.717106, 36.027756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123017, -0.574444, -0.809247,
		-0.990421, 0.122603, 0.063528,
		0.062723, 0.809310, -0.584023,
		30.726543, 37.959900, 35.852551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.077324, 37.358360, 35.790142>,  <30.682638, 37.393383, 36.261364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.077324, 37.358360, 35.790142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.353626, 37.598438, 35.628838>,  <30.519407, 37.742485, 35.532055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.353626, 37.598438, 35.628838>,  <30.077324, 37.358360, 35.790142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.353626, 37.598438, 35.628838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038768, -0.526151, -0.849507,
		-0.722047, 0.602436, -0.340174,
		0.690756, 0.600197, -0.403261,
		30.560854, 37.778496, 35.507858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.804531, 37.552158, 35.052635>,  <30.077324, 37.358360, 35.790142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.804531, 37.552158, 35.052635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.202570, 37.588264, 35.068825>,  <30.441393, 37.609928, 35.078541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.202570, 37.588264, 35.068825>,  <29.804531, 37.552158, 35.052635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.202570, 37.588264, 35.068825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075791, -0.432696, -0.898349,
		-0.063572, 0.897010, -0.437414,
		0.995095, 0.090261, 0.040478,
		30.501099, 37.615341, 35.080967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.902910, 37.832836, 34.449261>,  <29.804531, 37.552158, 35.052635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.902910, 37.832836, 34.449261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.267267, 37.690228, 34.532372>,  <30.485882, 37.604660, 34.582237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.267267, 37.690228, 34.532372>,  <29.902910, 37.832836, 34.449261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.267267, 37.690228, 34.532372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058979, -0.385858, -0.920671,
		0.408412, 0.850885, -0.330447,
		0.910890, -0.356524, 0.207773,
		30.540535, 37.583271, 34.594704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.330050, 37.904560, 33.847557>,  <29.902910, 37.832836, 34.449261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.330050, 37.904560, 33.847557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.522530, 37.620735, 34.053459>,  <30.638018, 37.450439, 34.177002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.522530, 37.620735, 34.053459>,  <30.330050, 37.904560, 33.847557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.522530, 37.620735, 34.053459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086263, -0.546032, -0.833311,
		0.872357, 0.445393, -0.201541,
		0.481198, -0.709559, 0.514756,
		30.666889, 37.407867, 34.207886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.737638, 37.621223, 33.368771>,  <30.330050, 37.904560, 33.847557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.737638, 37.621223, 33.368771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.747776, 37.348934, 33.661613>,  <30.753859, 37.185562, 33.837318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.747776, 37.348934, 33.661613>,  <30.737638, 37.621223, 33.368771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.747776, 37.348934, 33.661613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001517, -0.732363, -0.680913,
		0.999678, 0.016146, -0.019593,
		0.025342, -0.680723, 0.732103,
		30.755379, 37.144718, 33.881245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.325588, 37.189911, 33.166382>,  <30.737638, 37.621223, 33.368771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.325588, 37.189911, 33.166382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.114531, 36.969929, 33.425346>,  <30.987896, 36.837940, 33.580727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.114531, 36.969929, 33.425346>,  <31.325588, 37.189911, 33.166382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.114531, 36.969929, 33.425346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042022, -0.744308, -0.666513,
		0.848426, -0.378886, 0.369619,
		-0.527643, -0.549955, 0.647412,
		30.956238, 36.804943, 33.619572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.663191, 36.452835, 33.230659>,  <31.325588, 37.189911, 33.166382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.663191, 36.452835, 33.230659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.275892, 36.440800, 33.329933>,  <31.043514, 36.433578, 33.389496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.275892, 36.440800, 33.329933>,  <31.663191, 36.452835, 33.230659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.275892, 36.440800, 33.329933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151600, -0.718730, -0.678561,
		0.198792, -0.694638, 0.691346,
		-0.968246, -0.030084, 0.248185,
		30.985418, 36.431774, 33.404388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.183979, 36.067860, 32.838230>,  <31.663191, 36.452835, 33.230659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.183979, 36.067860, 32.838230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.574108, 36.089512, 32.752613>,  <32.808186, 36.102505, 32.701241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.574108, 36.089512, 32.752613>,  <32.183979, 36.067860, 32.838230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.574108, 36.089512, 32.752613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220533, -0.192408, 0.956214,
		0.010580, -0.979821, -0.199598,
		0.975322, 0.054135, -0.214047,
		32.866703, 36.105751, 32.688400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.428993, 35.546364, 33.279388>,  <32.183979, 36.067860, 32.838230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.428993, 35.546364, 33.279388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.658562, 35.855236, 33.170319>,  <32.796303, 36.040562, 33.104877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.658562, 35.855236, 33.170319>,  <32.428993, 35.546364, 33.279388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.658562, 35.855236, 33.170319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427934, 0.001093, 0.903809,
		0.698206, -0.635397, -0.329817,
		0.573917, 0.772185, -0.272671,
		32.830738, 36.086891, 33.088516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.186417, 35.348354, 33.366470>,  <32.428993, 35.546364, 33.279388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.186417, 35.348354, 33.366470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.134193, 35.743855, 33.395664>,  <33.102859, 35.981155, 33.413181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.134193, 35.743855, 33.395664>,  <33.186417, 35.348354, 33.366470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.134193, 35.743855, 33.395664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562698, 0.013292, 0.826555,
		0.816287, 0.148981, -0.558104,
		-0.130560, 0.988751, 0.072981,
		33.095024, 36.040482, 33.417557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.859360, 35.705193, 33.553131>,  <33.186417, 35.348354, 33.366470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.859360, 35.705193, 33.553131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.558907, 35.936516, 33.680477>,  <33.378635, 36.075310, 33.756886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.558907, 35.936516, 33.680477>,  <33.859360, 35.705193, 33.553131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.558907, 35.936516, 33.680477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507711, 0.197837, 0.838504,
		0.421933, 0.791465, -0.442217,
		-0.751133, 0.578312, 0.318362,
		33.333565, 36.110008, 33.775986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.233261, 36.320866, 33.849007>,  <33.859360, 35.705193, 33.553131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.233261, 36.320866, 33.849007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.863934, 36.297310, 34.000801>,  <33.642338, 36.283176, 34.091877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.863934, 36.297310, 34.000801>,  <34.233261, 36.320866, 33.849007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.863934, 36.297310, 34.000801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335163, 0.358795, 0.871167,
		-0.187456, 0.931557, -0.311547,
		-0.923323, -0.058886, 0.379482,
		33.586937, 36.279644, 34.114647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.999222, 37.042576, 34.149738>,  <34.233261, 36.320866, 33.849007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.999222, 37.042576, 34.149738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.818192, 36.728203, 34.318253>,  <33.709576, 36.539577, 34.419361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.818192, 36.728203, 34.318253>,  <33.999222, 37.042576, 34.149738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.818192, 36.728203, 34.318253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260724, 0.335171, 0.905364,
		-0.852761, 0.519582, 0.053223,
		-0.452572, -0.785936, 0.421288,
		33.682419, 36.492424, 34.444637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.374725, 37.269882, 34.672901>,  <33.999222, 37.042576, 34.149738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.374725, 37.269882, 34.672901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.506851, 36.907944, 34.780342>,  <33.586128, 36.690781, 34.844807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.506851, 36.907944, 34.780342>,  <33.374725, 37.269882, 34.672901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.506851, 36.907944, 34.780342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184157, 0.340893, 0.921888,
		-0.925730, -0.255051, 0.279236,
		0.330318, -0.904843, 0.268605,
		33.605946, 36.636490, 34.860924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.013000, 37.143635, 35.334240>,  <33.374725, 37.269882, 34.672901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.013000, 37.143635, 35.334240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.316425, 36.883289, 35.321796>,  <33.498478, 36.727081, 35.314331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.316425, 36.883289, 35.321796>,  <33.013000, 37.143635, 35.334240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.316425, 36.883289, 35.321796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106160, 0.076338, 0.991414,
		-0.642900, -0.755348, 0.127002,
		0.758558, -0.650862, -0.031110,
		33.543991, 36.688030, 35.312462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.947845, 36.624046, 35.890717>,  <33.013000, 37.143635, 35.334240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.947845, 36.624046, 35.890717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.334724, 36.645576, 35.791412>,  <33.566853, 36.658493, 35.731831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.334724, 36.645576, 35.791412>,  <32.947845, 36.624046, 35.890717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.334724, 36.645576, 35.791412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240598, 0.119455, 0.963246,
		0.081497, -0.991380, 0.102588,
		0.967198, 0.053819, -0.248259,
		33.624882, 36.661724, 35.716934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.255672, 36.016945, 36.239956>,  <32.947845, 36.624046, 35.890717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.255672, 36.016945, 36.239956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.523964, 36.307697, 36.180935>,  <33.684937, 36.482147, 36.145523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.523964, 36.307697, 36.180935>,  <33.255672, 36.016945, 36.239956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.523964, 36.307697, 36.180935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270131, -0.054124, 0.961301,
		0.690766, -0.684626, -0.232656,
		0.670724, 0.726882, -0.147552,
		33.725182, 36.525761, 36.136669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.677971, 35.873878, 36.898754>,  <33.255672, 36.016945, 36.239956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.677971, 35.873878, 36.898754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.811195, 36.204834, 36.717865>,  <33.891132, 36.403408, 36.609333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.811195, 36.204834, 36.717865>,  <33.677971, 35.873878, 36.898754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.811195, 36.204834, 36.717865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585448, 0.194493, 0.787034,
		0.739134, -0.526884, -0.419612,
		0.333064, 0.827385, -0.452220,
		33.911114, 36.453049, 36.582199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.329308, 35.923988, 37.073498>,  <33.677971, 35.873878, 36.898754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.329308, 35.923988, 37.073498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.246105, 36.293961, 36.946232>,  <34.196182, 36.515945, 36.869873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.246105, 36.293961, 36.946232>,  <34.329308, 35.923988, 37.073498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.246105, 36.293961, 36.946232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464763, 0.379677, 0.799900,
		0.860655, 0.018515, -0.508852,
		-0.208009, 0.924934, -0.318166,
		34.183704, 36.571442, 36.850780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.909416, 36.340302, 37.396820>,  <34.329308, 35.923988, 37.073498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.909416, 36.340302, 37.396820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.592731, 36.570724, 37.315479>,  <34.402721, 36.708977, 37.266674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.592731, 36.570724, 37.315479>,  <34.909416, 36.340302, 37.396820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.592731, 36.570724, 37.315479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198386, 0.557276, 0.806279,
		0.577781, 0.598001, -0.555485,
		-0.791715, 0.576053, -0.203348,
		34.355217, 36.743542, 37.254475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.179882, 36.993130, 37.555927>,  <34.909416, 36.340302, 37.396820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.179882, 36.993130, 37.555927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.786129, 37.062248, 37.542442>,  <34.549877, 37.103718, 37.534351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.786129, 37.062248, 37.542442>,  <35.179882, 36.993130, 37.555927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.786129, 37.062248, 37.542442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089829, 0.657666, 0.747934,
		0.151410, 0.733224, -0.662916,
		-0.984381, 0.172794, -0.033713,
		34.490814, 37.114086, 37.532330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.150539, 37.740326, 37.895290>,  <35.179882, 36.993130, 37.555927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.150539, 37.740326, 37.895290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.784176, 37.580158, 37.884167>,  <34.564358, 37.484058, 37.877495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.784176, 37.580158, 37.884167>,  <35.150539, 37.740326, 37.895290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.784176, 37.580158, 37.884167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270963, 0.565714, 0.778811,
		-0.296118, 0.720857, -0.626642,
		-0.915911, -0.400417, -0.027807,
		34.509403, 37.460033, 37.875824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.698605, 38.245209, 37.940350>,  <35.150539, 37.740326, 37.895290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.698605, 38.245209, 37.940350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.498714, 37.926117, 38.075348>,  <34.378780, 37.734661, 38.156345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.498714, 37.926117, 38.075348>,  <34.698605, 38.245209, 37.940350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.498714, 37.926117, 38.075348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255200, 0.507935, 0.822724,
		-0.827736, 0.325009, -0.457409,
		-0.499727, -0.797729, 0.337493,
		34.348797, 37.686798, 38.176598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.214436, 38.574768, 38.335545>,  <34.698605, 38.245209, 37.940350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.214436, 38.574768, 38.335545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.265335, 38.197529, 38.458427>,  <34.295876, 37.971184, 38.532158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.265335, 38.197529, 38.458427>,  <34.214436, 38.574768, 38.335545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.265335, 38.197529, 38.458427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084334, 0.298313, 0.950735,
		-0.988279, -0.146885, -0.041576,
		0.127246, -0.943098, 0.307204,
		34.303509, 37.914600, 38.550591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.765167, 38.498188, 38.809994>,  <34.214436, 38.574768, 38.335545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.765167, 38.498188, 38.809994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.016441, 38.197720, 38.891113>,  <34.167206, 38.017441, 38.939785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.016441, 38.197720, 38.891113>,  <33.765167, 38.498188, 38.809994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.016441, 38.197720, 38.891113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152483, 0.136735, 0.978801,
		-0.762975, -0.645793, -0.028646,
		0.628186, -0.751169, 0.202798,
		34.204899, 37.972370, 38.951954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.546818, 38.254025, 39.482014>,  <33.765167, 38.498188, 38.809994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.546818, 38.254025, 39.482014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.883598, 38.042870, 39.437389>,  <34.085667, 37.916176, 39.410614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.883598, 38.042870, 39.437389>,  <33.546818, 38.254025, 39.482014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.883598, 38.042870, 39.437389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085406, -0.073762, 0.993612,
		-0.532749, -0.846102, -0.017019,
		0.841953, -0.527892, -0.111559,
		34.136185, 37.884502, 39.403923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.457550, 37.676537, 39.877041>,  <33.546818, 38.254025, 39.482014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.457550, 37.676537, 39.877041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.845417, 37.766949, 39.839821>,  <34.078136, 37.821194, 39.817490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.845417, 37.766949, 39.839821>,  <33.457550, 37.676537, 39.877041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.845417, 37.766949, 39.839821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116454, -0.092515, 0.988878,
		0.214907, -0.969717, -0.116031,
		0.969667, 0.226029, -0.093045,
		34.136318, 37.834759, 39.811909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.720531, 37.225380, 40.445671>,  <33.457550, 37.676537, 39.877041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.720531, 37.225380, 40.445671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.998016, 37.491997, 40.336514>,  <34.164509, 37.651966, 40.271019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.998016, 37.491997, 40.336514>,  <33.720531, 37.225380, 40.445671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.998016, 37.491997, 40.336514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248817, 0.133784, 0.959266,
		0.675905, -0.733361, -0.073040,
		0.693717, 0.666547, -0.272898,
		34.206131, 37.691959, 40.254642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.381691, 36.982140, 40.753197>,  <33.720531, 37.225380, 40.445671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.381691, 36.982140, 40.753197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.334339, 37.375957, 40.701569>,  <34.305927, 37.612247, 40.670593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.334339, 37.375957, 40.701569>,  <34.381691, 36.982140, 40.753197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.334339, 37.375957, 40.701569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440132, 0.168544, 0.881973,
		0.890096, 0.047598, -0.453282,
		-0.118378, 0.984544, -0.129071,
		34.298824, 37.671322, 40.662846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.967381, 37.268234, 40.971233>,  <34.381691, 36.982140, 40.753197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.967381, 37.268234, 40.971233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.713566, 37.577351, 40.976334>,  <34.561279, 37.762821, 40.979393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.713566, 37.577351, 40.976334>,  <34.967381, 37.268234, 40.971233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.713566, 37.577351, 40.976334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281595, 0.215789, 0.934954,
		0.719770, 0.596852, -0.354540,
		-0.634535, 0.772789, 0.012752,
		34.523205, 37.809189, 40.980160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.257668, 37.749958, 41.421284>,  <34.967381, 37.268234, 40.971233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.257668, 37.749958, 41.421284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.878841, 37.870945, 41.378250>,  <34.651546, 37.943539, 41.352428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.878841, 37.870945, 41.378250>,  <35.257668, 37.749958, 41.421284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.878841, 37.870945, 41.378250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003749, 0.345517, 0.938405,
		0.321008, 0.888331, -0.328362,
		-0.947069, 0.302467, -0.107583,
		34.594719, 37.961685, 41.345974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.292732, 38.396603, 41.553093>,  <35.257668, 37.749958, 41.421284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.292732, 38.396603, 41.553093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.916866, 38.285751, 41.633324>,  <34.691345, 38.219242, 41.681461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.916866, 38.285751, 41.633324>,  <35.292732, 38.396603, 41.553093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.916866, 38.285751, 41.633324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097722, 0.344454, 0.933704,
		-0.327845, 0.896968, -0.296589,
		-0.939664, -0.277127, 0.200581,
		34.634968, 38.202614, 41.693497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.106792, 38.783840, 42.066166>,  <35.292732, 38.396603, 41.553093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.106792, 38.783840, 42.066166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.793766, 38.537258, 42.100979>,  <34.605949, 38.389309, 42.121864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.793766, 38.537258, 42.100979>,  <35.106792, 38.783840, 42.066166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.793766, 38.537258, 42.100979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105305, 0.268845, 0.957410,
		-0.613596, 0.740072, -0.275305,
		-0.782567, -0.616454, 0.087029,
		34.558994, 38.352322, 42.127087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.524220, 39.179802, 42.358242>,  <35.106792, 38.783840, 42.066166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.524220, 39.179802, 42.358242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.446281, 38.799423, 42.454357>,  <34.399517, 38.571198, 42.512028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.446281, 38.799423, 42.454357>,  <34.524220, 39.179802, 42.358242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.446281, 38.799423, 42.454357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221720, 0.281350, 0.933639,
		-0.955444, 0.128640, -0.265664,
		-0.194848, -0.950944, 0.240292,
		34.387829, 38.514141, 42.526443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.987991, 39.252171, 42.750858>,  <34.524220, 39.179802, 42.358242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.987991, 39.252171, 42.750858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.103775, 38.881451, 42.846573>,  <34.173244, 38.659019, 42.904003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.103775, 38.881451, 42.846573>,  <33.987991, 39.252171, 42.750858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.103775, 38.881451, 42.846573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307396, 0.146740, 0.940199,
		-0.906489, -0.345703, -0.242419,
		0.289457, -0.926799, 0.239286,
		34.190613, 38.603413, 42.918358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.374950, 38.945225, 43.132175>,  <33.987991, 39.252171, 42.750858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.374950, 38.945225, 43.132175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.703056, 38.749542, 43.250729>,  <33.899921, 38.632133, 43.321861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.703056, 38.749542, 43.250729>,  <33.374950, 38.945225, 43.132175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.703056, 38.749542, 43.250729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121956, 0.356663, 0.926239,
		-0.558828, -0.795908, 0.232897,
		0.820267, -0.489205, 0.296379,
		33.949135, 38.602779, 43.339642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.181984, 38.706146, 43.840019>,  <33.374950, 38.945225, 43.132175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.181984, 38.706146, 43.840019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.571568, 38.615459, 43.841103>,  <33.805317, 38.561047, 43.841751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.571568, 38.615459, 43.841103>,  <33.181984, 38.706146, 43.840019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.571568, 38.615459, 43.841103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050377, 0.228025, 0.972351,
		-0.221065, -0.946892, 0.233508,
		0.973957, -0.226716, 0.002707,
		33.863754, 38.547443, 43.841915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.304150, 38.186939, 44.257759>,  <33.181984, 38.706146, 43.840019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.304150, 38.186939, 44.257759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.646599, 38.393536, 44.264538>,  <33.852070, 38.517494, 44.268604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.646599, 38.393536, 44.264538>,  <33.304150, 38.186939, 44.257759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.646599, 38.393536, 44.264538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079215, 0.098759, 0.991953,
		0.510663, -0.850578, 0.125464,
		0.856124, 0.516492, 0.016946,
		33.903435, 38.548485, 44.269623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.699913, 37.937305, 44.847668>,  <33.304150, 38.186939, 44.257759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.699913, 37.937305, 44.847668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.855431, 38.293468, 44.753002>,  <33.948742, 38.507168, 44.696205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.855431, 38.293468, 44.753002>,  <33.699913, 37.937305, 44.847668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.855431, 38.293468, 44.753002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079733, 0.223388, 0.971463,
		0.917869, -0.396566, 0.015857,
		0.388792, 0.890412, -0.236661,
		33.972069, 38.560593, 44.682003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.140682, 38.091503, 45.368362>,  <33.699913, 37.937305, 44.847668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.140682, 38.091503, 45.368362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.102020, 38.455570, 45.207241>,  <34.078823, 38.674011, 45.110569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.102020, 38.455570, 45.207241>,  <34.140682, 38.091503, 45.368362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.102020, 38.455570, 45.207241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148906, 0.413371, 0.898305,
		0.984117, 0.026842, -0.175483,
		-0.096652, 0.910167, -0.402808,
		34.073025, 38.728619, 45.086399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.678520, 38.435654, 45.634945>,  <34.140682, 38.091503, 45.368362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.678520, 38.435654, 45.634945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.417351, 38.718307, 45.525871>,  <34.260651, 38.887901, 45.460426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.417351, 38.718307, 45.525871>,  <34.678520, 38.435654, 45.634945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.417351, 38.718307, 45.525871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097520, 0.435441, 0.894919,
		0.751120, 0.557722, -0.353221,
		-0.652923, 0.706638, -0.272680,
		34.221474, 38.930298, 45.444069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.982647, 39.015579, 45.736919>,  <34.678520, 38.435654, 45.634945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.982647, 39.015579, 45.736919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.592911, 39.105591, 45.735321>,  <34.359070, 39.159599, 45.734364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.592911, 39.105591, 45.735321>,  <34.982647, 39.015579, 45.736919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.592911, 39.105591, 45.735321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091816, 0.413624, 0.905806,
		0.205488, 0.882199, -0.423674,
		-0.974343, 0.225033, -0.003995,
		34.300610, 39.173100, 45.734123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.928967, 39.841045, 45.894619>,  <34.982647, 39.015579, 45.736919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.928967, 39.841045, 45.894619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.585896, 39.650967, 45.973183>,  <34.380054, 39.536919, 46.020321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.585896, 39.650967, 45.973183>,  <34.928967, 39.841045, 45.894619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.585896, 39.650967, 45.973183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018942, 0.352524, 0.935611,
		-0.513839, 0.806173, -0.293351,
		-0.857678, -0.475196, 0.196411,
		34.328590, 39.508408, 46.032104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.655865, 40.249023, 46.419090>,  <34.928967, 39.841045, 45.894619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.655865, 40.249023, 46.419090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.417400, 39.928051, 46.429688>,  <34.274323, 39.735470, 46.436047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.417400, 39.928051, 46.429688>,  <34.655865, 40.249023, 46.419090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.417400, 39.928051, 46.429688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174543, 0.161750, 0.971273,
		-0.783662, 0.574411, -0.236487,
		-0.596162, -0.802427, 0.026498,
		34.238552, 39.687325, 46.437637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.056107, 40.460972, 46.629269>,  <34.655865, 40.249023, 46.419090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.056107, 40.460972, 46.629269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.074532, 40.070759, 46.715267>,  <34.085587, 39.836632, 46.766865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.074532, 40.070759, 46.715267>,  <34.056107, 40.460972, 46.629269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.074532, 40.070759, 46.715267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214948, 0.200503, 0.955822,
		-0.975539, -0.090241, -0.200452,
		0.046064, -0.975528, 0.214995,
		34.088352, 39.778099, 46.779766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.451725, 40.358326, 47.029522>,  <34.056107, 40.460972, 46.629269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.451725, 40.358326, 47.029522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.711655, 40.065784, 47.112316>,  <33.867615, 39.890259, 47.161995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.711655, 40.065784, 47.112316>,  <33.451725, 40.358326, 47.029522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.711655, 40.065784, 47.112316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162417, 0.132425, 0.977796,
		-0.742527, -0.669016, -0.032732,
		0.649826, -0.731356, 0.206989,
		33.906601, 39.846378, 47.174412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.131340, 40.016312, 47.527874>,  <33.451725, 40.358326, 47.029522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.131340, 40.016312, 47.527874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.509941, 39.895603, 47.573608>,  <33.737103, 39.823177, 47.601051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.509941, 39.895603, 47.573608>,  <33.131340, 40.016312, 47.527874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.509941, 39.895603, 47.573608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113266, 0.021109, 0.993340,
		-0.302176, -0.953146, -0.014201,
		0.946499, -0.301772, 0.114338,
		33.793892, 39.805073, 47.607910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.127991, 39.433960, 47.910389>,  <33.131340, 40.016312, 47.527874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.127991, 39.433960, 47.910389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.511017, 39.540310, 47.954895>,  <33.740833, 39.604118, 47.981598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.511017, 39.540310, 47.954895>,  <33.127991, 39.433960, 47.910389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.511017, 39.540310, 47.954895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116577, 0.004222, 0.993173,
		0.263589, -0.963998, 0.035037,
		0.957565, 0.265874, 0.111267,
		33.798286, 39.620071, 47.988274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.444431, 39.053696, 48.404045>,  <33.127991, 39.433960, 47.910389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.444431, 39.053696, 48.404045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.707001, 39.355450, 48.402691>,  <33.864544, 39.536503, 48.401878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.707001, 39.355450, 48.402691>,  <33.444431, 39.053696, 48.404045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.707001, 39.355450, 48.402691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064917, -0.052019, 0.996534,
		0.751590, -0.654372, -0.083119,
		0.656428, 0.754381, -0.003383,
		33.903931, 39.581764, 48.401676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.969398, 38.884548, 48.870407>,  <33.444431, 39.053696, 48.404045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.969398, 38.884548, 48.870407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.016045, 39.279465, 48.827229>,  <34.044033, 39.516415, 48.801319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.016045, 39.279465, 48.827229>,  <33.969398, 38.884548, 48.870407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.016045, 39.279465, 48.827229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115877, 0.094424, 0.988765,
		0.986394, -0.127816, -0.103393,
		0.116618, 0.987293, -0.107950,
		34.051029, 39.575653, 48.794842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.487640, 39.076599, 49.338928>,  <33.969398, 38.884548, 48.870407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.487640, 39.076599, 49.338928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.273457, 39.410591, 49.288185>,  <34.144947, 39.610985, 49.257740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.273457, 39.410591, 49.288185>,  <34.487640, 39.076599, 49.338928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.273457, 39.410591, 49.288185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019987, 0.162695, 0.986474,
		0.844326, 0.525679, -0.103805,
		-0.535457, 0.834980, -0.126860,
		34.112820, 39.661087, 49.250126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.798313, 39.499680, 49.812046>,  <34.487640, 39.076599, 49.338928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.798313, 39.499680, 49.812046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.443779, 39.664639, 49.727821>,  <34.231060, 39.763615, 49.677288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.443779, 39.664639, 49.727821>,  <34.798313, 39.499680, 49.812046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.443779, 39.664639, 49.727821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158352, 0.157357, 0.974763,
		0.435126, 0.897310, -0.074167,
		-0.886335, 0.412400, -0.210561,
		34.177879, 39.788357, 49.664654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.841045, 40.226318, 50.101994>,  <34.798313, 39.499680, 49.812046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.841045, 40.226318, 50.101994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.455860, 40.130878, 50.051750>,  <34.224751, 40.073616, 50.021603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.455860, 40.130878, 50.051750>,  <34.841045, 40.226318, 50.101994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.455860, 40.130878, 50.051750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214809, 0.397225, 0.892227,
		-0.162988, 0.886162, -0.433765,
		-0.962960, -0.238599, -0.125613,
		34.166973, 40.059299, 50.014065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.510666, 40.799404, 50.281597>,  <34.841045, 40.226318, 50.101994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.510666, 40.799404, 50.281597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.229633, 40.518963, 50.330318>,  <34.061012, 40.350697, 50.359550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.229633, 40.518963, 50.330318>,  <34.510666, 40.799404, 50.281597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.229633, 40.518963, 50.330318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150868, 0.314031, 0.937349,
		-0.695428, 0.640187, -0.326406,
		-0.702580, -0.701103, 0.121802,
		34.018860, 40.308632, 50.366859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.919918, 41.099041, 50.460911>,  <34.510666, 40.799404, 50.281597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.919918, 41.099041, 50.460911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.900738, 40.721268, 50.590992>,  <33.889229, 40.494606, 50.669041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.900738, 40.721268, 50.590992>,  <33.919918, 41.099041, 50.460911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.900738, 40.721268, 50.590992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213944, 0.327728, 0.920229,
		-0.975668, -0.025447, -0.217770,
		-0.047953, -0.944429, 0.325198,
		33.886353, 40.437939, 50.688553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.368603, 40.938316, 50.952202>,  <33.919918, 41.099041, 50.460911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.368603, 40.938316, 50.952202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.645847, 40.666649, 51.048801>,  <33.812195, 40.503647, 51.106762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.645847, 40.666649, 51.048801>,  <33.368603, 40.938316, 50.952202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.645847, 40.666649, 51.048801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058157, 0.281248, 0.957871,
		-0.718479, -0.677958, 0.155438,
		0.693113, -0.679170, 0.241498,
		33.853783, 40.462898, 51.121250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.126461, 40.438335, 51.445908>,  <33.368603, 40.938316, 50.952202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.126461, 40.438335, 51.445908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.522110, 40.473000, 51.493446>,  <33.759499, 40.493797, 51.521969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.522110, 40.473000, 51.493446>,  <33.126461, 40.438335, 51.445908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.522110, 40.473000, 51.493446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131560, 0.159916, 0.978325,
		0.065777, -0.983319, 0.169578,
		0.989124, 0.086661, 0.118846,
		33.818848, 40.499001, 51.529099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.425251, 40.011013, 51.944813>,  <33.126461, 40.438335, 51.445908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.425251, 40.011013, 51.944813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.666611, 40.329971, 51.941547>,  <33.811428, 40.521347, 51.939587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.666611, 40.329971, 51.941547>,  <33.425251, 40.011013, 51.944813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.666611, 40.329971, 51.941547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046160, 0.045148, 0.997913,
		0.796101, -0.601765, 0.064050,
		0.603401, 0.797396, -0.008165,
		33.847630, 40.569191, 51.939098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.100552, 39.883442, 52.282078>,  <33.425251, 40.011013, 51.944813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.100552, 39.883442, 52.282078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.015244, 40.272945, 52.313835>,  <33.964058, 40.506649, 52.332890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.015244, 40.272945, 52.313835>,  <34.100552, 39.883442, 52.282078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.015244, 40.272945, 52.313835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245923, -0.025137, 0.968963,
		0.945535, 0.226176, -0.234110,
		-0.213272, 0.973762, 0.079390,
		33.951263, 40.565075, 52.337650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.602226, 39.430866, 52.363552>,  <34.100552, 39.883442, 52.282078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.602226, 39.430866, 52.363552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.613132, 39.185040, 52.678909>,  <33.619678, 39.037544, 52.868122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.613132, 39.185040, 52.678909>,  <33.602226, 39.430866, 52.363552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.613132, 39.185040, 52.678909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.928605, 0.307549, 0.207621,
		-0.370066, 0.726443, 0.579078,
		0.027270, -0.614568, 0.788392,
		33.621315, 39.000668, 52.915428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.900021, 39.247425, 52.568439>,  <33.602226, 39.430866, 52.363552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.900021, 39.247425, 52.568439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.616047, 38.965736, 52.565094>,  <32.445663, 38.796722, 52.563087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.616047, 38.965736, 52.565094>,  <32.900021, 39.247425, 52.568439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.616047, 38.965736, 52.565094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371998, -0.364874, -0.853513,
		0.598010, -0.609047, 0.521005,
		-0.709931, -0.704222, -0.008366,
		32.403069, 38.754471, 52.562584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.287807, 38.657742, 52.342049>,  <32.900021, 39.247425, 52.568439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.287807, 38.657742, 52.342049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.897789, 38.605061, 52.270557>,  <32.663780, 38.573452, 52.227661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.897789, 38.605061, 52.270557>,  <33.287807, 38.657742, 52.342049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.897789, 38.605061, 52.270557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211202, -0.302104, -0.929584,
		0.068436, -0.944133, 0.322381,
		-0.975044, -0.131705, -0.178728,
		32.605274, 38.565548, 52.216938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.020370, 37.928307, 52.301109>,  <33.287807, 38.657742, 52.342049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.020370, 37.928307, 52.301109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.800419, 38.179028, 52.080296>,  <32.668449, 38.329460, 51.947807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.800419, 38.179028, 52.080296>,  <33.020370, 37.928307, 52.301109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.800419, 38.179028, 52.080296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323665, -0.449379, -0.832646,
		-0.769982, -0.636531, 0.044229,
		-0.549880, 0.626807, -0.552037,
		32.635456, 38.367069, 51.914684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.651276, 37.507332, 51.818172>,  <33.020370, 37.928307, 52.301109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.651276, 37.507332, 51.818172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.640400, 37.870850, 51.651630>,  <32.633877, 38.088959, 51.551704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.640400, 37.870850, 51.651630>,  <32.651276, 37.507332, 51.818172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.640400, 37.870850, 51.651630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272613, -0.393982, -0.877758,
		-0.961739, -0.137367, -0.237038,
		-0.027186, 0.908795, -0.416356,
		32.632244, 38.143490, 51.526722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.245903, 37.517097, 51.240223>,  <32.651276, 37.507332, 51.818172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.245903, 37.517097, 51.240223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.504505, 37.818394, 51.191788>,  <32.659668, 37.999172, 51.162727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.504505, 37.818394, 51.191788>,  <32.245903, 37.517097, 51.240223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.504505, 37.818394, 51.191788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162632, -0.291146, -0.942754,
		-0.745373, 0.589803, -0.310728,
		0.646506, 0.753237, -0.121092,
		32.698456, 38.044365, 51.155460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.150723, 37.731117, 50.644505>,  <32.245903, 37.517097, 51.240223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.150723, 37.731117, 50.644505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.516499, 37.884735, 50.695595>,  <32.735962, 37.976906, 50.726250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.516499, 37.884735, 50.695595>,  <32.150723, 37.731117, 50.644505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.516499, 37.884735, 50.695595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265359, -0.330622, -0.905690,
		-0.305598, 0.862089, -0.404243,
		0.914437, 0.384047, 0.127725,
		32.790829, 37.999950, 50.733913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.216713, 38.102840, 50.084621>,  <32.150723, 37.731117, 50.644505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.216713, 38.102840, 50.084621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.569302, 37.985374, 50.232548>,  <32.780857, 37.914894, 50.321304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.569302, 37.985374, 50.232548>,  <32.216713, 38.102840, 50.084621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.569302, 37.985374, 50.232548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234286, -0.408004, -0.882407,
		0.410017, 0.864463, -0.290844,
		0.881474, -0.293661, 0.369820,
		32.833744, 37.897278, 50.343494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.699265, 38.290234, 49.525440>,  <32.216713, 38.102840, 50.084621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.699265, 38.290234, 49.525440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.883663, 38.025043, 49.761391>,  <32.994301, 37.865929, 49.902962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.883663, 38.025043, 49.761391>,  <32.699265, 38.290234, 49.525440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.883663, 38.025043, 49.761391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410531, -0.429978, -0.804104,
		0.786731, 0.612851, 0.073952,
		0.460998, -0.662973, 0.589872,
		33.021961, 37.826153, 49.938351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.316689, 38.346695, 49.217804>,  <32.699265, 38.290234, 49.525440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.316689, 38.346695, 49.217804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.311283, 38.001598, 49.419987>,  <33.308041, 37.794540, 49.541298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.311283, 38.001598, 49.419987>,  <33.316689, 38.346695, 49.217804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.311283, 38.001598, 49.419987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507269, -0.441542, -0.740081,
		0.861682, 0.246401, 0.443611,
		-0.013517, -0.862744, 0.505460,
		33.307228, 37.742775, 49.571625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.885918, 38.112373, 49.005520>,  <33.316689, 38.346695, 49.217804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.885918, 38.112373, 49.005520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.687332, 37.799946, 49.157021>,  <33.568180, 37.612488, 49.247921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.687332, 37.799946, 49.157021>,  <33.885918, 38.112373, 49.005520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.687332, 37.799946, 49.157021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286696, -0.559379, -0.777753,
		0.819346, -0.277540, 0.501642,
		-0.496466, -0.781068, 0.378755,
		33.538391, 37.565624, 49.270649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.269924, 37.587761, 48.940586>,  <33.885918, 38.112373, 49.005520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.269924, 37.587761, 48.940586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.926708, 37.395958, 49.014172>,  <33.720779, 37.280876, 49.058323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.926708, 37.395958, 49.014172>,  <34.269924, 37.587761, 48.940586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.926708, 37.395958, 49.014172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176479, -0.611655, -0.771189,
		0.482313, -0.629245, 0.609447,
		-0.858038, -0.479509, 0.183961,
		33.669296, 37.252106, 49.069359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.484070, 36.924801, 48.840233>,  <34.269924, 37.587761, 48.940586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.484070, 36.924801, 48.840233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.085526, 36.958221, 48.833401>,  <33.846401, 36.978271, 48.829304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.085526, 36.958221, 48.833401>,  <34.484070, 36.924801, 48.840233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.085526, 36.958221, 48.833401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045803, -0.693244, -0.719246,
		-0.071930, -0.715844, 0.694546,
		-0.996357, 0.083548, -0.017078,
		33.786617, 36.983284, 48.828278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.236362, 36.187340, 48.805496>,  <34.484070, 36.924801, 48.840233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.236362, 36.187340, 48.805496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.938984, 36.409233, 48.656067>,  <33.760555, 36.542370, 48.566410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.938984, 36.409233, 48.656067>,  <34.236362, 36.187340, 48.805496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.938984, 36.409233, 48.656067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048268, -0.601631, -0.797315,
		-0.667054, -0.574727, 0.474055,
		-0.743444, 0.554734, -0.373579,
		33.715950, 36.575653, 48.543995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.840328, 35.699013, 48.447701>,  <34.236362, 36.187340, 48.805496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.840328, 35.699013, 48.447701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.721657, 36.044392, 48.284515>,  <33.650452, 36.251617, 48.186604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.721657, 36.044392, 48.284515>,  <33.840328, 35.699013, 48.447701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.721657, 36.044392, 48.284515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068133, -0.406975, -0.910895,
		-0.952543, -0.298041, 0.061912,
		-0.296681, 0.863449, -0.407967,
		33.632652, 36.303425, 48.162125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.379673, 35.491604, 47.974255>,  <33.840328, 35.699013, 48.447701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.379673, 35.491604, 47.974255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.454239, 35.857086, 47.829811>,  <33.498978, 36.076374, 47.743145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.454239, 35.857086, 47.829811>,  <33.379673, 35.491604, 47.974255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.454239, 35.857086, 47.829811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110242, -0.384683, -0.916442,
		-0.976267, 0.131025, -0.172438,
		0.186411, 0.913702, -0.361109,
		33.510162, 36.131195, 47.721478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.053337, 35.499470, 47.449997>,  <33.379673, 35.491604, 47.974255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.053337, 35.499470, 47.449997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.290615, 35.807766, 47.356972>,  <33.432980, 35.992744, 47.301155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.290615, 35.807766, 47.356972>,  <33.053337, 35.499470, 47.449997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.290615, 35.807766, 47.356972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059200, -0.246334, -0.967375,
		-0.802881, 0.587608, -0.100496,
		0.593193, 0.770738, -0.232563,
		33.468575, 36.038986, 47.287205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.806950, 35.923103, 46.796616>,  <33.053337, 35.499470, 47.449997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.806950, 35.923103, 46.796616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.193195, 36.025154, 46.816608>,  <33.424942, 36.086384, 46.828602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.193195, 36.025154, 46.816608>,  <32.806950, 35.923103, 46.796616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.193195, 36.025154, 46.816608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051974, -0.001080, -0.998648,
		-0.254725, 0.966908, -0.014302,
		0.965616, 0.255123, 0.049979,
		33.482880, 36.101692, 46.831604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.002991, 36.568474, 46.332016>,  <32.806950, 35.923103, 46.796616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.002991, 36.568474, 46.332016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.314991, 36.326389, 46.395660>,  <33.502193, 36.181141, 46.433849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.314991, 36.326389, 46.395660>,  <33.002991, 36.568474, 46.332016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.314991, 36.326389, 46.395660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101286, -0.128816, -0.986483,
		0.617523, 0.785577, -0.039178,
		0.780005, -0.605207, 0.159115,
		33.548992, 36.144829, 46.443394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.316788, 36.708889, 45.669491>,  <33.002991, 36.568474, 46.332016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.316788, 36.708889, 45.669491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.540455, 36.406986, 45.806709>,  <33.674656, 36.225845, 45.889042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.540455, 36.406986, 45.806709>,  <33.316788, 36.708889, 45.669491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.540455, 36.406986, 45.806709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237935, -0.250278, -0.938482,
		0.794179, 0.606391, 0.039634,
		0.559167, -0.754753, 0.343047,
		33.708206, 36.180561, 45.909622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.986008, 36.819668, 45.371033>,  <33.316788, 36.708889, 45.669491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.986008, 36.819668, 45.371033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.962528, 36.437756, 45.487617>,  <33.948441, 36.208611, 45.557568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.962528, 36.437756, 45.487617>,  <33.986008, 36.819668, 45.371033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.962528, 36.437756, 45.487617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348786, -0.293183, -0.890164,
		0.935363, 0.049410, 0.350222,
		-0.058696, -0.954779, 0.291466,
		33.944920, 36.151321, 45.575058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.653717, 36.475086, 45.263386>,  <33.986008, 36.819668, 45.371033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.653717, 36.475086, 45.263386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.381275, 36.182404, 45.252819>,  <34.217812, 36.006794, 45.246479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.381275, 36.182404, 45.252819>,  <34.653717, 36.475086, 45.263386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.381275, 36.182404, 45.252819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311700, -0.257114, -0.914733,
		0.662526, -0.631263, 0.403195,
		-0.681104, -0.731709, -0.026420,
		34.176945, 35.962891, 45.244892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.943394, 36.114216, 44.816410>,  <34.653717, 36.475086, 45.263386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.943394, 36.114216, 44.816410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.564812, 35.986229, 44.833584>,  <34.337662, 35.909439, 44.843887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.564812, 35.986229, 44.833584>,  <34.943394, 36.114216, 44.816410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.564812, 35.986229, 44.833584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015495, -0.177876, -0.983931,
		0.322462, -0.930582, 0.173310,
		-0.946456, -0.319966, 0.042939,
		34.280876, 35.890240, 44.846466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.912254, 35.572742, 44.344818>,  <34.943394, 36.114216, 44.816410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.912254, 35.572742, 44.344818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.527794, 35.674610, 44.387390>,  <34.297115, 35.735733, 44.412933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.527794, 35.674610, 44.387390>,  <34.912254, 35.572742, 44.344818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.527794, 35.674610, 44.387390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121939, -0.045863, -0.991478,
		-0.247622, -0.965939, 0.075136,
		-0.961153, 0.254674, 0.106429,
		34.239449, 35.751011, 44.419319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.544952, 35.030754, 44.056862>,  <34.912254, 35.572742, 44.344818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.544952, 35.030754, 44.056862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.311436, 35.354980, 44.038235>,  <34.171326, 35.549515, 44.027058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.311436, 35.354980, 44.038235>,  <34.544952, 35.030754, 44.056862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.311436, 35.354980, 44.038235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317200, -0.280504, -0.905926,
		-0.747374, -0.514103, 0.420868,
		-0.583794, 0.810565, -0.046568,
		34.136299, 35.598148, 44.024265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.936737, 34.774082, 43.825203>,  <34.544952, 35.030754, 44.056862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.936737, 34.774082, 43.825203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.857464, 35.160408, 43.758358>,  <33.809902, 35.392204, 43.718250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.857464, 35.160408, 43.758358>,  <33.936737, 34.774082, 43.825203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.857464, 35.160408, 43.758358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368227, -0.231368, -0.900487,
		-0.908369, -0.116921, 0.401491,
		-0.198178, 0.965815, -0.167114,
		33.798012, 35.450153, 43.708225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.330219, 34.707352, 43.484146>,  <33.936737, 34.774082, 43.825203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.330219, 34.707352, 43.484146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.477100, 35.067478, 43.390690>,  <33.565231, 35.283554, 43.334618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.477100, 35.067478, 43.390690>,  <33.330219, 34.707352, 43.484146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.477100, 35.067478, 43.390690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293738, -0.126089, -0.947533,
		-0.882540, 0.416569, 0.218156,
		0.367206, 0.900317, -0.233641,
		33.587261, 35.337574, 43.320599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.756008, 35.051144, 43.174206>,  <33.330219, 34.707352, 43.484146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.756008, 35.051144, 43.174206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.097340, 35.225086, 43.059155>,  <33.302139, 35.329453, 42.990124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.097340, 35.225086, 43.059155>,  <32.756008, 35.051144, 43.174206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.097340, 35.225086, 43.059155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299118, -0.043522, -0.953223,
		-0.427035, 0.899446, 0.092936,
		0.853328, 0.434859, -0.287626,
		33.353336, 35.355545, 42.972866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.492661, 35.647381, 42.734108>,  <32.756008, 35.051144, 43.174206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.492661, 35.647381, 42.734108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.875935, 35.574657, 42.645721>,  <33.105900, 35.531021, 42.592690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.875935, 35.574657, 42.645721>,  <32.492661, 35.647381, 42.734108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.875935, 35.574657, 42.645721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219302, 0.029476, -0.975212,
		0.183818, 0.982892, -0.011628,
		0.958185, -0.181812, -0.220968,
		33.163391, 35.520115, 42.579430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.585323, 36.052795, 42.206371>,  <32.492661, 35.647381, 42.734108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.585323, 36.052795, 42.206371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.889202, 35.794418, 42.176414>,  <33.071529, 35.639393, 42.158440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.889202, 35.794418, 42.176414>,  <32.585323, 36.052795, 42.206371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.889202, 35.794418, 42.176414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105265, -0.008505, -0.994408,
		0.641696, 0.763336, -0.074457,
		0.759701, -0.645945, -0.074895,
		33.117111, 35.600636, 42.153946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.023109, 36.310467, 41.713570>,  <32.585323, 36.052795, 42.206371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.023109, 36.310467, 41.713570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.084587, 35.916069, 41.739494>,  <33.121475, 35.679432, 41.755051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.084587, 35.916069, 41.739494>,  <33.023109, 36.310467, 41.713570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.084587, 35.916069, 41.739494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015764, -0.063138, -0.997880,
		0.987992, 0.154393, 0.005839,
		0.153697, -0.985990, 0.064814,
		33.130695, 35.620274, 41.758938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.352062, 36.270767, 41.170555>,  <33.023109, 36.310467, 41.713570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.352062, 36.270767, 41.170555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.300732, 35.883171, 41.255016>,  <33.269936, 35.650612, 41.305691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.300732, 35.883171, 41.255016>,  <33.352062, 36.270767, 41.170555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.300732, 35.883171, 41.255016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102154, -0.198863, -0.974689,
		0.986457, -0.146645, -0.073468,
		-0.128324, -0.968993, 0.211150,
		33.262234, 35.592472, 41.318363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.867153, 35.837036, 40.791283>,  <33.352062, 36.270767, 41.170555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.867153, 35.837036, 40.791283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.581039, 35.565926, 40.859375>,  <33.409370, 35.403259, 40.900230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.581039, 35.565926, 40.859375>,  <33.867153, 35.837036, 40.791283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.581039, 35.565926, 40.859375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125920, -0.114609, -0.985398,
		0.687394, -0.726277, -0.003368,
		-0.715286, -0.677781, 0.170235,
		33.366455, 35.362591, 40.910446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.968494, 35.148605, 40.429291>,  <33.867153, 35.837036, 40.791283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.968494, 35.148605, 40.429291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.572887, 35.160538, 40.487202>,  <33.335526, 35.167698, 40.521950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.572887, 35.160538, 40.487202>,  <33.968494, 35.148605, 40.429291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.572887, 35.160538, 40.487202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147352, -0.276691, -0.949594,
		0.011731, -0.960496, 0.278048,
		-0.989015, 0.029831, 0.144777,
		33.276184, 35.169487, 40.530636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.804428, 34.460499, 40.190441>,  <33.968494, 35.148605, 40.429291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.804428, 34.460499, 40.190441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.459702, 34.663113, 40.200901>,  <33.252865, 34.784683, 40.207176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.459702, 34.663113, 40.200901>,  <33.804428, 34.460499, 40.190441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.459702, 34.663113, 40.200901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193306, -0.280355, -0.940231,
		-0.468933, -0.815364, 0.339533,
		-0.861820, 0.506539, 0.026147,
		33.201157, 34.815075, 40.208744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.243172, 34.037838, 40.000053>,  <33.804428, 34.460499, 40.190441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.243172, 34.037838, 40.000053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.106556, 34.405041, 39.919453>,  <33.024586, 34.625362, 39.871090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.106556, 34.405041, 39.919453>,  <33.243172, 34.037838, 40.000053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.106556, 34.405041, 39.919453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109184, -0.251700, -0.961627,
		-0.933503, -0.306435, 0.186198,
		-0.341542, 0.918011, -0.201505,
		33.004093, 34.680443, 39.859001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.691647, 33.933693, 39.563919>,  <33.243172, 34.037838, 40.000053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.691647, 33.933693, 39.563919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.760048, 34.324970, 39.516758>,  <32.801090, 34.559734, 39.488461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.760048, 34.324970, 39.516758>,  <32.691647, 33.933693, 39.563919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.760048, 34.324970, 39.516758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249167, -0.072844, -0.965717,
		-0.953243, 0.194521, 0.231276,
		0.171005, 0.978190, -0.117906,
		32.811348, 34.618427, 39.481384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.130638, 34.184357, 39.203033>,  <32.691647, 33.933693, 39.563919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.130638, 34.184357, 39.203033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.439205, 34.431969, 39.144081>,  <32.624344, 34.580536, 39.108711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.439205, 34.431969, 39.144081>,  <32.130638, 34.184357, 39.203033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.439205, 34.431969, 39.144081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222586, 0.045524, -0.973850,
		-0.596129, 0.784050, 0.172904,
		0.771418, 0.619026, -0.147381,
		32.670631, 34.617676, 39.099869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.870859, 34.674789, 38.810608>,  <32.130638, 34.184357, 39.203033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.870859, 34.674789, 38.810608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.266239, 34.703861, 38.757420>,  <32.503468, 34.721306, 38.725506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.266239, 34.703861, 38.757420>,  <31.870859, 34.674789, 38.810608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.266239, 34.703861, 38.757420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139302, 0.090400, -0.986115,
		-0.059648, 0.993250, 0.099480,
		0.988452, 0.072678, -0.132969,
		32.562775, 34.725666, 38.717529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.995502, 35.230087, 38.297352>,  <31.870859, 34.674789, 38.810608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.995502, 35.230087, 38.297352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.341415, 35.029293, 38.302422>,  <32.548965, 34.908817, 38.305462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.341415, 35.029293, 38.302422>,  <31.995502, 35.230087, 38.297352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.341415, 35.029293, 38.302422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049960, 0.060907, -0.996892,
		0.499653, 0.862730, 0.077751,
		0.864784, -0.501984, 0.012670,
		32.600849, 34.878696, 38.306221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.557922, 35.550251, 37.858006>,  <31.995502, 35.230087, 38.297352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.557922, 35.550251, 37.858006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.650219, 35.164616, 37.910603>,  <32.705597, 34.933235, 37.942162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.650219, 35.164616, 37.910603>,  <32.557922, 35.550251, 37.858006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.650219, 35.164616, 37.910603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232744, -0.076530, -0.969522,
		0.944768, 0.254317, 0.206727,
		0.230745, -0.964088, 0.131493,
		32.719444, 34.875389, 37.950050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.261417, 35.470470, 37.512142>,  <32.557922, 35.550251, 37.858006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.261417, 35.470470, 37.512142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.084839, 35.112984, 37.544132>,  <32.978893, 34.898491, 37.563328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.084839, 35.112984, 37.544132>,  <33.261417, 35.470470, 37.512142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.084839, 35.112984, 37.544132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329221, -0.244239, -0.912119,
		0.834710, -0.376320, 0.402048,
		-0.441445, -0.893717, 0.079977,
		32.952404, 34.844868, 37.568127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.782608, 35.042629, 37.169838>,  <33.261417, 35.470470, 37.512142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.782608, 35.042629, 37.169838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.438446, 34.839550, 37.187511>,  <33.231949, 34.717705, 37.198116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.438446, 34.839550, 37.187511>,  <33.782608, 35.042629, 37.169838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.438446, 34.839550, 37.187511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134431, -0.309744, -0.941269,
		0.491565, -0.803930, 0.334754,
		-0.860403, -0.507696, 0.044186,
		33.180325, 34.687241, 37.200768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.929005, 34.355087, 36.857731>,  <33.782608, 35.042629, 37.169838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.929005, 34.355087, 36.857731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.533497, 34.411736, 36.838619>,  <33.296192, 34.445724, 36.827152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.533497, 34.411736, 36.838619>,  <33.929005, 34.355087, 36.857731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.533497, 34.411736, 36.838619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012679, -0.398010, -0.917294,
		-0.148927, -0.906384, 0.395334,
		-0.988767, 0.141622, -0.047783,
		33.236866, 34.454224, 36.824284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.610580, 33.742096, 36.495811>,  <33.929005, 34.355087, 36.857731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.610580, 33.742096, 36.495811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.331669, 34.023914, 36.443016>,  <33.164322, 34.193005, 36.411339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.331669, 34.023914, 36.443016>,  <33.610580, 33.742096, 36.495811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.331669, 34.023914, 36.443016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229304, -0.393697, -0.890181,
		-0.679137, -0.590437, 0.436071,
		-0.697275, 0.704547, -0.131984,
		33.122486, 34.235279, 36.403419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.320107, 33.498215, 36.625938>,  <33.610580, 33.742096, 36.495811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.320107, 33.498215, 36.625938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.686123, 33.659248, 36.615971>,  <34.905735, 33.755867, 36.609989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.686123, 33.659248, 36.615971>,  <34.320107, 33.498215, 36.625938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.686123, 33.659248, 36.615971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156461, -0.297325, 0.941869,
		0.371770, -0.865751, -0.335054,
		0.915045, 0.402582, -0.024920,
		34.960636, 33.780022, 36.608494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.675571, 33.016422, 36.955772>,  <34.320107, 33.498215, 36.625938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.675571, 33.016422, 36.955772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.919018, 33.333614, 36.966885>,  <35.065086, 33.523930, 36.973553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.919018, 33.333614, 36.966885>,  <34.675571, 33.016422, 36.955772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.919018, 33.333614, 36.966885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308922, -0.269058, 0.912236,
		0.730860, -0.546617, -0.408722,
		0.608613, 0.792981, 0.027782,
		35.101601, 33.571510, 36.975220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.244305, 32.784241, 37.221256>,  <34.675571, 33.016422, 36.955772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.244305, 32.784241, 37.221256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.336937, 33.170975, 37.264339>,  <35.392517, 33.403015, 37.290188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.336937, 33.170975, 37.264339>,  <35.244305, 32.784241, 37.221256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.336937, 33.170975, 37.264339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329875, -0.182202, 0.926275,
		0.915181, -0.178973, -0.361128,
		0.231576, 0.966836, 0.107709,
		35.406410, 33.461025, 37.296654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.990601, 32.820179, 37.434494>,  <35.244305, 32.784241, 37.221256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.990601, 32.820179, 37.434494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.807732, 33.152721, 37.560883>,  <35.698009, 33.352245, 37.636715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.807732, 33.152721, 37.560883>,  <35.990601, 32.820179, 37.434494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.807732, 33.152721, 37.560883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468571, -0.076818, 0.880080,
		0.755931, 0.550406, -0.354430,
		-0.457175, 0.831356, 0.315974,
		35.670578, 33.402126, 37.655674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.479862, 33.164623, 37.896053>,  <35.990601, 32.820179, 37.434494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.479862, 33.164623, 37.896053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.141933, 33.345779, 38.010017>,  <35.939178, 33.454472, 38.078396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.141933, 33.345779, 38.010017>,  <36.479862, 33.164623, 37.896053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.141933, 33.345779, 38.010017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386257, 0.147742, 0.910482,
		0.370253, 0.879241, -0.299747,
		-0.844819, 0.452888, 0.284911,
		35.888489, 33.481647, 38.095490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.696304, 33.740173, 38.197472>,  <36.479862, 33.164623, 37.896053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.696304, 33.740173, 38.197472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.338097, 33.660046, 38.356430>,  <36.123173, 33.611969, 38.451805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.338097, 33.660046, 38.356430>,  <36.696304, 33.740173, 38.197472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.338097, 33.660046, 38.356430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412547, -0.038763, 0.910111,
		-0.166908, 0.978964, 0.117354,
		-0.895515, -0.200319, 0.397399,
		36.069443, 33.599949, 38.475651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.613522, 34.229488, 38.759266>,  <36.696304, 33.740173, 38.197472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.613522, 34.229488, 38.759266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.329258, 33.961063, 38.843784>,  <36.158699, 33.800011, 38.894497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.329258, 33.961063, 38.843784>,  <36.613522, 34.229488, 38.759266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.329258, 33.961063, 38.843784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114875, 0.185628, 0.975882,
		-0.694097, 0.717790, -0.054830,
		-0.710657, -0.671059, 0.211300,
		36.116062, 33.759747, 38.907173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.290775, 34.508236, 39.291248>,  <36.613522, 34.229488, 38.759266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.290775, 34.508236, 39.291248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.173019, 34.127884, 39.329525>,  <36.102367, 33.899673, 39.352489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.173019, 34.127884, 39.329525>,  <36.290775, 34.508236, 39.291248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.173019, 34.127884, 39.329525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144504, 0.143263, 0.979078,
		-0.944699, 0.274399, -0.179581,
		-0.294385, -0.950885, 0.095689,
		36.084705, 33.842617, 39.358231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.905647, 34.517860, 39.974792>,  <36.290775, 34.508236, 39.291248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.905647, 34.517860, 39.974792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.955944, 34.129040, 39.895489>,  <35.986122, 33.895748, 39.847908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.955944, 34.129040, 39.895489>,  <35.905647, 34.517860, 39.974792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.955944, 34.129040, 39.895489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148567, -0.216043, 0.965015,
		-0.980875, -0.091889, -0.171581,
		0.125743, -0.972050, -0.198260,
		35.993668, 33.837425, 39.836010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.434269, 34.113159, 40.319767>,  <35.905647, 34.517860, 39.974792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.434269, 34.113159, 40.319767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.742783, 33.862316, 40.276211>,  <35.927891, 33.711811, 40.250076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.742783, 33.862316, 40.276211>,  <35.434269, 34.113159, 40.319767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.742783, 33.862316, 40.276211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166313, -0.363696, 0.916551,
		-0.614382, -0.688809, -0.384808,
		0.771281, -0.627111, -0.108890,
		35.974167, 33.674183, 40.243546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.174580, 33.470043, 40.606564>,  <35.434269, 34.113159, 40.319767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.174580, 33.470043, 40.606564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.572842, 33.437141, 40.589119>,  <35.811798, 33.417400, 40.578651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.572842, 33.437141, 40.589119>,  <35.174580, 33.470043, 40.606564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.572842, 33.437141, 40.589119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015030, -0.320238, 0.947218,
		-0.091881, -0.943759, -0.317611,
		0.995657, -0.082258, -0.043608,
		35.871540, 33.412464, 40.576035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.386044, 32.808277, 40.951092>,  <35.174580, 33.470043, 40.606564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.386044, 32.808277, 40.951092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.722298, 33.024212, 40.968571>,  <35.924049, 33.153774, 40.979057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.722298, 33.024212, 40.968571>,  <35.386044, 32.808277, 40.951092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.722298, 33.024212, 40.968571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136988, -0.289981, 0.947178,
		0.523992, -0.790245, -0.317719,
		0.840635, 0.539837, 0.043693,
		35.974487, 33.186165, 40.981678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.846107, 32.431473, 41.382679>,  <35.386044, 32.808277, 40.951092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.846107, 32.431473, 41.382679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.033401, 32.784706, 41.370544>,  <36.145779, 32.996647, 41.363266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.033401, 32.784706, 41.370544>,  <35.846107, 32.431473, 41.382679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.033401, 32.784706, 41.370544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190647, -0.067446, 0.979339,
		0.862792, -0.464344, -0.199938,
		0.468235, 0.883083, -0.030334,
		36.173874, 33.049629, 41.361443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.464310, 32.357937, 41.679409>,  <35.846107, 32.431473, 41.382679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.464310, 32.357937, 41.679409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.371117, 32.744678, 41.721195>,  <36.315201, 32.976723, 41.746265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.371117, 32.744678, 41.721195>,  <36.464310, 32.357937, 41.679409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.371117, 32.744678, 41.721195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189809, -0.060141, 0.979977,
		0.953777, 0.248148, -0.169506,
		-0.232985, 0.966854, 0.104462,
		36.301220, 33.034733, 41.752533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.937016, 32.544369, 42.157642>,  <36.464310, 32.357937, 41.679409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.937016, 32.544369, 42.157642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.651524, 32.824497, 42.162380>,  <36.480228, 32.992573, 42.165222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.651524, 32.824497, 42.162380>,  <36.937016, 32.544369, 42.157642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.651524, 32.824497, 42.162380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041878, 0.025793, 0.998790,
		0.699164, 0.713366, -0.047737,
		-0.713734, 0.700317, 0.011841,
		36.437405, 33.034592, 42.165932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.056503, 33.130997, 42.679333>,  <36.937016, 32.544369, 42.157642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.056503, 33.130997, 42.679333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.658180, 33.150570, 42.648430>,  <36.419186, 33.162312, 42.629890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.658180, 33.150570, 42.648430>,  <37.056503, 33.130997, 42.679333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.658180, 33.150570, 42.648430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060813, 0.276597, 0.959060,
		0.068294, 0.959740, -0.272463,
		-0.995810, 0.048929, -0.077255,
		36.359436, 33.165249, 42.625252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.863659, 33.840546, 42.888466>,  <37.056503, 33.130997, 42.679333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.863659, 33.840546, 42.888466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.538704, 33.610874, 42.929157>,  <36.343731, 33.473072, 42.953571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.538704, 33.610874, 42.929157>,  <36.863659, 33.840546, 42.888466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.538704, 33.610874, 42.929157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150810, 0.375406, 0.914509,
		-0.563283, 0.727591, -0.391566,
		-0.812385, -0.574179, 0.101732,
		36.294987, 33.438622, 42.959679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.484959, 34.267281, 43.272541>,  <36.863659, 33.840546, 42.888466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.484959, 34.267281, 43.272541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.296635, 33.915066, 43.294392>,  <36.183640, 33.703735, 43.307503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.296635, 33.915066, 43.294392>,  <36.484959, 34.267281, 43.272541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.296635, 33.915066, 43.294392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175640, 0.154234, 0.972297,
		-0.864573, 0.448174, -0.227273,
		-0.470812, -0.880540, 0.054629,
		36.155392, 33.650902, 43.310780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.099277, 34.320202, 43.868301>,  <36.484959, 34.267281, 43.272541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.099277, 34.320202, 43.868301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.026672, 33.931019, 43.811150>,  <35.983109, 33.697510, 43.776859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.026672, 33.931019, 43.811150>,  <36.099277, 34.320202, 43.868301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.026672, 33.931019, 43.811150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223101, -0.100761, 0.969574,
		-0.957747, 0.207865, -0.198777,
		-0.181512, -0.972954, -0.142879,
		35.972218, 33.639133, 43.768288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.430859, 34.187729, 44.145065>,  <36.099277, 34.320202, 43.868301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.430859, 34.187729, 44.145065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.651573, 33.854851, 44.166931>,  <35.784000, 33.655125, 44.180050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.651573, 33.854851, 44.166931>,  <35.430859, 34.187729, 44.145065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.651573, 33.854851, 44.166931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187597, -0.059989, 0.980412,
		-0.812614, -0.551230, -0.189218,
		0.551784, -0.832194, 0.054661,
		35.817108, 33.605194, 44.183331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.029510, 33.732018, 44.544289>,  <35.430859, 34.187729, 44.145065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.029510, 33.732018, 44.544289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.421551, 33.653728, 44.557507>,  <35.656776, 33.606754, 44.565437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.421551, 33.653728, 44.557507>,  <35.029510, 33.732018, 44.544289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.421551, 33.653728, 44.557507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024464, 0.046105, 0.998637,
		-0.196981, -0.979575, 0.040400,
		0.980102, -0.195724, 0.033046,
		35.715580, 33.595013, 44.567421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.112240, 33.353180, 45.185753>,  <35.029510, 33.732018, 44.544289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.112240, 33.353180, 45.185753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.486599, 33.461376, 45.095482>,  <35.711216, 33.526295, 45.041317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.486599, 33.461376, 45.095482>,  <35.112240, 33.353180, 45.185753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.486599, 33.461376, 45.095482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105497, 0.396025, 0.912159,
		0.336105, -0.877496, 0.342103,
		0.935897, 0.270491, -0.225679,
		35.767368, 33.542522, 45.027779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.446972, 33.169456, 45.698349>,  <35.112240, 33.353180, 45.185753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.446972, 33.169456, 45.698349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.678547, 33.451656, 45.534836>,  <35.817493, 33.620975, 45.436729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.678547, 33.451656, 45.534836>,  <35.446972, 33.169456, 45.698349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.678547, 33.451656, 45.534836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200537, 0.362745, 0.910056,
		0.790327, -0.608841, 0.068527,
		0.578937, 0.705499, -0.408782,
		35.852226, 33.663307, 45.412201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.881016, 33.333843, 46.234348>,  <35.446972, 33.169456, 45.698349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.881016, 33.333843, 46.234348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.922413, 33.645607, 45.987186>,  <35.947250, 33.832664, 45.838890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.922413, 33.645607, 45.987186>,  <35.881016, 33.333843, 46.234348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.922413, 33.645607, 45.987186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309685, 0.565111, 0.764685,
		0.945190, -0.270497, -0.182886,
		0.103494, 0.779410, -0.617907,
		35.953461, 33.879429, 45.801815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.468021, 33.642921, 46.477409>,  <35.881016, 33.333843, 46.234348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.468021, 33.642921, 46.477409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.270775, 33.923893, 46.272110>,  <36.152428, 34.092476, 46.148930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.270775, 33.923893, 46.272110>,  <36.468021, 33.642921, 46.477409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.270775, 33.923893, 46.272110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159930, 0.653113, 0.740179,
		0.855134, 0.282913, -0.434403,
		-0.493121, 0.702426, -0.513253,
		36.122837, 34.134621, 46.118134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.887272, 34.267109, 46.495239>,  <36.468021, 33.642921, 46.477409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.887272, 34.267109, 46.495239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.539295, 34.430660, 46.384945>,  <36.330509, 34.528790, 46.318768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.539295, 34.430660, 46.384945>,  <36.887272, 34.267109, 46.495239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.539295, 34.430660, 46.384945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045722, 0.623575, 0.780425,
		0.491038, 0.666314, -0.561166,
		-0.869938, 0.408876, -0.275734,
		36.278313, 34.553322, 46.302223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.064297, 35.013462, 46.337185>,  <36.887272, 34.267109, 46.495239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.064297, 35.013462, 46.337185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.675636, 34.986385, 46.427799>,  <36.442440, 34.970139, 46.482170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.675636, 34.986385, 46.427799>,  <37.064297, 35.013462, 46.337185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.675636, 34.986385, 46.427799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132916, 0.636030, 0.760131,
		-0.195539, 0.768690, -0.608999,
		-0.971647, -0.067689, 0.226540,
		36.384144, 34.966080, 46.495762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.771996, 35.667599, 46.461502>,  <37.064297, 35.013462, 46.337185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.771996, 35.667599, 46.461502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.503296, 35.438187, 46.649036>,  <36.342075, 35.300537, 46.761559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.503296, 35.438187, 46.649036>,  <36.771996, 35.667599, 46.461502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.503296, 35.438187, 46.649036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015574, 0.643693, 0.765125,
		-0.740612, 0.506673, -0.441334,
		-0.671753, -0.573534, 0.468836,
		36.301769, 35.266125, 46.789688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.457050, 36.148979, 46.871521>,  <36.771996, 35.667599, 46.461502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.457050, 36.148979, 46.871521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.295444, 35.821053, 47.033840>,  <36.198483, 35.624294, 47.131229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.295444, 35.821053, 47.033840>,  <36.457050, 36.148979, 46.871521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.295444, 35.821053, 47.033840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076723, 0.472418, 0.878029,
		-0.911530, 0.323601, -0.253762,
		-0.404013, -0.819819, 0.405796,
		36.174240, 35.575108, 47.155579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.946960, 36.425865, 47.224300>,  <36.457050, 36.148979, 46.871521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.946960, 36.425865, 47.224300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.037922, 36.064724, 47.370251>,  <36.092499, 35.848038, 47.457821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.037922, 36.064724, 47.370251>,  <35.946960, 36.425865, 47.224300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.037922, 36.064724, 47.370251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018504, 0.378635, 0.925361,
		-0.973624, -0.203683, 0.102811,
		0.227408, -0.902856, 0.364879,
		36.106144, 35.793869, 47.479713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.442356, 36.318386, 47.719963>,  <35.946960, 36.425865, 47.224300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.442356, 36.318386, 47.719963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.769257, 36.102169, 47.799877>,  <35.965397, 35.972439, 47.847824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.769257, 36.102169, 47.799877>,  <35.442356, 36.318386, 47.719963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.769257, 36.102169, 47.799877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052671, 0.415288, 0.908164,
		-0.573867, -0.731677, 0.367866,
		0.817253, -0.540541, 0.199782,
		36.014431, 35.940006, 47.859814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.436810, 36.301479, 48.346855>,  <35.442356, 36.318386, 47.719963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.436810, 36.301479, 48.346855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.807110, 36.166340, 48.278919>,  <36.029289, 36.085255, 48.238159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.807110, 36.166340, 48.278919>,  <35.436810, 36.301479, 48.346855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.807110, 36.166340, 48.278919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307805, 0.412384, 0.857435,
		-0.219644, -0.846048, 0.485757,
		0.925750, -0.337849, -0.169840,
		36.084835, 36.064983, 48.227966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.645374, 35.930126, 48.934711>,  <35.436810, 36.301479, 48.346855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.645374, 35.930126, 48.934711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.991253, 36.000607, 48.746563>,  <36.198780, 36.042892, 48.633675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.991253, 36.000607, 48.746563>,  <35.645374, 35.930126, 48.934711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.991253, 36.000607, 48.746563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446443, 0.159549, 0.880473,
		0.230189, -0.971338, 0.059297,
		0.864698, 0.176202, -0.470373,
		36.250664, 36.053467, 48.605450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.154381, 35.521950, 49.274166>,  <35.645374, 35.930126, 48.934711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.154381, 35.521950, 49.274166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.323174, 35.831909, 49.085926>,  <36.424450, 36.017883, 48.972984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.323174, 35.831909, 49.085926>,  <36.154381, 35.521950, 49.274166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.323174, 35.831909, 49.085926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372087, 0.325315, 0.869322,
		0.826728, -0.541944, -0.151052,
		0.421985, 0.774898, -0.470598,
		36.449768, 36.064377, 48.944748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.854542, 35.563221, 49.464226>,  <36.154381, 35.521950, 49.274166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.854542, 35.563221, 49.464226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.764927, 35.936691, 49.352467>,  <36.711159, 36.160774, 49.285412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.764927, 35.936691, 49.352467>,  <36.854542, 35.563221, 49.464226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.764927, 35.936691, 49.352467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251442, 0.332352, 0.909021,
		0.941586, 0.133403, -0.309224,
		-0.224037, 0.933673, -0.279395,
		36.697716, 36.216793, 49.268646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.408672, 35.912125, 49.762981>,  <36.854542, 35.563221, 49.464226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.408672, 35.912125, 49.762981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.145115, 36.203514, 49.687946>,  <36.986980, 36.378349, 49.642925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.145115, 36.203514, 49.687946>,  <37.408672, 35.912125, 49.762981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.145115, 36.203514, 49.687946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305648, 0.487118, 0.818105,
		0.687345, 0.481706, -0.543614,
		-0.658890, 0.728475, -0.187585,
		36.947449, 36.422058, 49.631672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.683887, 36.552460, 49.849026>,  <37.408672, 35.912125, 49.762981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.683887, 36.552460, 49.849026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.294964, 36.633953, 49.894821>,  <37.061611, 36.682850, 49.922298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.294964, 36.633953, 49.894821>,  <37.683887, 36.552460, 49.849026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.294964, 36.633953, 49.894821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207625, 0.528166, 0.823367,
		0.107277, 0.824338, -0.555840,
		-0.972309, 0.203734, 0.114493,
		37.003273, 36.695072, 49.929169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.686035, 37.218647, 50.033993>,  <37.683887, 36.552460, 49.849026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.686035, 37.218647, 50.033993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.386761, 37.002060, 50.187370>,  <37.207195, 36.872108, 50.279396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.386761, 37.002060, 50.187370>,  <37.686035, 37.218647, 50.033993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.386761, 37.002060, 50.187370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230402, 0.329926, 0.915459,
		-0.622201, 0.773278, -0.122090,
		-0.748185, -0.541470, 0.383445,
		37.162304, 36.839619, 50.302402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.740158, 37.965759, 50.176640>,  <37.686035, 37.218647, 50.033993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.740158, 37.965759, 50.176640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.105831, 38.097229, 50.271503>,  <38.325233, 38.176109, 50.328423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.105831, 38.097229, 50.271503>,  <37.740158, 37.965759, 50.176640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.105831, 38.097229, 50.271503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338810, -0.298566, -0.892225,
		-0.222442, 0.896009, -0.384302,
		0.914181, 0.328674, 0.237163,
		38.380085, 38.195831, 50.342651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.850410, 38.315594, 49.621109>,  <37.740158, 37.965759, 50.176640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.850410, 38.315594, 49.621109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.220718, 38.256165, 49.760181>,  <38.442902, 38.220509, 49.843624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.220718, 38.256165, 49.760181>,  <37.850410, 38.315594, 49.621109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.220718, 38.256165, 49.760181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289564, -0.312685, -0.904644,
		0.243120, 0.938165, -0.246452,
		0.925767, -0.148573, 0.347679,
		38.498447, 38.211594, 49.864487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.363575, 38.731258, 49.152397>,  <37.850410, 38.315594, 49.621109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.363575, 38.731258, 49.152397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.533516, 38.417435, 49.333046>,  <38.635479, 38.229141, 49.441437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.533516, 38.417435, 49.333046>,  <38.363575, 38.731258, 49.152397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.533516, 38.417435, 49.333046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213391, -0.398035, -0.892207,
		0.879753, 0.475429, -0.001688,
		0.424853, -0.784561, 0.451624,
		38.660973, 38.182068, 49.468533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.920723, 38.578430, 48.735012>,  <38.363575, 38.731258, 49.152397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.920723, 38.578430, 48.735012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.925056, 38.243011, 48.952900>,  <38.927654, 38.041759, 49.083633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.925056, 38.243011, 48.952900>,  <38.920723, 38.578430, 48.735012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.925056, 38.243011, 48.952900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123277, -0.539480, -0.832925,
		0.992313, 0.076173, 0.097530,
		0.010830, -0.838546, 0.544723,
		38.928307, 37.991447, 49.116318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.452896, 38.154381, 48.513596>,  <38.920723, 38.578430, 48.735012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.452896, 38.154381, 48.513596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.224453, 37.884655, 48.700844>,  <39.087387, 37.722820, 48.813194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.224453, 37.884655, 48.700844>,  <39.452896, 38.154381, 48.513596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.224453, 37.884655, 48.700844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007240, -0.574388, -0.818551,
		0.820840, -0.464095, 0.332921,
		-0.571112, -0.674310, 0.468120,
		39.053120, 37.682362, 48.841278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.858006, 37.549988, 48.478958>,  <39.452896, 38.154381, 48.513596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.858006, 37.549988, 48.478958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.482079, 37.421329, 48.525051>,  <39.256523, 37.344135, 48.552708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.482079, 37.421329, 48.525051>,  <39.858006, 37.549988, 48.478958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.482079, 37.421329, 48.525051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070683, -0.513006, -0.855470,
		0.334278, -0.795843, 0.504869,
		-0.939820, -0.321651, 0.115235,
		39.200134, 37.324833, 48.559620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.931553, 36.915825, 48.181778>,  <39.858006, 37.549988, 48.478958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.931553, 36.915825, 48.181778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.536381, 36.977753, 48.180016>,  <39.299278, 37.014908, 48.178959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.536381, 36.977753, 48.180016>,  <39.931553, 36.915825, 48.181778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.536381, 36.977753, 48.180016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080014, -0.534537, -0.841349,
		-0.132609, -0.830844, 0.540475,
		-0.987934, 0.154816, -0.004405,
		39.240002, 37.024197, 48.178696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.582272, 36.250015, 48.073555>,  <39.931553, 36.915825, 48.181778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.582272, 36.250015, 48.073555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.313721, 36.525284, 47.963516>,  <39.152592, 36.690445, 47.897491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.313721, 36.525284, 47.963516>,  <39.582272, 36.250015, 48.073555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.313721, 36.525284, 47.963516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234452, -0.549346, -0.802029,
		-0.703057, -0.473964, 0.530159,
		-0.671374, 0.688170, -0.275100,
		39.112309, 36.731735, 47.880985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.938221, 35.841450, 47.910400>,  <39.582272, 36.250015, 48.073555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.938221, 35.841450, 47.910400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.912983, 36.187813, 47.711918>,  <38.897842, 36.395630, 47.592831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.912983, 36.187813, 47.711918>,  <38.938221, 35.841450, 47.910400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.912983, 36.187813, 47.711918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346524, -0.485267, -0.802768,
		-0.935917, 0.121299, 0.330675,
		-0.063091, 0.865912, -0.496203,
		38.894054, 36.447586, 47.563057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.351597, 35.799290, 47.482212>,  <38.938221, 35.841450, 47.910400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.351597, 35.799290, 47.482212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.543331, 36.093281, 47.290359>,  <38.658371, 36.269676, 47.175247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.543331, 36.093281, 47.290359>,  <38.351597, 35.799290, 47.482212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.543331, 36.093281, 47.290359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240925, -0.415317, -0.877192,
		-0.843915, 0.536026, -0.022003,
		0.479336, 0.734975, -0.479635,
		38.687134, 36.313774, 47.146469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.894516, 36.039719, 46.889759>,  <38.351597, 35.799290, 47.482212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.894516, 36.039719, 46.889759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.251354, 36.179153, 46.774761>,  <38.465458, 36.262814, 46.705761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.251354, 36.179153, 46.774761>,  <37.894516, 36.039719, 46.889759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.251354, 36.179153, 46.774761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187638, -0.293013, -0.937515,
		-0.411045, 0.890298, -0.195988,
		0.892095, 0.348587, -0.287496,
		38.518982, 36.283730, 46.688511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.786243, 36.396473, 46.250877>,  <37.894516, 36.039719, 46.889759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.786243, 36.396473, 46.250877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.178165, 36.317245, 46.239971>,  <38.413319, 36.269707, 46.233429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.178165, 36.317245, 46.239971>,  <37.786243, 36.396473, 46.250877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.178165, 36.317245, 46.239971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072764, -0.226253, -0.971347,
		0.186227, 0.953718, -0.236097,
		0.979809, -0.198071, -0.027262,
		38.472107, 36.257824, 46.231792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.067543, 36.750690, 45.726814>,  <37.786243, 36.396473, 46.250877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.067543, 36.750690, 45.726814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.329159, 36.451435, 45.771561>,  <38.486130, 36.271881, 45.798409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.329159, 36.451435, 45.771561>,  <38.067543, 36.750690, 45.726814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.329159, 36.451435, 45.771561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105995, -0.237062, -0.965695,
		0.748995, 0.619749, -0.234347,
		0.654043, -0.748140, 0.111868,
		38.525372, 36.226994, 45.805122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.665539, 36.955463, 45.333950>,  <38.067543, 36.750690, 45.726814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.665539, 36.955463, 45.333950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.640930, 36.556931, 45.357731>,  <38.626163, 36.317810, 45.371998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.640930, 36.556931, 45.357731>,  <38.665539, 36.955463, 45.333950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.640930, 36.556931, 45.357731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151944, -0.068220, -0.986032,
		0.986472, -0.051629, 0.155584,
		-0.061522, -0.996333, 0.059453,
		38.622475, 36.258030, 45.375568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.020733, 36.634018, 44.665417>,  <38.665539, 36.955463, 45.333950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.020733, 36.634018, 44.665417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.832088, 36.309147, 44.802795>,  <38.718903, 36.114223, 44.885223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.832088, 36.309147, 44.802795>,  <39.020733, 36.634018, 44.665417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.832088, 36.309147, 44.802795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074655, -0.351312, -0.933277,
		0.878642, -0.465782, 0.105049,
		-0.471609, -0.812174, 0.343450,
		38.690605, 36.065495, 44.905830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.340225, 36.121750, 44.419739>,  <39.020733, 36.634018, 44.665417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.340225, 36.121750, 44.419739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.964222, 36.013794, 44.503212>,  <38.738621, 35.949020, 44.553295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.964222, 36.013794, 44.503212>,  <39.340225, 36.121750, 44.419739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.964222, 36.013794, 44.503212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068030, -0.451103, -0.889875,
		0.334309, -0.850684, 0.405678,
		-0.940005, -0.269895, 0.208679,
		38.682220, 35.932827, 44.565815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.293518, 35.485714, 44.154846>,  <39.340225, 36.121750, 44.419739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.293518, 35.485714, 44.154846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.905350, 35.578697, 44.180889>,  <38.672447, 35.634487, 44.196514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.905350, 35.578697, 44.180889>,  <39.293518, 35.485714, 44.154846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.905350, 35.578697, 44.180889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177976, -0.506717, -0.843541,
		-0.163097, -0.830181, 0.533103,
		-0.970425, 0.232459, 0.065109,
		38.614223, 35.648434, 44.200420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.962284, 34.885376, 44.032906>,  <39.293518, 35.485714, 44.154846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.962284, 34.885376, 44.032906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.684780, 35.165375, 43.965141>,  <38.518276, 35.333374, 43.924480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.684780, 35.165375, 43.965141>,  <38.962284, 34.885376, 44.032906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.684780, 35.165375, 43.965141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288681, -0.485785, -0.825031,
		-0.659819, -0.523466, 0.539094,
		-0.693759, 0.699997, -0.169415,
		38.476654, 35.375374, 43.914318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.373825, 34.483788, 43.928032>,  <38.962284, 34.885376, 44.032906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.373825, 34.483788, 43.928032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.304108, 34.838512, 43.756828>,  <38.262276, 35.051346, 43.654106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.304108, 34.838512, 43.756828>,  <38.373825, 34.483788, 43.928032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.304108, 34.838512, 43.756828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327564, -0.462121, -0.824103,
		-0.928613, -0.003440, 0.371033,
		-0.174297, 0.886810, -0.428005,
		38.251820, 35.104557, 43.628426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.579128, 34.504791, 43.616100>,  <38.373825, 34.483788, 43.928032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.579128, 34.504791, 43.616100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.739330, 34.838013, 43.463463>,  <37.835453, 35.037945, 43.371880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.739330, 34.838013, 43.463463>,  <37.579128, 34.504791, 43.616100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.739330, 34.838013, 43.463463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330184, -0.257266, -0.908181,
		-0.854735, 0.489730, 0.172024,
		0.400507, 0.833054, -0.381595,
		37.859482, 35.087929, 43.348984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.131828, 34.797729, 43.045551>,  <37.579128, 34.504791, 43.616100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.131828, 34.797729, 43.045551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.478291, 34.965416, 42.936714>,  <37.686169, 35.066029, 42.871414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.478291, 34.965416, 42.936714>,  <37.131828, 34.797729, 43.045551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.478291, 34.965416, 42.936714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216327, -0.176299, -0.960271,
		-0.450528, 0.890606, -0.062016,
		0.866157, 0.419213, -0.272090,
		37.738136, 35.091179, 42.855087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.925289, 35.235832, 42.566296>,  <37.131828, 34.797729, 43.045551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.925289, 35.235832, 42.566296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.308647, 35.146103, 42.495693>,  <37.538662, 35.092266, 42.453331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.308647, 35.146103, 42.495693>,  <36.925289, 35.235832, 42.566296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.308647, 35.146103, 42.495693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244440, -0.325667, -0.913340,
		0.147403, 0.918487, -0.366952,
		0.958395, -0.224327, -0.176510,
		37.596165, 35.078804, 42.442741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.086777, 35.338161, 41.859173>,  <36.925289, 35.235832, 42.566296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.086777, 35.338161, 41.859173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.404793, 35.116875, 41.958664>,  <37.595604, 34.984104, 42.018360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.404793, 35.116875, 41.958664>,  <37.086777, 35.338161, 41.859173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.404793, 35.116875, 41.958664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046781, -0.464773, -0.884193,
		0.604749, 0.691334, -0.395393,
		0.795041, -0.553212, 0.248730,
		37.643307, 34.950912, 42.033283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.286053, 35.323509, 41.281727>,  <37.086777, 35.338161, 41.859173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.286053, 35.323509, 41.281727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.476723, 35.043613, 41.494572>,  <37.591125, 34.875675, 41.622280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.476723, 35.043613, 41.494572>,  <37.286053, 35.323509, 41.281727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.476723, 35.043613, 41.494572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045749, -0.624232, -0.779898,
		0.877889, 0.347414, -0.329567,
		0.476674, -0.699741, 0.532113,
		37.619724, 34.833691, 41.654205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.955864, 35.194538, 41.062057>,  <37.286053, 35.323509, 41.281727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.955864, 35.194538, 41.062057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.830402, 34.857750, 41.237648>,  <37.755127, 34.655678, 41.343002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.830402, 34.857750, 41.237648>,  <37.955864, 35.194538, 41.062057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.830402, 34.857750, 41.237648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186682, -0.507966, -0.840905,
		0.931007, -0.181800, 0.316504,
		-0.313650, -0.841974, 0.438981,
		37.736309, 34.605156, 41.369343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.424904, 34.657394, 40.800533>,  <37.955864, 35.194538, 41.062057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.424904, 34.657394, 40.800533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.113140, 34.452187, 40.944386>,  <37.926083, 34.329063, 41.030697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.113140, 34.452187, 40.944386>,  <38.424904, 34.657394, 40.800533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.113140, 34.452187, 40.944386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133621, -0.696928, -0.704583,
		0.612098, -0.501106, 0.611743,
		-0.779411, -0.513015, 0.359630,
		37.879318, 34.298283, 41.052273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.642944, 34.035809, 41.110516>,  <38.424904, 34.657394, 40.800533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.642944, 34.035809, 41.110516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.282131, 34.063747, 40.940125>,  <38.065643, 34.080509, 40.837891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.282131, 34.063747, 40.940125>,  <38.642944, 34.035809, 41.110516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.282131, 34.063747, 40.940125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329806, -0.525171, -0.784489,
		-0.278509, -0.848125, 0.450685,
		-0.902031, 0.069848, -0.425982,
		38.011520, 34.084702, 40.812328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.459503, 33.331326, 40.865696>,  <38.642944, 34.035809, 41.110516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.459503, 33.331326, 40.865696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.257114, 33.609825, 40.662033>,  <38.135681, 33.776924, 40.539837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.257114, 33.609825, 40.662033>,  <38.459503, 33.331326, 40.865696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.257114, 33.609825, 40.662033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410283, -0.324965, -0.852094,
		-0.758724, -0.640031, -0.121236,
		-0.505969, 0.696246, -0.509153,
		38.105324, 33.818699, 40.509289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.258381, 33.008209, 40.215679>,  <38.459503, 33.331326, 40.865696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.258381, 33.008209, 40.215679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.221664, 33.402130, 40.156700>,  <38.199635, 33.638481, 40.121311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.221664, 33.402130, 40.156700>,  <38.258381, 33.008209, 40.215679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.221664, 33.402130, 40.156700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261506, -0.119034, -0.957834,
		-0.960827, -0.126478, -0.246605,
		-0.091791, 0.984802, -0.147446,
		38.194126, 33.697571, 40.112465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.795555, 33.050312, 39.662193>,  <38.258381, 33.008209, 40.215679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.795555, 33.050312, 39.662193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.013042, 33.385021, 39.688061>,  <38.143536, 33.585846, 39.703583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.013042, 33.385021, 39.688061>,  <37.795555, 33.050312, 39.662193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.013042, 33.385021, 39.688061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334947, -0.145699, -0.930904,
		-0.769530, 0.527814, -0.359493,
		0.543722, 0.836770, 0.064670,
		38.176159, 33.636051, 39.707462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.657070, 33.490334, 39.000629>,  <37.795555, 33.050312, 39.662193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.657070, 33.490334, 39.000629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.009907, 33.594078, 39.157928>,  <38.221611, 33.656326, 39.252308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.009907, 33.594078, 39.157928>,  <37.657070, 33.490334, 39.000629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.009907, 33.594078, 39.157928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409362, -0.008973, -0.912328,
		-0.233095, 0.965738, -0.114088,
		0.882094, 0.259363, 0.393245,
		38.274536, 33.671886, 39.275902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.054836, 33.827892, 38.414150>,  <37.657070, 33.490334, 39.000629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.054836, 33.827892, 38.414150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.340927, 33.817020, 38.693497>,  <38.512581, 33.810497, 38.861103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.340927, 33.817020, 38.693497>,  <38.054836, 33.827892, 38.414150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.340927, 33.817020, 38.693497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690762, 0.179467, -0.700457,
		-0.106292, 0.983388, 0.147137,
		0.715228, -0.027184, 0.698363,
		38.555496, 33.808865, 38.903004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.456787, 34.498890, 38.328426>,  <38.054836, 33.827892, 38.414150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.456787, 34.498890, 38.328426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.707127, 34.238983, 38.500988>,  <38.857330, 34.083038, 38.604527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.707127, 34.238983, 38.500988>,  <38.456787, 34.498890, 38.328426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.707127, 34.238983, 38.500988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.764670, 0.402269, -0.503448,
		0.153582, 0.644968, 0.748618,
		0.625853, -0.649766, 0.431406,
		38.894882, 34.044052, 38.630409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.121052, 34.842045, 38.295677>,  <38.456787, 34.498890, 38.328426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.121052, 34.842045, 38.295677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.186649, 34.455402, 38.374451>,  <39.226009, 34.223419, 38.421715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.186649, 34.455402, 38.374451>,  <39.121052, 34.842045, 38.295677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.186649, 34.455402, 38.374451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.935821, 0.089303, -0.340976,
		0.312001, 0.240214, 0.919213,
		0.163996, -0.966603, 0.196934,
		39.235847, 34.165421, 38.433533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.773335, 34.802628, 38.616104>,  <39.121052, 34.842045, 38.295677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.773335, 34.802628, 38.616104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.683125, 34.458111, 38.433979>,  <39.628998, 34.251400, 38.324703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.683125, 34.458111, 38.433979>,  <39.773335, 34.802628, 38.616104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.683125, 34.458111, 38.433979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.932455, -0.055435, -0.357008,
		0.282249, -0.505072, 0.815621,
		-0.225529, -0.861295, -0.455311,
		39.615467, 34.199722, 38.297386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.376961, 34.348656, 38.724072>,  <39.773335, 34.802628, 38.616104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.376961, 34.348656, 38.724072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.173023, 34.202225, 38.412674>,  <40.050659, 34.114365, 38.225838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.173023, 34.202225, 38.412674>,  <40.376961, 34.348656, 38.724072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.173023, 34.202225, 38.412674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.843041, -0.032428, -0.536871,
		0.171292, -0.930019, 0.325152,
		-0.509844, -0.366079, -0.778489,
		40.020069, 34.092400, 38.179127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.831661, 33.955429, 38.402893>,  <40.376961, 34.348656, 38.724072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.831661, 33.955429, 38.402893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.566101, 33.961246, 38.103821>,  <40.406765, 33.964737, 37.924377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.566101, 33.961246, 38.103821>,  <40.831661, 33.955429, 38.402893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.566101, 33.961246, 38.103821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747784, 0.002836, -0.663937,
		-0.007544, -0.999890, -0.012769,
		-0.663900, 0.014557, -0.747680,
		40.366932, 33.965611, 37.879517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.995106, 33.384842, 38.021133>,  <40.831661, 33.955429, 38.402893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.995106, 33.384842, 38.021133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.802048, 33.641384, 37.782566>,  <40.686211, 33.795311, 37.639427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.802048, 33.641384, 37.782566>,  <40.995106, 33.384842, 38.021133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.802048, 33.641384, 37.782566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.700998, -0.125341, -0.702062,
		-0.525027, -0.756936, -0.389095,
		-0.482647, 0.641356, -0.596418,
		40.657253, 33.833790, 37.603642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.835865, 33.197304, 37.281387>,  <40.995106, 33.384842, 38.021133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.835865, 33.197304, 37.281387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.791977, 33.594482, 37.263454>,  <40.765644, 33.832790, 37.252697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.791977, 33.594482, 37.263454>,  <40.835865, 33.197304, 37.281387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.791977, 33.594482, 37.263454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554457, 0.023711, -0.831874,
		-0.824948, -0.116129, -0.553151,
		-0.109720, 0.992951, -0.044828,
		40.759060, 33.892368, 37.250008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.553783, 33.379047, 36.599934>,  <40.835865, 33.197304, 37.281387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.553783, 33.379047, 36.599934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.720745, 33.714352, 36.740273>,  <40.820923, 33.915535, 36.824474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.720745, 33.714352, 36.740273>,  <40.553783, 33.379047, 36.599934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.720745, 33.714352, 36.740273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663363, -0.017203, -0.748100,
		-0.621069, 0.544995, -0.563253,
		0.417400, 0.838263, 0.350845,
		40.845966, 33.965832, 36.845528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.597878, 33.936085, 36.083229>,  <40.553783, 33.379047, 36.599934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.597878, 33.936085, 36.083229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.916775, 33.983959, 36.319897>,  <41.108112, 34.012684, 36.461899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.916775, 33.983959, 36.319897>,  <40.597878, 33.936085, 36.083229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.916775, 33.983959, 36.319897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603313, -0.191094, -0.774272,
		0.020395, 0.974248, -0.224557,
		0.797244, 0.119687, 0.591673,
		41.155949, 34.019867, 36.497398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.127907, 34.420177, 35.920937>,  <40.597878, 33.936085, 36.083229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.127907, 34.420177, 35.920937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.306538, 34.094212, 36.068710>,  <41.413715, 33.898632, 36.157375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.306538, 34.094212, 36.068710>,  <41.127907, 34.420177, 35.920937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.306538, 34.094212, 36.068710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476249, -0.133052, -0.869186,
		0.757466, 0.564102, 0.328685,
		0.446577, -0.814915, 0.369436,
		41.440510, 33.849735, 36.179543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.867184, 34.481750, 35.880623>,  <41.127907, 34.420177, 35.920937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.867184, 34.481750, 35.880623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.712395, 34.117931, 35.819996>,  <41.619522, 33.899639, 35.783619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.712395, 34.117931, 35.819996>,  <41.867184, 34.481750, 35.880623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.712395, 34.117931, 35.819996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474531, -0.055497, -0.878488,
		0.790615, -0.411877, 0.453084,
		-0.386974, -0.909548, -0.151572,
		41.596302, 33.845066, 35.774525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.337475, 33.911449, 35.768749>,  <41.867184, 34.481750, 35.880623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.337475, 33.911449, 35.768749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.992878, 33.838913, 35.579033>,  <41.786121, 33.795391, 35.465202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.992878, 33.838913, 35.579033>,  <42.337475, 33.911449, 35.768749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.992878, 33.838913, 35.579033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477328, 0.029356, -0.878235,
		0.173182, -0.982982, 0.061269,
		-0.861491, -0.181340, -0.474288,
		41.734432, 33.784512, 35.436745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.469631, 33.467312, 35.239128>,  <42.337475, 33.911449, 35.768749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.469631, 33.467312, 35.239128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.142651, 33.675117, 35.139622>,  <41.946465, 33.799801, 35.079918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.142651, 33.675117, 35.139622>,  <42.469631, 33.467312, 35.239128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.142651, 33.675117, 35.139622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441203, 0.287090, -0.850246,
		-0.370293, -0.804790, -0.463892,
		-0.817449, 0.519511, -0.248769,
		41.897415, 33.830971, 35.064991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.389526, 33.297249, 34.524273>,  <42.469631, 33.467312, 35.239128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.389526, 33.297249, 34.524273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.236237, 33.641014, 34.659649>,  <42.144260, 33.847275, 34.740875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.236237, 33.641014, 34.659649>,  <42.389526, 33.297249, 34.524273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.236237, 33.641014, 34.659649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475170, 0.497646, -0.725646,
		-0.792054, -0.117272, -0.599080,
		-0.383228, 0.859416, 0.338439,
		42.121269, 33.898838, 34.761181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.067894, 33.676685, 33.904453>,  <42.389526, 33.297249, 34.524273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.067894, 33.676685, 33.904453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.160301, 33.955994, 34.175465>,  <42.215744, 34.123581, 34.338070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.160301, 33.955994, 34.175465>,  <42.067894, 33.676685, 33.904453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.160301, 33.955994, 34.175465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294103, 0.613673, -0.732741,
		-0.927434, 0.368540, -0.063594,
		0.231018, 0.698272, 0.677530,
		42.229607, 34.165474, 34.378723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.817650, 34.383598, 33.580357>,  <42.067894, 33.676685, 33.904453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.817650, 34.383598, 33.580357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.123108, 34.397842, 33.838219>,  <42.306381, 34.406387, 33.992935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.123108, 34.397842, 33.838219>,  <41.817650, 34.383598, 33.580357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.123108, 34.397842, 33.838219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477143, 0.641524, -0.600651,
		-0.434947, 0.766276, 0.472908,
		0.763646, 0.035607, 0.644652,
		42.352203, 34.408524, 34.031616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.923008, 35.015488, 33.682884>,  <41.817650, 34.383598, 33.580357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.923008, 35.015488, 33.682884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.269547, 34.836468, 33.771561>,  <42.477470, 34.729057, 33.824768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.269547, 34.836468, 33.771561>,  <41.923008, 35.015488, 33.682884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.269547, 34.836468, 33.771561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476046, 0.605676, -0.637602,
		0.151083, 0.657919, 0.737778,
		0.866345, -0.447547, 0.221693,
		42.529449, 34.702202, 33.838070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.471401, 35.552895, 33.986225>,  <41.923008, 35.015488, 33.682884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.471401, 35.552895, 33.986225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.683273, 35.235809, 33.865532>,  <42.810398, 35.045559, 33.793114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.683273, 35.235809, 33.865532>,  <42.471401, 35.552895, 33.986225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.683273, 35.235809, 33.865532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520463, 0.584651, -0.622336,
		0.669743, 0.172598, 0.722256,
		0.529682, -0.792713, -0.301735,
		42.842178, 34.997997, 33.775013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.143726, 35.786892, 33.948013>,  <42.471401, 35.552895, 33.986225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.143726, 35.786892, 33.948013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.133430, 35.460617, 33.716846>,  <43.127251, 35.264851, 33.578148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.133430, 35.460617, 33.716846>,  <43.143726, 35.786892, 33.948013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.133430, 35.460617, 33.716846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720925, 0.385344, -0.576001,
		0.692535, -0.431463, 0.578130,
		-0.025744, -0.815690, -0.577917,
		43.125706, 35.215912, 33.543472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.939941, 35.615383, 33.837353>,  <43.143726, 35.786892, 33.948013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.939941, 35.615383, 33.837353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.727062, 35.419788, 33.560902>,  <43.599335, 35.302433, 33.395031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.727062, 35.419788, 33.560902>,  <43.939941, 35.615383, 33.837353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.727062, 35.419788, 33.560902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695687, 0.212639, -0.686152,
		0.482481, -0.845976, 0.227016,
		-0.532196, -0.488987, -0.691129,
		43.567402, 35.273090, 33.353561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.427044, 35.213928, 33.388847>,  <43.939941, 35.615383, 33.837353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.427044, 35.213928, 33.388847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.094864, 35.255886, 33.169994>,  <43.895557, 35.281059, 33.038681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.094864, 35.255886, 33.169994>,  <44.427044, 35.213928, 33.388847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.094864, 35.255886, 33.169994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526043, 0.470968, -0.708143,
		0.183401, -0.875891, -0.446294,
		-0.830447, 0.104896, -0.547133,
		43.845730, 35.287354, 33.005856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.641037, 35.083553, 32.650063>,  <44.427044, 35.213928, 33.388847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.641037, 35.083553, 32.650063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.301014, 35.290791, 32.612160>,  <44.097000, 35.415134, 32.589417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.301014, 35.290791, 32.612160>,  <44.641037, 35.083553, 32.650063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.301014, 35.290791, 32.612160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378270, 0.475361, -0.794320,
		-0.366489, -0.711062, -0.600064,
		-0.850057, 0.518096, -0.094759,
		44.045998, 35.446220, 32.583733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.496342, 34.938244, 31.925690>,  <44.641037, 35.083553, 32.650063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.496342, 34.938244, 31.925690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.281166, 35.249790, 32.054680>,  <44.152061, 35.436718, 32.132072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.281166, 35.249790, 32.054680>,  <44.496342, 34.938244, 31.925690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.281166, 35.249790, 32.054680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069098, 0.421992, -0.903962,
		-0.840150, -0.463990, -0.280823,
		-0.537935, 0.778868, 0.322476,
		44.119785, 35.483452, 32.151424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.071182, 35.138321, 31.311655>,  <44.496342, 34.938244, 31.925690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.071182, 35.138321, 31.311655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.017456, 35.444286, 31.563646>,  <43.985222, 35.627865, 31.714842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.017456, 35.444286, 31.563646>,  <44.071182, 35.138321, 31.311655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.017456, 35.444286, 31.563646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064180, 0.627689, -0.775814,
		-0.988858, -0.144634, -0.035215,
		-0.134313, 0.764910, 0.629978,
		43.977161, 35.673759, 31.752640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.598820, 35.621807, 31.032434>,  <44.071182, 35.138321, 31.311655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.598820, 35.621807, 31.032434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.819141, 35.858143, 31.268238>,  <43.951336, 35.999943, 31.409721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.819141, 35.858143, 31.268238>,  <43.598820, 35.621807, 31.032434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.819141, 35.858143, 31.268238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114786, 0.645976, -0.754678,
		-0.826702, 0.483349, 0.287988,
		0.550807, 0.590837, 0.589511,
		43.984383, 36.035393, 31.445091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.351265, 36.300308, 30.941292>,  <43.598820, 35.621807, 31.032434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.351265, 36.300308, 30.941292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.699478, 36.353909, 31.130699>,  <43.908405, 36.386066, 31.244345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.699478, 36.353909, 31.130699>,  <43.351265, 36.300308, 30.941292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.699478, 36.353909, 31.130699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127449, 0.867999, -0.479932,
		-0.475324, 0.478145, 0.738542,
		0.870530, 0.133997, 0.473520,
		43.960636, 36.394108, 31.272755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.403580, 37.065006, 30.970150>,  <43.351265, 36.300308, 30.941292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.403580, 37.065006, 30.970150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.758812, 36.889874, 31.026176>,  <43.971951, 36.784794, 31.059792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.758812, 36.889874, 31.026176>,  <43.403580, 37.065006, 30.970150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.758812, 36.889874, 31.026176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428320, 0.677512, -0.597929,
		0.166895, 0.591002, 0.789217,
		0.888081, -0.437829, 0.140064,
		44.025238, 36.758526, 31.068195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.745407, 37.602879, 31.158276>,  <43.403580, 37.065006, 30.970150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.745407, 37.602879, 31.158276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.993420, 37.323780, 31.014772>,  <44.142227, 37.156319, 30.928671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.993420, 37.323780, 31.014772>,  <43.745407, 37.602879, 31.158276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.993420, 37.323780, 31.014772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288290, 0.627888, -0.722942,
		0.729692, 0.344821, 0.590465,
		0.620031, -0.697750, -0.358757,
		44.179428, 37.114456, 30.907145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.327477, 37.978889, 31.000292>,  <43.745407, 37.602879, 31.158276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.327477, 37.978889, 31.000292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.360512, 37.643925, 30.784176>,  <44.380333, 37.442944, 30.654507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.360512, 37.643925, 30.784176>,  <44.327477, 37.978889, 31.000292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.360512, 37.643925, 30.784176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330258, 0.534508, -0.777966,
		0.940270, -0.114181, 0.320709,
		0.082592, -0.837415, -0.540292,
		44.385288, 37.392700, 30.622087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.984932, 38.030144, 30.679691>,  <44.327477, 37.978889, 31.000292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.984932, 38.030144, 30.679691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.779396, 37.767200, 30.459202>,  <44.656075, 37.609436, 30.326908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.779396, 37.767200, 30.459202>,  <44.984932, 38.030144, 30.679691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.779396, 37.767200, 30.459202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344643, 0.430232, -0.834339,
		0.785614, -0.618693, 0.005483,
		-0.513841, -0.657358, -0.551225,
		44.625244, 37.569992, 30.293835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.344940, 37.994289, 30.043627>,  <44.984932, 38.030144, 30.679691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.344940, 37.994289, 30.043627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.995499, 37.828846, 29.941059>,  <44.785835, 37.729580, 29.879519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.995499, 37.828846, 29.941059>,  <45.344940, 37.994289, 30.043627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.995499, 37.828846, 29.941059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112333, 0.341296, -0.933219,
		0.473502, -0.844065, -0.251695,
		-0.873600, -0.413608, -0.256421,
		44.733418, 37.704765, 29.864134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.405876, 37.654968, 29.256886>,  <45.344940, 37.994289, 30.043627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.405876, 37.654968, 29.256886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.017391, 37.731480, 29.313681>,  <44.784302, 37.777386, 29.347757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.017391, 37.731480, 29.313681>,  <45.405876, 37.654968, 29.256886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.017391, 37.731480, 29.313681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046693, 0.431623, -0.900845,
		-0.233597, -0.881541, -0.410266,
		-0.971212, 0.191278, 0.141988,
		44.726028, 37.788864, 29.356277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.119938, 37.406525, 28.694914>,  <45.405876, 37.654968, 29.256886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.119938, 37.406525, 28.694914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.835445, 37.650753, 28.834255>,  <44.664749, 37.797291, 28.917860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.835445, 37.650753, 28.834255>,  <45.119938, 37.406525, 28.694914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.835445, 37.650753, 28.834255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101610, 0.401056, -0.910401,
		-0.695574, -0.682904, -0.223204,
		-0.711233, 0.610571, 0.348354,
		44.622074, 37.833923, 28.938761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.637371, 37.437923, 28.174185>,  <45.119938, 37.406525, 28.694914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.637371, 37.437923, 28.174185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.552101, 37.751732, 28.407110>,  <44.500938, 37.940018, 28.546865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.552101, 37.751732, 28.407110>,  <44.637371, 37.437923, 28.174185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.552101, 37.751732, 28.407110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229084, 0.539261, -0.810381,
		-0.949776, -0.306155, 0.064761,
		-0.213179, 0.784517, 0.582313,
		44.488148, 37.987087, 28.581804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.934196, 37.689472, 27.891033>,  <44.637371, 37.437923, 28.174185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.934196, 37.689472, 27.891033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.161903, 37.969257, 28.063864>,  <44.298527, 38.137127, 28.167562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.161903, 37.969257, 28.063864>,  <43.934196, 37.689472, 27.891033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.161903, 37.969257, 28.063864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026877, 0.541093, -0.840533,
		-0.821713, 0.466875, 0.326826,
		0.569267, 0.699461, 0.432075,
		44.332684, 38.179096, 28.193485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.637226, 38.280556, 27.763109>,  <43.934196, 37.689472, 27.891033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.637226, 38.280556, 27.763109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.006058, 38.395916, 27.866339>,  <44.227356, 38.465130, 27.928276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.006058, 38.395916, 27.866339>,  <43.637226, 38.280556, 27.763109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.006058, 38.395916, 27.866339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019280, 0.700246, -0.713641,
		-0.386526, 0.653057, 0.651241,
		0.922077, 0.288397, 0.258072,
		44.282681, 38.482433, 27.943760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.190720, 38.468586, 27.301207>,  <43.637226, 38.280556, 27.763109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.190720, 38.468586, 27.301207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.032124, 38.811852, 27.170763>,  <42.936966, 39.017811, 27.092497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.032124, 38.811852, 27.170763>,  <43.190720, 38.468586, 27.301207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.032124, 38.811852, 27.170763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.885892, -0.450831, -0.109301,
		-0.240819, 0.245562, 0.938992,
		-0.396486, 0.858167, -0.326110,
		42.913177, 39.069302, 27.072929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.566875, 38.576855, 27.667479>,  <43.190720, 38.468586, 27.301207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.566875, 38.576855, 27.667479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.548767, 38.820999, 27.351147>,  <42.537903, 38.967484, 27.161346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.548767, 38.820999, 27.351147>,  <42.566875, 38.576855, 27.667479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.548767, 38.820999, 27.351147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.989163, -0.138072, -0.049936,
		-0.139671, 0.779999, 0.609995,
		-0.045273, 0.610359, -0.790830,
		42.535187, 39.004105, 27.113897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.210415, 39.189701, 27.975351>,  <42.566875, 38.576855, 27.667479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.210415, 39.189701, 27.975351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.836140, 39.264267, 28.095181>,  <41.611576, 39.309006, 28.167078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.836140, 39.264267, 28.095181>,  <42.210415, 39.189701, 27.975351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.836140, 39.264267, 28.095181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049649, 0.771032, -0.634857,
		-0.349324, -0.608901, -0.712189,
		-0.935686, 0.186411, 0.299572,
		41.555435, 39.320190, 28.185053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.767296, 39.669468, 27.829170>,  <42.210415, 39.189701, 27.975351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.767296, 39.669468, 27.829170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.482464, 39.767696, 28.092274>,  <42.311565, 39.826633, 28.250135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.482464, 39.767696, 28.092274>,  <42.767296, 39.669468, 27.829170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.482464, 39.767696, 28.092274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.702100, 0.246498, 0.668053,
		0.001916, 0.937516, -0.347937,
		-0.712076, 0.245566, 0.657758,
		42.268841, 39.841366, 28.289600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.686882, 40.461414, 27.999964>,  <42.767296, 39.669468, 27.829170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.686882, 40.461414, 27.999964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.577328, 40.245514, 28.318373>,  <42.511597, 40.115974, 28.509418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.577328, 40.245514, 28.318373>,  <42.686882, 40.461414, 27.999964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.577328, 40.245514, 28.318373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747608, 0.401201, 0.529264,
		-0.605038, 0.740069, 0.293644,
		-0.273882, -0.539756, 0.796023,
		42.495163, 40.083588, 28.557180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.547089, 40.960518, 28.649321>,  <42.686882, 40.461414, 27.999964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.547089, 40.960518, 28.649321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.623344, 40.609234, 28.824774>,  <42.669098, 40.398464, 28.930046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.623344, 40.609234, 28.824774>,  <42.547089, 40.960518, 28.649321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.623344, 40.609234, 28.824774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682772, 0.439669, 0.583536,
		-0.705322, 0.188242, 0.683437,
		0.190640, -0.878212, 0.438634,
		42.680538, 40.345772, 28.956364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.613064, 40.927128, 29.320206>,  <42.547089, 40.960518, 28.649321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.613064, 40.927128, 29.320206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.324505, 40.667088, 29.224747>,  <42.151367, 40.511063, 29.167471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.324505, 40.667088, 29.224747>,  <42.613064, 40.927128, 29.320206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.324505, 40.667088, 29.224747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595521, -0.758250, 0.265352,
		-0.353460, 0.049306, 0.934150,
		-0.721402, -0.650097, -0.238648,
		42.108086, 40.472057, 29.153152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.280025, 41.307919, 29.272867>,  <42.613064, 40.927128, 29.320206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.280025, 41.307919, 29.272867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.259468, 41.665966, 29.450010>,  <43.247131, 41.880795, 29.556295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.259468, 41.665966, 29.450010>,  <43.280025, 41.307919, 29.272867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.259468, 41.665966, 29.450010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201182, -0.443634, 0.873336,
		0.978205, -0.044207, 0.202883,
		-0.051398, 0.895117, 0.442858,
		43.244049, 41.934502, 29.582869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.770535, 41.215992, 29.783604>,  <43.280025, 41.307919, 29.272867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.770535, 41.215992, 29.783604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.474262, 41.470440, 29.870077>,  <43.296497, 41.623108, 29.921961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.474262, 41.470440, 29.870077>,  <43.770535, 41.215992, 29.783604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.474262, 41.470440, 29.870077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099328, -0.421916, 0.901177,
		0.664469, 0.646015, 0.375692,
		-0.740685, 0.636121, 0.216183,
		43.252056, 41.661278, 29.934933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.924873, 41.503735, 30.350920>,  <43.770535, 41.215992, 29.783604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.924873, 41.503735, 30.350920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.532566, 41.448040, 30.296209>,  <43.297180, 41.414623, 30.263382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.532566, 41.448040, 30.296209>,  <43.924873, 41.503735, 30.350920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.532566, 41.448040, 30.296209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051684, -0.490490, 0.869913,
		-0.188212, 0.860251, 0.473860,
		-0.980767, -0.139237, -0.136777,
		43.238335, 41.406269, 30.255177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.335682, 41.899429, 30.730766>,  <43.924873, 41.503735, 30.350920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.335682, 41.899429, 30.730766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.189697, 41.536263, 30.648306>,  <43.102108, 41.318363, 30.598829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.189697, 41.536263, 30.648306>,  <43.335682, 41.899429, 30.730766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.189697, 41.536263, 30.648306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165120, -0.281033, 0.945387,
		-0.916264, 0.310989, 0.252480,
		-0.364960, -0.907913, -0.206150,
		43.080208, 41.263889, 30.586460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.121830, 41.664993, 31.431463>,  <43.335682, 41.899429, 30.730766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.121830, 41.664993, 31.431463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.109959, 41.335953, 31.204323>,  <43.102837, 41.138531, 31.068039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.109959, 41.335953, 31.204323>,  <43.121830, 41.664993, 31.431463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.109959, 41.335953, 31.204323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213790, -0.560177, 0.800309,
		-0.976429, -0.097651, 0.192487,
		-0.029676, -0.822597, -0.567850,
		43.101055, 41.089172, 31.033968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.505962, 41.216866, 31.709351>,  <43.121830, 41.664993, 31.431463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.505962, 41.216866, 31.709351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.795601, 41.010845, 31.525869>,  <42.969383, 40.887234, 31.415781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.795601, 41.010845, 31.525869>,  <42.505962, 41.216866, 31.709351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.795601, 41.010845, 31.525869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060687, -0.614917, 0.786254,
		-0.687029, -0.597157, -0.413999,
		0.724092, -0.515054, -0.458705,
		43.012829, 40.856331, 31.388258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.252102, 40.513763, 31.755165>,  <42.505962, 41.216866, 31.709351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.252102, 40.513763, 31.755165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.636597, 40.480305, 31.650078>,  <42.867294, 40.460232, 31.587025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.636597, 40.480305, 31.650078>,  <42.252102, 40.513763, 31.755165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.636597, 40.480305, 31.650078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162360, -0.598409, 0.784567,
		-0.222836, -0.796812, -0.561635,
		0.961241, -0.083643, -0.262717,
		42.924969, 40.455212, 31.571262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.486290, 39.783566, 31.740913>,  <42.252102, 40.513763, 31.755165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.486290, 39.783566, 31.740913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.821278, 39.995003, 31.796383>,  <43.022270, 40.121864, 31.829664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.821278, 39.995003, 31.796383>,  <42.486290, 39.783566, 31.740913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.821278, 39.995003, 31.796383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246118, -0.591388, 0.767910,
		0.487925, -0.608972, -0.625366,
		0.837470, 0.528596, 0.138674,
		43.072517, 40.153580, 31.837984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.002754, 39.291504, 31.873686>,  <42.486290, 39.783566, 31.740913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.002754, 39.291504, 31.873686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.191383, 39.623272, 31.993467>,  <43.304562, 39.822334, 32.065338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.191383, 39.623272, 31.993467>,  <43.002754, 39.291504, 31.873686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.191383, 39.623272, 31.993467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345890, -0.486351, 0.802385,
		0.811159, -0.274804, -0.516240,
		0.471573, 0.829425, 0.299456,
		43.332855, 39.872101, 32.083305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.789570, 39.133377, 31.942059>,  <43.002754, 39.291504, 31.873686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.789570, 39.133377, 31.942059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.703960, 39.445923, 32.176548>,  <43.652596, 39.633450, 32.317242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.703960, 39.445923, 32.176548>,  <43.789570, 39.133377, 31.942059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.703960, 39.445923, 32.176548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531630, -0.410292, 0.740966,
		0.819489, 0.470239, -0.327586,
		-0.214025, 0.781368, 0.586223,
		43.639751, 39.680332, 32.352413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.437576, 39.290619, 32.315552>,  <43.789570, 39.133377, 31.942059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.437576, 39.290619, 32.315552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.138184, 39.438961, 32.535458>,  <43.958549, 39.527966, 32.667400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.138184, 39.438961, 32.535458>,  <44.437576, 39.290619, 32.315552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.138184, 39.438961, 32.535458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326632, -0.515312, 0.792316,
		0.577136, 0.772605, 0.264568,
		-0.748482, 0.370858, 0.549762,
		43.913639, 39.550217, 32.700386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.720219, 39.382084, 32.900963>,  <44.437576, 39.290619, 32.315552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.720219, 39.382084, 32.900963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.336967, 39.407291, 33.012695>,  <44.107018, 39.422417, 33.079735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.336967, 39.407291, 33.012695>,  <44.720219, 39.382084, 32.900963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.336967, 39.407291, 33.012695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244437, -0.328130, 0.912459,
		0.149164, 0.942528, 0.298983,
		-0.958124, 0.063023, 0.279334,
		44.049530, 39.426197, 33.096497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.761917, 39.704914, 33.584164>,  <44.720219, 39.382084, 32.900963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.761917, 39.704914, 33.584164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.413311, 39.510342, 33.559364>,  <44.204147, 39.393600, 33.544487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.413311, 39.510342, 33.559364>,  <44.761917, 39.704914, 33.584164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.413311, 39.510342, 33.559364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284762, -0.604971, 0.743586,
		-0.399206, 0.630395, 0.665760,
		-0.871519, -0.486427, -0.061995,
		44.151855, 39.364414, 33.540764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.503487, 39.697647, 34.321503>,  <44.761917, 39.704914, 33.584164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.503487, 39.697647, 34.321503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.318771, 39.408062, 34.116512>,  <44.207943, 39.234310, 33.993519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.318771, 39.408062, 34.116512>,  <44.503487, 39.697647, 34.321503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.318771, 39.408062, 34.116512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268559, -0.664770, 0.697106,
		-0.845355, 0.184287, 0.501410,
		-0.461790, -0.723961, -0.512475,
		44.180233, 39.190872, 33.962769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.122932, 39.325821, 34.867828>,  <44.503487, 39.697647, 34.321503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.122932, 39.325821, 34.867828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.176743, 39.102146, 34.540604>,  <44.209030, 38.967941, 34.344269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.176743, 39.102146, 34.540604>,  <44.122932, 39.325821, 34.867828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.176743, 39.102146, 34.540604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270741, -0.773408, 0.573184,
		-0.953207, -0.298589, 0.047351,
		0.134524, -0.559183, -0.818058,
		44.217098, 38.934391, 34.295185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.712418, 38.696735, 34.935368>,  <44.122932, 39.325821, 34.867828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.712418, 38.696735, 34.935368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.959400, 38.562084, 34.650993>,  <44.107590, 38.481293, 34.480370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.959400, 38.562084, 34.650993>,  <43.712418, 38.696735, 34.935368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.959400, 38.562084, 34.650993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008268, -0.906530, 0.422060,
		-0.786562, -0.254726, -0.562526,
		0.617457, -0.336627, -0.710936,
		44.144638, 38.461098, 34.437714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.582085, 37.975170, 34.868450>,  <43.712418, 38.696735, 34.935368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.582085, 37.975170, 34.868450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.921474, 37.995426, 34.657726>,  <44.125111, 38.007580, 34.531292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.921474, 37.995426, 34.657726>,  <43.582085, 37.975170, 34.868450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.921474, 37.995426, 34.657726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160264, -0.973258, 0.164572,
		-0.504385, -0.224064, -0.833901,
		0.848476, 0.050637, -0.526806,
		44.176018, 38.010616, 34.499683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.619965, 37.387341, 34.368763>,  <43.582085, 37.975170, 34.868450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.619965, 37.387341, 34.368763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.980427, 37.529266, 34.468380>,  <44.196705, 37.614422, 34.528149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.980427, 37.529266, 34.468380>,  <43.619965, 37.387341, 34.368763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.980427, 37.529266, 34.468380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256391, -0.899501, 0.353782,
		0.349538, -0.254962, -0.901564,
		0.901159, 0.354813, 0.249040,
		44.250774, 37.635712, 34.543091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.070400, 36.888168, 34.148926>,  <43.619965, 37.387341, 34.368763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.070400, 36.888168, 34.148926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.330761, 37.075497, 34.387928>,  <44.486977, 37.187893, 34.531330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.330761, 37.075497, 34.387928>,  <44.070400, 36.888168, 34.148926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.330761, 37.075497, 34.387928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415725, -0.878434, 0.235638,
		0.635220, 0.095020, -0.766464,
		0.650898, 0.468320, 0.597501,
		44.526031, 37.215992, 34.567177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.822926, 36.700466, 33.871624>,  <44.070400, 36.888168, 34.148926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.822926, 36.700466, 33.871624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.831070, 36.831821, 34.249355>,  <44.835957, 36.910633, 34.475994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.831070, 36.831821, 34.249355>,  <44.822926, 36.700466, 33.871624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.831070, 36.831821, 34.249355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397001, -0.869519, 0.293814,
		0.917592, 0.368915, -0.148075,
		0.020362, 0.328387, 0.944324,
		44.837177, 36.930336, 34.532654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.463486, 36.610615, 34.033314>,  <44.822926, 36.700466, 33.871624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.463486, 36.610615, 34.033314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.254738, 36.595963, 34.374210>,  <45.129490, 36.587173, 34.578747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.254738, 36.595963, 34.374210>,  <45.463486, 36.610615, 34.033314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.254738, 36.595963, 34.374210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422212, -0.879206, 0.220757,
		0.741207, 0.475032, 0.474297,
		-0.521871, -0.036628, 0.852238,
		45.098175, 36.584972, 34.629883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.948902, 36.166512, 34.404613>,  <45.463486, 36.610615, 34.033314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.948902, 36.166512, 34.404613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.597473, 36.171230, 34.595596>,  <45.386616, 36.174061, 34.710186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.597473, 36.171230, 34.595596>,  <45.948902, 36.166512, 34.404613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.597473, 36.171230, 34.595596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157869, -0.936331, 0.313627,
		0.450759, 0.350920, 0.820775,
		-0.878575, 0.011796, 0.477459,
		45.333900, 36.174770, 34.738834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.099689, 35.972630, 35.072823>,  <45.948902, 36.166512, 34.404613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.099689, 35.972630, 35.072823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.712704, 35.901058, 35.001266>,  <45.480515, 35.858116, 34.958332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.712704, 35.901058, 35.001266>,  <46.099689, 35.972630, 35.072823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.712704, 35.901058, 35.001266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155964, -0.978466, 0.135204,
		-0.199232, 0.102904, 0.974535,
		-0.967461, -0.178930, -0.178893,
		45.422466, 35.847378, 34.947598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.956852, 35.376701, 35.563667>,  <46.099689, 35.972630, 35.072823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.956852, 35.376701, 35.563667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.724239, 35.371475, 35.238300>,  <45.584671, 35.368340, 35.043079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.724239, 35.371475, 35.238300>,  <45.956852, 35.376701, 35.563667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.724239, 35.371475, 35.238300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157728, -0.979088, 0.128486,
		-0.798089, 0.203017, 0.567307,
		-0.581529, -0.013064, -0.813421,
		45.549782, 35.367558, 34.994274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.194496, 34.682171, 35.325634>,  <45.956852, 35.376701, 35.563667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.194496, 34.682171, 35.325634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.343250, 34.575302, 34.970036>,  <46.432503, 34.511181, 34.756676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.343250, 34.575302, 34.970036>,  <46.194496, 34.682171, 35.325634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.343250, 34.575302, 34.970036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.843385, 0.497351, 0.203332,
		0.387820, -0.825384, 0.410289,
		0.371885, -0.267175, -0.888999,
		46.454815, 34.495148, 34.703335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.823673, 34.231102, 35.390701>,  <46.194496, 34.682171, 35.325634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.823673, 34.231102, 35.390701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.799049, 34.494263, 35.090469>,  <46.784275, 34.652161, 34.910332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.799049, 34.494263, 35.090469>,  <46.823673, 34.231102, 35.390701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.799049, 34.494263, 35.090469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.838116, 0.442444, 0.319071,
		0.542008, -0.609430, -0.578639,
		-0.061564, 0.657905, -0.750581,
		46.780579, 34.691635, 34.865295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.417812, 34.277134, 35.032738>,  <46.823673, 34.231102, 35.390701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.417812, 34.277134, 35.032738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.223911, 34.626839, 35.022259>,  <47.107571, 34.836662, 35.015972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.223911, 34.626839, 35.022259>,  <47.417812, 34.277134, 35.032738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.223911, 34.626839, 35.022259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.764679, 0.438154, 0.472532,
		0.424592, 0.209032, -0.880924,
		-0.484754, 0.874258, -0.026194,
		47.078484, 34.889114, 35.014400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.891060, 34.913971, 34.763248>,  <47.417812, 34.277134, 35.032738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.891060, 34.913971, 34.763248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.616058, 35.045303, 35.022335>,  <47.451057, 35.124104, 35.177788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.616058, 35.045303, 35.022335>,  <47.891060, 34.913971, 34.763248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.616058, 35.045303, 35.022335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722081, 0.403768, 0.561757,
		-0.077084, 0.853913, -0.514675,
		-0.687501, 0.328334, 0.647718,
		47.409809, 35.143803, 35.216652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<37.804581, 40.313286, 42.763893> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.444473, 40.456978, 42.862267>,  <37.228409, 40.543194, 42.921291>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.444473, 40.456978, 42.862267>,  <37.804581, 40.313286, 42.763893>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.444473, 40.456978, 42.862267> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427058, -0.619023, -0.659114,
		-0.084534, -0.698404, 0.710694,
		-0.900264, 0.359226, 0.245931,
		37.174393, 40.564747, 42.936047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.390057, 39.818546, 42.861725>,  <37.804581, 40.313286, 42.763893>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.390057, 39.818546, 42.861725> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.119843, 40.105389, 42.793129>,  <36.957714, 40.277493, 42.751972>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.119843, 40.105389, 42.793129>,  <37.390057, 39.818546, 42.861725>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.119843, 40.105389, 42.793129> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543926, -0.641702, -0.540706,
		-0.497791, -0.271986, 0.823546,
		-0.675535, 0.717107, -0.171493,
		36.917183, 40.320522, 42.741680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.679447, 39.520786, 42.929401>,  <37.390057, 39.818546, 42.861725>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.679447, 39.520786, 42.929401> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.674355, 39.844612, 42.694645>,  <36.671299, 40.038906, 42.553791>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.674355, 39.844612, 42.694645>,  <36.679447, 39.520786, 42.929401>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.674355, 39.844612, 42.694645> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470338, -0.522803, -0.710956,
		-0.882394, 0.266988, 0.387424,
		-0.012730, 0.809564, -0.586893,
		36.670536, 40.087482, 42.518578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.089382, 39.406227, 42.561924>,  <36.679447, 39.520786, 42.929401>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.089382, 39.406227, 42.561924> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.309021, 39.674824, 42.362888>,  <36.440804, 39.835983, 42.243465>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.309021, 39.674824, 42.362888>,  <36.089382, 39.406227, 42.561924>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.309021, 39.674824, 42.362888> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367267, -0.340938, -0.865376,
		-0.750741, 0.657920, 0.059410,
		0.549094, 0.671492, -0.497588,
		36.473747, 39.876270, 42.213612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.584831, 39.623901, 42.003971>,  <36.089382, 39.406227, 42.561924>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.584831, 39.623901, 42.003971> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.953045, 39.709290, 41.873104>,  <36.173973, 39.760525, 41.794582>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.953045, 39.709290, 41.873104>,  <35.584831, 39.623901, 42.003971>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.953045, 39.709290, 41.873104> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199142, -0.464071, -0.863123,
		-0.336082, 0.859690, -0.384684,
		0.920539, 0.213474, -0.327166,
		36.229206, 39.773331, 41.774956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.457771, 39.840172, 41.279648>,  <35.584831, 39.623901, 42.003971>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.457771, 39.840172, 41.279648> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.840382, 39.733139, 41.326038>,  <36.069950, 39.668919, 41.353870>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.840382, 39.733139, 41.326038>,  <35.457771, 39.840172, 41.279648>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.840382, 39.733139, 41.326038> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008322, -0.372460, -0.928011,
		0.291514, 0.888636, -0.354043,
		0.956531, -0.267581, 0.115973,
		36.127342, 39.652866, 41.360828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.617004, 39.807262, 40.523048>,  <35.457771, 39.840172, 41.279648>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.617004, 39.807262, 40.523048> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.937840, 39.649899, 40.702770>,  <36.130341, 39.555481, 40.810604>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.937840, 39.649899, 40.702770>,  <35.617004, 39.807262, 40.523048>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.937840, 39.649899, 40.702770> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218797, -0.506461, -0.834041,
		0.555677, 0.767285, -0.320151,
		0.802091, -0.393410, 0.449309,
		36.178467, 39.531876, 40.837563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.156311, 39.970848, 40.171772>,  <35.617004, 39.807262, 40.523048>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.156311, 39.970848, 40.171772> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.264622, 39.633274, 40.357006>,  <36.329609, 39.430729, 40.468147>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.264622, 39.633274, 40.357006>,  <36.156311, 39.970848, 40.171772>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.264622, 39.633274, 40.357006> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226896, -0.411553, -0.882690,
		0.935520, 0.344085, 0.080047,
		0.270777, -0.843937, 0.463088,
		36.345856, 39.380093, 40.495934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.828587, 39.633533, 39.906178>,  <36.156311, 39.970848, 40.171772>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.828587, 39.633533, 39.906178> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.681862, 39.304127, 40.079281>,  <36.593826, 39.106483, 40.183144>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.681862, 39.304127, 40.079281>,  <36.828587, 39.633533, 39.906178>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.681862, 39.304127, 40.079281> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316683, -0.547930, -0.774264,
		0.874736, -0.146961, 0.461778,
		-0.366809, -0.823514, 0.432754,
		36.571819, 39.057072, 40.209106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.192051, 39.167698, 39.647087>,  <36.828587, 39.633533, 39.906178>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.192051, 39.167698, 39.647087> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.917423, 38.929218, 39.813541>,  <36.752647, 38.786129, 39.913414>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.917423, 38.929218, 39.813541>,  <37.192051, 39.167698, 39.647087>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.917423, 38.929218, 39.813541> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257778, -0.734778, -0.627417,
		0.679835, -0.323493, 0.658162,
		-0.686568, -0.596200, 0.416138,
		36.711452, 38.750359, 39.938381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.448376, 38.605625, 40.106968>,  <37.192051, 39.167698, 39.647087>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.448376, 38.605625, 40.106968> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.110233, 38.540791, 39.903358>,  <36.907349, 38.501888, 39.781193>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.110233, 38.540791, 39.903358>,  <37.448376, 38.605625, 40.106968>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.110233, 38.540791, 39.903358> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482727, -0.639895, -0.597920,
		-0.228808, -0.751174, 0.619180,
		-0.845353, -0.162086, -0.509026,
		36.856628, 38.492165, 39.750652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.507488, 37.884827, 39.979839>,  <37.448376, 38.605625, 40.106968>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.507488, 37.884827, 39.979839> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.239414, 38.029083, 39.720367>,  <37.078568, 38.115639, 39.564686>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.239414, 38.029083, 39.720367>,  <37.507488, 37.884827, 39.979839>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.239414, 38.029083, 39.720367> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268877, -0.696657, -0.665112,
		-0.691776, -0.620165, 0.369921,
		-0.670188, 0.360645, -0.648678,
		37.038357, 38.137276, 39.525764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.273560, 37.384201, 39.776173>,  <37.507488, 37.884827, 39.979839>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.273560, 37.384201, 39.776173> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.182259, 37.630215, 39.474277>,  <37.127480, 37.777824, 39.293140>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.182259, 37.630215, 39.474277>,  <37.273560, 37.384201, 39.776173>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.182259, 37.630215, 39.474277> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495568, -0.593875, -0.633818,
		-0.838042, -0.518693, -0.169241,
		-0.228249, 0.615037, -0.754740,
		37.113785, 37.814724, 39.247856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.016365, 36.966206, 39.232697>,  <37.273560, 37.384201, 39.776173>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.016365, 36.966206, 39.232697> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.140411, 37.302666, 39.055477>,  <37.214840, 37.504543, 38.949146>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.140411, 37.302666, 39.055477>,  <37.016365, 36.966206, 39.232697>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.140411, 37.302666, 39.055477> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406766, -0.538610, -0.737862,
		-0.859285, 0.048604, -0.509182,
		0.310113, 0.841152, -0.443050,
		37.233444, 37.555012, 38.922562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.833637, 36.892223, 38.493744>,  <37.016365, 36.966206, 39.232697>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.833637, 36.892223, 38.493744> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.113308, 37.178188, 38.496582>,  <37.281109, 37.349770, 38.498283>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.113308, 37.178188, 38.496582>,  <36.833637, 36.892223, 38.493744>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.113308, 37.178188, 38.496582> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457594, -0.439852, -0.772747,
		-0.549330, 0.543531, -0.634674,
		0.699175, 0.714916, 0.007092,
		37.323059, 37.392662, 38.498711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.855839, 37.424301, 37.947136>,  <36.833637, 36.892223, 38.493744>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.855839, 37.424301, 37.947136> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.229511, 37.399731, 38.087723>,  <37.453716, 37.384987, 38.172077>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.229511, 37.399731, 38.087723>,  <36.855839, 37.424301, 37.947136>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.229511, 37.399731, 38.087723> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329672, -0.228135, -0.916117,
		0.136457, 0.971690, -0.192869,
		0.934182, -0.061427, 0.351470,
		37.509766, 37.381302, 38.193165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.309002, 37.692947, 37.390301>,  <36.855839, 37.424301, 37.947136>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.309002, 37.692947, 37.390301> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.598785, 37.548264, 37.625019>,  <37.772655, 37.461452, 37.765850>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.598785, 37.548264, 37.625019>,  <37.309002, 37.692947, 37.390301>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.598785, 37.548264, 37.625019> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591699, -0.110397, -0.798564,
		0.353628, 0.925732, 0.134045,
		0.724458, -0.361709, 0.586794,
		37.816124, 37.439751, 37.801056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.994274, 37.880142, 37.061916>,  <37.309002, 37.692947, 37.390301>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.994274, 37.880142, 37.061916> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.097279, 37.595917, 37.323845>,  <38.159081, 37.425381, 37.481003>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.097279, 37.595917, 37.323845>,  <37.994274, 37.880142, 37.061916>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.097279, 37.595917, 37.323845> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608795, -0.406945, -0.681003,
		0.750371, 0.574015, 0.327795,
		0.257512, -0.710565, 0.654817,
		38.174534, 37.382748, 37.520290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.720417, 37.866093, 37.003960>,  <37.994274, 37.880142, 37.061916>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.720417, 37.866093, 37.003960> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.625862, 37.520248, 37.181301>,  <38.569130, 37.312740, 37.287704>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.625862, 37.520248, 37.181301>,  <38.720417, 37.866093, 37.003960>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.625862, 37.520248, 37.181301> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.753543, -0.451191, -0.478121,
		0.613426, 0.221060, 0.758182,
		-0.236392, -0.864615, 0.443351,
		38.554943, 37.260864, 37.314308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.369160, 37.541679, 37.221226>,  <38.720417, 37.866093, 37.003960>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.369160, 37.541679, 37.221226> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.105240, 37.243439, 37.183834>,  <38.946888, 37.064495, 37.161400>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.105240, 37.243439, 37.183834>,  <39.369160, 37.541679, 37.221226>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.105240, 37.243439, 37.183834> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679456, -0.538829, -0.497998,
		0.320937, -0.392098, 0.862124,
		-0.659802, -0.745602, -0.093484,
		38.907299, 37.019756, 37.155788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.788948, 36.963375, 37.268074>,  <39.369160, 37.541679, 37.221226>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.788948, 36.963375, 37.268074> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.449512, 36.835709, 37.099300>,  <39.245850, 36.759109, 36.998035>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.449512, 36.835709, 37.099300>,  <39.788948, 36.963375, 37.268074>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.449512, 36.835709, 37.099300> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527731, -0.566968, -0.632493,
		-0.037354, -0.759395, 0.649556,
		-0.848590, -0.319165, -0.421934,
		39.194935, 36.739960, 36.972721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.944340, 36.216728, 37.072227>,  <39.788948, 36.963375, 37.268074>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.944340, 36.216728, 37.072227> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.638035, 36.342651, 36.847900>,  <39.454254, 36.418205, 36.713306>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.638035, 36.342651, 36.847900>,  <39.944340, 36.216728, 37.072227>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.638035, 36.342651, 36.847900> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414196, -0.425685, -0.804509,
		-0.491994, -0.848346, 0.195580,
		-0.765757, 0.314805, -0.560816,
		39.408306, 36.437092, 36.679657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.729805, 36.268776, 37.138332>,  <39.944340, 36.216728, 37.072227>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.729805, 36.268776, 37.138332> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.079990, 36.090473, 37.213020>,  <41.290100, 35.983490, 37.257835>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.079990, 36.090473, 37.213020>,  <40.729805, 36.268776, 37.138332>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.079990, 36.090473, 37.213020> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072341, 0.261140, 0.962586,
		-0.477839, -0.856217, 0.196372,
		0.875464, -0.445756, 0.186723,
		41.342628, 35.956745, 37.269035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.690128, 35.828129, 37.766014>,  <40.729805, 36.268776, 37.138332>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.690128, 35.828129, 37.766014> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.078297, 35.913639, 37.721157>,  <41.311199, 35.964947, 37.694244>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.078297, 35.913639, 37.721157>,  <40.690128, 35.828129, 37.766014>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.078297, 35.913639, 37.721157> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026426, 0.367667, 0.929582,
		0.239950, -0.905054, 0.351144,
		0.970425, 0.213774, -0.112139,
		41.369423, 35.977772, 37.687515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.018829, 35.598007, 38.364803>,  <40.690128, 35.828129, 37.766014>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.018829, 35.598007, 38.364803> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.255486, 35.876472, 38.202168>,  <41.397480, 36.043552, 38.104588>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.255486, 35.876472, 38.202168>,  <41.018829, 35.598007, 38.364803>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.255486, 35.876472, 38.202168> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107175, 0.431933, 0.895515,
		0.799046, -0.573399, 0.180938,
		0.591641, 0.696166, -0.406589,
		41.432980, 36.085323, 38.080193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.524151, 35.620712, 38.774811>,  <41.018829, 35.598007, 38.364803>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.524151, 35.620712, 38.774811> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.549297, 35.974899, 38.590637>,  <41.564384, 36.187412, 38.480133>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.549297, 35.974899, 38.590637>,  <41.524151, 35.620712, 38.774811>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.549297, 35.974899, 38.590637> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092497, 0.464528, 0.880714,
		0.993726, -0.012780, 0.111108,
		0.062868, 0.885466, -0.460432,
		41.568157, 36.240540, 38.452507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.993355, 35.950054, 39.226475>,  <41.524151, 35.620712, 38.774811>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.993355, 35.950054, 39.226475> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.767227, 36.209351, 39.022434>,  <41.631550, 36.364929, 38.900009>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.767227, 36.209351, 39.022434>,  <41.993355, 35.950054, 39.226475>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.767227, 36.209351, 39.022434> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166749, 0.515822, 0.840311,
		0.807845, 0.560099, -0.183509,
		-0.565315, 0.648241, -0.510100,
		41.597633, 36.403824, 38.869404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.276253, 36.624794, 39.398415>,  <41.993355, 35.950054, 39.226475>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.276253, 36.624794, 39.398415> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.900780, 36.681705, 39.272789>,  <41.675495, 36.715851, 39.197414>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.900780, 36.681705, 39.272789>,  <42.276253, 36.624794, 39.398415>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.900780, 36.681705, 39.272789> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219860, 0.454661, 0.863101,
		0.265592, 0.879227, -0.395501,
		-0.938681, 0.142277, -0.314062,
		41.619175, 36.724388, 39.178570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.113853, 37.221439, 39.753918>,  <42.276253, 36.624794, 39.398415>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.113853, 37.221439, 39.753918> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.743294, 37.130459, 39.633881>,  <41.520958, 37.075871, 39.561859>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.743294, 37.130459, 39.633881>,  <42.113853, 37.221439, 39.753918>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.743294, 37.130459, 39.633881> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371746, 0.425584, 0.825035,
		-0.059945, 0.875867, -0.478815,
		-0.926397, -0.227454, -0.300089,
		41.465374, 37.062222, 39.543854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.642715, 37.835201, 39.757942>,  <42.113853, 37.221439, 39.753918>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.642715, 37.835201, 39.757942> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.389629, 37.525455, 39.760509>,  <41.237778, 37.339607, 39.762051>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.389629, 37.525455, 39.760509>,  <41.642715, 37.835201, 39.757942>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.389629, 37.525455, 39.760509> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387652, 0.323890, 0.863031,
		-0.670374, 0.543564, -0.505111,
		-0.632712, -0.774361, 0.006414,
		41.199814, 37.293148, 39.762432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.934296, 38.087204, 39.844090>,  <41.642715, 37.835201, 39.757942>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.934296, 38.087204, 39.844090> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.924908, 37.706951, 39.967865>,  <40.919277, 37.478802, 40.042130>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.924908, 37.706951, 39.967865>,  <40.934296, 38.087204, 39.844090>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.924908, 37.706951, 39.967865> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375085, 0.295288, 0.878702,
		-0.926693, -0.095445, -0.363496,
		-0.023468, -0.950629, 0.309441,
		40.917866, 37.421764, 40.060696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.164650, 37.996216, 40.183243>,  <40.934296, 38.087204, 39.844090>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.164650, 37.996216, 40.183243> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.411850, 37.710358, 40.314308>,  <40.560169, 37.538845, 40.392948>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.411850, 37.710358, 40.314308>,  <40.164650, 37.996216, 40.183243>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.411850, 37.710358, 40.314308> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251763, 0.214939, 0.943619,
		-0.744778, -0.665649, -0.047089,
		0.617998, -0.714642, 0.327667,
		40.597248, 37.495964, 40.412609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.790051, 37.654182, 40.617798>,  <40.164650, 37.996216, 40.183243>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.790051, 37.654182, 40.617798> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.156902, 37.524265, 40.710209>,  <40.377014, 37.446316, 40.765656>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.156902, 37.524265, 40.710209>,  <39.790051, 37.654182, 40.617798>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.156902, 37.524265, 40.710209> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240429, 0.011489, 0.970599,
		-0.317898, -0.945715, -0.067553,
		0.917134, -0.324793, 0.231030,
		40.432041, 37.426826, 40.779518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.755787, 37.155952, 41.142662>,  <39.790051, 37.654182, 40.617798>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.755787, 37.155952, 41.142662> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.135265, 37.278660, 41.173317>,  <40.362953, 37.352283, 41.191711>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.135265, 37.278660, 41.173317>,  <39.755787, 37.155952, 41.142662>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.135265, 37.278660, 41.173317> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079927, -0.001838, 0.996799,
		0.305925, -0.951783, 0.022775,
		0.948695, 0.306766, 0.076636,
		40.419872, 37.370689, 41.196308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.032677, 36.925087, 41.845505>,  <39.755787, 37.155952, 41.142662>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.032677, 36.925087, 41.845505> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.309044, 37.193657, 41.738300>,  <40.474865, 37.354797, 41.673977>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.309044, 37.193657, 41.738300>,  <40.032677, 36.925087, 41.845505>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.309044, 37.193657, 41.738300> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002909, 0.368136, 0.929767,
		0.722929, -0.643171, 0.252398,
		0.690916, 0.671422, -0.268008,
		40.516319, 37.395084, 41.657898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.525467, 36.896538, 42.275417>,  <40.032677, 36.925087, 41.845505>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.525467, 36.896538, 42.275417> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.559345, 37.264164, 42.121456>,  <40.579674, 37.484737, 42.029079>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.559345, 37.264164, 42.121456>,  <40.525467, 36.896538, 42.275417>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.559345, 37.264164, 42.121456> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092720, 0.391882, 0.915331,
		0.992083, -0.041839, 0.118407,
		0.084698, 0.919064, -0.384900,
		40.584755, 37.539883, 42.005985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.939648, 37.335537, 42.746872>,  <40.525467, 36.896538, 42.275417>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.939648, 37.335537, 42.746872> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.763847, 37.610477, 42.515564>,  <40.658367, 37.775440, 42.376781>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.763847, 37.610477, 42.515564>,  <40.939648, 37.335537, 42.746872>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.763847, 37.610477, 42.515564> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163694, 0.571706, 0.803963,
		0.883201, 0.448000, -0.138750,
		-0.439499, 0.687348, -0.578267,
		40.631996, 37.816681, 42.342083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.187256, 37.871468, 43.139023>,  <40.939648, 37.335537, 42.746872>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.187256, 37.871468, 43.139023> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.888725, 37.989212, 42.900242>,  <40.709606, 38.059860, 42.756973>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.888725, 37.989212, 42.900242>,  <41.187256, 37.871468, 43.139023>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.888725, 37.989212, 42.900242> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279540, 0.675314, 0.682501,
		0.604033, 0.676239, -0.421717,
		-0.746326, 0.294366, -0.596948,
		40.664829, 38.077522, 42.721157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.191792, 38.628963, 42.991329>,  <41.187256, 37.871468, 43.139023>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.191792, 38.628963, 42.991329> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.811005, 38.530350, 42.918697>,  <40.582531, 38.471180, 42.875118>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.811005, 38.530350, 42.918697>,  <41.191792, 38.628963, 42.991329>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.811005, 38.530350, 42.918697> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301232, 0.647855, 0.699674,
		-0.054858, 0.720767, -0.691004,
		-0.951972, -0.246535, -0.181578,
		40.525414, 38.456390, 42.864223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.803535, 39.321350, 42.972523>,  <41.191792, 38.628963, 42.991329>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.803535, 39.321350, 42.972523> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.505215, 39.065540, 43.047131>,  <40.326221, 38.912052, 43.091896>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.505215, 39.065540, 43.047131>,  <40.803535, 39.321350, 42.972523>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.505215, 39.065540, 43.047131> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373679, 0.633404, 0.677616,
		-0.551498, 0.435665, -0.711369,
		-0.745797, -0.639528, 0.186522,
		40.281475, 38.873680, 43.103088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<40.204670, 39.732372, 42.921638> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.099289, 39.408924, 43.132061>,  <40.036060, 39.214855, 43.258312>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.099289, 39.408924, 43.132061>,  <40.204670, 39.732372, 42.921638>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.099289, 39.408924, 43.132061> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456867, 0.584868, 0.670225,
		-0.849628, -0.063767, -0.523513,
		-0.263448, -0.808618, 0.526053,
		40.020256, 39.166340, 43.289879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.407890, 39.792202, 43.210464>,  <40.204670, 39.732372, 42.921638>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.407890, 39.792202, 43.210464> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.566498, 39.507462, 43.442341>,  <39.661663, 39.336617, 43.581467>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.566498, 39.507462, 43.442341>,  <39.407890, 39.792202, 43.210464>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.566498, 39.507462, 43.442341> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270328, 0.512912, 0.814766,
		-0.877322, -0.479778, 0.010947,
		0.396521, -0.711853, 0.579687,
		39.685455, 39.293907, 43.616245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.848244, 39.504444, 43.588684>,  <39.407890, 39.792202, 43.210464>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.848244, 39.504444, 43.588684> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.159321, 39.391506, 43.813354>,  <39.345966, 39.323742, 43.948154>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.159321, 39.391506, 43.813354>,  <38.848244, 39.504444, 43.588684>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.159321, 39.391506, 43.813354> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464670, 0.343594, 0.816103,
		-0.423411, -0.895669, 0.136013,
		0.777692, -0.282346, 0.561673,
		39.392628, 39.306801, 43.981857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.478542, 39.174824, 44.174622>,  <38.848244, 39.504444, 43.588684>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.478542, 39.174824, 44.174622> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.849319, 39.283436, 44.278198>,  <39.071785, 39.348602, 44.340343>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.849319, 39.283436, 44.278198>,  <38.478542, 39.174824, 44.174622>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.849319, 39.283436, 44.278198> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339857, 0.315172, 0.886095,
		0.158988, -0.909362, 0.384427,
		0.926941, 0.271529, 0.258945,
		39.127403, 39.364895, 44.355881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.512512, 39.080677, 44.914497>,  <38.478542, 39.174824, 44.174622>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.512512, 39.080677, 44.914497> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.785824, 39.361225, 44.833302>,  <38.949810, 39.529556, 44.784584>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.785824, 39.361225, 44.833302>,  <38.512512, 39.080677, 44.914497>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.785824, 39.361225, 44.833302> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162270, 0.416920, 0.894341,
		0.711896, -0.578148, 0.398685,
		0.683281, 0.701373, -0.202987,
		38.990807, 39.571636, 44.772404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.961304, 39.136410, 45.541557>,  <38.512512, 39.080677, 44.914497>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.961304, 39.136410, 45.541557> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.046707, 39.472519, 45.342216>,  <39.097950, 39.674187, 45.222614>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.046707, 39.472519, 45.342216>,  <38.961304, 39.136410, 45.541557>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.046707, 39.472519, 45.342216> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026659, 0.514933, 0.856816,
		0.976578, -0.169648, 0.132341,
		0.213504, 0.840276, -0.498350,
		39.110760, 39.724602, 45.192711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.370022, 39.459522, 46.012802>,  <38.961304, 39.136410, 45.541557>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.370022, 39.459522, 46.012802> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.242954, 39.752827, 45.772331>,  <39.166714, 39.928810, 45.628048>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.242954, 39.752827, 45.772331>,  <39.370022, 39.459522, 46.012802>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.242954, 39.752827, 45.772331> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161086, 0.583068, 0.796293,
		0.934420, 0.349795, -0.067102,
		-0.317665, 0.733263, -0.601177,
		39.147655, 39.972805, 45.591980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.765831, 40.100616, 46.262352>,  <39.370022, 39.459522, 46.012802>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.765831, 40.100616, 46.262352> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.453072, 40.230721, 46.049622>,  <39.265415, 40.308784, 45.921982>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.453072, 40.230721, 46.049622>,  <39.765831, 40.100616, 46.262352>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.453072, 40.230721, 46.049622> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239050, 0.631450, 0.737649,
		0.575751, 0.703900, -0.415976,
		-0.781899, 0.325263, -0.531825,
		39.218502, 40.328300, 45.890076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.831291, 40.747280, 46.430618>,  <39.765831, 40.100616, 46.262352>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.831291, 40.747280, 46.430618> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.453476, 40.742981, 46.299332>,  <39.226788, 40.740402, 46.220558>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.453476, 40.742981, 46.299332>,  <39.831291, 40.747280, 46.430618>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.453476, 40.742981, 46.299332> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309211, 0.365676, 0.877878,
		0.110587, 0.930680, -0.348718,
		-0.944542, -0.010745, -0.328216,
		39.170113, 40.739758, 46.200867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.582848, 41.343338, 46.692574>,  <39.831291, 40.747280, 46.430618>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.582848, 41.343338, 46.692574> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.251408, 41.151676, 46.576759>,  <39.052544, 41.036678, 46.507271>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.251408, 41.151676, 46.576759>,  <39.582848, 41.343338, 46.692574>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.251408, 41.151676, 46.576759> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481574, 0.346301, 0.805085,
		-0.285490, 0.806530, -0.517693,
		-0.828602, -0.479151, -0.289538,
		39.002827, 41.007931, 46.489899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.979950, 41.789204, 46.811268>,  <39.582848, 41.343338, 46.692574>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.979950, 41.789204, 46.811268> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.866226, 41.405712, 46.809769>,  <38.797993, 41.175617, 46.808868>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.866226, 41.405712, 46.809769>,  <38.979950, 41.789204, 46.811268>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.866226, 41.405712, 46.809769> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411659, 0.118548, 0.903595,
		-0.865855, 0.258441, -0.428372,
		-0.284309, -0.958726, -0.003744,
		38.780933, 41.118095, 46.808647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.261505, 41.875149, 47.045807>,  <38.979950, 41.789204, 46.811268>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.261505, 41.875149, 47.045807> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.381443, 41.501900, 47.125179>,  <38.453407, 41.277950, 47.172802>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.381443, 41.501900, 47.125179>,  <38.261505, 41.875149, 47.045807>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.381443, 41.501900, 47.125179> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271681, 0.115868, 0.955387,
		-0.914485, -0.340380, -0.218769,
		0.299846, -0.933122, 0.198434,
		38.471397, 41.221962, 47.184708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.800293, 41.598660, 47.531540>,  <38.261505, 41.875149, 47.045807>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.800293, 41.598660, 47.531540> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.104923, 41.344753, 47.583805>,  <38.287701, 41.192410, 47.615162>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.104923, 41.344753, 47.583805>,  <37.800293, 41.598660, 47.531540>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.104923, 41.344753, 47.583805> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175057, -0.007373, 0.984531,
		-0.623984, -0.772669, -0.116735,
		0.761577, -0.634767, 0.130660,
		38.333397, 41.154324, 47.623005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.513714, 41.114746, 48.100334>,  <37.800293, 41.598660, 47.531540>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.513714, 41.114746, 48.100334> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.909531, 41.059036, 48.085339>,  <38.147022, 41.025612, 48.076340>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.909531, 41.059036, 48.085339>,  <37.513714, 41.114746, 48.100334>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.909531, 41.059036, 48.085339> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033823, -0.028600, 0.999019,
		-0.140212, -0.989841, -0.023591,
		0.989544, -0.139277, -0.037489,
		38.206394, 41.017254, 48.074093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.629269, 40.540806, 48.638012>,  <37.513714, 41.114746, 48.100334>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.629269, 40.540806, 48.638012> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.968025, 40.744572, 48.576981>,  <38.171280, 40.866829, 48.540363>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.968025, 40.744572, 48.576981>,  <37.629269, 40.540806, 48.638012>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.968025, 40.744572, 48.576981> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185718, -0.014476, 0.982497,
		0.498286, -0.860402, -0.106866,
		0.846888, 0.509411, -0.152579,
		38.222092, 40.897396, 48.531208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.178585, 40.184944, 48.835712>,  <37.629269, 40.540806, 48.638012>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.178585, 40.184944, 48.835712> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.334053, 40.551685, 48.872196>,  <38.427334, 40.771729, 48.894085>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.334053, 40.551685, 48.872196>,  <38.178585, 40.184944, 48.835712>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.334053, 40.551685, 48.872196> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203477, -0.181960, 0.962022,
		0.898630, -0.355347, -0.257280,
		0.388667, 0.916853, 0.091210,
		38.450653, 40.826740, 48.899559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.719810, 40.005402, 49.070431>,  <38.178585, 40.184944, 48.835712>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.719810, 40.005402, 49.070431> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.692253, 40.395859, 49.152798>,  <38.675720, 40.630135, 49.202217>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.692253, 40.395859, 49.152798>,  <38.719810, 40.005402, 49.070431>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.692253, 40.395859, 49.152798> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421840, -0.158545, 0.892701,
		0.904050, 0.148362, -0.400853,
		-0.068889, 0.976142, 0.205918,
		38.671585, 40.688702, 49.214573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.369183, 40.291855, 49.355118>,  <38.719810, 40.005402, 49.070431>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.369183, 40.291855, 49.355118> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.087975, 40.535137, 49.502548>,  <38.919250, 40.681107, 49.591007>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.087975, 40.535137, 49.502548>,  <39.369183, 40.291855, 49.355118>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.087975, 40.535137, 49.502548> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331131, -0.178712, 0.926507,
		0.629376, 0.773399, -0.075757,
		-0.703021, 0.608207, 0.368573,
		38.877068, 40.717598, 49.613121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.715530, 40.564362, 49.875973>,  <39.369183, 40.291855, 49.355118>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.715530, 40.564362, 49.875973> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.341118, 40.646545, 49.990257>,  <39.116470, 40.695858, 50.058830>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.341118, 40.646545, 49.990257>,  <39.715530, 40.564362, 49.875973>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.341118, 40.646545, 49.990257> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278171, -0.065336, 0.958307,
		0.215565, 0.976481, 0.004003,
		-0.936030, 0.205464, 0.285713,
		39.060310, 40.708183, 50.075970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.871567, 41.003723, 50.373878>,  <39.715530, 40.564362, 49.875973>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.871567, 41.003723, 50.373878> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.483524, 40.938240, 50.445541>,  <39.250698, 40.898952, 50.488541>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.483524, 40.938240, 50.445541>,  <39.871567, 41.003723, 50.373878>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.483524, 40.938240, 50.445541> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196878, -0.099234, 0.975393,
		-0.141897, 0.981506, 0.128497,
		-0.970105, -0.163704, 0.179156,
		39.192493, 40.889130, 50.499287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.617439, 41.517509, 50.892036>,  <39.871567, 41.003723, 50.373878>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.617439, 41.517509, 50.892036> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.337166, 41.233845, 50.923359>,  <39.169003, 41.063648, 50.942150>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.337166, 41.233845, 50.923359>,  <39.617439, 41.517509, 50.892036>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.337166, 41.233845, 50.923359> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058938, 0.051843, 0.996915,
		-0.711031, 0.703140, 0.005471,
		-0.700687, -0.709159, 0.078303,
		39.126961, 41.021095, 50.946850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.060520, 41.819351, 51.343708>,  <39.617439, 41.517509, 50.892036>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.060520, 41.819351, 51.343708> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.009930, 41.422905, 51.327278>,  <38.979576, 41.185036, 51.317421>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.009930, 41.422905, 51.327278>,  <39.060520, 41.819351, 51.343708>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.009930, 41.422905, 51.327278> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161588, -0.020267, 0.986650,
		-0.978720, 0.131428, -0.157590,
		-0.126480, -0.991119, -0.041073,
		38.971985, 41.125568, 51.314957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.379520, 42.337788, 51.326786>,  <39.060520, 41.819351, 51.343708>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.379520, 42.337788, 51.326786> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.594772, 42.415745, 50.998779>,  <38.723923, 42.462521, 50.801975>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.594772, 42.415745, 50.998779>,  <38.379520, 42.337788, 51.326786>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.594772, 42.415745, 50.998779> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.830922, -0.285840, 0.477350,
		-0.141361, -0.938249, -0.315762,
		0.538131, 0.194895, -0.820019,
		38.756210, 42.474213, 50.752773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.972824, 41.871204, 50.772228>,  <38.379520, 42.337788, 51.326786>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.972824, 41.871204, 50.772228> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.999474, 42.219189, 50.576790>,  <38.015461, 42.427979, 50.459526>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.999474, 42.219189, 50.576790>,  <37.972824, 41.871204, 50.772228>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.999474, 42.219189, 50.576790> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.872980, 0.287957, 0.393683,
		0.483184, 0.400310, 0.778643,
		0.066620, 0.869962, -0.488599,
		38.019459, 42.480179, 50.430210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.245056, 41.567535, 50.999210>,  <37.972824, 41.871204, 50.772228>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.245056, 41.567535, 50.999210> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.855896, 41.659328, 50.987915>,  <36.622398, 41.714405, 50.981136>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.855896, 41.659328, 50.987915>,  <37.245056, 41.567535, 50.999210>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.855896, 41.659328, 50.987915> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014070, -0.180679, -0.983441,
		-0.230787, -0.956395, 0.179012,
		-0.972903, 0.229485, -0.028242,
		36.564026, 41.728172, 50.979443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.007710, 41.087948, 50.533615>,  <37.245056, 41.567535, 50.999210>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.007710, 41.087948, 50.533615> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.705460, 41.348640, 50.559769>,  <36.524109, 41.505054, 50.575462>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.705460, 41.348640, 50.559769>,  <37.007710, 41.087948, 50.533615>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.705460, 41.348640, 50.559769> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258918, -0.205509, -0.943784,
		-0.601655, -0.730078, 0.324033,
		-0.755627, 0.651730, 0.065385,
		36.478771, 41.544159, 50.579384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.405045, 40.664421, 50.277477>,  <37.007710, 41.087948, 50.533615>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.405045, 40.664421, 50.277477> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.333595, 41.056221, 50.240208>,  <36.290726, 41.291302, 50.217846>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.333595, 41.056221, 50.240208>,  <36.405045, 40.664421, 50.277477>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.333595, 41.056221, 50.240208> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216156, -0.131445, -0.967470,
		-0.959880, -0.152674, 0.235203,
		-0.178624, 0.979496, -0.093170,
		36.280006, 41.350071, 50.212257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.642151, 40.665871, 50.012318>,  <36.405045, 40.664421, 50.277477>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.642151, 40.665871, 50.012318> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.819614, 41.010494, 49.913616>,  <35.926090, 41.217270, 49.854397>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.819614, 41.010494, 49.913616>,  <35.642151, 40.665871, 50.012318>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.819614, 41.010494, 49.913616> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277841, -0.129539, -0.951853,
		-0.852042, 0.490852, 0.181905,
		0.443655, 0.861559, -0.246751,
		35.952709, 41.268963, 49.839592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.169735, 40.952911, 49.553669>,  <35.642151, 40.665871, 50.012318>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.169735, 40.952911, 49.553669> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.493977, 41.178661, 49.491177>,  <35.688522, 41.314110, 49.453682>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.493977, 41.178661, 49.491177>,  <35.169735, 40.952911, 49.553669>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.493977, 41.178661, 49.491177> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177437, -0.017531, -0.983976,
		-0.558071, 0.825332, 0.085930,
		0.810601, 0.564375, -0.156228,
		35.737156, 41.347973, 49.444309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.036850, 41.300194, 48.987053>,  <35.169735, 40.952911, 49.553669>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.036850, 41.300194, 48.987053> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.435528, 41.325577, 49.007366>,  <35.674732, 41.340805, 49.019554>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.435528, 41.325577, 49.007366>,  <35.036850, 41.300194, 48.987053>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.435528, 41.325577, 49.007366> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059706, -0.147794, -0.987214,
		-0.055141, 0.986980, -0.151094,
		0.996692, 0.063457, 0.050780,
		35.734535, 41.344612, 49.022598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.224125, 41.739803, 48.346523>,  <35.036850, 41.300194, 48.987053>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.224125, 41.739803, 48.346523> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.546440, 41.530190, 48.456867>,  <35.739830, 41.404423, 48.523075>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.546440, 41.530190, 48.456867>,  <35.224125, 41.739803, 48.346523>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.546440, 41.530190, 48.456867> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247321, -0.125480, -0.960774,
		0.538094, 0.842403, 0.028495,
		0.805784, -0.524034, 0.275864,
		35.788174, 41.372978, 48.539627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.660011, 41.944347, 47.906544>,  <35.224125, 41.739803, 48.346523>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.660011, 41.944347, 47.906544> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.820736, 41.606571, 48.048229>,  <35.917171, 41.403904, 48.133240>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.820736, 41.606571, 48.048229>,  <35.660011, 41.944347, 47.906544>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.820736, 41.606571, 48.048229> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149153, -0.321292, -0.935160,
		0.903492, 0.428593, -0.003149,
		0.401815, -0.844440, 0.354210,
		35.941280, 41.353241, 48.154491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.321213, 41.973278, 47.628021>,  <35.660011, 41.944347, 47.906544>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.321213, 41.973278, 47.628021> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.241413, 41.591850, 47.718273>,  <36.193535, 41.362995, 47.772423>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.241413, 41.591850, 47.718273>,  <36.321213, 41.973278, 47.628021>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.241413, 41.591850, 47.718273> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272125, -0.275112, -0.922096,
		0.941355, -0.122559, 0.314374,
		-0.199499, -0.953568, 0.225627,
		36.181564, 41.305779, 47.785961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.891632, 41.524940, 47.454670>,  <36.321213, 41.973278, 47.628021>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.891632, 41.524940, 47.454670> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.581104, 41.272835, 47.458382>,  <36.394787, 41.121571, 47.460609>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.581104, 41.272835, 47.458382>,  <36.891632, 41.524940, 47.454670>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.581104, 41.272835, 47.458382> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213606, -0.276897, -0.936857,
		0.593041, -0.725320, 0.349591,
		-0.776321, -0.630269, 0.009279,
		36.348209, 41.083755, 47.461166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.142231, 40.833286, 47.224972>,  <36.891632, 41.524940, 47.454670>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.142231, 40.833286, 47.224972> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.749401, 40.841843, 47.150063>,  <36.513702, 40.846977, 47.105118>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.749401, 40.841843, 47.150063>,  <37.142231, 40.833286, 47.224972>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.749401, 40.841843, 47.150063> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167013, -0.361783, -0.917180,
		-0.087373, -0.932016, 0.351725,
		-0.982075, 0.021394, -0.187269,
		36.454777, 40.848263, 47.093884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.963242, 40.180965, 46.853493>,  <37.142231, 40.833286, 47.224972>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.963242, 40.180965, 46.853493> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.665928, 40.435848, 46.772003>,  <36.487541, 40.588776, 46.723110>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.665928, 40.435848, 46.772003>,  <36.963242, 40.180965, 46.853493>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.665928, 40.435848, 46.772003> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131944, -0.158909, -0.978437,
		-0.655837, -0.754135, 0.034040,
		-0.743283, 0.637203, -0.203722,
		36.442944, 40.627010, 46.710888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.529083, 39.898712, 46.190357>,  <36.963242, 40.180965, 46.853493>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.529083, 39.898712, 46.190357> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.481548, 40.294628, 46.221821>,  <36.453026, 40.532177, 46.240700>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.481548, 40.294628, 46.221821>,  <36.529083, 39.898712, 46.190357>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.481548, 40.294628, 46.221821> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132438, 0.094315, -0.986694,
		-0.984042, -0.106837, -0.142294,
		-0.118836, 0.989793, 0.078660,
		36.445896, 40.591568, 46.245419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.216843, 40.116997, 45.591019>,  <36.529083, 39.898712, 46.190357>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.216843, 40.116997, 45.591019> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.356743, 40.469986, 45.716820>,  <36.440685, 40.681778, 45.792301>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.356743, 40.469986, 45.716820>,  <36.216843, 40.116997, 45.591019>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.356743, 40.469986, 45.716820> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268961, 0.226991, -0.936021,
		-0.897402, 0.411968, -0.157960,
		0.349755, 0.882472, 0.314506,
		36.461670, 40.734726, 45.811172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.019077, 40.435799, 45.135418>,  <36.216843, 40.116997, 45.591019>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.019077, 40.435799, 45.135418> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.266464, 40.704227, 45.298958>,  <36.414898, 40.865284, 45.397083>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.266464, 40.704227, 45.298958>,  <36.019077, 40.435799, 45.135418>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.266464, 40.704227, 45.298958> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255650, 0.320157, -0.912218,
		-0.743061, 0.668701, 0.026447,
		0.618469, 0.671072, 0.408849,
		36.452003, 40.905548, 45.421612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.839378, 40.992432, 44.719177>,  <36.019077, 40.435799, 45.135418>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.839378, 40.992432, 44.719177> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.185577, 41.097355, 44.889877>,  <36.393295, 41.160309, 44.992298>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.185577, 41.097355, 44.889877>,  <35.839378, 40.992432, 44.719177>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.185577, 41.097355, 44.889877> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328320, 0.346367, -0.878770,
		-0.378322, 0.900679, 0.213657,
		0.865493, 0.262310, 0.426749,
		36.445225, 41.176048, 45.017902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.998550, 41.738773, 44.599712>,  <35.839378, 40.992432, 44.719177>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.998550, 41.738773, 44.599712> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.322575, 41.509830, 44.650631>,  <36.516991, 41.372463, 44.681183>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.322575, 41.509830, 44.650631>,  <35.998550, 41.738773, 44.599712>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.322575, 41.509830, 44.650631> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288048, 0.199371, -0.936632,
		0.510709, 0.795399, 0.326369,
		0.810065, -0.572356, 0.127292,
		36.565594, 41.338123, 44.688820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.495441, 42.055641, 44.183075>,  <35.998550, 41.738773, 44.599712>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.495441, 42.055641, 44.183075> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.659000, 41.695477, 44.242481>,  <36.757137, 41.479378, 44.278126>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.659000, 41.695477, 44.242481>,  <36.495441, 42.055641, 44.183075>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.659000, 41.695477, 44.242481> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215800, -0.062720, -0.974421,
		0.886696, 0.430491, 0.168663,
		0.408901, -0.900413, 0.148513,
		36.781670, 41.425354, 44.287037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.182159, 42.069523, 43.920559>,  <36.495441, 42.055641, 44.183075>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.182159, 42.069523, 43.920559> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.061138, 41.688469, 43.908230>,  <36.988525, 41.459835, 43.900833>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.061138, 41.688469, 43.908230>,  <37.182159, 42.069523, 43.920559>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.061138, 41.688469, 43.908230> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224644, -0.039844, -0.973626,
		0.926281, -0.301500, 0.226058,
		-0.302555, -0.952633, -0.030824,
		36.970371, 41.402679, 43.898983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.833954, 41.613621, 43.632465>,  <37.182159, 42.069523, 43.920559>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.833954, 41.613621, 43.632465> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.464771, 41.483356, 43.550396>,  <37.243263, 41.405197, 43.501156>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.464771, 41.483356, 43.550396>,  <37.833954, 41.613621, 43.632465>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.464771, 41.483356, 43.550396> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224587, -0.022755, -0.974188,
		0.312590, -0.945211, 0.094141,
		-0.922956, -0.325665, -0.205169,
		37.187885, 41.385658, 43.488846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<44.932781, 39.781582, 29.190763> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.827892, 40.123657, 29.011927>,  <44.764957, 40.328903, 28.904625>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.827892, 40.123657, 29.011927>,  <44.932781, 39.781582, 29.190763>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.827892, 40.123657, 29.011927> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733902, -0.124101, -0.667822,
		-0.626599, -0.503241, -0.595082,
		-0.262225, 0.855189, -0.447091,
		44.749226, 40.380215, 28.877800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.859112, 39.200897, 28.798727>,  <44.932781, 39.781582, 29.190763>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.859112, 39.200897, 28.798727> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.658726, 38.895248, 28.636171>,  <44.538494, 38.711861, 28.538637>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.658726, 38.895248, 28.636171>,  <44.859112, 39.200897, 28.798727>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.658726, 38.895248, 28.636171> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144930, -0.388863, 0.909825,
		-0.853246, 0.514689, 0.084063,
		-0.500966, -0.764121, -0.406389,
		44.508434, 38.666012, 28.514254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.330982, 39.090919, 29.231461>,  <44.859112, 39.200897, 28.798727>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.330982, 39.090919, 29.231461> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.363197, 38.741741, 29.039009>,  <44.382526, 38.532234, 28.923538>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.363197, 38.741741, 29.039009>,  <44.330982, 39.090919, 29.231461>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.363197, 38.741741, 29.039009> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165834, -0.487706, 0.857112,
		-0.982860, 0.010758, -0.184042,
		0.080538, -0.872941, -0.481131,
		44.387360, 38.479858, 28.894670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.814114, 38.658150, 29.499893>,  <44.330982, 39.090919, 29.231461>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.814114, 38.658150, 29.499893> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.082123, 38.408554, 29.339043>,  <44.242928, 38.258797, 29.242533>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.082123, 38.408554, 29.339043>,  <43.814114, 38.658150, 29.499893>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.082123, 38.408554, 29.339043> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152998, -0.646150, 0.747717,
		-0.726400, -0.439465, -0.528406,
		0.670026, -0.623987, -0.402126,
		44.283131, 38.221359, 29.218405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.504772, 38.085567, 29.574209>,  <43.814114, 38.658150, 29.499893>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.504772, 38.085567, 29.574209> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.880016, 37.978622, 29.486143>,  <44.105164, 37.914455, 29.433304>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.880016, 37.978622, 29.486143>,  <43.504772, 38.085567, 29.574209>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.880016, 37.978622, 29.486143> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004315, -0.644657, 0.764460,
		-0.346315, -0.716196, -0.605911,
		0.938108, -0.267358, -0.220164,
		44.161449, 37.898415, 29.420094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.548672, 37.329258, 29.464323>,  <43.504772, 38.085567, 29.574209>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.548672, 37.329258, 29.464323> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.906086, 37.447742, 29.599291>,  <44.120533, 37.518833, 29.680271>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.906086, 37.447742, 29.599291>,  <43.548672, 37.329258, 29.464323>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.906086, 37.447742, 29.599291> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078856, -0.843358, 0.531534,
		0.442012, -0.448337, -0.776929,
		0.893537, 0.296210, 0.337420,
		44.174149, 37.536606, 29.700518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.896267, 36.757450, 29.540293>,  <43.548672, 37.329258, 29.464323>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.896267, 36.757450, 29.540293> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.102478, 37.016350, 29.764898>,  <44.226204, 37.171688, 29.899662>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.102478, 37.016350, 29.764898>,  <43.896267, 36.757450, 29.540293>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.102478, 37.016350, 29.764898> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078453, -0.616902, 0.783120,
		0.853274, -0.447773, -0.267252,
		0.515528, 0.647249, 0.561515,
		44.257137, 37.210526, 29.933353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.445786, 36.278851, 29.894205>,  <43.896267, 36.757450, 29.540293>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.445786, 36.278851, 29.894205> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.426979, 36.616344, 30.108086>,  <44.415695, 36.818840, 30.236414>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.426979, 36.616344, 30.108086>,  <44.445786, 36.278851, 29.894205>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.426979, 36.616344, 30.108086> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144174, -0.523955, 0.839455,
		0.988435, 0.116555, -0.097011,
		-0.047013, 0.843733, 0.534700,
		44.412876, 36.869465, 30.268496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.005001, 36.283524, 30.371223>,  <44.445786, 36.278851, 29.894205>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.005001, 36.283524, 30.371223> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.743847, 36.537090, 30.537060>,  <44.587154, 36.689232, 30.636560>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.743847, 36.537090, 30.537060>,  <45.005001, 36.283524, 30.371223>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.743847, 36.537090, 30.537060> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062427, -0.500450, 0.863512,
		0.754877, 0.589659, 0.287164,
		-0.652889, 0.633918, 0.414589,
		44.547981, 36.727264, 30.661436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.212517, 36.354118, 31.051821>,  <45.005001, 36.283524, 30.371223>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.212517, 36.354118, 31.051821> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.833885, 36.481720, 31.070675>,  <44.606705, 36.558281, 31.081987>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.833885, 36.481720, 31.070675>,  <45.212517, 36.354118, 31.051821>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.833885, 36.481720, 31.070675> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115449, -0.471741, 0.874146,
		0.301092, 0.822008, 0.483370,
		-0.946581, 0.319003, 0.047138,
		44.549911, 36.577419, 31.084816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.146606, 36.522877, 31.769939>,  <45.212517, 36.354118, 31.051821>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.146606, 36.522877, 31.769939> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.770695, 36.497131, 31.635675>,  <44.545147, 36.481686, 31.555117>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.770695, 36.497131, 31.635675>,  <45.146606, 36.522877, 31.769939>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.770695, 36.497131, 31.635675> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300564, -0.311881, 0.901327,
		-0.162695, 0.947939, 0.273757,
		-0.939783, -0.064360, -0.335658,
		44.488758, 36.477825, 31.534979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.703815, 36.675564, 32.342644>,  <45.146606, 36.522877, 31.769939>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.703815, 36.675564, 32.342644> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.453583, 36.520142, 32.072037>,  <44.303444, 36.426888, 31.909674>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.453583, 36.520142, 32.072037>,  <44.703815, 36.675564, 32.342644>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.453583, 36.520142, 32.072037> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541571, -0.407890, 0.735069,
		-0.561562, 0.826224, 0.044734,
		-0.625578, -0.388560, -0.676515,
		44.265911, 36.403572, 31.869081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.005844, 36.779289, 32.500942>,  <44.703815, 36.675564, 32.342644>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.005844, 36.779289, 32.500942> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.993958, 36.443485, 32.283932>,  <43.986824, 36.242001, 32.153725>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.993958, 36.443485, 32.283932>,  <44.005844, 36.779289, 32.500942>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.993958, 36.443485, 32.283932> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465500, -0.468693, 0.750757,
		-0.884549, 0.274858, -0.376864,
		-0.029718, -0.839512, -0.542528,
		43.985043, 36.191631, 32.121174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.377998, 36.482254, 32.444626>,  <44.005844, 36.779289, 32.500942>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.377998, 36.482254, 32.444626> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.624821, 36.174149, 32.380199>,  <43.772915, 35.989285, 32.341545>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.624821, 36.174149, 32.380199>,  <43.377998, 36.482254, 32.444626>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.624821, 36.174149, 32.380199> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510615, -0.547653, 0.662834,
		-0.598762, -0.326764, -0.731239,
		0.617055, -0.770261, -0.161063,
		43.809937, 35.943069, 32.331882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.898010, 35.976543, 32.500134>,  <43.377998, 36.482254, 32.444626>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.898010, 35.976543, 32.500134> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.256832, 35.799774, 32.499207>,  <43.472126, 35.693714, 32.498650>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.256832, 35.799774, 32.499207>,  <42.898010, 35.976543, 32.500134>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.256832, 35.799774, 32.499207> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337396, -0.688246, 0.642248,
		-0.285418, -0.575347, -0.766494,
		0.897051, -0.441921, -0.002318,
		43.525948, 35.667198, 32.498512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.798710, 35.329777, 32.241108>,  <42.898010, 35.976543, 32.500134>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.798710, 35.329777, 32.241108> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.121555, 35.329189, 32.477268>,  <43.315262, 35.328838, 32.618965>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.121555, 35.329189, 32.477268>,  <42.798710, 35.329777, 32.241108>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.121555, 35.329189, 32.477268> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478644, -0.587074, 0.652874,
		0.345650, -0.809532, -0.474535,
		0.807109, -0.001468, 0.590400,
		43.363689, 35.328751, 32.654388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.948475, 34.624302, 32.398899>,  <42.798710, 35.329777, 32.241108>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.948475, 34.624302, 32.398899> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.132637, 34.824211, 32.692360>,  <43.243134, 34.944157, 32.868439>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.132637, 34.824211, 32.692360>,  <42.948475, 34.624302, 32.398899>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.132637, 34.824211, 32.692360> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423488, -0.602694, 0.676327,
		0.780180, -0.622081, -0.065837,
		0.460409, 0.499776, 0.733654,
		43.270760, 34.974144, 32.912457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.289295, 34.082554, 32.923885>,  <42.948475, 34.624302, 32.398899>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.289295, 34.082554, 32.923885> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.239468, 34.432240, 33.111599>,  <43.209572, 34.642052, 33.224228>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.239468, 34.432240, 33.111599>,  <43.289295, 34.082554, 32.923885>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.239468, 34.432240, 33.111599> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436975, -0.472964, 0.765087,
		0.890807, -0.109762, 0.440926,
		-0.124564, 0.874218, 0.469283,
		43.202099, 34.694504, 33.252384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.613617, 34.004650, 33.506989>,  <43.289295, 34.082554, 32.923885>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.613617, 34.004650, 33.506989> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.369419, 34.311802, 33.584618>,  <43.222900, 34.496094, 33.631195>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.369419, 34.311802, 33.584618>,  <43.613617, 34.004650, 33.506989>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.369419, 34.311802, 33.584618> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329480, -0.469050, 0.819411,
		0.720238, 0.436300, 0.539351,
		-0.610491, 0.767877, 0.194075,
		43.186272, 34.542164, 33.642841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.745399, 34.377857, 34.196552>,  <43.613617, 34.004650, 33.506989>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.745399, 34.377857, 34.196552> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.364059, 34.448273, 34.098465>,  <43.135254, 34.490520, 34.039612>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.364059, 34.448273, 34.098465>,  <43.745399, 34.377857, 34.196552>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.364059, 34.448273, 34.098465> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283033, -0.238878, 0.928886,
		0.104944, 0.954959, 0.277560,
		-0.953351, 0.176040, -0.245216,
		43.078053, 34.501083, 34.024899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.426849, 34.630859, 34.827011>,  <43.745399, 34.377857, 34.196552>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.426849, 34.630859, 34.827011> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.120728, 34.535225, 34.587963>,  <42.937054, 34.477844, 34.444534>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.120728, 34.535225, 34.587963>,  <43.426849, 34.630859, 34.827011>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.120728, 34.535225, 34.587963> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462908, -0.440689, 0.769096,
		-0.447241, 0.865236, 0.226589,
		-0.765305, -0.239081, -0.597619,
		42.891136, 34.463501, 34.408676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.979862, 35.091511, 35.063927>,  <43.426849, 34.630859, 34.827011>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.979862, 35.091511, 35.063927> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.860535, 35.396927, 34.834839>,  <43.788940, 35.580177, 34.697384>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.860535, 35.396927, 34.834839>,  <43.979862, 35.091511, 35.063927>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.860535, 35.396927, 34.834839> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.944690, 0.321865, -0.062961,
		0.136266, -0.559828, -0.817328,
		-0.298317, 0.763542, -0.572723,
		43.771038, 35.625988, 34.663021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.352589, 35.553070, 34.751286>,  <43.979862, 35.091511, 35.063927>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.352589, 35.553070, 34.751286> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.675568, 35.675301, 34.953136>,  <44.869354, 35.748638, 35.074245>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.675568, 35.675301, 34.953136>,  <44.352589, 35.553070, 34.751286>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.675568, 35.675301, 34.953136> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298420, 0.949448, -0.097435,
		-0.508891, -0.071917, 0.857822,
		0.807450, 0.305574, 0.504627,
		44.917801, 35.766972, 35.104523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.178432, 36.025578, 35.351460>,  <44.352589, 35.553070, 34.751286>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.178432, 36.025578, 35.351460> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.539646, 36.073483, 35.186440>,  <44.756374, 36.102226, 35.087429>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.539646, 36.073483, 35.186440>,  <44.178432, 36.025578, 35.351460>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.539646, 36.073483, 35.186440> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144079, 0.989163, -0.028229,
		0.404695, 0.084931, 0.910499,
		0.903030, 0.119760, -0.412546,
		44.810555, 36.109409, 35.062675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.481468, 36.621597, 35.759125>,  <44.178432, 36.025578, 35.351460>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.481468, 36.621597, 35.759125> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.659985, 36.597858, 35.401958>,  <44.767094, 36.583614, 35.187656>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.659985, 36.597858, 35.401958>,  <44.481468, 36.621597, 35.759125>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.659985, 36.597858, 35.401958> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144854, 0.979849, -0.137529,
		0.883088, 0.190720, 0.428698,
		0.446289, -0.059351, -0.892919,
		44.793873, 36.580051, 35.134083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.709610, 37.339622, 35.761848>,  <44.481468, 36.621597, 35.759125>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.709610, 37.339622, 35.761848> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.748165, 37.202652, 35.388012>,  <44.771297, 37.120468, 35.163712>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.748165, 37.202652, 35.388012>,  <44.709610, 37.339622, 35.761848>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.748165, 37.202652, 35.388012> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004422, 0.939097, -0.343623,
		0.995334, 0.028987, 0.092029,
		0.096385, -0.342427, -0.934588,
		44.777081, 37.099922, 35.107635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.266930, 37.823936, 35.372314>,  <44.709610, 37.339622, 35.761848>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.266930, 37.823936, 35.372314> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.017025, 37.636658, 35.122368>,  <44.867081, 37.524292, 34.972401>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.017025, 37.636658, 35.122368>,  <45.266930, 37.823936, 35.372314>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.017025, 37.636658, 35.122368> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052323, 0.823585, -0.564774,
		0.779055, -0.320158, -0.539048,
		-0.624768, -0.468195, -0.624866,
		44.829594, 37.496201, 34.934906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.474415, 38.042709, 34.737484>,  <45.266930, 37.823936, 35.372314>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.474415, 38.042709, 34.737484> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.097015, 37.922958, 34.680664>,  <44.870575, 37.851109, 34.646572>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.097015, 37.922958, 34.680664>,  <45.474415, 38.042709, 34.737484>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.097015, 37.922958, 34.680664> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146432, 0.761233, -0.631730,
		0.297255, -0.575238, -0.762063,
		-0.943503, -0.299375, -0.142047,
		44.813965, 37.833145, 34.638050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.363262, 38.239689, 34.028194>,  <45.474415, 38.042709, 34.737484>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.363262, 38.239689, 34.028194> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.995953, 38.171150, 34.170971>,  <44.775566, 38.130028, 34.256638>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.995953, 38.171150, 34.170971>,  <45.363262, 38.239689, 34.028194>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.995953, 38.171150, 34.170971> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350747, 0.770285, -0.532576,
		-0.183694, -0.614249, -0.767434,
		-0.918277, -0.171345, 0.356943,
		44.720470, 38.119747, 34.278053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.877434, 38.190842, 33.392269>,  <45.363262, 38.239689, 34.028194>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.877434, 38.190842, 33.392269> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.640732, 38.265495, 33.705956>,  <44.498711, 38.310287, 33.894169>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.640732, 38.265495, 33.705956>,  <44.877434, 38.190842, 33.392269>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.640732, 38.265495, 33.705956> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381457, 0.792186, -0.476373,
		-0.710155, -0.581040, -0.397583,
		-0.591752, 0.186638, 0.784217,
		44.463207, 38.321487, 33.941219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.177753, 38.162891, 33.205540>,  <44.877434, 38.190842, 33.392269>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.177753, 38.162891, 33.205540> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.179344, 38.388458, 33.535870>,  <44.180298, 38.523800, 33.734066>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.179344, 38.388458, 33.535870>,  <44.177753, 38.162891, 33.205540>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.179344, 38.388458, 33.535870> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565218, 0.682527, -0.463342,
		-0.824932, -0.464926, 0.321451,
		0.003979, 0.563916, 0.825823,
		44.180538, 38.557632, 33.783615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.532799, 38.261971, 33.328663>,  <44.177753, 38.162891, 33.205540>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.532799, 38.261971, 33.328663> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.715538, 38.554691, 33.530949>,  <43.825184, 38.730324, 33.652321>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.715538, 38.554691, 33.530949>,  <43.532799, 38.261971, 33.328663>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.715538, 38.554691, 33.530949> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537472, 0.680094, -0.498594,
		-0.708809, -0.044026, 0.704025,
		0.456853, 0.731802, 0.505719,
		43.852592, 38.774231, 33.682663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.963085, 38.743782, 33.512165>,  <43.532799, 38.261971, 33.328663>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.963085, 38.743782, 33.512165> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.318943, 38.926117, 33.501247>,  <43.532459, 39.035519, 33.494698>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.318943, 38.926117, 33.501247>,  <42.963085, 38.743782, 33.512165>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.318943, 38.926117, 33.501247> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392740, 0.733273, -0.555037,
		-0.232994, 0.504505, 0.831378,
		0.889645, 0.455836, -0.027291,
		43.585838, 39.062866, 33.493061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.758759, 39.443958, 33.393047>,  <42.963085, 38.743782, 33.512165>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.758759, 39.443958, 33.393047> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.152657, 39.446735, 33.323505>,  <43.388996, 39.448402, 33.281780>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.152657, 39.446735, 33.323505>,  <42.758759, 39.443958, 33.393047>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.152657, 39.446735, 33.323505> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128356, 0.703590, -0.698918,
		0.117472, 0.710572, 0.693748,
		0.984746, 0.006944, -0.173859,
		43.448082, 39.448818, 33.271347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.956383, 40.127056, 33.336323>,  <42.758759, 39.443958, 33.393047>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.956383, 40.127056, 33.336323> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.276051, 39.963490, 33.160088>,  <43.467850, 39.865349, 33.054344>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.276051, 39.963490, 33.160088>,  <42.956383, 40.127056, 33.336323>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.276051, 39.963490, 33.160088> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043531, 0.691670, -0.720901,
		0.599532, 0.595299, 0.534959,
		0.799166, -0.408915, -0.440592,
		43.515800, 39.840816, 33.027908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.372017, 40.683243, 33.116192>,  <42.956383, 40.127056, 33.336323>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.372017, 40.683243, 33.116192> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.451286, 40.365593, 32.886375>,  <43.498848, 40.175003, 32.748486>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.451286, 40.365593, 32.886375>,  <43.372017, 40.683243, 33.116192>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.451286, 40.365593, 32.886375> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069097, 0.573386, -0.816366,
		0.977728, 0.201482, 0.058759,
		0.198175, -0.794124, -0.574537,
		43.510738, 40.127357, 32.714016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.899185, 40.938076, 32.607075>,  <43.372017, 40.683243, 33.116192>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.899185, 40.938076, 32.607075> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.710632, 40.622616, 32.449177>,  <43.597500, 40.433338, 32.354439>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.710632, 40.622616, 32.449177>,  <43.899185, 40.938076, 32.607075>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.710632, 40.622616, 32.449177> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085550, 0.486371, -0.869554,
		0.877768, -0.376125, -0.296737,
		-0.471385, -0.788653, -0.394744,
		43.569218, 40.386021, 32.330753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.201740, 40.806496, 31.908186>,  <43.899185, 40.938076, 32.607075>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.201740, 40.806496, 31.908186> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.861401, 40.599056, 31.874451>,  <43.657196, 40.474594, 31.854210>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.861401, 40.599056, 31.874451>,  <44.201740, 40.806496, 31.908186>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.861401, 40.599056, 31.874451> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138279, 0.375886, -0.916291,
		0.506890, -0.767961, -0.391533,
		-0.850847, -0.518600, -0.084340,
		43.606148, 40.443478, 31.849148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.238655, 40.479187, 31.226168>,  <44.201740, 40.806496, 31.908186>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.238655, 40.479187, 31.226168> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.855801, 40.498760, 31.340363>,  <43.626087, 40.510506, 31.408880>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.855801, 40.498760, 31.340363>,  <44.238655, 40.479187, 31.226168>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.855801, 40.498760, 31.340363> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270833, 0.198285, -0.941983,
		-0.102703, -0.978922, -0.176532,
		-0.957132, 0.048934, 0.285489,
		43.568661, 40.513439, 31.426010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.855072, 40.073593, 30.825663>,  <44.238655, 40.479187, 31.226168>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.855072, 40.073593, 30.825663> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.590252, 40.325058, 30.988871>,  <43.431362, 40.475937, 31.086796>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.590252, 40.325058, 30.988871>,  <43.855072, 40.073593, 30.825663>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.590252, 40.325058, 30.988871> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327882, 0.246598, -0.911967,
		-0.673936, -0.737545, 0.042868,
		-0.662046, 0.628663, 0.408019,
		43.391640, 40.513657, 31.111277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.186077, 39.957062, 30.483326>,  <43.855072, 40.073593, 30.825663>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.186077, 39.957062, 30.483326> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.141434, 40.323296, 30.637857>,  <43.114647, 40.543037, 30.730577>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.141434, 40.323296, 30.637857>,  <43.186077, 39.957062, 30.483326>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.141434, 40.323296, 30.637857> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448793, 0.300416, -0.841627,
		-0.886639, -0.267316, 0.377378,
		-0.111610, 0.915583, 0.386330,
		43.107952, 40.597969, 30.753757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.440510, 40.141006, 30.463781>,  <43.186077, 39.957062, 30.483326>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.440510, 40.141006, 30.463781> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.624779, 40.494648, 30.495127>,  <42.735340, 40.706833, 30.513933>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.624779, 40.494648, 30.495127>,  <42.440510, 40.141006, 30.463781>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.624779, 40.494648, 30.495127> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448635, 0.308125, -0.838919,
		-0.765837, 0.351312, 0.538585,
		0.460674, 0.884103, 0.078362,
		42.762981, 40.759880, 30.518635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<41.693787, 37.737904, 41.222908> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.309658, 37.626366, 41.221066>,  <41.079182, 37.559441, 41.219959>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.309658, 37.626366, 41.221066>,  <41.693787, 37.737904, 41.222908>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.309658, 37.626366, 41.221066> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126767, -0.421736, -0.897813,
		0.248411, -0.862776, 0.440352,
		-0.960324, -0.278849, -0.004608,
		41.021561, 37.542709, 41.219685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.681290, 37.125149, 41.034756>,  <41.693787, 37.737904, 41.222908>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.681290, 37.125149, 41.034756> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.293987, 37.202114, 40.970943>,  <41.061604, 37.248291, 40.932655>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.293987, 37.202114, 40.970943>,  <41.681290, 37.125149, 41.034756>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.293987, 37.202114, 40.970943> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038491, -0.515873, -0.855800,
		-0.246962, -0.834778, 0.492093,
		-0.968261, 0.192409, -0.159532,
		41.003510, 37.259838, 40.923084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.140926, 36.528366, 40.906746>,  <41.681290, 37.125149, 41.034756>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.140926, 36.528366, 40.906746> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.032917, 36.856297, 40.704769>,  <40.968113, 37.053055, 40.583584>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.032917, 36.856297, 40.704769>,  <41.140926, 36.528366, 40.906746>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.032917, 36.856297, 40.704769> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104716, -0.496309, -0.861808,
		-0.957143, -0.285584, 0.048165,
		-0.270023, 0.819829, -0.504944,
		40.951908, 37.102245, 40.553288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.963367, 36.203018, 40.304428>,  <41.140926, 36.528366, 40.906746>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.963367, 36.203018, 40.304428> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.912319, 36.595074, 40.243698>,  <40.881691, 36.830307, 40.207260>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.912319, 36.595074, 40.243698>,  <40.963367, 36.203018, 40.304428>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.912319, 36.595074, 40.243698> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104122, -0.138988, -0.984805,
		-0.986342, -0.141491, -0.084316,
		-0.127622, 0.980134, -0.151822,
		40.874031, 36.889114, 40.198151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.345791, 36.275249, 39.723522>,  <40.963367, 36.203018, 40.304428>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.345791, 36.275249, 39.723522> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.619320, 36.566494, 39.742451>,  <40.783436, 36.741241, 39.753807>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.619320, 36.566494, 39.742451>,  <40.345791, 36.275249, 39.723522>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.619320, 36.566494, 39.742451> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149438, -0.076274, -0.985825,
		-0.714184, 0.681198, -0.160966,
		0.683819, 0.728115, 0.047324,
		40.824467, 36.784927, 39.756649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.296421, 36.664703, 39.091351>,  <40.345791, 36.275249, 39.723522>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.296421, 36.664703, 39.091351> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.653393, 36.773270, 39.235523>,  <40.867577, 36.838409, 39.322025>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.653393, 36.773270, 39.235523>,  <40.296421, 36.664703, 39.091351>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.653393, 36.773270, 39.235523> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378170, -0.014243, -0.925626,
		-0.246097, 0.962356, -0.115353,
		0.892426, 0.271417, 0.360429,
		40.921120, 36.854694, 39.343651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.552654, 37.057766, 38.578117>,  <40.296421, 36.664703, 39.091351>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.552654, 37.057766, 38.578117> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.880924, 36.956280, 38.782906>,  <41.077888, 36.895390, 38.905777>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.880924, 36.956280, 38.782906>,  <40.552654, 37.057766, 38.578117>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.880924, 36.956280, 38.782906> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476293, -0.191210, -0.858245,
		0.315643, 0.948192, -0.036079,
		0.820679, -0.253715, 0.511971,
		41.127129, 36.880165, 38.936497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.082977, 37.457836, 38.290649>,  <40.552654, 37.057766, 38.578117>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.082977, 37.457836, 38.290649> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.243938, 37.130280, 38.454350>,  <41.340515, 36.933746, 38.552570>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.243938, 37.130280, 38.454350>,  <41.082977, 37.457836, 38.290649>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.243938, 37.130280, 38.454350> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414757, -0.235450, -0.878943,
		0.816117, 0.523430, 0.244895,
		0.402404, -0.818892, 0.409251,
		41.364658, 36.884613, 38.577126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.630634, 37.385918, 37.916355>,  <41.082977, 37.457836, 38.290649>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.630634, 37.385918, 37.916355> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.593563, 37.019485, 38.072411>,  <41.571320, 36.799625, 38.166042>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.593563, 37.019485, 38.072411>,  <41.630634, 37.385918, 37.916355>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.593563, 37.019485, 38.072411> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214549, -0.400990, -0.890604,
		0.972306, 0.001163, 0.233707,
		-0.092678, -0.916082, 0.390135,
		41.565758, 36.744659, 38.189449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.089172, 37.080357, 37.396255>,  <41.630634, 37.385918, 37.916355>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.089172, 37.080357, 37.396255> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.910480, 36.803402, 37.622898>,  <41.803265, 36.637230, 37.758884>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.910480, 36.803402, 37.622898>,  <42.089172, 37.080357, 37.396255>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.910480, 36.803402, 37.622898> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077823, -0.660982, -0.746356,
		0.891279, -0.289322, 0.349162,
		-0.446727, -0.692384, 0.566604,
		41.776463, 36.595688, 37.792881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.576534, 36.367977, 37.393890>,  <42.089172, 37.080357, 37.396255>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.576534, 36.367977, 37.393890> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.197449, 36.272343, 37.478436>,  <41.969997, 36.214962, 37.529163>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.197449, 36.272343, 37.478436>,  <42.576534, 36.367977, 37.393890>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.197449, 36.272343, 37.478436> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013818, -0.630967, -0.775687,
		0.318814, -0.738052, 0.594674,
		-0.947717, -0.239083, 0.211360,
		41.913136, 36.200619, 37.541843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.568092, 35.617332, 37.433556>,  <42.576534, 36.367977, 37.393890>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.568092, 35.617332, 37.433556> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.188648, 35.730042, 37.375950>,  <41.960979, 35.797668, 37.341389>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.188648, 35.730042, 37.375950>,  <42.568092, 35.617332, 37.433556>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.188648, 35.730042, 37.375950> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019892, -0.401094, -0.915821,
		-0.315812, -0.871624, 0.374878,
		-0.948613, 0.281770, -0.144009,
		41.904064, 35.814575, 37.332748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.124950, 35.159534, 37.302593>,  <42.568092, 35.617332, 37.433556>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.124950, 35.159534, 37.302593> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.969227, 35.475319, 37.112782>,  <41.875793, 35.664791, 36.998894>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.969227, 35.475319, 37.112782>,  <42.124950, 35.159534, 37.302593>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.969227, 35.475319, 37.112782> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188266, -0.436101, -0.879984,
		-0.901660, -0.431928, 0.021151,
		-0.389314, 0.789464, -0.474532,
		41.852432, 35.712158, 36.970421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.630077, 34.567032, 37.496586>,  <42.124950, 35.159534, 37.302593>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.630077, 34.567032, 37.496586> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.476959, 34.464741, 37.141491>,  <41.385090, 34.403366, 36.928436>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.476959, 34.464741, 37.141491>,  <41.630077, 34.567032, 37.496586>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.476959, 34.464741, 37.141491> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.900016, -0.113555, 0.420804,
		-0.208418, 0.960056, -0.186692,
		-0.382796, -0.255729, -0.887733,
		41.362122, 34.388023, 36.875172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.189335, 35.088005, 37.378548>,  <41.630077, 34.567032, 37.496586>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.189335, 35.088005, 37.378548> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.089993, 34.746574, 37.195366>,  <41.030388, 34.541714, 37.085457>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.089993, 34.746574, 37.195366>,  <41.189335, 35.088005, 37.378548>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.089993, 34.746574, 37.195366> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.853903, -0.030296, 0.519550,
		-0.457352, 0.520081, -0.721350,
		-0.248354, -0.853579, -0.457954,
		41.015488, 34.490501, 37.057980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.518036, 35.197002, 37.218010>,  <41.189335, 35.088005, 37.378548>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.518036, 35.197002, 37.218010> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.583168, 34.802635, 37.233227>,  <40.622246, 34.566013, 37.242359>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.583168, 34.802635, 37.233227>,  <40.518036, 35.197002, 37.218010>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.583168, 34.802635, 37.233227> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.810816, -0.111741, 0.574536,
		-0.562196, -0.124399, -0.817595,
		0.162830, -0.985920, 0.038044,
		40.632019, 34.506859, 37.244640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.952164, 34.760361, 36.946915>,  <40.518036, 35.197002, 37.218010>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.952164, 34.760361, 36.946915> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.151512, 34.483414, 37.155624>,  <40.271122, 34.317245, 37.280849>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.151512, 34.483414, 37.155624>,  <39.952164, 34.760361, 36.946915>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.151512, 34.483414, 37.155624> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.852243, -0.280820, 0.441386,
		-0.159075, -0.664657, -0.730018,
		0.498374, -0.692366, 0.521778,
		40.301025, 34.275703, 37.312157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.445660, 34.312389, 37.019844>,  <39.952164, 34.760361, 36.946915>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.445660, 34.312389, 37.019844> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.724815, 34.161121, 37.263134>,  <39.892311, 34.070362, 37.409107>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.724815, 34.161121, 37.263134>,  <39.445660, 34.312389, 37.019844>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.724815, 34.161121, 37.263134> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.700720, -0.184911, 0.689057,
		-0.148109, -0.907083, -0.394035,
		0.697893, -0.378163, 0.608225,
		39.934181, 34.047672, 37.445602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.273540, 33.614136, 37.256905>,  <39.445660, 34.312389, 37.019844>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.273540, 33.614136, 37.256905> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.519344, 33.762138, 37.535606>,  <39.666828, 33.850941, 37.702827>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.519344, 33.762138, 37.535606>,  <39.273540, 33.614136, 37.256905>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.519344, 33.762138, 37.535606> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.685328, -0.187098, 0.703789,
		0.390770, -0.909993, 0.138604,
		0.614511, 0.370009, 0.696757,
		39.703697, 33.873142, 37.744633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.359516, 33.079754, 37.739124>,  <39.273540, 33.614136, 37.256905>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.359516, 33.079754, 37.739124> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.412487, 33.436398, 37.912331>,  <39.444267, 33.650383, 38.016254>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.412487, 33.436398, 37.912331>,  <39.359516, 33.079754, 37.739124>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.412487, 33.436398, 37.912331> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578556, -0.285194, 0.764158,
		0.804821, -0.351718, 0.478076,
		0.132424, 0.891605, 0.433018,
		39.452213, 33.703880, 38.042236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.394485, 32.895748, 38.409828>,  <39.359516, 33.079754, 37.739124>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.394485, 32.895748, 38.409828> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.344444, 33.291454, 38.440048>,  <39.314419, 33.528877, 38.458179>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.344444, 33.291454, 38.440048>,  <39.394485, 32.895748, 38.409828>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.344444, 33.291454, 38.440048> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483484, -0.127286, 0.866049,
		0.866368, 0.071815, 0.494216,
		-0.125102, 0.989263, 0.075555,
		39.306915, 33.588234, 38.462715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.577778, 33.065933, 39.121662>,  <39.394485, 32.895748, 38.409828>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.577778, 33.065933, 39.121662> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.385658, 33.386574, 38.979256>,  <39.270386, 33.578957, 38.893810>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.385658, 33.386574, 38.979256>,  <39.577778, 33.065933, 39.121662>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.385658, 33.386574, 38.979256> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494511, 0.087752, 0.864731,
		0.724409, 0.591386, 0.354253,
		-0.480303, 0.801600, -0.356015,
		39.241566, 33.627052, 38.872452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.579411, 33.576054, 39.660931>,  <39.577778, 33.065933, 39.121662>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.579411, 33.576054, 39.660931> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.278343, 33.634167, 39.404060>,  <39.097702, 33.669033, 39.249939>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.278343, 33.634167, 39.404060>,  <39.579411, 33.576054, 39.660931>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.278343, 33.634167, 39.404060> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610245, 0.212235, 0.763254,
		0.247178, 0.966359, -0.071086,
		-0.752665, 0.145280, -0.642175,
		39.052544, 33.677750, 39.211407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.377312, 34.235352, 39.842003>,  <39.579411, 33.576054, 39.660931>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.377312, 34.235352, 39.842003> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.062645, 34.058037, 39.670120>,  <38.873844, 33.951649, 39.566990>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.062645, 34.058037, 39.670120>,  <39.377312, 34.235352, 39.842003>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.062645, 34.058037, 39.670120> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557558, 0.211229, 0.802815,
		-0.265110, 0.871137, -0.413324,
		-0.786668, -0.443287, -0.429710,
		38.826645, 33.925053, 39.541206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.846912, 34.757843, 39.869068>,  <39.377312, 34.235352, 39.842003>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.846912, 34.757843, 39.869068> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.643738, 34.418278, 39.810623>,  <38.521835, 34.214539, 39.775558>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.643738, 34.418278, 39.810623>,  <38.846912, 34.757843, 39.869068>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.643738, 34.418278, 39.810623> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627750, 0.248646, 0.737635,
		-0.589860, 0.466389, -0.659202,
		-0.507933, -0.848915, -0.146109,
		38.491360, 34.163605, 39.766792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.164928, 34.964451, 39.902157>,  <38.846912, 34.757843, 39.869068>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.164928, 34.964451, 39.902157> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.162560, 34.568920, 39.961731>,  <38.161137, 34.331600, 39.997475>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.162560, 34.568920, 39.961731>,  <38.164928, 34.964451, 39.902157>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.162560, 34.568920, 39.961731> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.694001, 0.111295, 0.711319,
		-0.719949, -0.099149, -0.686908,
		-0.005923, -0.988829, 0.148936,
		38.160782, 34.272270, 40.006413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.487419, 34.711723, 39.830330>,  <38.164928, 34.964451, 39.902157>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.487419, 34.711723, 39.830330> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.686131, 34.439732, 40.046043>,  <37.805359, 34.276535, 40.175472>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.686131, 34.439732, 40.046043>,  <37.487419, 34.711723, 39.830330>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.686131, 34.439732, 40.046043> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.720749, 0.022898, 0.692817,
		-0.483453, -0.732869, -0.478723,
		0.496783, -0.679984, 0.539285,
		37.835167, 34.235737, 40.207829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.973358, 34.133152, 40.044277>,  <37.487419, 34.711723, 39.830330>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.973358, 34.133152, 40.044277> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.282368, 34.137592, 40.298233>,  <37.467773, 34.140255, 40.450607>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.282368, 34.137592, 40.298233>,  <36.973358, 34.133152, 40.044277>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.282368, 34.137592, 40.298233> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634595, 0.048680, 0.771310,
		-0.022347, -0.998753, 0.044649,
		0.772522, 0.011097, 0.634891,
		37.514126, 34.140923, 40.488701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.001865, 33.941689, 40.876114>,  <36.973358, 34.133152, 40.044277>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.001865, 33.941689, 40.876114> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.693600, 33.690247, 40.917950>,  <36.508640, 33.539383, 40.943050>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.693600, 33.690247, 40.917950>,  <37.001865, 33.941689, 40.876114>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.693600, 33.690247, 40.917950> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040492, -0.115484, -0.992484,
		0.635958, -0.769103, 0.063545,
		-0.770661, -0.628605, 0.104586,
		36.462402, 33.501667, 40.949326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.151417, 33.381340, 40.477993>,  <37.001865, 33.941689, 40.876114>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.151417, 33.381340, 40.477993> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.752735, 33.388668, 40.509621>,  <36.513527, 33.393063, 40.528599>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.752735, 33.388668, 40.509621>,  <37.151417, 33.381340, 40.477993>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.752735, 33.388668, 40.509621> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080165, -0.069840, -0.994332,
		-0.012687, -0.997390, 0.071077,
		-0.996701, 0.018313, 0.079069,
		36.453724, 33.394161, 40.533340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.779202, 32.729527, 40.081650>,  <37.151417, 33.381340, 40.477993>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.779202, 32.729527, 40.081650> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.510399, 33.022282, 40.126801>,  <36.349117, 33.197937, 40.153893>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.510399, 33.022282, 40.126801>,  <36.779202, 32.729527, 40.081650>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.510399, 33.022282, 40.126801> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206603, -0.038920, -0.977651,
		-0.711140, -0.680310, 0.177365,
		-0.672008, 0.731891, 0.112876,
		36.308796, 33.241848, 40.160664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.326664, 32.533291, 39.643684>,  <36.779202, 32.729527, 40.081650>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.326664, 32.533291, 39.643684> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.206738, 32.909111, 39.709839>,  <36.134781, 33.134605, 39.749531>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.206738, 32.909111, 39.709839>,  <36.326664, 32.533291, 39.643684>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.206738, 32.909111, 39.709839> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308051, 0.068726, -0.948884,
		-0.902893, -0.335435, 0.268825,
		-0.299814, 0.939553, 0.165383,
		36.116795, 33.190975, 39.759453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.655140, 32.611988, 39.413368>,  <36.326664, 32.533291, 39.643684>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.655140, 32.611988, 39.413368> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.782684, 32.990551, 39.392811>,  <35.859211, 33.217690, 39.380478>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.782684, 32.990551, 39.392811>,  <35.655140, 32.611988, 39.413368>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.782684, 32.990551, 39.392811> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413393, 0.090073, -0.906087,
		-0.852898, 0.310160, 0.419959,
		0.318859, 0.946408, -0.051395,
		35.878342, 33.274475, 39.377392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.107594, 32.975929, 39.238163>,  <35.655140, 32.611988, 39.413368>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.107594, 32.975929, 39.238163> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.419308, 33.204880, 39.136108>,  <35.606335, 33.342251, 39.074875>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.419308, 33.204880, 39.136108>,  <35.107594, 32.975929, 39.238163>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.419308, 33.204880, 39.136108> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430523, 0.193150, -0.881671,
		-0.455371, 0.796916, 0.396942,
		0.779287, 0.572379, -0.255135,
		35.653095, 33.376595, 39.059566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.804905, 33.493362, 38.828403>,  <35.107594, 32.975929, 39.238163>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.804905, 33.493362, 38.828403> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.193954, 33.525978, 38.741352>,  <35.427383, 33.545547, 38.689121>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.193954, 33.525978, 38.741352>,  <34.804905, 33.493362, 38.828403>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.193954, 33.525978, 38.741352> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232166, 0.299088, -0.925551,
		-0.010376, 0.950736, 0.309829,
		0.972621, 0.081535, -0.217625,
		35.485741, 33.550438, 38.676064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.897411, 34.145264, 38.514374>,  <34.804905, 33.493362, 38.828403>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.897411, 34.145264, 38.514374> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.209389, 33.937481, 38.374752>,  <35.396576, 33.812809, 38.290977>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.209389, 33.937481, 38.374752>,  <34.897411, 34.145264, 38.514374>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.209389, 33.937481, 38.374752> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277088, 0.213479, -0.936829,
		0.561162, 0.827398, 0.022566,
		0.779948, -0.519460, -0.349059,
		35.443375, 33.781643, 38.270035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.088249, 34.499763, 37.937595>,  <34.897411, 34.145264, 38.514374>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.088249, 34.499763, 37.937595> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.281261, 34.161064, 37.847984>,  <35.397068, 33.957844, 37.794220>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.281261, 34.161064, 37.847984>,  <35.088249, 34.499763, 37.937595>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.281261, 34.161064, 37.847984> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059835, 0.223306, -0.972910,
		0.873834, 0.482861, 0.057086,
		0.482528, -0.846746, -0.224025,
		35.426022, 33.907040, 37.780777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.743523, 34.744083, 37.532635>,  <35.088249, 34.499763, 37.937595>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.743523, 34.744083, 37.532635> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.625584, 34.370716, 37.450855>,  <35.554821, 34.146698, 37.401787>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.625584, 34.370716, 37.450855>,  <35.743523, 34.744083, 37.532635>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.625584, 34.370716, 37.450855> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052804, 0.229552, -0.971863,
		0.954085, -0.275753, -0.116970,
		-0.294845, -0.933416, -0.204452,
		35.537128, 34.090691, 37.389519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.008114, 34.575821, 36.956474>,  <35.743523, 34.744083, 37.532635>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.008114, 34.575821, 36.956474> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.728745, 34.291145, 36.986706>,  <35.561123, 34.120342, 37.004845>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.728745, 34.291145, 36.986706>,  <36.008114, 34.575821, 36.956474>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.728745, 34.291145, 36.986706> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230426, 0.123631, -0.965204,
		0.677579, -0.691533, -0.250338,
		-0.698420, -0.711687, 0.075578,
		35.519218, 34.077641, 37.009380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.213078, 33.969185, 36.583965>,  <36.008114, 34.575821, 36.956474>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.213078, 33.969185, 36.583965> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.813797, 33.959576, 36.605915>,  <35.574226, 33.953812, 36.619083>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.813797, 33.959576, 36.605915>,  <36.213078, 33.969185, 36.583965>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.813797, 33.959576, 36.605915> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053851, -0.041209, -0.997698,
		0.026230, -0.998862, 0.039841,
		-0.998204, -0.024024, 0.054871,
		35.514336, 33.952370, 36.622375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<36.942368, 33.198097, 44.619244> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.560917, 33.318344, 44.613144>,  <36.332047, 33.390491, 44.609486>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.560917, 33.318344, 44.613144>,  <36.942368, 33.198097, 44.619244>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.560917, 33.318344, 44.613144> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095008, -0.348684, -0.932412,
		-0.285612, -0.887722, 0.361075,
		-0.953624, 0.300613, -0.015247,
		36.274830, 33.408527, 44.608570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.695667, 32.602722, 44.202667>,  <36.942368, 33.198097, 44.619244>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.695667, 32.602722, 44.202667> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.416477, 32.889160, 44.205338>,  <36.248962, 33.061024, 44.206940>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.416477, 32.889160, 44.205338>,  <36.695667, 32.602722, 44.202667>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.416477, 32.889160, 44.205338> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214487, -0.200144, -0.956001,
		-0.683250, -0.668694, 0.293288,
		-0.697972, 0.716094, 0.006678,
		36.207085, 33.103989, 44.207340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.100674, 32.410931, 43.900673>,  <36.695667, 32.602722, 44.202667>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.100674, 32.410931, 43.900673> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.077957, 32.806915, 43.848896>,  <36.064327, 33.044506, 43.817829>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.077957, 32.806915, 43.848896>,  <36.100674, 32.410931, 43.900673>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.077957, 32.806915, 43.848896> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205734, -0.138472, -0.968762,
		-0.976959, -0.028384, 0.211532,
		-0.056789, 0.989959, -0.129442,
		36.060921, 33.103905, 43.810062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.610588, 32.493839, 43.488026>,  <36.100674, 32.410931, 43.900673>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.610588, 32.493839, 43.488026> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.799183, 32.844212, 43.447163>,  <35.912342, 33.054436, 43.422646>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.799183, 32.844212, 43.447163>,  <35.610588, 32.493839, 43.488026>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.799183, 32.844212, 43.447163> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077235, -0.074376, -0.994235,
		-0.878483, 0.476661, 0.032585,
		0.471489, 0.875935, -0.102153,
		35.940628, 33.106991, 43.416515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.151527, 32.845661, 43.024548>,  <35.610588, 32.493839, 43.488026>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.151527, 32.845661, 43.024548> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.520287, 32.999195, 43.003487>,  <35.741543, 33.091316, 42.990849>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.520287, 32.999195, 43.003487>,  <35.151527, 32.845661, 43.024548>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.520287, 32.999195, 43.003487> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061591, 0.011018, -0.998041,
		-0.382501, 0.923337, 0.033798,
		0.921900, 0.383833, -0.052655,
		35.796856, 33.114346, 42.987690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.136055, 33.454472, 42.594044>,  <35.151527, 32.845661, 43.024548>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.136055, 33.454472, 42.594044> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.513737, 33.323009, 42.585499>,  <35.740345, 33.244133, 42.580372>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.513737, 33.323009, 42.585499>,  <35.136055, 33.454472, 42.594044>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.513737, 33.323009, 42.585499> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041521, 0.183143, -0.982209,
		0.326723, 0.926522, 0.186572,
		0.944208, -0.328657, -0.021367,
		35.797001, 33.224411, 42.579090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.330929, 33.812973, 42.060333>,  <35.136055, 33.454472, 42.594044>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.330929, 33.812973, 42.060333> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.670956, 33.609798, 42.116028>,  <35.874973, 33.487896, 42.149445>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.670956, 33.609798, 42.116028>,  <35.330929, 33.812973, 42.060333>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.670956, 33.609798, 42.116028> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217043, 0.096979, -0.971333,
		0.479870, 0.855920, 0.192683,
		0.850069, -0.507934, 0.139234,
		35.925976, 33.457417, 42.157799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.920971, 34.219685, 41.827782>,  <35.330929, 33.812973, 42.060333>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.920971, 34.219685, 41.827782> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.026600, 33.835323, 41.794502>,  <36.089977, 33.604706, 41.774536>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.026600, 33.835323, 41.794502>,  <35.920971, 34.219685, 41.827782>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.026600, 33.835323, 41.794502> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122591, 0.119002, -0.985297,
		0.956679, 0.249995, 0.149224,
		0.264077, -0.960906, -0.083200,
		36.105824, 33.547050, 41.769543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.610374, 34.271122, 41.549873>,  <35.920971, 34.219685, 41.827782>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.610374, 34.271122, 41.549873> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.481712, 33.900394, 41.472374>,  <36.404514, 33.677956, 41.425873>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.481712, 33.900394, 41.472374>,  <36.610374, 34.271122, 41.549873>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.481712, 33.900394, 41.472374> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160446, 0.148314, -0.975838,
		0.933163, -0.344971, 0.100999,
		-0.321657, -0.926821, -0.193750,
		36.385216, 33.622349, 41.414249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.943733, 33.566029, 41.514050>,  <36.610374, 34.271122, 41.549873>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.943733, 33.566029, 41.514050> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.229347, 33.809517, 41.375713>,  <37.400715, 33.955608, 41.292709>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.229347, 33.809517, 41.375713>,  <36.943733, 33.566029, 41.514050>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.229347, 33.809517, 41.375713> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457501, -0.031773, 0.888641,
		0.529946, -0.792747, -0.301178,
		0.714037, 0.608722, -0.345845,
		37.443558, 33.992134, 41.271961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.431355, 33.511196, 41.967648>,  <36.943733, 33.566029, 41.514050>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.431355, 33.511196, 41.967648> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.543320, 33.842384, 41.773281>,  <37.610497, 34.041100, 41.656662>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.543320, 33.842384, 41.773281>,  <37.431355, 33.511196, 41.967648>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.543320, 33.842384, 41.773281> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352543, 0.382133, 0.854217,
		0.892953, -0.410409, -0.184933,
		0.279909, 0.827973, -0.485914,
		37.627293, 34.090775, 41.627506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.136505, 33.698730, 42.121777>,  <37.431355, 33.511196, 41.967648>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.136505, 33.698730, 42.121777> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.988678, 34.046379, 41.990295>,  <37.899982, 34.254967, 41.911407>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.988678, 34.046379, 41.990295>,  <38.136505, 33.698730, 42.121777>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.988678, 34.046379, 41.990295> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360495, 0.460149, 0.811361,
		0.856426, 0.181353, -0.483369,
		-0.369565, 0.869122, -0.328707,
		37.877808, 34.307117, 41.891682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.621571, 34.128826, 42.258778>,  <38.136505, 33.698730, 42.121777>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.621571, 34.128826, 42.258778> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.320065, 34.382576, 42.190186>,  <38.139160, 34.534824, 42.149033>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.320065, 34.382576, 42.190186>,  <38.621571, 34.128826, 42.258778>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.320065, 34.382576, 42.190186> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360704, 0.617530, 0.698963,
		0.549295, 0.465005, -0.694295,
		-0.753769, 0.634372, -0.171477,
		38.093933, 34.572887, 42.138741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.899502, 34.693810, 42.409496>,  <38.621571, 34.128826, 42.258778>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.899502, 34.693810, 42.409496> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.513573, 34.798565, 42.418793>,  <38.282017, 34.861420, 42.424370>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.513573, 34.798565, 42.418793>,  <38.899502, 34.693810, 42.409496>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.513573, 34.798565, 42.418793> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177413, 0.583256, 0.792677,
		0.194035, 0.768913, -0.609199,
		-0.964819, 0.261887, 0.023243,
		38.224129, 34.877132, 42.425766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.913353, 35.442291, 42.529953>,  <38.899502, 34.693810, 42.409496>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.913353, 35.442291, 42.529953> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.547844, 35.322689, 42.639946>,  <38.328537, 35.250927, 42.705940>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.547844, 35.322689, 42.639946>,  <38.913353, 35.442291, 42.529953>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.547844, 35.322689, 42.639946> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049236, 0.590405, 0.805604,
		-0.403230, 0.749678, -0.524774,
		-0.913773, -0.299006, 0.274980,
		38.273712, 35.232986, 42.722439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.464565, 36.055031, 42.668262>,  <38.913353, 35.442291, 42.529953>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.464565, 36.055031, 42.668262> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.317463, 35.739838, 42.865784>,  <38.229202, 35.550720, 42.984295>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.317463, 35.739838, 42.865784>,  <38.464565, 36.055031, 42.668262>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.317463, 35.739838, 42.865784> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048171, 0.546443, 0.836110,
		-0.928674, 0.283696, -0.238915,
		-0.367755, -0.787983, 0.493801,
		38.207138, 35.503445, 43.013924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.963482, 36.307842, 43.154408>,  <38.464565, 36.055031, 42.668262>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.963482, 36.307842, 43.154408> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.060471, 35.945507, 43.293354>,  <38.118664, 35.728104, 43.376720>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.060471, 35.945507, 43.293354>,  <37.963482, 36.307842, 43.154408>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.060471, 35.945507, 43.293354> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018736, 0.362353, 0.931852,
		-0.969978, -0.219439, 0.104832,
		0.242471, -0.905840, 0.347363,
		38.133213, 35.673756, 43.397564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.550514, 36.275593, 43.738102>,  <37.963482, 36.307842, 43.154408>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.550514, 36.275593, 43.738102> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.803776, 35.971474, 43.796146>,  <37.955734, 35.789001, 43.830975>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.803776, 35.971474, 43.796146>,  <37.550514, 36.275593, 43.738102>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.803776, 35.971474, 43.796146> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254912, 0.381842, 0.888379,
		-0.730844, -0.525491, 0.435575,
		0.633156, -0.760300, 0.145113,
		37.993721, 35.743385, 43.839680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.331055, 35.822422, 44.353413>,  <37.550514, 36.275593, 43.738102>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.331055, 35.822422, 44.353413> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.726269, 35.787266, 44.302719>,  <37.963398, 35.766171, 44.272305>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.726269, 35.787266, 44.302719>,  <37.331055, 35.822422, 44.353413>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.726269, 35.787266, 44.302719> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132646, 0.065072, 0.989025,
		-0.078682, -0.994002, 0.075952,
		0.988035, -0.087894, -0.126730,
		38.022678, 35.760899, 44.264702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.516861, 35.399952, 44.801048>,  <37.331055, 35.822422, 44.353413>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.516861, 35.399952, 44.801048> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.860157, 35.600132, 44.755482>,  <38.066135, 35.720242, 44.728142>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.860157, 35.600132, 44.755482>,  <37.516861, 35.399952, 44.801048>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.860157, 35.600132, 44.755482> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037361, 0.160442, 0.986338,
		0.511892, -0.850768, 0.119000,
		0.858237, 0.500453, -0.113915,
		38.117630, 35.750267, 44.721306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.916100, 35.111908, 45.274979>,  <37.516861, 35.399952, 44.801048>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.916100, 35.111908, 45.274979> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.163204, 35.410408, 45.175800>,  <38.311466, 35.589508, 45.116295>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.163204, 35.410408, 45.175800>,  <37.916100, 35.111908, 45.274979>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.163204, 35.410408, 45.175800> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282186, 0.083932, 0.955681,
		0.733990, -0.660350, -0.158733,
		0.617761, 0.746253, -0.247947,
		38.348534, 35.634285, 45.101418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.644161, 34.968681, 45.531078>,  <37.916100, 35.111908, 45.274979>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.644161, 34.968681, 45.531078> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.625385, 35.365852, 45.487453>,  <38.614120, 35.604156, 45.461281>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.625385, 35.365852, 45.487453>,  <38.644161, 34.968681, 45.531078>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.625385, 35.365852, 45.487453> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088615, 0.112887, 0.989649,
		0.994959, 0.036792, -0.093287,
		-0.046942, 0.992926, -0.109058,
		38.611301, 35.663731, 45.454735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.078800, 34.706367, 45.000301>,  <38.644161, 34.968681, 45.531078>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.078800, 34.706367, 45.000301> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.116768, 35.102959, 44.964600>,  <39.139549, 35.340912, 44.943176>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.116768, 35.102959, 44.964600>,  <39.078800, 34.706367, 45.000301>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.116768, 35.102959, 44.964600> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.920840, -0.121513, -0.370525,
		-0.378213, -0.047023, -0.924524,
		0.094918, 0.991475, -0.089259,
		39.145245, 35.400402, 44.937820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<33.851124, 39.883324, 44.705730> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.940121, 39.513103, 44.828278>,  <33.993519, 39.290974, 44.901806>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.940121, 39.513103, 44.828278>,  <33.851124, 39.883324, 44.705730>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.940121, 39.513103, 44.828278> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004410, -0.315196, -0.949016,
		0.974924, 0.209801, -0.074212,
		0.222495, -0.925546, 0.306367,
		34.006870, 39.235439, 44.920189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.534748, 39.743687, 44.464104>,  <33.851124, 39.883324, 44.705730>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.534748, 39.743687, 44.464104> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.337807, 39.399250, 44.514862>,  <34.219643, 39.192589, 44.545319>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.337807, 39.399250, 44.514862>,  <34.534748, 39.743687, 44.464104>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.337807, 39.399250, 44.514862> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284828, -0.297159, -0.911356,
		0.822473, -0.412566, 0.391571,
		-0.492353, -0.861096, 0.126895,
		34.190102, 39.140923, 44.552929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.936153, 39.248100, 44.235851>,  <34.534748, 39.743687, 44.464104>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.936153, 39.248100, 44.235851> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.597870, 39.034733, 44.229595>,  <34.394901, 38.906712, 44.225842>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.597870, 39.034733, 44.229595>,  <34.936153, 39.248100, 44.235851>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.597870, 39.034733, 44.229595> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272853, -0.407029, -0.871710,
		0.458621, -0.741479, 0.489772,
		-0.845706, -0.533420, -0.015643,
		34.344158, 38.874706, 44.224903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.147930, 38.613678, 43.856541>,  <34.936153, 39.248100, 44.235851>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.147930, 38.613678, 43.856541> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.748615, 38.599293, 43.838097>,  <34.509026, 38.590660, 43.827030>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.748615, 38.599293, 43.838097>,  <35.147930, 38.613678, 43.856541>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.748615, 38.599293, 43.838097> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058226, -0.538087, -0.840876,
		0.005432, -0.842122, 0.539260,
		-0.998289, -0.035967, -0.046110,
		34.449127, 38.588501, 43.824265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.980480, 37.867279, 43.570568>,  <35.147930, 38.613678, 43.856541>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.980480, 37.867279, 43.570568> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.667019, 38.108063, 43.509201>,  <34.478943, 38.252533, 43.472382>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.667019, 38.108063, 43.509201>,  <34.980480, 37.867279, 43.570568>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.667019, 38.108063, 43.509201> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180852, -0.457348, -0.870704,
		-0.594288, -0.654586, 0.467267,
		-0.783655, 0.601955, -0.153413,
		34.431923, 38.288651, 43.463177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.481541, 37.396870, 43.307140>,  <34.980480, 37.867279, 43.570568>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.481541, 37.396870, 43.307140> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.406017, 37.766018, 43.172878>,  <34.360703, 37.987507, 43.092323>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.406017, 37.766018, 43.172878>,  <34.481541, 37.396870, 43.307140>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.406017, 37.766018, 43.172878> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136459, -0.363140, -0.921688,
		-0.972486, -0.128222, 0.194499,
		-0.188811, 0.922870, -0.335651,
		34.349373, 38.042877, 43.072182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.124378, 37.240391, 42.783085>,  <34.481541, 37.396870, 43.307140>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.124378, 37.240391, 42.783085> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.166637, 37.628448, 42.695763>,  <34.191994, 37.861282, 42.643368>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.166637, 37.628448, 42.695763>,  <34.124378, 37.240391, 42.783085>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.166637, 37.628448, 42.695763> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097102, -0.208420, -0.973207,
		-0.989652, 0.124012, 0.072185,
		0.105645, 0.970145, -0.218305,
		34.198330, 37.919491, 42.630272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.648106, 37.420464, 42.200775>,  <34.124378, 37.240391, 42.783085>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.648106, 37.420464, 42.200775> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.917168, 37.716290, 42.191097>,  <34.078606, 37.893784, 42.185291>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.917168, 37.716290, 42.191097>,  <33.648106, 37.420464, 42.200775>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.917168, 37.716290, 42.191097> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053311, -0.081054, -0.995283,
		-0.738036, 0.668189, -0.093948,
		0.672652, 0.739563, -0.024199,
		34.118961, 37.938160, 42.183838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.318363, 37.999306, 41.807789>,  <33.648106, 37.420464, 42.200775>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.318363, 37.999306, 41.807789> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.709507, 38.076801, 41.776138>,  <33.944191, 38.123299, 41.757149>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.709507, 38.076801, 41.776138>,  <33.318363, 37.999306, 41.807789>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.709507, 38.076801, 41.776138> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090295, 0.049500, -0.994684,
		-0.188794, 0.979803, 0.065898,
		0.977857, 0.193740, -0.079126,
		34.002865, 38.134922, 41.752399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.440323, 38.485825, 41.361172>,  <33.318363, 37.999306, 41.807789>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.440323, 38.485825, 41.361172> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.804195, 38.320309, 41.347012>,  <34.022518, 38.221001, 41.338516>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.804195, 38.320309, 41.347012>,  <33.440323, 38.485825, 41.361172>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.804195, 38.320309, 41.347012> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021880, 0.132880, -0.990891,
		0.414726, 0.900622, 0.129932,
		0.909683, -0.413791, -0.035403,
		34.077099, 38.196171, 41.336391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.809032, 38.906097, 40.907162>,  <33.440323, 38.485825, 41.361172>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.809032, 38.906097, 40.907162> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.980694, 38.545483, 40.929276>,  <34.083691, 38.329113, 40.942543>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.980694, 38.545483, 40.929276>,  <33.809032, 38.906097, 40.907162>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.980694, 38.545483, 40.929276> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107927, -0.009589, -0.994113,
		0.896761, 0.432592, 0.093186,
		0.429152, -0.901539, 0.055287,
		34.109440, 38.275021, 40.945862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.382214, 38.951454, 40.461746>,  <33.809032, 38.906097, 40.907162>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.382214, 38.951454, 40.461746> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.317848, 38.559551, 40.509392>,  <34.279228, 38.324409, 40.537979>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.317848, 38.559551, 40.509392>,  <34.382214, 38.951454, 40.461746>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.317848, 38.559551, 40.509392> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177851, -0.147495, -0.972941,
		0.970812, -0.135373, 0.197984,
		-0.160912, -0.979755, 0.119114,
		34.269573, 38.265625, 40.545128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.950546, 38.772984, 40.021500>,  <34.382214, 38.951454, 40.461746>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.950546, 38.772984, 40.021500> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.718792, 38.456093, 40.098122>,  <34.579739, 38.265957, 40.144096>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.718792, 38.456093, 40.098122>,  <34.950546, 38.772984, 40.021500>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.718792, 38.456093, 40.098122> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214453, -0.374915, -0.901914,
		0.786338, -0.481472, 0.387114,
		-0.579381, -0.792226, 0.191557,
		34.544979, 38.218426, 40.155590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.368752, 38.251190, 39.695614>,  <34.950546, 38.772984, 40.021500>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.368752, 38.251190, 39.695614> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.987503, 38.131973, 39.716484>,  <34.758755, 38.060444, 39.729008>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.987503, 38.131973, 39.716484>,  <35.368752, 38.251190, 39.695614>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.987503, 38.131973, 39.716484> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042677, -0.303145, -0.951988,
		0.299552, -0.905137, 0.301655,
		-0.953125, -0.298044, 0.052179,
		34.701565, 38.042561, 39.732140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.655373, 38.209049, 40.411819>,  <35.368752, 38.251190, 39.695614>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.655373, 38.209049, 40.411819> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.009354, 38.344601, 40.284058>,  <36.221741, 38.425934, 40.207401>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.009354, 38.344601, 40.284058>,  <35.655373, 38.209049, 40.411819>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.009354, 38.344601, 40.284058> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014193, 0.705197, 0.708869,
		0.465469, -0.622781, 0.628874,
		0.884950, 0.338882, -0.319409,
		36.274837, 38.446266, 40.188236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.170929, 38.076656, 40.956722>,  <35.655373, 38.209049, 40.411819>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.170929, 38.076656, 40.956722> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.269157, 38.389217, 40.727253>,  <36.328094, 38.576756, 40.589569>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.269157, 38.389217, 40.727253>,  <36.170929, 38.076656, 40.956722>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.269157, 38.389217, 40.727253> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101439, 0.567833, 0.816869,
		0.964057, -0.258790, 0.060176,
		0.245568, 0.781405, -0.573676,
		36.342827, 38.623638, 40.555149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.686085, 38.350880, 41.188644>,  <36.170929, 38.076656, 40.956722>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.686085, 38.350880, 41.188644> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.589714, 38.668056, 40.964787>,  <36.531891, 38.858364, 40.830471>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.589714, 38.668056, 40.964787>,  <36.686085, 38.350880, 41.188644>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.589714, 38.668056, 40.964787> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210791, 0.605613, 0.767333,
		0.947377, 0.066900, -0.313051,
		-0.240922, 0.792942, -0.559642,
		36.517437, 38.905937, 40.796894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.146702, 38.897984, 41.381165>,  <36.686085, 38.350880, 41.188644>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.146702, 38.897984, 41.381165> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.839283, 39.087406, 41.209080>,  <36.654831, 39.201061, 41.105831>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.839283, 39.087406, 41.209080>,  <37.146702, 38.897984, 41.381165>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.839283, 39.087406, 41.209080> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018801, 0.688844, 0.724666,
		0.639516, 0.548852, -0.538313,
		-0.768548, 0.473556, -0.430208,
		36.608719, 39.229473, 41.080017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.371880, 39.592514, 41.255043>,  <37.146702, 38.897984, 41.381165>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.371880, 39.592514, 41.255043> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.974888, 39.627316, 41.289497>,  <36.736694, 39.648197, 41.310169>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.974888, 39.627316, 41.289497>,  <37.371880, 39.592514, 41.255043>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.974888, 39.627316, 41.289497> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122341, 0.678452, 0.724386,
		0.004589, 0.729474, -0.683993,
		-0.992477, 0.087005, 0.086131,
		36.677143, 39.653416, 41.315338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.372746, 40.230007, 41.384003>,  <37.371880, 39.592514, 41.255043>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.372746, 40.230007, 41.384003> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.012150, 40.099361, 41.497589>,  <36.795792, 40.020973, 41.565739>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.012150, 40.099361, 41.497589>,  <37.372746, 40.230007, 41.384003>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.012150, 40.099361, 41.497589> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001087, 0.657817, 0.753177,
		-0.432795, 0.678674, -0.593372,
		-0.901492, -0.326616, 0.283962,
		36.741703, 40.001377, 41.582779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.942593, 40.850742, 41.487148>,  <37.372746, 40.230007, 41.384003>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.942593, 40.850742, 41.487148> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.821896, 40.543022, 41.712406>,  <36.749477, 40.358391, 41.847561>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.821896, 40.543022, 41.712406>,  <36.942593, 40.850742, 41.487148>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.821896, 40.543022, 41.712406> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092902, 0.564138, 0.820437,
		-0.948852, 0.299878, -0.098754,
		-0.301742, -0.769300, 0.563143,
		36.731373, 40.312233, 41.881348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.496563, 41.194118, 41.898949>,  <36.942593, 40.850742, 41.487148>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.496563, 41.194118, 41.898949> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.579971, 40.845196, 42.075855>,  <36.630016, 40.635841, 42.181999>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.579971, 40.845196, 42.075855>,  <36.496563, 41.194118, 41.898949>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.579971, 40.845196, 42.075855> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106279, 0.469741, 0.876383,
		-0.972225, -0.135744, 0.190660,
		0.208525, -0.872305, 0.442268,
		36.642529, 40.583504, 42.208534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.164104, 41.277596, 42.468319>,  <36.496563, 41.194118, 41.898949>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.164104, 41.277596, 42.468319> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.397964, 40.965233, 42.556290>,  <36.538280, 40.777817, 42.609070>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.397964, 40.965233, 42.556290>,  <36.164104, 41.277596, 42.468319>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.397964, 40.965233, 42.556290> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124039, 0.353938, 0.927007,
		-0.801744, -0.514700, 0.303794,
		0.584655, -0.780905, 0.219925,
		36.573360, 40.730961, 42.622269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.036865, 41.218380, 43.182037>,  <36.164104, 41.277596, 42.468319>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.036865, 41.218380, 43.182037> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.373600, 41.012161, 43.118122>,  <36.575642, 40.888432, 43.079773>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.373600, 41.012161, 43.118122>,  <36.036865, 41.218380, 43.182037>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.373600, 41.012161, 43.118122> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329128, 0.255702, 0.909006,
		-0.427774, -0.817822, 0.384938,
		0.841834, -0.515543, -0.159785,
		36.626152, 40.857498, 43.070187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.096298, 40.646305, 43.732815>,  <36.036865, 41.218380, 43.182037>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.096298, 40.646305, 43.732815> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.448769, 40.752499, 43.576324>,  <36.660252, 40.816216, 43.482430>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.448769, 40.752499, 43.576324>,  <36.096298, 40.646305, 43.732815>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.448769, 40.752499, 43.576324> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331562, 0.242904, 0.911627,
		0.337052, -0.933014, 0.126015,
		0.881171, 0.265484, -0.391224,
		36.713120, 40.832142, 43.458958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.581863, 40.218025, 44.099861>,  <36.096298, 40.646305, 43.732815>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.581863, 40.218025, 44.099861> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.715225, 40.580784, 43.996811>,  <36.795242, 40.798439, 43.934982>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.715225, 40.580784, 43.996811>,  <36.581863, 40.218025, 44.099861>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.715225, 40.580784, 43.996811> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206661, 0.196314, 0.958516,
		0.919854, -0.372817, -0.121969,
		0.333407, 0.906900, -0.257627,
		36.815247, 40.852856, 43.919521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.433968, 40.292263, 44.371765>,  <36.581863, 40.218025, 44.099861>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.433968, 40.292263, 44.371765> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.218319, 40.629120, 44.367081>,  <37.088928, 40.831234, 44.364269>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.218319, 40.629120, 44.367081>,  <37.433968, 40.292263, 44.371765>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.218319, 40.629120, 44.367081> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222806, 0.156021, 0.962297,
		0.812221, 0.516187, -0.271749,
		-0.539124, 0.842145, -0.011714,
		37.056583, 40.881763, 44.363567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.637600, 40.657799, 44.967308>,  <37.433968, 40.292263, 44.371765>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.637600, 40.657799, 44.967308> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.303684, 40.857479, 44.874420>,  <37.103336, 40.977287, 44.818687>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.303684, 40.857479, 44.874420>,  <37.637600, 40.657799, 44.967308>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.303684, 40.857479, 44.874420> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173029, 0.162536, 0.971413,
		0.522674, 0.851106, -0.049308,
		-0.834789, 0.499200, -0.232220,
		37.053246, 41.007240, 44.804756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.250843, 40.835567, 45.226192>,  <37.637600, 40.657799, 44.967308>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.250843, 40.835567, 45.226192> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.554714, 40.675930, 45.431568>,  <38.737038, 40.580147, 45.554794>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.554714, 40.675930, 45.431568>,  <38.250843, 40.835567, 45.226192>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.554714, 40.675930, 45.431568> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409112, -0.320414, -0.854378,
		0.505486, 0.859105, -0.080139,
		0.759678, -0.399090, 0.513435,
		38.782619, 40.556202, 45.585598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.878666, 41.020378, 44.852173>,  <38.250843, 40.835567, 45.226192>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.878666, 41.020378, 44.852173> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.937431, 40.688698, 45.067894>,  <38.972691, 40.489689, 45.197327>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.937431, 40.688698, 45.067894>,  <38.878666, 41.020378, 44.852173>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.937431, 40.688698, 45.067894> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312409, -0.478410, -0.820686,
		0.938518, 0.289053, 0.188764,
		0.146916, -0.829200, 0.539299,
		38.981506, 40.439938, 45.229683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.408855, 40.764286, 44.465385>,  <38.878666, 41.020378, 44.852173>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.408855, 40.764286, 44.465385> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.302437, 40.455822, 44.696739>,  <39.238586, 40.270744, 44.835552>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.302437, 40.455822, 44.696739>,  <39.408855, 40.764286, 44.465385>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.302437, 40.455822, 44.696739> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344221, -0.636449, -0.690250,
		0.900406, 0.015451, 0.434777,
		-0.266048, -0.771164, 0.578380,
		39.222622, 40.224472, 44.870255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.999889, 40.373676, 44.490166>,  <39.408855, 40.764286, 44.465385>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.999889, 40.373676, 44.490166> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.709240, 40.113430, 44.578457>,  <39.534851, 39.957283, 44.631432>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.709240, 40.113430, 44.578457>,  <39.999889, 40.373676, 44.490166>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.709240, 40.113430, 44.578457> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439180, -0.686926, -0.579011,
		0.528339, -0.323782, 0.784872,
		-0.726622, -0.650614, 0.220731,
		39.491253, 39.918247, 44.644676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.371368, 39.780239, 44.723358>,  <39.999889, 40.373676, 44.490166>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.371368, 39.780239, 44.723358> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.010555, 39.655247, 44.604237>,  <39.794067, 39.580250, 44.532764>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.010555, 39.655247, 44.604237>,  <40.371368, 39.780239, 44.723358>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.010555, 39.655247, 44.604237> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429334, -0.577909, -0.694041,
		0.044774, -0.753906, 0.655455,
		-0.902035, -0.312484, -0.297802,
		39.739944, 39.561501, 44.514896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.494595, 39.130898, 44.528347>,  <40.371368, 39.780239, 44.723358>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.494595, 39.130898, 44.528347> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.140697, 39.207256, 44.358273>,  <39.928360, 39.253071, 44.256229>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.140697, 39.207256, 44.358273>,  <40.494595, 39.130898, 44.528347>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.140697, 39.207256, 44.358273> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278465, -0.515036, -0.810676,
		-0.373738, -0.835642, 0.402519,
		-0.884747, 0.190893, -0.425185,
		39.875275, 39.264523, 44.230717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.284187, 38.422565, 44.301941>,  <40.494595, 39.130898, 44.528347>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.284187, 38.422565, 44.301941> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.072010, 38.691769, 44.095764>,  <39.944702, 38.853291, 43.972057>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.072010, 38.691769, 44.095764>,  <40.284187, 38.422565, 44.301941>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.072010, 38.691769, 44.095764> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113059, -0.546442, -0.829830,
		-0.840145, -0.498457, 0.213769,
		-0.530447, 0.673010, -0.515446,
		39.912876, 38.893673, 43.941132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.662933, 38.118626, 44.020348>,  <40.284187, 38.422565, 44.301941>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.662933, 38.118626, 44.020348> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.771595, 38.424740, 43.786922>,  <39.836792, 38.608410, 43.646870>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.771595, 38.424740, 43.786922>,  <39.662933, 38.118626, 44.020348>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.771595, 38.424740, 43.786922> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093735, -0.624518, -0.775365,
		-0.957819, 0.155933, -0.241389,
		0.271656, 0.765286, -0.583558,
		39.853092, 38.654327, 43.611855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.423138, 37.919495, 43.416443>,  <39.662933, 38.118626, 44.020348>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.423138, 37.919495, 43.416443> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.671597, 38.214081, 43.309265>,  <39.820671, 38.390831, 43.244957>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.671597, 38.214081, 43.309265>,  <39.423138, 37.919495, 43.416443>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.671597, 38.214081, 43.309265> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277356, -0.526354, -0.803757,
		-0.732974, 0.424935, -0.531206,
		0.621146, 0.736466, -0.267946,
		39.857941, 38.435020, 43.228882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.345688, 38.021633, 42.650730>,  <39.423138, 37.919495, 43.416443>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.345688, 38.021633, 42.650730> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.706371, 38.180420, 42.719246>,  <39.922779, 38.275692, 42.760357>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.706371, 38.180420, 42.719246>,  <39.345688, 38.021633, 42.650730>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.706371, 38.180420, 42.719246> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348184, -0.431885, -0.832012,
		-0.256306, 0.809871, -0.527652,
		0.901707, 0.396970, 0.171289,
		39.976883, 38.299511, 42.770634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.581818, 38.235172, 41.932022>,  <39.345688, 38.021633, 42.650730>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.581818, 38.235172, 41.932022> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.905388, 38.224728, 42.166954>,  <40.099529, 38.218460, 42.307911>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.905388, 38.224728, 42.166954>,  <39.581818, 38.235172, 41.932022>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.905388, 38.224728, 42.166954> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529648, -0.401214, -0.747329,
		0.255159, 0.915612, -0.310722,
		0.808929, -0.026115, 0.587326,
		40.148067, 38.216892, 42.343151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.043552, 38.692402, 41.632153>,  <39.581818, 38.235172, 41.932022>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.043552, 38.692402, 41.632153> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.247467, 38.433170, 41.858467>,  <40.369816, 38.277634, 41.994255>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.247467, 38.433170, 41.858467>,  <40.043552, 38.692402, 41.632153>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.247467, 38.433170, 41.858467> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459736, -0.350659, -0.815893,
		0.727158, 0.676045, 0.119183,
		0.509788, -0.648076, 0.565787,
		40.400402, 38.238747, 42.028202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.710007, 38.653816, 41.438721>,  <40.043552, 38.692402, 41.632153>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.710007, 38.653816, 41.438721> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.660152, 38.301746, 41.621922>,  <40.630241, 38.090504, 41.731842>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.660152, 38.301746, 41.621922>,  <40.710007, 38.653816, 41.438721>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.660152, 38.301746, 41.621922> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503508, -0.453855, -0.735183,
		0.854954, 0.138980, 0.499738,
		-0.124633, -0.880170, 0.458003,
		40.622761, 38.037697, 41.759323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.339901, 38.386757, 41.327114>,  <40.710007, 38.653816, 41.438721>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.339901, 38.386757, 41.327114> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.099686, 38.086353, 41.436901>,  <40.955555, 37.906109, 41.502773>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.099686, 38.086353, 41.436901>,  <41.339901, 38.386757, 41.327114>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.099686, 38.086353, 41.436901> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387608, -0.573661, -0.721577,
		0.699366, -0.326949, 0.635604,
		-0.600540, -0.751011, 0.274471,
		40.919525, 37.861050, 41.519241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<31.427109, 36.773396, 40.638195> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.270388, 37.126896, 40.535839>,  <31.176355, 37.338997, 40.474426>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.270388, 37.126896, 40.535839>,  <31.427109, 36.773396, 40.638195>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.270388, 37.126896, 40.535839> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.771018, -0.467138, -0.432797,
		-0.502019, 0.027724, 0.864412,
		-0.391801, 0.883750, -0.255887,
		31.152847, 37.392021, 40.459072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.784073, 36.678749, 40.903660>,  <31.427109, 36.773396, 40.638195>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.784073, 36.678749, 40.903660> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.763716, 36.938438, 40.600105>,  <30.751501, 37.094254, 40.417973>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.763716, 36.938438, 40.600105>,  <30.784073, 36.678749, 40.903660>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.763716, 36.938438, 40.600105> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.751004, -0.525778, -0.399438,
		-0.658334, 0.549602, 0.514329,
		-0.050891, 0.649226, -0.758891,
		30.748449, 37.133205, 40.372437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.154915, 36.708622, 40.667961>,  <30.784073, 36.678749, 40.903660>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.154915, 36.708622, 40.667961> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.321453, 36.888912, 40.352112>,  <30.421377, 36.997086, 40.162601>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.321453, 36.888912, 40.352112>,  <30.154915, 36.708622, 40.667961>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.321453, 36.888912, 40.352112> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.782142, -0.265262, -0.563817,
		-0.463582, 0.852341, 0.242088,
		0.416348, 0.450723, -0.789622,
		30.446358, 37.024128, 40.115227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.604788, 36.924137, 40.284271>,  <30.154915, 36.708622, 40.667961>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.604788, 36.924137, 40.284271> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.906786, 36.967968, 40.025665>,  <30.087984, 36.994267, 39.870502>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.906786, 36.967968, 40.025665>,  <29.604788, 36.924137, 40.284271>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.906786, 36.967968, 40.025665> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628797, -0.158685, -0.761205,
		-0.186005, 0.981229, -0.050903,
		0.754994, 0.109581, -0.646510,
		30.133284, 37.000843, 39.831711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.414196, 37.226151, 39.655750>,  <29.604788, 36.924137, 40.284271>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.414196, 37.226151, 39.655750> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.750816, 37.056278, 39.522221>,  <29.952789, 36.954357, 39.442101>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.750816, 37.056278, 39.522221>,  <29.414196, 37.226151, 39.655750>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.750816, 37.056278, 39.522221> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483177, -0.315480, -0.816708,
		0.241522, 0.848599, -0.470687,
		0.841551, -0.424678, -0.333828,
		30.003281, 36.928875, 39.422073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.539345, 37.546345, 38.975063>,  <29.414196, 37.226151, 39.655750>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.539345, 37.546345, 38.975063> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.765364, 37.216389, 38.968376>,  <29.900974, 37.018414, 38.964363>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.765364, 37.216389, 38.968376>,  <29.539345, 37.546345, 38.975063>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.765364, 37.216389, 38.968376> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436687, -0.281816, -0.854333,
		0.700020, 0.490036, -0.519458,
		0.565045, -0.824891, -0.016716,
		29.934877, 36.968922, 38.963360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.834013, 37.550121, 38.346012>,  <29.539345, 37.546345, 38.975063>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.834013, 37.550121, 38.346012> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.833652, 37.173225, 38.479992>,  <29.833435, 36.947090, 38.560379>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.833652, 37.173225, 38.479992>,  <29.834013, 37.550121, 38.346012>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.833652, 37.173225, 38.479992> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384841, -0.308824, -0.869784,
		0.922982, -0.129687, -0.362333,
		-0.000902, -0.942236, 0.334948,
		29.833382, 36.890556, 38.580475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.263433, 37.118755, 37.829002>,  <29.834013, 37.550121, 38.346012>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.263433, 37.118755, 37.829002> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.071665, 36.823326, 38.018597>,  <29.956604, 36.646069, 38.132351>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.071665, 36.823326, 38.018597>,  <30.263433, 37.118755, 37.829002>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.071665, 36.823326, 38.018597> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219340, -0.422115, -0.879607,
		0.849732, -0.525667, 0.040372,
		-0.479423, -0.738575, 0.473984,
		29.927837, 36.601753, 38.160793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.586866, 36.410519, 37.559643>,  <30.263433, 37.118755, 37.829002>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.586866, 36.410519, 37.559643> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.238993, 36.279156, 37.707047>,  <30.030268, 36.200336, 37.795486>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.238993, 36.279156, 37.707047>,  <30.586866, 36.410519, 37.559643>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.238993, 36.279156, 37.707047> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160131, -0.518471, -0.839968,
		0.466912, -0.789516, 0.398318,
		-0.869684, -0.328409, 0.368506,
		29.978086, 36.180634, 37.817600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.564924, 35.717155, 37.458038>,  <30.586866, 36.410519, 37.559643>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.564924, 35.717155, 37.458038> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.183994, 35.825378, 37.514427>,  <29.955437, 35.890312, 37.548260>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.183994, 35.825378, 37.514427>,  <30.564924, 35.717155, 37.458038>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.183994, 35.825378, 37.514427> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251583, -0.435062, -0.864539,
		-0.172577, -0.858789, 0.482389,
		-0.952325, 0.270560, 0.140975,
		29.898296, 35.906548, 37.556721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.211929, 35.136772, 37.312317>,  <30.564924, 35.717155, 37.458038>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.211929, 35.136772, 37.312317> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.951628, 35.437721, 37.271416>,  <29.795446, 35.618290, 37.246876>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.951628, 35.437721, 37.271416>,  <30.211929, 35.136772, 37.312317>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.951628, 35.437721, 37.271416> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431984, -0.477611, -0.765034,
		-0.624427, -0.453678, 0.635820,
		-0.650754, 0.752372, -0.102252,
		29.756401, 35.663433, 37.240742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.587227, 34.822468, 37.188446>,  <30.211929, 35.136772, 37.312317>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.587227, 34.822468, 37.188446> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.505739, 35.194427, 37.065948>,  <29.456846, 35.417603, 36.992451>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.505739, 35.194427, 37.065948>,  <29.587227, 34.822468, 37.188446>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.505739, 35.194427, 37.065948> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526103, -0.367779, -0.766781,
		-0.825659, 0.004907, 0.564147,
		-0.203719, 0.929900, -0.306241,
		29.444624, 35.473396, 36.974075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.866068, 34.837093, 37.001537>,  <29.587227, 34.822468, 37.188446>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.866068, 34.837093, 37.001537> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.019081, 35.157604, 36.817528>,  <29.110889, 35.349911, 36.707123>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.019081, 35.157604, 36.817528>,  <28.866068, 34.837093, 37.001537>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.019081, 35.157604, 36.817528> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502989, -0.237046, -0.831151,
		-0.775030, 0.549329, 0.312357,
		0.382533, 0.801278, -0.460024,
		29.133841, 35.397987, 36.679520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.373093, 35.207344, 36.543640>,  <28.866068, 34.837093, 37.001537>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.373093, 35.207344, 36.543640> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.693127, 35.395008, 36.394104>,  <28.885147, 35.507607, 36.304382>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.693127, 35.395008, 36.394104>,  <28.373093, 35.207344, 36.543640>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.693127, 35.395008, 36.394104> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496700, 0.168659, -0.851377,
		-0.336378, 0.866861, 0.367972,
		0.800087, 0.469156, -0.373837,
		28.933153, 35.535755, 36.281952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.114897, 35.725647, 36.209976>,  <28.373093, 35.207344, 36.543640>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.114897, 35.725647, 36.209976> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.474501, 35.696033, 36.037323>,  <28.690262, 35.678265, 35.933731>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.474501, 35.696033, 36.037323>,  <28.114897, 35.725647, 36.209976>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.474501, 35.696033, 36.037323> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413641, 0.180133, -0.892442,
		0.143824, 0.980852, 0.131317,
		0.899008, -0.074037, -0.431628,
		28.744204, 35.673824, 35.907833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.261032, 36.379642, 35.838257>,  <28.114897, 35.725647, 36.209976>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.261032, 36.379642, 35.838257> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.469080, 36.077358, 35.679070>,  <28.593908, 35.895988, 35.583557>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.469080, 36.077358, 35.679070>,  <28.261032, 36.379642, 35.838257>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.469080, 36.077358, 35.679070> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250724, 0.310326, -0.916971,
		0.816465, 0.576712, -0.028070,
		0.520117, -0.755712, -0.397966,
		28.625114, 35.850643, 35.559681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.594404, 36.698917, 35.285156>,  <28.261032, 36.379642, 35.838257>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.594404, 36.698917, 35.285156> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.599216, 36.307346, 35.203617>,  <28.602104, 36.072403, 35.154694>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.599216, 36.307346, 35.203617>,  <28.594404, 36.698917, 35.285156>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.599216, 36.307346, 35.203617> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474525, 0.173857, -0.862902,
		0.880160, 0.107113, -0.462434,
		0.012031, -0.978928, -0.203850,
		28.602825, 36.013668, 35.142464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.884951, 36.655514, 34.611603>,  <28.594404, 36.698917, 35.285156>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.884951, 36.655514, 34.611603> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.705477, 36.304504, 34.679291>,  <28.597792, 36.093899, 34.719906>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.705477, 36.304504, 34.679291>,  <28.884951, 36.655514, 34.611603>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.705477, 36.304504, 34.679291> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372625, 0.011586, -0.927910,
		0.812301, -0.479397, -0.332185,
		-0.448686, -0.877522, 0.169224,
		28.570871, 36.041248, 34.730057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.148079, 36.155285, 34.144810>,  <28.884951, 36.655514, 34.611603>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.148079, 36.155285, 34.144810> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.805269, 35.986698, 34.263386>,  <28.599583, 35.885548, 34.334534>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.805269, 35.986698, 34.263386>,  <29.148079, 36.155285, 34.144810>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.805269, 35.986698, 34.263386> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261630, -0.139703, -0.955004,
		0.443913, -0.896020, 0.009461,
		-0.857025, -0.421463, 0.296442,
		28.548162, 35.860260, 34.352318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.826506, 36.259991, 33.930603>,  <29.148079, 36.155285, 34.144810>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.826506, 36.259991, 33.930603> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.187874, 36.320972, 33.770309>,  <30.404696, 36.357563, 33.674133>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.187874, 36.320972, 33.770309>,  <29.826506, 36.259991, 33.930603>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.187874, 36.320972, 33.770309> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278182, 0.502796, 0.818420,
		0.326259, -0.850855, 0.411826,
		0.903421, 0.152454, -0.400734,
		30.458900, 36.366707, 33.650089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.280571, 36.056915, 34.447823>,  <29.826506, 36.259991, 33.930603>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.280571, 36.056915, 34.447823> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.492371, 36.296669, 34.207699>,  <30.619452, 36.440521, 34.063625>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.492371, 36.296669, 34.207699>,  <30.280571, 36.056915, 34.447823>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.492371, 36.296669, 34.207699> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265851, 0.554755, 0.788397,
		0.805576, -0.577048, 0.134396,
		0.529500, 0.599385, -0.600306,
		30.651220, 36.476486, 34.027607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.929682, 36.228458, 34.835304>,  <30.280571, 36.056915, 34.447823>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.929682, 36.228458, 34.835304> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.892319, 36.505726, 34.549423>,  <30.869902, 36.672085, 34.377895>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.892319, 36.505726, 34.549423>,  <30.929682, 36.228458, 34.835304>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.892319, 36.505726, 34.549423> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276500, 0.707663, 0.650201,
		0.956464, -0.136881, -0.257761,
		-0.093408, 0.693164, -0.714702,
		30.864296, 36.713676, 34.335014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.500475, 36.665928, 34.863968>,  <30.929682, 36.228458, 34.835304>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.500475, 36.665928, 34.863968> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.221588, 36.875210, 34.667950>,  <31.054256, 37.000778, 34.550339>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.221588, 36.875210, 34.667950>,  <31.500475, 36.665928, 34.863968>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.221588, 36.875210, 34.667950> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186756, 0.792565, 0.580486,
		0.692107, 0.313205, -0.650301,
		-0.697216, 0.523206, -0.490046,
		31.012423, 37.032173, 34.520935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.772415, 37.269226, 34.758354>,  <31.500475, 36.665928, 34.863968>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.772415, 37.269226, 34.758354> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.382648, 37.355659, 34.733643>,  <31.148788, 37.407520, 34.718815>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.382648, 37.355659, 34.733643>,  <31.772415, 37.269226, 34.758354>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.382648, 37.355659, 34.733643> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121798, 0.738763, 0.662869,
		0.188875, 0.638387, -0.746182,
		-0.974419, 0.216083, -0.061779,
		31.090322, 37.420483, 34.715107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.771021, 37.879932, 35.040279>,  <31.772415, 37.269226, 34.758354>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.771021, 37.879932, 35.040279> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.374136, 37.831699, 35.027782>,  <31.136005, 37.802761, 35.020287>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.374136, 37.831699, 35.027782>,  <31.771021, 37.879932, 35.040279>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.374136, 37.831699, 35.027782> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099364, 0.614974, 0.782262,
		-0.075113, 0.779274, -0.622166,
		-0.992212, -0.120579, -0.031239,
		31.076473, 37.795525, 35.018410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.406103, 38.539028, 34.991508>,  <31.771021, 37.879932, 35.040279>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.406103, 38.539028, 34.991508> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.138140, 38.298046, 35.165070>,  <30.977362, 38.153458, 35.269207>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.138140, 38.298046, 35.165070>,  <31.406103, 38.539028, 34.991508>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.138140, 38.298046, 35.165070> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126529, 0.668512, 0.732859,
		-0.731584, 0.436046, -0.524069,
		-0.669906, -0.602458, 0.433900,
		30.937168, 38.117310, 35.295238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.868036, 39.069733, 35.081261>,  <31.406103, 38.539028, 34.991508>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.868036, 39.069733, 35.081261> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.814911, 38.747070, 35.311619>,  <30.783035, 38.553471, 35.449833>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.814911, 38.747070, 35.311619>,  <30.868036, 39.069733, 35.081261>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.814911, 38.747070, 35.311619> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276522, 0.588132, 0.760024,
		-0.951786, -0.058308, -0.301171,
		-0.132812, -0.806660, 0.575899,
		30.775066, 38.505074, 35.484390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.271515, 39.054390, 35.356930>,  <30.868036, 39.069733, 35.081261>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.271515, 39.054390, 35.356930> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.489124, 38.843510, 35.618034>,  <30.619690, 38.716980, 35.774696>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.489124, 38.843510, 35.618034>,  <30.271515, 39.054390, 35.356930>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.489124, 38.843510, 35.618034> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380551, 0.538314, 0.751930,
		-0.747808, -0.657477, 0.092229,
		0.544025, -0.527202, 0.652760,
		30.652332, 38.685349, 35.813862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.887815, 39.159672, 35.896515>,  <30.271515, 39.054390, 35.356930>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.887815, 39.159672, 35.896515> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.204861, 38.993591, 36.075123>,  <30.395088, 38.893944, 36.182289>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.204861, 38.993591, 36.075123>,  <29.887815, 39.159672, 35.896515>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.204861, 38.993591, 36.075123> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182604, 0.537072, 0.823535,
		-0.581742, -0.734279, 0.349873,
		0.792611, -0.415197, 0.446520,
		30.442644, 38.869034, 36.209080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.655170, 39.044132, 36.553371>,  <29.887815, 39.159672, 35.896515>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.655170, 39.044132, 36.553371> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.054726, 39.061508, 36.560658>,  <30.294458, 39.071934, 36.565029>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.054726, 39.061508, 36.560658>,  <29.655170, 39.044132, 36.553371>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.054726, 39.061508, 36.560658> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041553, 0.630369, 0.775183,
		0.022194, -0.775079, 0.631474,
		0.998890, 0.043444, 0.018217,
		30.354393, 39.074543, 36.566124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.743332, 39.147858, 37.267296>,  <29.655170, 39.044132, 36.553371>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.743332, 39.147858, 37.267296> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.109228, 39.212685, 37.119247>,  <30.328766, 39.251579, 37.030418>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.109228, 39.212685, 37.119247>,  <29.743332, 39.147858, 37.267296>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.109228, 39.212685, 37.119247> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274847, 0.421851, 0.864003,
		0.296159, -0.892063, 0.341340,
		0.914740, 0.162065, -0.370116,
		30.383650, 39.261303, 37.008213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.311117, 38.766258, 37.633167>,  <29.743332, 39.147858, 37.267296>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.311117, 38.766258, 37.633167> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.449911, 39.102345, 37.466488>,  <30.533188, 39.303997, 37.366482>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.449911, 39.102345, 37.466488>,  <30.311117, 38.766258, 37.633167>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.449911, 39.102345, 37.466488> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345853, 0.298352, 0.889591,
		0.871772, -0.452789, -0.187069,
		0.346985, 0.840219, -0.416694,
		30.554007, 39.354408, 37.341480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.046053, 38.832939, 37.825619>,  <30.311117, 38.766258, 37.633167>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.046053, 38.832939, 37.825619> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.888861, 39.192417, 37.747738>,  <30.794544, 39.408104, 37.701008>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.888861, 39.192417, 37.747738>,  <31.046053, 38.832939, 37.825619>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.888861, 39.192417, 37.747738> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431076, 0.367080, 0.824273,
		0.812242, 0.239994, -0.531663,
		-0.392983, 0.898696, -0.194702,
		30.770966, 39.462025, 37.689327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.457907, 39.301022, 38.113861>,  <31.046053, 38.832939, 37.825619>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.457907, 39.301022, 38.113861> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.143583, 39.539833, 38.049282>,  <30.954990, 39.683121, 38.010536>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.143583, 39.539833, 38.049282>,  <31.457907, 39.301022, 38.113861>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.143583, 39.539833, 38.049282> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206967, 0.499834, 0.841030,
		0.582815, 0.627473, -0.516338,
		-0.785806, 0.597030, -0.161444,
		30.907841, 39.718941, 38.000851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.689035, 39.943241, 38.004379>,  <31.457907, 39.301022, 38.113861>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.689035, 39.943241, 38.004379> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.314236, 40.015675, 38.123875>,  <31.089355, 40.059135, 38.195572>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.314236, 40.015675, 38.123875>,  <31.689035, 39.943241, 38.004379>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.314236, 40.015675, 38.123875> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347435, 0.393996, 0.850915,
		0.036385, 0.901097, -0.432088,
		-0.936998, 0.181083, 0.298737,
		31.033136, 40.070000, 38.213497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.690161, 40.587063, 38.318913>,  <31.689035, 39.943241, 38.004379>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.690161, 40.587063, 38.318913> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.340504, 40.438129, 38.443645>,  <31.130709, 40.348770, 38.518486>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.340504, 40.438129, 38.443645>,  <31.690161, 40.587063, 38.318913>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.340504, 40.438129, 38.443645> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170838, 0.365296, 0.915081,
		-0.454627, 0.853186, -0.255712,
		-0.874145, -0.372335, 0.311830,
		31.078260, 40.326427, 38.537193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.415573, 41.102859, 38.777153>,  <31.690161, 40.587063, 38.318913>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.415573, 41.102859, 38.777153> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.201578, 40.778431, 38.871761>,  <31.073181, 40.583775, 38.928528>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.201578, 40.778431, 38.871761>,  <31.415573, 41.102859, 38.777153>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.201578, 40.778431, 38.871761> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082935, 0.228187, 0.970079,
		-0.840778, 0.538598, -0.054811,
		-0.534989, -0.811076, 0.236523,
		31.041080, 40.535107, 38.942719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.928827, 41.299366, 39.337181>,  <31.415573, 41.102859, 38.777153>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.928827, 41.299366, 39.337181> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.925030, 40.899712, 39.353352>,  <30.922752, 40.659920, 39.363056>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.925030, 40.899712, 39.353352>,  <30.928827, 41.299366, 39.337181>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.925030, 40.899712, 39.353352> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015280, 0.040281, 0.999072,
		-0.999838, 0.010101, 0.014885,
		-0.009492, -0.999137, 0.040429,
		30.922182, 40.599972, 39.365479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.423910, 41.081470, 39.756676>,  <30.928827, 41.299366, 39.337181>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.423910, 41.081470, 39.756676> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.706154, 40.798126, 39.764088>,  <30.875500, 40.628120, 39.768536>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.706154, 40.798126, 39.764088>,  <30.423910, 41.081470, 39.756676>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.706154, 40.798126, 39.764088> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072692, 0.098373, 0.992491,
		-0.704863, -0.698964, 0.120905,
		0.705609, -0.708359, 0.018531,
		30.917837, 40.585617, 39.769646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.309145, 40.822979, 40.424717>,  <30.423910, 41.081470, 39.756676>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.309145, 40.822979, 40.424717> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.643387, 40.631855, 40.316299>,  <30.843933, 40.517181, 40.251251>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.643387, 40.631855, 40.316299>,  <30.309145, 40.822979, 40.424717>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.643387, 40.631855, 40.316299> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236227, -0.132901, 0.962566,
		-0.495943, -0.868353, 0.001818,
		0.835606, -0.477807, -0.271040,
		30.894070, 40.488514, 40.234989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.324049, 40.138515, 40.668388>,  <30.309145, 40.822979, 40.424717>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.324049, 40.138515, 40.668388> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.695868, 40.280750, 40.629395>,  <30.918959, 40.366093, 40.605999>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.695868, 40.280750, 40.629395>,  <30.324049, 40.138515, 40.668388>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.695868, 40.280750, 40.629395> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125977, -0.057808, 0.990347,
		0.346521, -0.932853, -0.098531,
		0.929544, 0.355589, -0.097486,
		30.974731, 40.387428, 40.600147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.688673, 39.785908, 41.178947>,  <30.324049, 40.138515, 40.668388>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.688673, 39.785908, 41.178947> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.956890, 40.064991, 41.078094>,  <31.117821, 40.232441, 41.017582>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.956890, 40.064991, 41.078094>,  <30.688673, 39.785908, 41.178947>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.956890, 40.064991, 41.078094> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441984, -0.102745, 0.891119,
		0.595837, -0.708974, -0.377272,
		0.670543, 0.697710, -0.252135,
		31.158052, 40.274303, 41.002453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<39.714489, 35.888069, 46.117416> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.346413, 36.040131, 46.154797>,  <39.125568, 36.131367, 46.177227>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.346413, 36.040131, 46.154797>,  <39.714489, 35.888069, 46.117416>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.346413, 36.040131, 46.154797> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283735, 0.483197, 0.828261,
		0.269708, 0.788674, -0.552495,
		-0.920192, 0.380150, 0.093452,
		39.070354, 36.154175, 46.182831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.749317, 36.644203, 46.339809>,  <39.714489, 35.888069, 46.117416>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.749317, 36.644203, 46.339809> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.377106, 36.544662, 46.447289>,  <39.153778, 36.484940, 46.511776>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.377106, 36.544662, 46.447289>,  <39.749317, 36.644203, 46.339809>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.377106, 36.544662, 46.447289> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150027, 0.410278, 0.899535,
		-0.334088, 0.877352, -0.344440,
		-0.930525, -0.248849, 0.268696,
		39.097950, 36.470009, 46.527897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.357494, 37.269512, 46.562870>,  <39.749317, 36.644203, 46.339809>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.357494, 37.269512, 46.562870> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.170990, 36.960869, 46.735943>,  <39.059086, 36.775681, 46.839787>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.170990, 36.960869, 46.735943>,  <39.357494, 37.269512, 46.562870>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.170990, 36.960869, 46.735943> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016186, 0.496458, 0.867910,
		-0.884497, 0.397673, -0.243970,
		-0.466265, -0.771612, 0.432679,
		39.031109, 36.729385, 46.865746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.815536, 37.580708, 47.019073>,  <39.357494, 37.269512, 46.562870>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.815536, 37.580708, 47.019073> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.805439, 37.217182, 47.185650>,  <38.799381, 36.999065, 47.285595>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.805439, 37.217182, 47.185650>,  <38.815536, 37.580708, 47.019073>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.805439, 37.217182, 47.185650> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229587, 0.410709, 0.882388,
		-0.972961, -0.073332, -0.219021,
		-0.025247, -0.908813, 0.416439,
		38.797867, 36.944538, 47.310581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.198132, 37.517521, 47.464470>,  <38.815536, 37.580708, 47.019073>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.198132, 37.517521, 47.464470> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.480427, 37.278263, 47.616344>,  <38.649803, 37.134708, 47.707470>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.480427, 37.278263, 47.616344>,  <38.198132, 37.517521, 47.464470>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.480427, 37.278263, 47.616344> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131831, 0.415690, 0.899901,
		-0.696101, -0.685147, 0.214514,
		0.705736, -0.598142, 0.379686,
		38.692146, 37.098820, 47.730251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.966534, 37.312305, 48.093067>,  <38.198132, 37.517521, 47.464470>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.966534, 37.312305, 48.093067> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.342983, 37.192478, 48.155724>,  <38.568855, 37.120583, 48.193317>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.342983, 37.192478, 48.155724>,  <37.966534, 37.312305, 48.093067>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.342983, 37.192478, 48.155724> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032985, 0.379777, 0.924490,
		-0.336441, -0.875229, 0.347537,
		0.941126, -0.299573, 0.156642,
		38.625320, 37.102608, 48.202717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.020569, 37.014954, 48.734844>,  <37.966534, 37.312305, 48.093067>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.020569, 37.014954, 48.734844> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.395836, 37.139385, 48.674091>,  <38.620995, 37.214046, 48.637638>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.395836, 37.139385, 48.674091>,  <38.020569, 37.014954, 48.734844>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.395836, 37.139385, 48.674091> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042454, 0.332050, 0.942306,
		0.343575, -0.890487, 0.298310,
		0.938165, 0.311089, -0.151889,
		38.677288, 37.232708, 48.628525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.336540, 36.733292, 49.325462>,  <38.020569, 37.014954, 48.734844>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.336540, 36.733292, 49.325462> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.563644, 37.030487, 49.183697>,  <38.699905, 37.208805, 49.098637>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.563644, 37.030487, 49.183697>,  <38.336540, 36.733292, 49.325462>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.563644, 37.030487, 49.183697> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181206, 0.307176, 0.934241,
		0.803003, -0.594646, 0.039768,
		0.567759, 0.742993, -0.354417,
		38.733971, 37.253384, 49.077374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.809673, 36.904018, 49.831768>,  <38.336540, 36.733292, 49.325462>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.809673, 36.904018, 49.831768> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.821884, 37.240192, 49.615345>,  <38.829212, 37.441898, 49.485493>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.821884, 37.240192, 49.615345>,  <38.809673, 36.904018, 49.831768>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.821884, 37.240192, 49.615345> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082578, 0.537334, 0.839317,
		0.996117, -0.070300, -0.052998,
		0.030526, 0.840434, -0.541053,
		38.831043, 37.492321, 49.453030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.319954, 37.246136, 50.184788>,  <38.809673, 36.904018, 49.831768>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.319954, 37.246136, 50.184788> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.107689, 37.511978, 49.974380>,  <38.980331, 37.671482, 49.848137>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.107689, 37.511978, 49.974380>,  <39.319954, 37.246136, 50.184788>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.107689, 37.511978, 49.974380> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000773, 0.620991, 0.783817,
		0.847584, 0.415535, -0.330050,
		-0.530661, 0.664606, -0.526021,
		38.948490, 37.711361, 49.816574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.694096, 37.891815, 50.339333>,  <39.319954, 37.246136, 50.184788>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.694096, 37.891815, 50.339333> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.343903, 38.012035, 50.187969>,  <39.133785, 38.084167, 50.097149>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.343903, 38.012035, 50.187969>,  <39.694096, 37.891815, 50.339333>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.343903, 38.012035, 50.187969> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113243, 0.633663, 0.765275,
		0.469791, 0.712839, -0.520727,
		-0.875484, 0.300551, -0.378413,
		39.081257, 38.102200, 50.074444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.657078, 38.605453, 50.408741>,  <39.694096, 37.891815, 50.339333>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.657078, 38.605453, 50.408741> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.280071, 38.474274, 50.383076>,  <39.053867, 38.395565, 50.367676>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.280071, 38.474274, 50.383076>,  <39.657078, 38.605453, 50.408741>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.280071, 38.474274, 50.383076> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253329, 0.576001, 0.777205,
		-0.217924, 0.748782, -0.625967,
		-0.942514, -0.327947, -0.064163,
		38.997318, 38.375889, 50.363827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.206081, 39.186100, 50.373417>,  <39.657078, 38.605453, 50.408741>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.206081, 39.186100, 50.373417> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.975334, 38.897079, 50.525803>,  <38.836887, 38.723667, 50.617233>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.975334, 38.897079, 50.525803>,  <39.206081, 39.186100, 50.373417>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.975334, 38.897079, 50.525803> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106914, 0.529171, 0.841753,
		-0.809810, 0.444850, -0.382513,
		-0.576868, -0.722556, 0.380968,
		38.802273, 38.680313, 50.640095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.492027, 39.501450, 50.569592>,  <39.206081, 39.186100, 50.373417>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.492027, 39.501450, 50.569592> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.604748, 39.178112, 50.776348>,  <38.672379, 38.984112, 50.900402>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.604748, 39.178112, 50.776348>,  <38.492027, 39.501450, 50.569592>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.604748, 39.178112, 50.776348> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186063, 0.482456, 0.855930,
		-0.941259, -0.337376, -0.014445,
		0.281801, -0.808340, 0.516889,
		38.689289, 38.935612, 50.931416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.688984, 39.789963, 51.314106>,  <38.492027, 39.501450, 50.569592>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.688984, 39.789963, 51.314106> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.772297, 40.181187, 51.312782>,  <38.822285, 40.415920, 51.311989>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.772297, 40.181187, 51.312782>,  <38.688984, 39.789963, 51.314106>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.772297, 40.181187, 51.312782> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247118, 0.049346, -0.967728,
		-0.946336, 0.202376, 0.251975,
		0.208279, 0.978064, -0.003312,
		38.834782, 40.474606, 51.311790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.156136, 40.138206, 51.001015>,  <38.688984, 39.789963, 51.314106>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.156136, 40.138206, 51.001015> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.440643, 40.418423, 50.977898>,  <38.611347, 40.586552, 50.964027>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.440643, 40.418423, 50.977898>,  <38.156136, 40.138206, 51.001015>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.440643, 40.418423, 50.977898> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177677, 0.099632, -0.979032,
		-0.680095, 0.706622, 0.195335,
		0.711267, 0.700542, -0.057792,
		38.654022, 40.628586, 50.960560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.885841, 40.606892, 50.618195>,  <38.156136, 40.138206, 51.001015>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.885841, 40.606892, 50.618195> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.271244, 40.709972, 50.589203>,  <38.502483, 40.771820, 50.571808>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.271244, 40.709972, 50.589203>,  <37.885841, 40.606892, 50.618195>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.271244, 40.709972, 50.589203> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134297, 0.231093, -0.963618,
		-0.231573, 0.938183, 0.257267,
		0.963503, 0.257698, -0.072480,
		38.560295, 40.787281, 50.567459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.913582, 41.268219, 50.361553>,  <37.885841, 40.606892, 50.618195>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.913582, 41.268219, 50.361553> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.263664, 41.097206, 50.271015>,  <38.473713, 40.994598, 50.216694>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.263664, 41.097206, 50.271015>,  <37.913582, 41.268219, 50.361553>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.263664, 41.097206, 50.271015> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114138, 0.272182, -0.955452,
		0.470093, 0.862052, 0.189417,
		0.875205, -0.427532, -0.226344,
		38.526226, 40.968948, 50.203114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.141289, 41.710579, 49.916016>,  <37.913582, 41.268219, 50.361553>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.141289, 41.710579, 49.916016> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.380367, 41.405323, 49.817738>,  <38.523815, 41.222168, 49.758770>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.380367, 41.405323, 49.817738>,  <38.141289, 41.710579, 49.916016>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.380367, 41.405323, 49.817738> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129386, 0.210628, -0.968966,
		0.791211, 0.610941, 0.027152,
		0.597700, -0.763143, -0.245698,
		38.559677, 41.176380, 49.744026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.580593, 42.008400, 49.437172>,  <38.141289, 41.710579, 49.916016>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.580593, 42.008400, 49.437172> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.607098, 41.615059, 49.369492>,  <38.623001, 41.379055, 49.328884>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.607098, 41.615059, 49.369492>,  <38.580593, 42.008400, 49.437172>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.607098, 41.615059, 49.369492> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082940, 0.163555, -0.983041,
		0.994349, 0.079168, -0.070723,
		0.066258, -0.983352, -0.169197,
		38.626976, 41.320053, 49.318733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.034683, 41.903599, 48.954704>,  <38.580593, 42.008400, 49.437172>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.034683, 41.903599, 48.954704> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.807884, 41.574310, 48.943275>,  <38.671806, 41.376736, 48.936420>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.807884, 41.574310, 48.943275>,  <39.034683, 41.903599, 48.954704>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.807884, 41.574310, 48.943275> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110230, 0.110201, -0.987778,
		0.816310, -0.556919, -0.153227,
		-0.566998, -0.823223, -0.028569,
		38.637783, 41.327343, 48.934704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.266083, 41.640182, 48.296577>,  <39.034683, 41.903599, 48.954704>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.266083, 41.640182, 48.296577> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.966736, 41.384232, 48.366440>,  <38.787128, 41.230663, 48.408356>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.966736, 41.384232, 48.366440>,  <39.266083, 41.640182, 48.296577>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.966736, 41.384232, 48.366440> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053050, -0.204736, -0.977379,
		0.661157, -0.740706, 0.119273,
		-0.748370, -0.639873, 0.174657,
		38.742226, 41.192268, 48.418839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.505310, 40.984425, 48.049011>,  <39.266083, 41.640182, 48.296577>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.505310, 40.984425, 48.049011> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.105686, 40.976284, 48.064358>,  <38.865913, 40.971401, 48.073566>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.105686, 40.976284, 48.064358>,  <39.505310, 40.984425, 48.049011>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.105686, 40.976284, 48.064358> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032226, -0.244868, -0.969021,
		0.029117, -0.969343, 0.243981,
		-0.999057, -0.020352, 0.038368,
		38.805969, 40.970181, 48.075867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.251881, 40.322147, 47.745182>,  <39.505310, 40.984425, 48.049011>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.251881, 40.322147, 47.745182> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.935581, 40.563927, 47.706463>,  <38.745804, 40.708992, 47.683231>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.935581, 40.563927, 47.706463>,  <39.251881, 40.322147, 47.745182>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.935581, 40.563927, 47.706463> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075584, -0.253334, -0.964422,
		-0.607462, -0.755294, 0.246008,
		-0.790744, 0.604444, -0.096803,
		38.698357, 40.745258, 47.677422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.759068, 39.982986, 47.398899>,  <39.251881, 40.322147, 47.745182>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.759068, 39.982986, 47.398899> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.670876, 40.369045, 47.342491>,  <38.617962, 40.600681, 47.308647>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.670876, 40.369045, 47.342491>,  <38.759068, 39.982986, 47.398899>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.670876, 40.369045, 47.342491> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163374, -0.105995, -0.980854,
		-0.961612, -0.239299, -0.134309,
		-0.220481, 0.965143, -0.141021,
		38.604733, 40.658588, 47.300186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.297421, 39.906940, 46.882053>,  <38.759068, 39.982986, 47.398899>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.297421, 39.906940, 46.882053> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.441986, 40.279171, 46.858685>,  <38.528725, 40.502510, 46.844662>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.441986, 40.279171, 46.858685>,  <38.297421, 39.906940, 46.882053>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.441986, 40.279171, 46.858685> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004126, -0.061065, -0.998125,
		-0.932397, 0.360975, -0.018231,
		0.361412, 0.930574, -0.058426,
		38.550411, 40.558342, 46.841156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.970665, 40.232544, 46.364445>,  <38.297421, 39.906940, 46.882053>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.970665, 40.232544, 46.364445> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.277172, 40.488968, 46.381813>,  <38.461075, 40.642822, 46.392235>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.277172, 40.488968, 46.381813>,  <37.970665, 40.232544, 46.364445>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.277172, 40.488968, 46.381813> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035852, 0.024819, -0.999049,
		-0.641525, 0.767092, -0.003965,
		0.766264, 0.641057, 0.043424,
		38.507050, 40.681286, 46.394840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.880600, 40.687836, 45.879257>,  <37.970665, 40.232544, 46.364445>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.880600, 40.687836, 45.879257> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.274685, 40.725777, 45.936333>,  <38.511135, 40.748539, 45.970577>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.274685, 40.725777, 45.936333>,  <37.880600, 40.687836, 45.879257>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.274685, 40.725777, 45.936333> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155274, -0.142153, -0.977590,
		-0.072439, 0.985290, -0.154779,
		0.985212, 0.094849, 0.142693,
		38.570248, 40.754230, 45.979141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.708614, 41.253872, 45.501591>,  <37.880600, 40.687836, 45.879257>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.708614, 41.253872, 45.501591> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.335587, 41.229866, 45.359203>,  <37.111771, 41.215462, 45.273769>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.335587, 41.229866, 45.359203>,  <37.708614, 41.253872, 45.501591>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.335587, 41.229866, 45.359203> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359036, 0.051670, 0.931892,
		-0.037531, 0.996859, -0.069732,
		-0.932569, -0.060011, -0.355969,
		37.055817, 41.211864, 45.252411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.329514, 41.715744, 45.933914>,  <37.708614, 41.253872, 45.501591>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.329514, 41.715744, 45.933914> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.050919, 41.481575, 45.767933>,  <36.883762, 41.341072, 45.668343>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.050919, 41.481575, 45.767933>,  <37.329514, 41.715744, 45.933914>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.050919, 41.481575, 45.767933> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548854, 0.062104, 0.833608,
		-0.462243, 0.808346, -0.364566,
		-0.696485, -0.585423, -0.414957,
		36.841972, 41.305950, 45.643444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.706642, 41.947090, 46.242558>,  <37.329514, 41.715744, 45.933914>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.706642, 41.947090, 46.242558> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.640015, 41.579529, 46.099522>,  <36.600037, 41.358990, 46.013702>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.640015, 41.579529, 46.099522>,  <36.706642, 41.947090, 46.242558>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.640015, 41.579529, 46.099522> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571198, -0.205682, 0.794624,
		-0.803734, 0.336611, -0.490617,
		-0.166568, -0.918906, -0.357585,
		36.590046, 41.303856, 45.992245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.951511, 41.814182, 46.183231>,  <36.706642, 41.947090, 46.242558>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.951511, 41.814182, 46.183231> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.109116, 41.452675, 46.250107>,  <36.203678, 41.235771, 46.290234>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.109116, 41.452675, 46.250107>,  <35.951511, 41.814182, 46.183231>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.109116, 41.452675, 46.250107> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465706, -0.039490, 0.884058,
		-0.792385, -0.426188, -0.436452,
		0.394011, -0.903772, 0.167187,
		36.227318, 41.181541, 46.300262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.480820, 41.453941, 46.603580>,  <35.951511, 41.814182, 46.183231>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.480820, 41.453941, 46.603580> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.772217, 41.180840, 46.626011>,  <35.947056, 41.016979, 46.639469>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.772217, 41.180840, 46.626011>,  <35.480820, 41.453941, 46.603580>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.772217, 41.180840, 46.626011> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281129, -0.223311, 0.933327,
		-0.624712, -0.695686, -0.354623,
		0.728493, -0.682755, 0.056073,
		35.990765, 40.976013, 46.642834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.166740, 40.818100, 46.869751>,  <35.480820, 41.453941, 46.603580>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.166740, 40.818100, 46.869751> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.559261, 40.832729, 46.945339>,  <35.794773, 40.841507, 46.990692>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.559261, 40.832729, 46.945339>,  <35.166740, 40.818100, 46.869751>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.559261, 40.832729, 46.945339> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189072, -0.000832, 0.981963,
		0.036078, -0.999330, 0.006100,
		0.981301, 0.036580, 0.188975,
		35.853653, 40.843700, 47.002033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.284615, 40.280025, 47.365448>,  <35.166740, 40.818100, 46.869751>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.284615, 40.280025, 47.365448> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.592247, 40.533672, 47.397446>,  <35.776829, 40.685860, 47.416645>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.592247, 40.533672, 47.397446>,  <35.284615, 40.280025, 47.365448>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.592247, 40.533672, 47.397446> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134109, 0.037729, 0.990248,
		0.624917, -0.772314, 0.114058,
		0.769085, 0.634119, 0.079997,
		35.822971, 40.723907, 47.421444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.090061, 39.568241, 47.671444>,  <35.284615, 40.280025, 47.365448>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.090061, 39.568241, 47.671444> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.695671, 39.631340, 47.649639>,  <34.459038, 39.669201, 47.636555>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.695671, 39.631340, 47.649639>,  <35.090061, 39.568241, 47.671444>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.695671, 39.631340, 47.649639> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004970, -0.354229, -0.935146,
		-0.166827, -0.921758, 0.350044,
		-0.985973, 0.157748, -0.054514,
		34.399879, 39.678665, 47.633286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.725559, 38.867279, 47.504269>,  <35.090061, 39.568241, 47.671444>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.725559, 38.867279, 47.504269> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.490276, 39.176014, 47.407707>,  <34.349106, 39.361256, 47.349770>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.490276, 39.176014, 47.407707>,  <34.725559, 38.867279, 47.504269>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.490276, 39.176014, 47.407707> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122328, -0.379988, -0.916867,
		-0.799405, -0.509778, 0.317929,
		-0.588208, 0.771839, -0.241404,
		34.313812, 39.407566, 47.335285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.192883, 38.539734, 47.168705>,  <34.725559, 38.867279, 47.504269>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.192883, 38.539734, 47.168705> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.157043, 38.912750, 47.028793>,  <34.135540, 39.136559, 46.944847>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.157043, 38.912750, 47.028793>,  <34.192883, 38.539734, 47.168705>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.157043, 38.912750, 47.028793> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128877, -0.359090, -0.924362,
		-0.987605, -0.037740, 0.152355,
		-0.089595, 0.932539, -0.349775,
		34.130165, 39.192513, 46.923862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.614037, 38.545883, 46.595940>,  <34.192883, 38.539734, 47.168705>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.614037, 38.545883, 46.595940> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.801674, 38.896935, 46.556511>,  <33.914257, 39.107567, 46.532856>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.801674, 38.896935, 46.556511>,  <33.614037, 38.545883, 46.595940>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.801674, 38.896935, 46.556511> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214419, 0.004908, -0.976729,
		-0.856723, 0.479314, 0.190482,
		0.469095, 0.877630, -0.098569,
		33.942402, 39.160225, 46.526939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.098431, 39.034428, 46.305771>,  <33.614037, 38.545883, 46.595940>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.098431, 39.034428, 46.305771> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.472397, 39.153999, 46.229279>,  <33.696777, 39.225742, 46.183384>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.472397, 39.153999, 46.229279>,  <33.098431, 39.034428, 46.305771>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.472397, 39.153999, 46.229279> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183336, -0.054518, -0.981537,
		-0.303835, 0.952717, 0.003834,
		0.934918, 0.298929, -0.191231,
		33.752872, 39.243679, 46.171909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.026752, 39.535183, 45.769100>,  <33.098431, 39.034428, 46.305771>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.026752, 39.535183, 45.769100> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.393940, 39.377277, 45.753597>,  <33.614250, 39.282536, 45.744297>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.393940, 39.377277, 45.753597>,  <33.026752, 39.535183, 45.769100>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.393940, 39.377277, 45.753597> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106448, -0.151055, -0.982777,
		0.382107, 0.906282, -0.180685,
		0.917967, -0.394760, -0.038753,
		33.669331, 39.258850, 45.741970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.273129, 39.785175, 45.132893>,  <33.026752, 39.535183, 45.769100>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.273129, 39.785175, 45.132893> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.562828, 39.524872, 45.224087>,  <33.736649, 39.368690, 45.278801>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.562828, 39.524872, 45.224087>,  <33.273129, 39.785175, 45.132893>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.562828, 39.524872, 45.224087> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093434, -0.234962, -0.967503,
		0.683178, 0.722015, -0.109368,
		0.724249, -0.650759, 0.227982,
		33.780102, 39.329643, 45.292480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<36.153076, 36.682995, 50.614193> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.427803, 36.908131, 50.430237>,  <36.592640, 37.043213, 50.319862>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.427803, 36.908131, 50.430237>,  <36.153076, 36.682995, 50.614193>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.427803, 36.908131, 50.430237> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286314, -0.372063, -0.882946,
		-0.668066, 0.738091, -0.094388,
		0.686813, 0.562841, -0.459888,
		36.633846, 37.076984, 50.292271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.797405, 36.935444, 50.025345>,  <36.153076, 36.682995, 50.614193>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.797405, 36.935444, 50.025345> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.192310, 36.908554, 49.967655>,  <36.429253, 36.892422, 49.933041>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.192310, 36.908554, 49.967655>,  <35.797405, 36.935444, 50.025345>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.192310, 36.908554, 49.967655> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156541, -0.247783, -0.956085,
		0.028532, 0.966481, -0.255148,
		0.987259, -0.067220, -0.144224,
		36.488487, 36.888390, 49.924389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.103218, 37.408440, 49.438007>,  <35.797405, 36.935444, 50.025345>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.103218, 37.408440, 49.438007> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.352272, 37.099216, 49.486519>,  <36.501705, 36.913681, 49.515625>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.352272, 37.099216, 49.486519>,  <36.103218, 37.408440, 49.438007>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.352272, 37.099216, 49.486519> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092316, -0.226468, -0.969634,
		0.777050, 0.592530, -0.212371,
		0.622633, -0.773059, 0.121277,
		36.539062, 36.867298, 49.522903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.490494, 37.397774, 48.818100>,  <36.103218, 37.408440, 49.438007>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.490494, 37.397774, 48.818100> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.578873, 37.033142, 48.956787>,  <36.631901, 36.814365, 49.039997>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.578873, 37.033142, 48.956787>,  <36.490494, 37.397774, 48.818100>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.578873, 37.033142, 48.956787> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040486, -0.363767, -0.930610,
		0.974446, 0.191577, -0.117279,
		0.220946, -0.911576, 0.346715,
		36.645157, 36.759670, 49.060802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.001247, 37.102112, 48.343746>,  <36.490494, 37.397774, 48.818100>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.001247, 37.102112, 48.343746> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.850033, 36.774578, 48.516537>,  <36.759304, 36.578060, 48.620213>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.850033, 36.774578, 48.516537>,  <37.001247, 37.102112, 48.343746>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.850033, 36.774578, 48.516537> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001640, -0.466012, -0.884777,
		0.925790, -0.335185, 0.174826,
		-0.378035, -0.818831, 0.431979,
		36.736622, 36.528931, 48.646130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.303963, 36.581959, 47.985096>,  <37.001247, 37.102112, 48.343746>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.303963, 36.581959, 47.985096> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.974136, 36.436668, 48.158604>,  <36.776241, 36.349495, 48.262707>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.974136, 36.436668, 48.158604>,  <37.303963, 36.581959, 47.985096>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.974136, 36.436668, 48.158604> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162352, -0.582538, -0.796424,
		0.541969, -0.727128, 0.421372,
		-0.824568, -0.363226, 0.433768,
		36.726765, 36.327702, 48.288734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.267689, 35.781158, 47.994217>,  <37.303963, 36.581959, 47.985096>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.267689, 35.781158, 47.994217> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.890472, 35.907177, 48.036980>,  <36.664143, 35.982788, 48.062637>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.890472, 35.907177, 48.036980>,  <37.267689, 35.781158, 47.994217>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.890472, 35.907177, 48.036980> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312510, -0.728644, -0.609439,
		-0.114104, -0.608133, 0.785592,
		-0.943037, 0.315044, 0.106907,
		36.607563, 36.001690, 48.069050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.033512, 35.146397, 47.983112>,  <37.267689, 35.781158, 47.994217>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.033512, 35.146397, 47.983112> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.719810, 35.392563, 47.951569>,  <36.531590, 35.540260, 47.932644>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.719810, 35.392563, 47.951569>,  <37.033512, 35.146397, 47.983112>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.719810, 35.392563, 47.951569> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375960, -0.572473, -0.728649,
		-0.493562, -0.541797, 0.680333,
		-0.784251, 0.615411, -0.078857,
		36.484535, 35.577187, 47.927910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.460346, 34.643536, 47.981270>,  <37.033512, 35.146397, 47.983112>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.460346, 34.643536, 47.981270> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.334114, 34.991066, 47.828663>,  <36.258377, 35.199585, 47.737099>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.334114, 34.991066, 47.828663>,  <36.460346, 34.643536, 47.981270>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.334114, 34.991066, 47.828663> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344898, -0.479590, -0.806870,
		-0.884000, -0.123044, 0.451003,
		-0.315577, 0.868823, -0.381520,
		36.239441, 35.251713, 47.714207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.781792, 34.560619, 47.817368>,  <36.460346, 34.643536, 47.981270>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.781792, 34.560619, 47.817368> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.915272, 34.869316, 47.600826>,  <35.995361, 35.054535, 47.470901>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.915272, 34.869316, 47.600826>,  <35.781792, 34.560619, 47.817368>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.915272, 34.869316, 47.600826> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300706, -0.457122, -0.837028,
		-0.893431, 0.442105, 0.079524,
		0.333702, 0.771740, -0.541350,
		36.015381, 35.100838, 47.438419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.271355, 34.653046, 47.335960>,  <35.781792, 34.560619, 47.817368>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.271355, 34.653046, 47.335960> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.583851, 34.832863, 47.162724>,  <35.771347, 34.940754, 47.058781>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.583851, 34.832863, 47.162724>,  <35.271355, 34.653046, 47.335960>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.583851, 34.832863, 47.162724> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254552, -0.404075, -0.878594,
		-0.569971, 0.796639, -0.201247,
		0.781241, 0.449545, -0.433097,
		35.818222, 34.967728, 47.032795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.089905, 34.955658, 46.763329>,  <35.271355, 34.653046, 47.335960>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.089905, 34.955658, 46.763329> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.481987, 34.955009, 46.684132>,  <35.717236, 34.954620, 46.636612>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.481987, 34.955009, 46.684132>,  <35.089905, 34.955658, 46.763329>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.481987, 34.955009, 46.684132> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180489, -0.418442, -0.890129,
		-0.081407, 0.908242, -0.410450,
		0.980202, -0.001619, -0.197992,
		35.776047, 34.954525, 46.624733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.753922, 35.635105, 46.604294>,  <35.089905, 34.955658, 46.763329>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.753922, 35.635105, 46.604294> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.390400, 35.794041, 46.553375>,  <34.172287, 35.889400, 46.522823>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.390400, 35.794041, 46.553375>,  <34.753922, 35.635105, 46.604294>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.390400, 35.794041, 46.553375> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002718, 0.299457, 0.954106,
		0.417224, 0.867437, -0.271067,
		-0.908800, 0.397339, -0.127299,
		34.117760, 35.913242, 46.515186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.770409, 36.226749, 46.898510>,  <34.753922, 35.635105, 46.604294>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.770409, 36.226749, 46.898510> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.372585, 36.186981, 46.886017>,  <34.133892, 36.163120, 46.878521>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.372585, 36.186981, 46.886017>,  <34.770409, 36.226749, 46.898510>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.372585, 36.186981, 46.886017> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073304, 0.454468, 0.887742,
		-0.074065, 0.885198, -0.459281,
		-0.994556, -0.099417, -0.031228,
		34.074219, 36.157158, 46.876648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.382309, 36.934895, 47.117142>,  <34.770409, 36.226749, 46.898510>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.382309, 36.934895, 47.117142> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.112022, 36.645447, 47.173393>,  <33.949848, 36.471779, 47.207146>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.112022, 36.645447, 47.173393>,  <34.382309, 36.934895, 47.117142>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.112022, 36.645447, 47.173393> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306177, 0.449042, 0.839415,
		-0.670565, 0.524152, -0.524982,
		-0.675720, -0.723620, 0.140628,
		33.909306, 36.428360, 47.215580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.824402, 37.323494, 47.388126>,  <34.382309, 36.934895, 47.117142>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.824402, 37.323494, 47.388126> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.696297, 36.955280, 47.477615>,  <33.619434, 36.734352, 47.531307>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.696297, 36.955280, 47.477615>,  <33.824402, 37.323494, 47.388126>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.696297, 36.955280, 47.477615> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162601, 0.286071, 0.944312,
		-0.933270, 0.266051, -0.241297,
		-0.320263, -0.920533, 0.223722,
		33.600220, 36.679119, 47.544731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.257706, 37.440998, 47.648407>,  <33.824402, 37.323494, 47.388126>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.257706, 37.440998, 47.648407> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.365311, 37.084797, 47.795177>,  <33.429874, 36.871075, 47.883240>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.365311, 37.084797, 47.795177>,  <33.257706, 37.440998, 47.648407>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.365311, 37.084797, 47.795177> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295982, 0.286098, 0.911341,
		-0.916531, -0.353762, -0.186611,
		0.269009, -0.890506, 0.366925,
		33.446014, 36.817646, 47.905254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.724640, 37.273930, 48.088676>,  <33.257706, 37.440998, 47.648407>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.724640, 37.273930, 48.088676> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.050606, 37.073006, 48.204327>,  <33.246185, 36.952450, 48.273716>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.050606, 37.073006, 48.204327>,  <32.724640, 37.273930, 48.088676>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.050606, 37.073006, 48.204327> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171336, 0.267765, 0.948127,
		-0.553671, -0.822184, 0.132143,
		0.814919, -0.502310, 0.289124,
		33.295082, 36.922314, 48.291065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.391052, 37.096462, 48.635826>,  <32.724640, 37.273930, 48.088676>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.391052, 37.096462, 48.635826> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.784859, 37.035435, 48.670345>,  <33.021145, 36.998817, 48.691055>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.784859, 37.035435, 48.670345>,  <32.391052, 37.096462, 48.635826>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.784859, 37.035435, 48.670345> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046446, 0.247672, 0.967730,
		-0.169015, -0.956756, 0.236752,
		0.984519, -0.152565, 0.086298,
		33.080215, 36.989666, 48.696236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.523903, 36.647751, 49.194115>,  <32.391052, 37.096462, 48.635826>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.523903, 36.647751, 49.194115> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.847828, 36.878567, 49.151741>,  <33.042183, 37.017056, 49.126316>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.847828, 36.878567, 49.151741>,  <32.523903, 36.647751, 49.194115>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.847828, 36.878567, 49.151741> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160661, 0.391775, 0.905926,
		0.564259, -0.716613, 0.409973,
		0.809815, 0.577043, -0.105931,
		33.090771, 37.051682, 49.119961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.872864, 36.556477, 49.833424>,  <32.523903, 36.647751, 49.194115>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.872864, 36.556477, 49.833424> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.041359, 36.873581, 49.657200>,  <33.142456, 37.063843, 49.551464>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.041359, 36.873581, 49.657200>,  <32.872864, 36.556477, 49.833424>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.041359, 36.873581, 49.657200> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208635, 0.388034, 0.897720,
		0.882627, -0.470070, -0.001943,
		0.421238, 0.792757, -0.440563,
		33.167732, 37.111408, 49.525032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.391914, 36.643120, 50.268055>,  <32.872864, 36.556477, 49.833424>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.391914, 36.643120, 50.268055> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.362999, 36.979343, 50.053307>,  <33.345650, 37.181080, 49.924458>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.362999, 36.979343, 50.053307>,  <33.391914, 36.643120, 50.268055>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.362999, 36.979343, 50.053307> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133248, 0.541591, 0.830015,
		0.988443, -0.011537, -0.151154,
		-0.072288, 0.840563, -0.536869,
		33.341312, 37.231514, 49.892246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.705421, 37.021595, 50.676937>,  <33.391914, 36.643120, 50.268055>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.705421, 37.021595, 50.676937> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.490967, 37.268723, 50.446854>,  <33.362293, 37.417000, 50.308804>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.490967, 37.268723, 50.446854>,  <33.705421, 37.021595, 50.676937>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.490967, 37.268723, 50.446854> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083333, 0.639349, 0.764388,
		0.840010, 0.457747, -0.291291,
		-0.536133, 0.617819, -0.575205,
		33.330128, 37.454067, 50.274292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.962605, 37.655308, 50.850174>,  <33.705421, 37.021595, 50.676937>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.962605, 37.655308, 50.850174> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.621078, 37.754711, 50.667198>,  <33.416164, 37.814354, 50.557415>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.621078, 37.754711, 50.667198>,  <33.962605, 37.655308, 50.850174>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.621078, 37.754711, 50.667198> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245845, 0.582064, 0.775088,
		0.458874, 0.774238, -0.435878,
		-0.853812, 0.248509, -0.457437,
		33.364933, 37.829266, 50.529968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.975403, 38.368217, 50.899933>,  <33.962605, 37.655308, 50.850174>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.975403, 38.368217, 50.899933> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.588333, 38.285984, 50.841484>,  <33.356091, 38.236645, 50.806416>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.588333, 38.285984, 50.841484>,  <33.975403, 38.368217, 50.899933>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.588333, 38.285984, 50.841484> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248380, 0.675982, 0.693798,
		-0.043852, 0.707662, -0.705189,
		-0.967669, -0.205579, -0.146126,
		33.298031, 38.224312, 50.797646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.539040, 39.033768, 50.994919>,  <33.975403, 38.368217, 50.899933>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.539040, 39.033768, 50.994919> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.276531, 38.734325, 51.032627>,  <33.119026, 38.554661, 51.055252>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.276531, 38.734325, 51.032627>,  <33.539040, 39.033768, 50.994919>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.276531, 38.734325, 51.032627> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357742, 0.418729, 0.834678,
		-0.664323, 0.514052, -0.542610,
		-0.656274, -0.748610, 0.094274,
		33.079651, 38.509743, 51.060909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.149254, 39.416622, 50.482906>,  <33.539040, 39.033768, 50.994919>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.149254, 39.416622, 50.482906> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.450085, 39.677418, 50.444363>,  <33.630585, 39.833897, 50.421234>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.450085, 39.677418, 50.444363>,  <33.149254, 39.416622, 50.482906>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.450085, 39.677418, 50.444363> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035348, -0.106095, -0.993728,
		-0.658126, 0.750767, -0.056745,
		0.752078, 0.651992, -0.096361,
		33.675709, 39.873016, 50.415455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.934990, 39.774063, 49.899067>,  <33.149254, 39.416622, 50.482906>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.934990, 39.774063, 49.899067> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.321468, 39.873814, 49.925240>,  <33.553356, 39.933662, 49.940945>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.321468, 39.873814, 49.925240>,  <32.934990, 39.774063, 49.899067>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.321468, 39.873814, 49.925240> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047304, 0.078022, -0.995829,
		-0.253443, 0.965258, 0.063588,
		0.966193, 0.249378, 0.065434,
		33.611328, 39.948627, 49.944870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.023472, 40.384789, 49.489975>,  <32.934990, 39.774063, 49.899067>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.023472, 40.384789, 49.489975> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.380516, 40.209217, 49.531132>,  <33.594742, 40.103874, 49.555824>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.380516, 40.209217, 49.531132>,  <33.023472, 40.384789, 49.489975>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.380516, 40.209217, 49.531132> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097990, -0.033874, -0.994611,
		0.440053, 0.897881, 0.012775,
		0.892609, -0.438933, 0.102890,
		33.648300, 40.077538, 49.562000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.485229, 40.772938, 49.091167>,  <33.023472, 40.384789, 49.489975>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.485229, 40.772938, 49.091167> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.679398, 40.425976, 49.134930>,  <33.795898, 40.217796, 49.161186>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.679398, 40.425976, 49.134930>,  <33.485229, 40.772938, 49.091167>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.679398, 40.425976, 49.134930> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169955, -0.029124, -0.985021,
		0.857601, 0.496745, 0.133283,
		0.485423, -0.867408, 0.109401,
		33.825024, 40.165752, 49.167751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.045624, 40.875267, 48.782440>,  <33.485229, 40.772938, 49.091167>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.045624, 40.875267, 48.782440> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.035378, 40.475410, 48.779408>,  <34.029228, 40.235497, 48.777588>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.035378, 40.475410, 48.779408>,  <34.045624, 40.875267, 48.782440>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.035378, 40.475410, 48.779408> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371491, -0.002473, -0.928433,
		0.928083, -0.026600, 0.371422,
		-0.025615, -0.999643, -0.007586,
		34.027695, 40.175518, 48.777130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.675629, 40.618652, 48.429070>,  <34.045624, 40.875267, 48.782440>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.675629, 40.618652, 48.429070> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.424065, 40.307980, 48.414997>,  <34.273125, 40.121574, 48.406555>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.424065, 40.307980, 48.414997>,  <34.675629, 40.618652, 48.429070>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.424065, 40.307980, 48.414997> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237431, -0.148780, -0.959943,
		0.740336, -0.612071, 0.277977,
		-0.628911, -0.776681, -0.035178,
		34.235390, 40.074974, 48.404442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.055145, 40.090313, 48.135395>,  <34.675629, 40.618652, 48.429070>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.055145, 40.090313, 48.135395> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.673641, 39.977684, 48.093349>,  <34.444736, 39.910107, 48.068123>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.673641, 39.977684, 48.093349>,  <35.055145, 40.090313, 48.135395>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.673641, 39.977684, 48.093349> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175219, -0.236749, -0.955640,
		0.244198, -0.929873, 0.275140,
		-0.953764, -0.281576, -0.105118,
		34.387512, 39.893211, 48.061813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.801956, 40.112679, 47.885658>,  <35.055145, 40.090313, 48.135395>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.801956, 40.112679, 47.885658> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.891136, 40.501442, 47.855495>,  <35.944645, 40.734699, 47.837399>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.891136, 40.501442, 47.855495>,  <35.801956, 40.112679, 47.885658>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.891136, 40.501442, 47.855495> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048145, 0.088239, 0.994935,
		0.973640, -0.218191, 0.066465,
		0.222951, 0.971908, -0.075408,
		35.958023, 40.793015, 47.832874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.241940, 40.157211, 48.627701>,  <35.801956, 40.112679, 47.885658>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.241940, 40.157211, 48.627701> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.184029, 40.514561, 48.457561>,  <36.149281, 40.728970, 48.355476>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.184029, 40.514561, 48.457561>,  <36.241940, 40.157211, 48.627701>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.184029, 40.514561, 48.457561> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081819, 0.417599, 0.904940,
		0.986075, 0.165819, 0.012635,
		-0.144780, 0.893373, -0.425351,
		36.140594, 40.782574, 48.329956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.737801, 40.642429, 48.939053>,  <36.241940, 40.157211, 48.627701>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.737801, 40.642429, 48.939053> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.449898, 40.885410, 48.804623>,  <36.277157, 41.031200, 48.723965>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.449898, 40.885410, 48.804623>,  <36.737801, 40.642429, 48.939053>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.449898, 40.885410, 48.804623> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078961, 0.552599, 0.829698,
		0.689718, 0.570646, -0.445704,
		-0.719760, 0.607451, -0.336079,
		36.233971, 41.067646, 48.703800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.016315, 41.341217, 48.988808>,  <36.737801, 40.642429, 48.939053>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.016315, 41.341217, 48.988808> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.617764, 41.321785, 49.016697>,  <36.378632, 41.310127, 49.033432>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.617764, 41.321785, 49.016697>,  <37.016315, 41.341217, 48.988808>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.617764, 41.321785, 49.016697> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035530, 0.507222, 0.861083,
		-0.077195, 0.860445, -0.503661,
		-0.996383, -0.048576, 0.069727,
		36.318848, 41.307213, 49.037617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.785198, 42.027462, 49.106407>,  <37.016315, 41.341217, 48.988808>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.785198, 42.027462, 49.106407> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.473843, 41.803387, 49.219761>,  <36.287029, 41.668941, 49.287773>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.473843, 41.803387, 49.219761>,  <36.785198, 42.027462, 49.106407>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.473843, 41.803387, 49.219761> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135686, 0.290608, 0.947173,
		-0.612949, 0.775716, -0.150196,
		-0.778385, -0.560189, 0.283382,
		36.240326, 41.635330, 49.304775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.549259, 42.478828, 49.689621>,  <36.785198, 42.027462, 49.106407>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.549259, 42.478828, 49.689621> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.365532, 42.125404, 49.726162>,  <36.255295, 41.913349, 49.748089>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.365532, 42.125404, 49.726162>,  <36.549259, 42.478828, 49.689621>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.365532, 42.125404, 49.726162> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098555, 0.152903, 0.983315,
		-0.882788, 0.442650, -0.157310,
		-0.459317, -0.883562, 0.091356,
		36.227737, 41.860336, 49.753567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.908455, 42.568634, 50.101650>,  <36.549259, 42.478828, 49.689621>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.908455, 42.568634, 50.101650> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.020424, 42.185196, 50.122551>,  <36.087605, 41.955132, 50.135090>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.020424, 42.185196, 50.122551>,  <35.908455, 42.568634, 50.101650>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.020424, 42.185196, 50.122551> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186900, -0.001031, 0.982379,
		-0.941653, -0.284758, -0.179450,
		0.279925, -0.958599, 0.052251,
		36.104401, 41.897617, 50.138226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.490490, 42.490597, 50.669918>,  <35.908455, 42.568634, 50.101650>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.490490, 42.490597, 50.669918> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.759056, 42.196835, 50.630219>,  <35.920197, 42.020576, 50.606400>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.759056, 42.196835, 50.630219>,  <35.490490, 42.490597, 50.669918>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.759056, 42.196835, 50.630219> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040695, -0.097186, 0.994434,
		-0.739961, -0.671720, -0.035366,
		0.671418, -0.734403, -0.099249,
		35.960480, 41.976513, 50.600445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.233284, 41.879520, 51.100422>,  <35.490490, 42.490597, 50.669918>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.233284, 41.879520, 51.100422> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.631611, 41.868195, 51.065655>,  <35.870605, 41.861401, 51.044792>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.631611, 41.868195, 51.065655>,  <35.233284, 41.879520, 51.100422>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.631611, 41.868195, 51.065655> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082961, -0.119458, 0.989367,
		-0.038394, -0.992436, -0.116609,
		0.995813, -0.028312, -0.086920,
		35.930355, 41.859699, 51.039577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<38.429199, 36.734497, 35.876141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.726307, 36.630375, 36.122890>,  <38.904572, 36.567902, 36.270943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.726307, 36.630375, 36.122890>,  <38.429199, 36.734497, 35.876141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.726307, 36.630375, 36.122890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614020, 0.102548, 0.782601,
		-0.266972, -0.960066, -0.083661,
		0.742769, -0.260302, 0.616877,
		38.949139, 36.552284, 36.307953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.072784, 36.299561, 36.479210>,  <38.429199, 36.734497, 35.876141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.072784, 36.299561, 36.479210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.421284, 36.396660, 36.649857>,  <38.630383, 36.454918, 36.752247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.421284, 36.396660, 36.649857>,  <38.072784, 36.299561, 36.479210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.421284, 36.396660, 36.649857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486949, 0.318135, 0.813432,
		0.061736, -0.916441, 0.395379,
		0.871246, 0.242747, 0.426619,
		38.682659, 36.469482, 36.777843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.050346, 36.085941, 37.117302>,  <38.072784, 36.299561, 36.479210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.050346, 36.085941, 37.117302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.324848, 36.375210, 37.148495>,  <38.489548, 36.548771, 37.167210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.324848, 36.375210, 37.148495>,  <38.050346, 36.085941, 37.117302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.324848, 36.375210, 37.148495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532051, 0.425985, 0.731750,
		0.495963, -0.543654, 0.677097,
		0.686252, 0.723171, 0.077979,
		38.530724, 36.592159, 37.171890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.227051, 36.122314, 37.792912>,  <38.050346, 36.085941, 37.117302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.227051, 36.122314, 37.792912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.332218, 36.471210, 37.627953>,  <38.395321, 36.680546, 37.528976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.332218, 36.471210, 37.627953>,  <38.227051, 36.122314, 37.792912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.332218, 36.471210, 37.627953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440478, 0.488809, 0.753024,
		0.858400, -0.016333, 0.512720,
		0.262922, 0.872238, -0.412399,
		38.411095, 36.732883, 37.504234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.384552, 36.419128, 38.350208>,  <38.227051, 36.122314, 37.792912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.384552, 36.419128, 38.350208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.333279, 36.719532, 38.091118>,  <38.302513, 36.899773, 37.935661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.333279, 36.719532, 38.091118>,  <38.384552, 36.419128, 38.350208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.333279, 36.719532, 38.091118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290701, 0.595978, 0.748534,
		0.948189, 0.284246, 0.141924,
		-0.128184, 0.751008, -0.647730,
		38.294823, 36.944836, 37.896797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.635399, 37.040627, 38.698067>,  <38.384552, 36.419128, 38.350208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.635399, 37.040627, 38.698067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.391338, 37.174267, 38.410706>,  <38.244904, 37.254452, 38.238289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.391338, 37.174267, 38.410706>,  <38.635399, 37.040627, 38.698067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.391338, 37.174267, 38.410706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407515, 0.645261, 0.646196,
		0.679450, 0.687033, -0.257553,
		-0.610147, 0.334101, -0.718399,
		38.208294, 37.274498, 38.195187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.625744, 37.753658, 38.811378>,  <38.635399, 37.040627, 38.698067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.625744, 37.753658, 38.811378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.309296, 37.644463, 38.592434>,  <38.119427, 37.578945, 38.461067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.309296, 37.644463, 38.592434>,  <38.625744, 37.753658, 38.811378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.309296, 37.644463, 38.592434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585857, 0.595361, 0.549834,
		0.175783, 0.755661, -0.630933,
		-0.791121, -0.272985, -0.547364,
		38.071960, 37.562569, 38.428226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.163956, 38.340698, 38.738708>,  <38.625744, 37.753658, 38.811378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.163956, 38.340698, 38.738708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.910736, 38.045769, 38.644386>,  <37.758804, 37.868813, 38.587791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.910736, 38.045769, 38.644386>,  <38.163956, 38.340698, 38.738708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.910736, 38.045769, 38.644386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.738160, 0.483212, 0.470771,
		-0.233164, 0.472085, -0.850159,
		-0.633051, -0.737320, -0.235806,
		37.720821, 37.824574, 38.573643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.591000, 38.653301, 38.344887>,  <38.163956, 38.340698, 38.738708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.591000, 38.653301, 38.344887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.489357, 38.312244, 38.527504>,  <37.428371, 38.107609, 38.637074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.489357, 38.312244, 38.527504>,  <37.591000, 38.653301, 38.344887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.489357, 38.312244, 38.527504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.750799, 0.471467, 0.462623,
		-0.609696, -0.225213, -0.759967,
		-0.254110, -0.852642, 0.456541,
		37.413124, 38.056450, 38.664467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.828392, 38.613499, 38.272064>,  <37.591000, 38.653301, 38.344887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.828392, 38.613499, 38.272064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.929359, 38.374966, 38.576870>,  <36.989941, 38.231846, 38.759754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.929359, 38.374966, 38.576870>,  <36.828392, 38.613499, 38.272064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.929359, 38.374966, 38.576870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.767431, 0.356275, 0.533028,
		-0.589349, -0.719343, -0.367713,
		0.252423, -0.596334, 0.762016,
		37.005085, 38.196064, 38.805473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.214149, 38.567852, 38.641495>,  <36.828392, 38.613499, 38.272064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.214149, 38.567852, 38.641495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.449886, 38.418266, 38.927944>,  <36.591328, 38.328514, 39.099812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.449886, 38.418266, 38.927944>,  <36.214149, 38.567852, 38.641495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.449886, 38.418266, 38.927944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584739, 0.414191, 0.697514,
		-0.557459, -0.829815, 0.025424,
		0.589338, -0.373969, 0.716120,
		36.626686, 38.306076, 39.142780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.784744, 38.274105, 39.118214>,  <36.214149, 38.567852, 38.641495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.784744, 38.274105, 39.118214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.128185, 38.339127, 39.312687>,  <36.334251, 38.378139, 39.429371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.128185, 38.339127, 39.312687>,  <35.784744, 38.274105, 39.118214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.128185, 38.339127, 39.312687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491191, 0.532333, 0.689458,
		-0.146738, -0.830781, 0.536908,
		0.858603, 0.162555, 0.486186,
		36.385765, 38.387894, 39.458542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.433353, 37.645718, 39.299122>,  <35.784744, 38.274105, 39.118214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.433353, 37.645718, 39.299122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.038132, 37.694439, 39.336903>,  <34.800999, 37.723671, 39.359570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.038132, 37.694439, 39.336903>,  <35.433353, 37.645718, 39.299122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.038132, 37.694439, 39.336903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115849, -0.182667, -0.976326,
		-0.101663, -0.975601, 0.194595,
		-0.988051, 0.121800, 0.094452,
		34.741718, 37.730980, 39.365238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.138794, 37.039440, 38.991596>,  <35.433353, 37.645718, 39.299122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.138794, 37.039440, 38.991596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.839382, 37.302944, 39.021904>,  <34.659737, 37.461048, 39.040089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.839382, 37.302944, 39.021904>,  <35.138794, 37.039440, 38.991596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.839382, 37.302944, 39.021904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287741, -0.219736, -0.932159,
		-0.597422, -0.719548, 0.354031,
		-0.748527, 0.658762, 0.075768,
		34.614822, 37.500572, 39.044636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.520527, 36.684841, 39.038250>,  <35.138794, 37.039440, 38.991596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.520527, 36.684841, 39.038250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.447086, 37.046242, 38.883347>,  <34.403023, 37.263084, 38.790405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.447086, 37.046242, 38.883347>,  <34.520527, 36.684841, 39.038250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.447086, 37.046242, 38.883347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325867, -0.427624, -0.843178,
		-0.927417, -0.028610, 0.372932,
		-0.183598, 0.903504, -0.387263,
		34.392006, 37.317291, 38.767166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.817684, 36.654278, 38.691856>,  <34.520527, 36.684841, 39.038250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.817684, 36.654278, 38.691856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.028732, 36.950573, 38.525520>,  <34.155361, 37.128349, 38.425716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.028732, 36.950573, 38.525520>,  <33.817684, 36.654278, 38.691856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.028732, 36.950573, 38.525520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325712, -0.275708, -0.904376,
		-0.784558, 0.612611, 0.095799,
		0.527618, 0.740738, -0.415844,
		34.187019, 37.172794, 38.400768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.359821, 37.012096, 38.208191>,  <33.817684, 36.654278, 38.691856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.359821, 37.012096, 38.208191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.731571, 37.097805, 38.087952>,  <33.954620, 37.149231, 38.015808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.731571, 37.097805, 38.087952>,  <33.359821, 37.012096, 38.208191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.731571, 37.097805, 38.087952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255265, -0.215199, -0.942618,
		-0.266665, 0.952773, -0.145303,
		0.929370, 0.214273, -0.300596,
		34.010384, 37.162086, 37.997772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.207531, 37.383785, 37.600124>,  <33.359821, 37.012096, 38.208191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.207531, 37.383785, 37.600124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.587955, 37.263771, 37.570576>,  <33.816212, 37.191765, 37.552845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.587955, 37.263771, 37.570576>,  <33.207531, 37.383785, 37.600124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.587955, 37.263771, 37.570576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145923, -0.225385, -0.963280,
		0.272367, 0.926920, -0.258137,
		0.951064, -0.300034, -0.073871,
		33.873276, 37.173759, 37.548416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.423943, 37.559208, 36.952137>,  <33.207531, 37.383785, 37.600124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.423943, 37.559208, 36.952137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.734398, 37.317986, 37.025814>,  <33.920673, 37.173252, 37.070023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.734398, 37.317986, 37.025814>,  <33.423943, 37.559208, 36.952137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.734398, 37.317986, 37.025814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092470, -0.397811, -0.912796,
		0.623741, 0.691426, -0.364522,
		0.776142, -0.603056, 0.184195,
		33.967239, 37.137070, 37.081074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.041397, 37.769146, 36.463955>,  <33.423943, 37.559208, 36.952137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.041397, 37.769146, 36.463955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.061035, 37.386631, 36.579266>,  <34.072819, 37.157120, 36.648453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.061035, 37.386631, 36.579266>,  <34.041397, 37.769146, 36.463955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.061035, 37.386631, 36.579266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119574, -0.280917, -0.952254,
		0.991611, 0.081223, 0.100555,
		0.049098, -0.956289, 0.288272,
		34.075764, 37.099743, 36.665749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.652519, 37.386890, 36.341187>,  <34.041397, 37.769146, 36.463955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.652519, 37.386890, 36.341187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.349224, 37.126659, 36.358242>,  <34.167248, 36.970520, 36.368477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.349224, 37.126659, 36.358242>,  <34.652519, 37.386890, 36.341187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.349224, 37.126659, 36.358242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095834, -0.175902, -0.979732,
		0.644896, -0.738783, 0.195724,
		-0.758238, -0.650582, 0.042638,
		34.121754, 36.931484, 36.371033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.811409, 37.148518, 35.826771>,  <34.652519, 37.386890, 36.341187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.811409, 37.148518, 35.826771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.463238, 36.976856, 35.923260>,  <34.254337, 36.873859, 35.981155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.463238, 36.976856, 35.923260>,  <34.811409, 37.148518, 35.826771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.463238, 36.976856, 35.923260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009825, -0.505042, -0.863039,
		0.492204, -0.748840, 0.443817,
		-0.870424, -0.429152, 0.241227,
		34.202110, 36.848110, 35.995628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.937675, 36.504494, 35.437885>,  <34.811409, 37.148518, 35.826771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.937675, 36.504494, 35.437885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.548157, 36.542328, 35.520615>,  <34.314445, 36.565029, 35.570251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.548157, 36.542328, 35.520615>,  <34.937675, 36.504494, 35.437885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.548157, 36.542328, 35.520615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227137, -0.358676, -0.905406,
		-0.011459, -0.928658, 0.370761,
		-0.973796, 0.094588, 0.206822,
		34.256020, 36.570705, 35.582661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.594673, 35.865433, 35.258530>,  <34.937675, 36.504494, 35.437885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.594673, 35.865433, 35.258530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.298706, 36.134388, 35.266628>,  <34.121124, 36.295761, 35.271488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.298706, 36.134388, 35.266628>,  <34.594673, 35.865433, 35.258530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.298706, 36.134388, 35.266628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311710, -0.316040, -0.896078,
		-0.596117, -0.669336, 0.443435,
		-0.739920, 0.672390, 0.020242,
		34.076729, 36.336105, 35.272701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.951817, 35.511562, 35.264393>,  <34.594673, 35.865433, 35.258530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.951817, 35.511562, 35.264393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.850048, 35.872803, 35.126015>,  <33.788986, 36.089546, 35.042988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.850048, 35.872803, 35.126015>,  <33.951817, 35.511562, 35.264393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.850048, 35.872803, 35.126015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445130, -0.426924, -0.787144,
		-0.858563, -0.046276, 0.510616,
		-0.254419, 0.903103, -0.345942,
		33.773724, 36.143734, 35.022232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.214821, 35.466522, 35.007381>,  <33.951817, 35.511562, 35.264393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.214821, 35.466522, 35.007381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.413521, 35.750866, 34.808216>,  <33.532742, 35.921471, 34.688717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.413521, 35.750866, 34.808216>,  <33.214821, 35.466522, 35.007381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.413521, 35.750866, 34.808216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229476, -0.445706, -0.865267,
		-0.837005, 0.544082, -0.058281,
		0.496752, 0.710859, -0.497912,
		33.562546, 35.964123, 34.658844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.939487, 34.649231, 35.171940>,  <33.214821, 35.466522, 35.007381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.939487, 34.649231, 35.171940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.783268, 34.388973, 35.432446>,  <32.689537, 34.232819, 35.588749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.783268, 34.388973, 35.432446>,  <32.939487, 34.649231, 35.171940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.783268, 34.388973, 35.432446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118309, 0.666105, 0.736415,
		-0.912950, 0.364654, -0.183168,
		-0.390546, -0.650640, 0.651262,
		32.666103, 34.193783, 35.627823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.658649, 35.038540, 35.665840>,  <32.939487, 34.649231, 35.171940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.658649, 35.038540, 35.665840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.651066, 34.674484, 35.831387>,  <32.646515, 34.456051, 35.930714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.651066, 34.674484, 35.831387>,  <32.658649, 35.038540, 35.665840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.651066, 34.674484, 35.831387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012973, 0.414128, 0.910126,
		-0.999736, 0.011885, -0.019659,
		-0.018958, -0.910141, 0.413864,
		32.645378, 34.401443, 35.955547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.181217, 35.138519, 36.291950>,  <32.658649, 35.038540, 35.665840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.181217, 35.138519, 36.291950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.444752, 34.840088, 36.330544>,  <32.602871, 34.661030, 36.353699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.444752, 34.840088, 36.330544>,  <32.181217, 35.138519, 36.291950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.444752, 34.840088, 36.330544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101154, 0.214940, 0.971375,
		-0.745454, -0.630218, 0.217079,
		0.658837, -0.746074, 0.096479,
		32.642403, 34.616264, 36.359486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.949184, 34.649132, 36.782486>,  <32.181217, 35.138519, 36.291950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.949184, 34.649132, 36.782486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.344612, 34.589935, 36.794037>,  <32.581867, 34.554417, 36.800968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.344612, 34.589935, 36.794037>,  <31.949184, 34.649132, 36.782486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.344612, 34.589935, 36.794037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028839, 0.002412, 0.999581,
		-0.147998, -0.988986, -0.001883,
		0.988567, -0.147991, 0.028878,
		32.641182, 34.545540, 36.802700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.030369, 34.100716, 37.264874>,  <31.949184, 34.649132, 36.782486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.030369, 34.100716, 37.264874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.399422, 34.254097, 37.248348>,  <32.620853, 34.346127, 37.238434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.399422, 34.254097, 37.248348>,  <32.030369, 34.100716, 37.264874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.399422, 34.254097, 37.248348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094633, -0.121250, 0.988101,
		0.373880, -0.915567, -0.148157,
		0.922636, 0.383452, -0.041310,
		32.676212, 34.369133, 37.235954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.491146, 33.617462, 37.691223>,  <32.030369, 34.100716, 37.264874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.491146, 33.617462, 37.691223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.600037, 34.000221, 37.650742>,  <32.665371, 34.229877, 37.626453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.600037, 34.000221, 37.650742>,  <32.491146, 33.617462, 37.691223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.600037, 34.000221, 37.650742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175506, 0.054034, 0.982994,
		0.946092, -0.285360, -0.153231,
		0.272227, 0.956896, -0.101203,
		32.681705, 34.287289, 37.620380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.146805, 33.654686, 38.104794>,  <32.491146, 33.617462, 37.691223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.146805, 33.654686, 38.104794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.011414, 34.027119, 38.050358>,  <32.930180, 34.250580, 38.017696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.011414, 34.027119, 38.050358>,  <33.146805, 33.654686, 38.104794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.011414, 34.027119, 38.050358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114177, 0.184194, 0.976235,
		0.934022, 0.314894, -0.168654,
		-0.338476, 0.931082, -0.136087,
		32.909870, 34.306442, 38.009533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.678783, 34.196964, 38.366028>,  <33.146805, 33.654686, 38.104794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.678783, 34.196964, 38.366028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.342224, 34.412189, 38.345905>,  <33.140289, 34.541325, 38.333832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.342224, 34.412189, 38.345905>,  <33.678783, 34.196964, 38.366028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.342224, 34.412189, 38.345905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141896, 0.309783, 0.940160,
		0.521452, 0.783912, -0.337001,
		-0.841400, 0.538067, -0.050303,
		33.089806, 34.573608, 38.330814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.860306, 34.861248, 38.484295>,  <33.678783, 34.196964, 38.366028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.860306, 34.861248, 38.484295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.471115, 34.840282, 38.574242>,  <33.237598, 34.827702, 38.628208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.471115, 34.840282, 38.574242>,  <33.860306, 34.861248, 38.484295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.471115, 34.840282, 38.574242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171856, 0.486006, 0.856892,
		-0.154198, 0.872382, -0.463866,
		-0.972979, -0.052413, 0.224865,
		33.179222, 34.824558, 38.641701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.575268, 35.539894, 38.787037>,  <33.860306, 34.861248, 38.484295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.575268, 35.539894, 38.787037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.312412, 35.257671, 38.893139>,  <33.154697, 35.088337, 38.956799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.312412, 35.257671, 38.893139>,  <33.575268, 35.539894, 38.787037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.312412, 35.257671, 38.893139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013827, 0.340558, 0.940122,
		-0.753641, 0.621460, -0.214039,
		-0.657141, -0.705555, 0.265251,
		33.115269, 35.046005, 38.972713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.176075, 35.859768, 39.328373>,  <33.575268, 35.539894, 38.787037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.176075, 35.859768, 39.328373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.099247, 35.469994, 39.374985>,  <33.053150, 35.236130, 39.402950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.099247, 35.469994, 39.374985>,  <33.176075, 35.859768, 39.328373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.099247, 35.469994, 39.374985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070886, 0.132205, 0.988685,
		-0.978818, 0.181633, -0.094466,
		-0.192067, -0.974439, 0.116529,
		33.041626, 35.177662, 39.409943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.508217, 35.807373, 39.645405>,  <33.176075, 35.859768, 39.328373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.508217, 35.807373, 39.645405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.700851, 35.467228, 39.730217>,  <32.816433, 35.263142, 39.781105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.700851, 35.467228, 39.730217>,  <32.508217, 35.807373, 39.645405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.700851, 35.467228, 39.730217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234060, 0.108350, 0.966166,
		-0.844565, -0.514921, -0.146856,
		0.481588, -0.850363, 0.212031,
		32.845329, 35.212120, 39.793827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.208073, 35.620289, 40.262779>,  <32.508217, 35.807373, 39.645405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.208073, 35.620289, 40.262779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.528576, 35.383472, 40.228203>,  <32.720879, 35.241383, 40.207458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.528576, 35.383472, 40.228203>,  <32.208073, 35.620289, 40.262779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.528576, 35.383472, 40.228203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102134, -0.007011, 0.994746,
		-0.589533, -0.805880, 0.054849,
		0.801261, -0.592038, -0.086441,
		32.768955, 35.205860, 40.202271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.069130, 35.116749, 40.867687>,  <32.208073, 35.620289, 40.262779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.069130, 35.116749, 40.867687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.452007, 35.113880, 40.751949>,  <32.681736, 35.112160, 40.682507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.452007, 35.113880, 40.751949>,  <32.069130, 35.116749, 40.867687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.452007, 35.113880, 40.751949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288617, -0.051591, 0.956054,
		-0.021785, -0.998642, -0.047313,
		0.957197, -0.007172, -0.289349,
		32.739166, 35.111729, 40.665146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.353729, 34.706333, 41.307255>,  <32.069130, 35.116749, 40.867687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.353729, 34.706333, 41.307255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.680546, 34.889843, 41.167557>,  <32.876637, 34.999947, 41.083740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.680546, 34.889843, 41.167557>,  <32.353729, 34.706333, 41.307255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.680546, 34.889843, 41.167557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415207, -0.047887, 0.908466,
		0.400054, -0.887263, -0.229611,
		0.817044, 0.458771, -0.349240,
		32.925659, 35.027473, 41.062786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.924950, 34.360153, 41.574730>,  <32.353729, 34.706333, 41.307255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.924950, 34.360153, 41.574730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.032982, 34.739223, 41.506657>,  <33.097801, 34.966667, 41.465813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.032982, 34.739223, 41.506657>,  <32.924950, 34.360153, 41.574730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.032982, 34.739223, 41.506657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382515, 0.056593, 0.922215,
		0.883594, -0.314170, -0.347216,
		0.270082, 0.947678, -0.170180,
		33.114006, 35.023525, 41.455605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.584679, 34.369186, 41.813671>,  <32.924950, 34.360153, 41.574730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.584679, 34.369186, 41.813671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.453533, 34.746929, 41.803070>,  <33.374844, 34.973576, 41.796711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.453533, 34.746929, 41.803070>,  <33.584679, 34.369186, 41.813671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.453533, 34.746929, 41.803070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376176, 0.156230, 0.913282,
		0.866600, 0.289466, -0.406465,
		-0.327866, 0.944353, -0.026499,
		33.355175, 35.030235, 41.795120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.140209, 34.790451, 42.009026>,  <33.584679, 34.369186, 41.813671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.140209, 34.790451, 42.009026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.828854, 35.036816, 42.057621>,  <33.642040, 35.184635, 42.086781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.828854, 35.036816, 42.057621>,  <34.140209, 34.790451, 42.009026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.828854, 35.036816, 42.057621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389221, 0.321635, 0.863167,
		0.492557, 0.719170, -0.490084,
		-0.778392, 0.615910, 0.121492,
		33.595337, 35.221588, 42.094070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.424339, 35.445736, 42.203793>,  <34.140209, 34.790451, 42.009026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.424339, 35.445736, 42.203793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.043785, 35.469852, 42.324612>,  <33.815453, 35.484322, 42.397102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.043785, 35.469852, 42.324612>,  <34.424339, 35.445736, 42.203793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.043785, 35.469852, 42.324612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300581, 0.395778, 0.867762,
		-0.067222, 0.916365, -0.394660,
		-0.951384, 0.060295, 0.302047,
		33.758369, 35.487942, 42.415226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.445423, 35.992748, 42.582073>,  <34.424339, 35.445736, 42.203793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.445423, 35.992748, 42.582073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.108860, 35.815212, 42.705387>,  <33.906921, 35.708691, 42.779377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.108860, 35.815212, 42.705387>,  <34.445423, 35.992748, 42.582073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.108860, 35.815212, 42.705387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147729, 0.359829, 0.921249,
		-0.519812, 0.820691, -0.237196,
		-0.841410, -0.443836, 0.308283,
		33.856438, 35.682060, 42.797871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.050640, 36.517227, 42.924873>,  <34.445423, 35.992748, 42.582073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.050640, 36.517227, 42.924873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.869717, 36.183601, 43.051208>,  <33.761162, 35.983425, 43.127010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.869717, 36.183601, 43.051208>,  <34.050640, 36.517227, 42.924873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.869717, 36.183601, 43.051208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060961, 0.382217, 0.922060,
		-0.889774, 0.397805, -0.223727,
		-0.452312, -0.834064, 0.315836,
		33.734024, 35.933384, 43.145958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.458939, 36.655552, 43.473286>,  <34.050640, 36.517227, 42.924873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.458939, 36.655552, 43.473286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.601986, 36.289085, 43.545666>,  <33.687813, 36.069206, 43.589092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.601986, 36.289085, 43.545666>,  <33.458939, 36.655552, 43.473286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.601986, 36.289085, 43.545666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281111, 0.290388, 0.914686,
		-0.890553, -0.276242, 0.361394,
		0.357619, -0.916169, 0.180951,
		33.709270, 36.014236, 43.599953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.261517, 36.563850, 44.171246>,  <33.458939, 36.655552, 43.473286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.261517, 36.563850, 44.171246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.515236, 36.260815, 44.109634>,  <33.667469, 36.078995, 44.072670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.515236, 36.260815, 44.109634>,  <33.261517, 36.563850, 44.171246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.515236, 36.260815, 44.109634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084780, -0.129865, 0.987900,
		-0.768422, -0.639686, -0.018146,
		0.634303, -0.757586, -0.154024,
		33.705528, 36.033539, 44.063427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.988293, 36.021545, 44.629063>,  <33.261517, 36.563850, 44.171246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.988293, 36.021545, 44.629063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.371986, 35.932800, 44.559032>,  <33.602203, 35.879555, 44.517014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.371986, 35.932800, 44.559032>,  <32.988293, 36.021545, 44.629063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.371986, 35.932800, 44.559032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156886, -0.097265, 0.982816,
		-0.235081, -0.970214, -0.058493,
		0.959231, -0.221864, -0.175078,
		33.659756, 35.866241, 44.506508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.052505, 35.437599, 44.915993>,  <32.988293, 36.021545, 44.629063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.052505, 35.437599, 44.915993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.429264, 35.570309, 44.895016>,  <33.655319, 35.649937, 44.882431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.429264, 35.570309, 44.895016>,  <33.052505, 35.437599, 44.915993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.429264, 35.570309, 44.895016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118908, -0.183335, 0.975832,
		0.314146, -0.925371, -0.212134,
		0.941898, 0.331779, -0.052440,
		33.711834, 35.669842, 44.879284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.347450, 35.034874, 45.446972>,  <33.052505, 35.437599, 44.915993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.347450, 35.034874, 45.446972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.615387, 35.324291, 45.380280>,  <33.776150, 35.497940, 45.340263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.615387, 35.324291, 45.380280>,  <33.347450, 35.034874, 45.446972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.615387, 35.324291, 45.380280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195557, 0.044710, 0.979673,
		0.716289, -0.688831, -0.111545,
		0.669842, 0.723543, -0.166731,
		33.816338, 35.541355, 45.330261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.918213, 34.890209, 45.982517>,  <33.347450, 35.034874, 45.446972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.918213, 34.890209, 45.982517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.925308, 35.268513, 45.852764>,  <33.929565, 35.495495, 45.774914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.925308, 35.268513, 45.852764>,  <33.918213, 34.890209, 45.982517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.925308, 35.268513, 45.852764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042134, 0.324853, 0.944825,
		0.998954, -0.003093, 0.045611,
		0.017740, 0.945759, -0.324383,
		33.930630, 35.552242, 45.755447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.491707, 35.178055, 46.136955>,  <33.918213, 34.890209, 45.982517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.491707, 35.178055, 46.136955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.242226, 35.490013, 46.115948>,  <34.092537, 35.677189, 46.103344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.242226, 35.490013, 46.115948>,  <34.491707, 35.178055, 46.136955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.242226, 35.490013, 46.115948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260676, 0.270867, 0.926649,
		0.736914, 0.564265, -0.372240,
		-0.623704, 0.779895, -0.052516,
		34.055115, 35.723980, 46.100193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.156334, 35.020309, 45.961983>,  <34.491707, 35.178055, 46.136955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.156334, 35.020309, 45.961983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.512890, 34.868782, 46.061520>,  <35.726822, 34.777866, 46.121243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.512890, 34.868782, 46.061520>,  <35.156334, 35.020309, 45.961983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.512890, 34.868782, 46.061520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017476, -0.519902, -0.854047,
		0.452901, 0.765638, -0.456815,
		0.891390, -0.378815, 0.248844,
		35.780308, 34.755138, 46.136173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.480515, 35.074219, 45.315735>,  <35.156334, 35.020309, 45.961983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.480515, 35.074219, 45.315735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.665710, 34.805134, 45.546593>,  <35.776829, 34.643681, 45.685108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.665710, 34.805134, 45.546593>,  <35.480515, 35.074219, 45.315735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.665710, 34.805134, 45.546593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085559, -0.614175, -0.784518,
		0.882225, 0.412603, -0.226800,
		0.462990, -0.672717, 0.577142,
		35.804607, 34.603317, 45.719734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.001564, 34.913197, 45.018047>,  <35.480515, 35.074219, 45.315735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.001564, 34.913197, 45.018047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.988628, 34.594807, 45.259830>,  <35.980865, 34.403770, 45.404900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.988628, 34.594807, 45.259830>,  <36.001564, 34.913197, 45.018047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.988628, 34.594807, 45.259830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242626, -0.592940, -0.767825,
		0.969581, 0.121829, 0.212300,
		-0.032338, -0.795977, 0.604462,
		35.978928, 34.356014, 45.441170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.619759, 34.539497, 44.852982>,  <36.001564, 34.913197, 45.018047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.619759, 34.539497, 44.852982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.384823, 34.266491, 45.026970>,  <36.243862, 34.102688, 45.131363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.384823, 34.266491, 45.026970>,  <36.619759, 34.539497, 44.852982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.384823, 34.266491, 45.026970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170426, -0.629685, -0.757926,
		0.791193, -0.371030, 0.486158,
		-0.587340, -0.682520, 0.434969,
		36.208622, 34.061733, 45.157459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.964752, 33.937943, 44.667561>,  <36.619759, 34.539497, 44.852982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.964752, 33.937943, 44.667561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.597874, 33.832085, 44.786697>,  <36.377747, 33.768570, 44.858181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.597874, 33.832085, 44.786697>,  <36.964752, 33.937943, 44.667561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.597874, 33.832085, 44.786697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083386, -0.603489, -0.792999,
		0.389608, -0.752173, 0.531451,
		-0.917198, -0.264643, 0.297845,
		36.322716, 33.752693, 44.876049>
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
